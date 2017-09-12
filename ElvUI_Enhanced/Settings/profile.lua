local E, L, V, P, G = unpack(ElvUI);

-- Minimap
P.general.minimap.locationText = "ABOVE"

-- Unitframes
P.unitframe.units.player.portrait.detachFromFrame = false;
P.unitframe.units.player.portrait.detachedWidth = 54;
P.unitframe.units.player.portrait.detachedHeight = 54;

P.unitframe.units.target.portrait.detachFromFrame = false;
P.unitframe.units.target.portrait.detachedWidth = 54;
P.unitframe.units.target.portrait.detachedHeight = 54;

P.unitframe.units.player.animatedLoss = {
	enable = false,
	duration = .75,
	startDelay = .2,
	pauseDelay = .05,
	postponeDelay = .05
};

-- Quest
P.general.showQuestLevel = true;

-- Enhanced
P.enhanced = {
	general = {
		pvpAutoRelease = false,
		autoRepChange = false,
		moverTransparancy = 0.8,
		declineduel = false,
		hideZoneText = false,
		originalCloseButton = false,
		alreadyKnown = true
	},
	actionbars = {
		equipped = false,
		equippedColor = {r = 0, g = 1.0, b = 0},
		transparentActionbars = {
			transparentBackdrops = false,
			transparentButtons = false
		}
	},
	chat = {
		dpsLinks = false,
	},
	datatexts = {
		timeColorEnch = false,
	},
	equipment = {
		font = "Homespun",
		fontSize = 10,
		fontOutline = "MONOCHROMEOUTLINE",
		durability = {
			enable = true,
			onlydamaged = true,
			position = "TOPLEFT",
			xOffset = 2,
			yOffset = 0
		},
		itemlevel = {
			enable = true,
			qualityColor = false,
			position = "BOTTOMLEFT",
			xOffset = 2,
			yOffset = 3
		}
	},
	minimap = {
		location = false,
		locationdigits = 1,
		hideincombat = false,
		fadeindelay = 5,
	},
	nameplates = {
		cacheUnitClass = false,
		smooth = false,
		smoothSpeed = 0.3,
	},
	tooltip = {
		itemQualityBorderColor = false,
		tooltipIcon = {
			enable = false,
			tooltipIconSpells  = true,
			tooltipIconItems  = true,
			tooltipIconAchievements  = true
		},
		progressInfo = {
			enable = false,
			checkPlayer = false,
			modifier = "SHIFT",
			tiers = {
				["DS"] = true,
				["FL"] = true,
				["BH"] = true,
				["TOTFW"] = true,
				["BT"] = true,
				["BWD"] = true
			}
		}
	},
	loseofcontrol = { 
		CC = true,
		PvE = true,
		Silence = true,
		Disarm = true,
		Root = false,
		Snare = true
	},
	unitframe = {
		units = {
			target = {
				classicon = {
					enable = false,
					size = 28,
					xOffset = -58,
					yOffset = -22
				}
			}
		},
		hideRoleInCombat = false
	},
	watchframe = {
		enable = false,
		city = "COLLAPSED",
		pvp = "HIDDEN",
		arena = "HIDDEN",
		party = "COLLAPSED",
		raid = "COLLAPSED"
	}
};