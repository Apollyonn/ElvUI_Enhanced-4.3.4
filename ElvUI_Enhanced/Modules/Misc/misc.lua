local E, L, V, P, G = unpack(ElvUI);
local M = E:NewModule("Enhanced_Misc", "AceEvent-3.0");

E.Enhanced_Misc = M;

local IsInInstance = IsInInstance
local RepopMe = RepopMe

function M:PLAYER_DEAD()
	local inInstance, instanceType = IsInInstance();
	if(inInstance and (instanceType == "pvp")) then
		local soulstone = GetSpellInfo(20707);
		if((E.myclass ~= "SHAMAN") and not (soulstone and UnitBuff("player", soulstone))) then
			RepopMe();
		end
	end
end

function M:AutoRelease()
	if(E.db.enhanced.general.pvpAutoRelease) then
		self:RegisterEvent("PLAYER_DEAD");
	else
		self:UnregisterEvent("PLAYER_DEAD");
	end
end

function M:LoadDeclineDuel()
	if(not E.db.enhanced.general.declineduel) then return end

	local DeclineDuel = CreateFrame("Frame")
	DeclineDuel:RegisterEvent("DUEL_REQUESTED")
	DeclineDuel:SetScript("OnEvent", function(_, event, name)
		if(event == "DUEL_REQUESTED") then
			StaticPopup_Hide("DUEL_REQUESTED")
			CancelDuel()
			RaidNotice_AddMessage(RaidWarningFrame, L["Declined duel request from "]..name, {r = 0.41, g = 0.8, b = 0.94}, 3)
			print(format("|cffffff00"..L["Declined duel request from "]..name.."."))
		end
	end)
end

function M:HideZone()
	if(E.db.enhanced.general.hideZoneText) then
		ZoneTextFrame:UnregisterAllEvents()
	else
		ZoneTextFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		ZoneTextFrame:RegisterEvent("ZONE_CHANGED_INDOORS")
		ZoneTextFrame:RegisterEvent("ZONE_CHANGED")
	end
end

function M:Initialize()
	self:AutoRelease();
	self:HideZone()
	self:LoadDeclineDuel()
	self:LoadQuestReward()
	self:WatchedFaction();
	self:LoadMoverTransparancy()
end

E:RegisterModule(M:GetName());