exports.commandCards = commandCards =
	global:
		PTT:
			hotkeyCode: "PTT"
			displayText: "PTT"

		ChatAll:
			hotkeyCode: "ChatAll"
			displayText: "Chat All"
			if: -> not @chatting
			on: -> @chatting = yes

		ChatAllies:
			hotkeyCode: "ChatAllies"
			displayText: "Chat Allies"
			if: -> not @chatting
			on: -> @chatting = yes

		ChatCancel:
			hotkeyCode: "ChatCancel"
			displayText: "Chat Cancel"
			if: -> @chatting
			on: -> @chatting = no

		ChatDefault:
			hotkeyCode: "ChatDefault"
			displayText: "Chat Default"
			if: -> not @chatting
			on: -> @chatting = yes

		ChatIndividual:
			hotkeyCode: "ChatIndividual"
			displayText: "Chat Individual"
			if: -> not @chatting
			on: -> @chatting = yes

		ChatRecipient:
			hotkeyCode: "ChatRecipient"
			displayText: "Chat Recipient"
			if: -> not @chatting
			on: -> @chatting = yes

		DialogDismiss:
			hotkeyCode: "DialogDismiss"
			displayText: "Dialog Dismiss"
			if: -> @dialog

		MenuAchievements:
			hotkeyCode: "MenuAchievements"
			displayText: "Menu Achievements"

		MenuGame:
			hotkeyCode: "MenuGame"
			displayText: "Menu Game"

		MenuHelp:
			hotkeyCode: "MenuHelp"
			displayText: "Menu Help"

		MenuMessages:
			hotkeyCode: "MenuMessages"
			displayText: "Menu Messages"

		LeaderNone:
			hotkeyCode: "LeaderNone"
			displayText: "Leader None"
			if: -> @observer

		LeaderResources:
			hotkeyCode: "LeaderResources"
			displayText: "Leader Resources"
			if: -> @observer

		LeaderIncome:
			hotkeyCode: "LeaderIncome"
			displayText: "Leader Income"
			if: -> @observer

		LeaderSpending:
			hotkeyCode: "LeaderSpending"
			displayText: "Leader Spending"
			if: -> @observer

		LeaderUnits:
			hotkeyCode: "LeaderUnits"
			displayText: "Leader Units"
			if: -> @observer

		LeaderStructures:
			hotkeyCode: "LeaderStructures"
			displayText: "Leader Structures"
			if: -> @observer

		LeaderUnitsLost:
			hotkeyCode: "LeaderUnitsLost"
			displayText: "Leader Units Lost"
			if: -> @observer

		LeaderProduction:
			hotkeyCode: "LeaderProduction"
			displayText: "Leader Production"
			if: -> @observer

		LeaderUpgrades:
			hotkeyCode: "LeaderUpgrades"
			displayText: "Leader Upgrades"
			if: -> @observer

		LeaderArmy:
			hotkeyCode: "LeaderArmy"
			displayText: "Leader Army"
			if: -> @observer

		LeaderAPM:
			hotkeyCode: "LeaderAPM"
			displayText: "Leader APM"
			if: -> @observer

		LeaderCPM:
			hotkeyCode: "LeaderCPM"
			displayText: "Leader CPM"
			if: -> @observer

		ObserveAllPlayers:
			hotkeyCode: "ObserveAllPlayers"
			displayText: "Observe All Players"
			if: -> @observer

		ObserveAutoCamera:
			hotkeyCode: "ObserveAutoCamera"
			displayText: "Observe Auto Camera"
			if: -> @observer

		ObserveClearSelection:
			hotkeyCode: "ObserveClearSelection"
			displayText: "Observe Clear Selection"
			if: -> @observer

		ObservePreview:
			hotkeyCode: "ObservePreview"
			displayText: "Observe Preview"
			if: -> @observer

		ObserveSelected:
			hotkeyCode: "ObserveSelected"
			displayText: "Observe Selected"
			if: -> @observer

		ObserveStatusBars:
			hotkeyCode: "ObserveStatusBars"
			displayText: "Observe Status Bars"
			if: -> @observer

		NamePanel:
			hotkeyCode: "NamePanel"
			displayText: "Name Panel"
			if: -> @observer

		StatPanelResources:
			hotkeyCode: "StatPanelResources"
			displayText: "Stat Panel Resources"
			if: -> @observer

		StatPanelArmySupply:
			hotkeyCode: "StatPanelArmySupply"
			displayText: "Stat Panel Army Supply"
			if: -> @observer

		StatPanelUnitsLost:
			hotkeyCode: "StatPanelUnitsLost"
			displayText: "Stat Panel Units Lost"
			if: -> @observer

		StatPanelAPM:
			hotkeyCode: "StatPanelAPM"
			displayText: "Stat Panel APM"
			if: -> @observer

		StatPanelCPM:
			hotkeyCode: "StatPanelCPM"
			displayText: "Stat Panel CPM"
			if: -> @observer

		ToggleVersusModeSides:
			hotkeyCode: "ToggleVersusModeSides"
			displayText: "Toggle Versus Mode Sides"
			if: -> @observer

		ToggleWorldPanel:
			hotkeyCode: "ToggleWorldPanel"
			displayText: "Toggle World Panel"
			if: -> @observer

		AlertRecall:
			hotkeyCode: "AlertRecall"
			displayText: "Alert Recall"

		ArmySelect:
			hotkeyCode: "ArmySelect"
			displayText: "Army Select"

		CameraCenter:
			hotkeyCode: "CameraCenter"
			displayText: "Camera Center"

		CameraFollow:
			hotkeyCode: "CameraFollow"
			displayText: "Camera Follow"

		CameraTurnLeft:
			hotkeyCode: "CameraTurnLeft"
			displayText: "Camera Turn Left"

		CameraTurnRight:
			hotkeyCode: "CameraTurnRight"
			displayText: "Camera Turn Right"


		GameTooltipsOn:
			hotkeyCode: "GameTooltipsOn"
			displayText: "Game Tooltips On"

		IdleWorker:
			hotkeyCode: "IdleWorker"
			displayText: "Idle Worker"

		MinimapColors:
			hotkeyCode: "MinimapColors"
			displayText: "Minimap Colors"

		MinimapPing:
			hotkeyCode: "MinimapPing"
			displayText: "Minimap Ping"

		MinimapTerrain:
			hotkeyCode: "MinimapTerrain"
			displayText: "Minimap Terrain"

		PauseGame:
			hotkeyCode: "PauseGame"
			displayText: "Pause Game"

		QuickPing:
			hotkeyCode: "QuickPing"
			displayText: "Quick Ping"

		QuickSave:
			hotkeyCode: "QuickSave"
			displayText: "Quick Save"
			if: -> @campaign

		ReplayPlayPause:
			hotkeyCode: "ReplayPlayPause"
			displayText: "Replay Play Pause"
			if: -> @replay

		ReplayRestart:
			hotkeyCode: "ReplayRestart"
			displayText: "Replay Restart"
			if: -> @replay

		ReplaySkipBack:
			hotkeyCode: "ReplaySkipBack"
			displayText: "Replay Skip Back"
			if: -> @replay

		ReplaySkipNext:
			hotkeyCode: "ReplaySkipNext"
			displayText: "Replay Skip Next"

		ReplaySpeedDec:
			hotkeyCode: "ReplaySpeedDec"
			displayText: "Replay Speed Dec"
			if: -> @replay

		ReplaySpeedInc:
			hotkeyCode: "ReplaySpeedInc"
			displayText: "Replay Speed Inc"
			if: -> @replay

		ReplayStop:
			hotkeyCode: "ReplayStop"
			displayText: "Replay Stop"
			if: -> @replay

		ReplayHide:
			hotkeyCode: "ReplayHide"
			displayText: "Replay Hide"
			if: -> @replay

		SelectionCancelDrag:
			hotkeyCode: "SelectionCancelDrag"
			displayText: "Selection Cancel Drag"
			if: -> @dragging

		StatusAll:
			hotkeyCode: "StatusAll"
			displayText: "Status All"

		StatusOwner:
			hotkeyCode: "StatusOwner"
			displayText: "Status Owner"

		StatusAlly:
			hotkeyCode: "StatusAlly"
			displayText: "Status Ally"

		StatusEnemy:
			hotkeyCode: "StatusEnemy"
			displayText: "Status Enemy"

		SubgroupNext:
			hotkeyCode: "SubgroupNext"
			displayText: "Subgroup Next"

		SubgroupPrev:
			hotkeyCode: "SubgroupPrev"
			displayText: "Subgroup Prev"

		TeamResources:
			hotkeyCode: "TeamResources"
			displayText: "Team Resources"

		TownCamera:
			hotkeyCode: "TownCamera"
			displayText: "Town Camera"

		Select:
			hotkeyCode: "Select"
			displayText: "Select"
		Interact:
			hotkeyCode: "Interact"
			displayText: "Interact"

	unit:
		movement:
			Move:
				displayText: 'Move'
				icon: 'Move.png'
				if: -> not (@buildCard or @hallucinateCard or @burrowed or @sieged or @unrooted is no)
			HoldPosition:
				hotkeyCode: 'MoveHoldPosition'
				displayText: 'Hold Position'
				icon: 'HoldPosition.png'
				if: -> not (@buildCard or @hallucinateCard or @burrowed or @sieged or @unrooted is no)
			Patrol:
				hotkeyCode: 'MovePatrol'
				displayText: 'Patrol'
				icon: 'Patrol.png'
				if: -> not (@buildCard or @hallucinateCard or @burrowed or @sieged or @unrooted is no)
			Stop:
				displayText: 'Stop'
				icon: 'Stop.png'
				if: -> not (@buildCard or @hallucinateCard or @burrowed or @unrooted is no)
		combat:
			Attack:
				displayText: 'Attack'
				icon: 'Attack.png'
				if: -> not (@buildCard or @hallucinateCard or @unrooted or @burrowed)
			Stop:
				displayText: 'Stop'
				icon: 'Stop.png'
				if: -> not (@buildCard or @hallucinateCard or @unrooted or @burrowed)
		cancel:
			Cancel:
				displayText: 'Cancel'
				icon: 'Cancel.png'
				if: -> not @lifted
		burrow:
			Burrow:
				icon: 'Burrow.gif'
				hotkeyCode: 'BurrowDown'
				displayText: 'Burrow'
				if: -> not (@buildCard or @burrowed)
				on: -> @burrowed = yes
			Unburrow:
				icon: 'Unburrow.gif'
				hotkeyCode: 'BurrowUp'
				displayText: 'Unburrow'
				if: -> @burrowed
				on: -> @burrowed = no
		load:
			BunkerLoad:
				icon: 'Load.png'
				hotkeyCode: 'BunkerLoad'
				displayText: 'Load'
			BunkerUnloadAll:
				icon: 'UnloadAll.jpg'
				hotkeyCode: 'BunkerUnloadAll'
				displayText: 'Unload All'
		underconstruction:
			Halt:
				icon: 'Stop.png'
				hotkeyCode: 'Halt'
				displayText: 'Halt construction'
			SelectBuilder:
				icon: 'Selectbuilder.png'
				hotkeyCode: 'SelectBuilder'
				displayText: 'Select Builder'
		flying:
			Liftoff:
				icon: 'Lift.png'
				hotkeyCode: 'Lift'
				displayText: 'Lift Off'
				if: -> @upgrade isnt 'PlanetaryFortress' and not @lifted
				on: -> @lifted = yes
			Land:
				icon: 'Land.jpg'
				hotkeyCode: 'Land'
				displayText: 'Land'
				if: -> @lifted
				on: -> @lifted = no
			Move:
				icon: 'Move.png'
				hotkeyCode: 'Move'
				displayText: 'Move'
				if: -> @lifted
			Patrol:
				icon: 'Patrol.png'
				hotkeyCode: 'MovePatrol'
				displayText: 'Patrol'
				if: -> @lifted
			Stop:
				icon: 'Stop.png'
				hotkeyCode: 'Stop'
				displayText: 'Stop'
				if: -> @lifted
		worker:
			ReturnCargo:
				icon: 'ReturnCargo.png'
				hotkeyCode: 'ReturnCargo'
				displayText: 'Return Cargo'
				if: -> not @buildCard
			Gather:
				icon: "Gather.png"
				hotkeyCode: "GatherProt"
				displayText: "Gather"
				if: -> not @buildCard
		rally:
			Rally:
				icon: 'Rally.jpg'
				hotkeyCode: 'Rally'
				displayText: 'Rally'
				if: -> not @buildCard
		archonWarp:
			AWrp:
				icon: "AWrp.png"
				hotkeyCode: "AWrp"
				displayText: "Archon Warp"


for n in [0..9]
	commandCards.global["ControlGroupRecall#{n}"] =
		hotkeyCode: "ControlGroupRecall#{n}"
		keyCap: "#{n}"
		displayText: "Select Group #{n}"
		on: (->@select @controlGroup[N]).toString().replace(/N/, n.toString())

for n in [0..9]
	commandCards.global["ControlGroupAppend#{n}"] =
		hotkeyCode: "ControlGroupAppend#{n}"
		keyCap: "#{n}"
		displayText: "Add Selection to Group #{n}"
		on: (->@controlGroup[N] = @currentUnit).toString().replace(/N/, n.toString())

for n in [0..9]
	commandCards.global["ControlGroupAssign#{n}"] =
		hotkeyCode: "ControlGroupAssign#{n}"
		keyCap: "#{n}"
		displayText: "Set Group #{n} to Selection"
		on: (->@controlGroup[N] = @currentUnit).toString().replace(/N/, n.toString())

for n in [0..15]
	commandCards.global["ObservePlayer#{n}"] =
			hotkeyCode: "ObservePlayer#{n}"
			displayText: "Observe Player #{n}"

for n in [0..7]
	commandCards.global["CameraSave#{n}"] =
			hotkeyCode: "CameraSave#{n}"
			keyCap: "#{n}"
			displayText: "Save Camera #{n}"

for n in [0..7]
	commandCards.global["CameraView#{n}"] =
			hotkeyCode: "CameraView#{n}"
			keyCap: "#{n}"
			displayText: "Go to Camera #{n}"

exports.raceCards = raceCards =
	Protoss:
		units:
			Probe:
				icon: "probe.jpg"
				displayText: "Probe"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.worker']
					Cancel:
						displayText: 'Cancel'
						icon: 'Cancel.png'
						on: -> @buildCard = null
						if: -> @buildCard

					BuildBasic:
						displayText: 'Build Basic'
						hotkeyCode: 'ProtossBuild/Probe'
						icon: 'Build.png'
						on: -> @buildCard = 'basic'
						if: -> not @buildCard

					BuildPylon:
						icon: "pylon.jpg"
						hotkeyCode: "Pylon/Probe"
						displayText: "Pylon"
						if: -> @buildCard is 'basic'

					BuildAssimilator:
						icon: "assimilator.jpg"
						hotkeyCode: "Assimilator/Probe"
						displayText: "Build Assimilator"
						if: -> @buildCard is 'basic'

					BuildCyberneticsCore:
						icon: "cyberneticscore.jpg"
						hotkeyCode: "CyberneticsCore/Probe"
						displayText: "Build Cybernetics Core"
						if: -> @buildCard is 'basic'

					BuildForge:
						icon: "forge.jpg"
						hotkeyCode: "Forge/Probe"
						displayText: "Build Forge"
						if: -> @buildCard is 'basic'

					BuildGateway:
						icon: "gateway.jpg"
						hotkeyCode: "Gateway/Probe"
						displayText: "Build Gateway"
						if: -> @buildCard is 'basic'

					BuildNexus:
						icon: "nexus.jpg"
						hotkeyCode: "Nexus/Probe"
						displayText: "Build Nexus"
						if: -> @buildCard is 'basic'

					BuildPhotonCannon:
						icon: "photoncannon.jpg"
						hotkeyCode: "PhotonCannon/Probe"
						displayText: "Build Photon Cannon"
						if: -> @buildCard is 'basic'

					BuilAdvanced:
						displayText: 'Build Advanced'
						hotkeyCode: 'ProtossBuildAdvanced/Probe'
						icon: 'BuildAdvanced.png'
						on: -> @buildCard = 'advanced'
						if: -> not @buildCard

					BuildDarkShrine:
						icon: "darkshrine.jpg"
						hotkeyCode: "DarkShrine/Probe"
						displayText: "Build Dark Shrine"
						if: -> @buildCard is 'advanced'

					BuildFleetBeacon:
						icon: "fleetbeacon.jpg"
						hotkeyCode: "FleetBeacon/Probe"
						displayText: "Build Fleet Beacon"
						if: -> @buildCard is 'advanced'

					BuildRoboticsBay:
						icon: "roboticsbay.jpg"
						hotkeyCode: "RoboticsBay/Probe"
						displayText: "Build Robotics Bay"
						if: -> @buildCard is 'advanced'

					BuildRoboticsFacility:
						icon: "roboticsfacility.jpg"
						hotkeyCode: "RoboticsFacility/Probe"
						displayText: "Build Robotics Facility"
						if: -> @buildCard is 'advanced'

					BuildStargate:
						icon: "stargate.jpg"
						hotkeyCode: "Stargate/Probe"
						displayText: "Build Stargate"
						if: -> @buildCard is 'advanced'

					BuildTwilightCouncil:
						icon: "twilightcouncil.jpg"
						hotkeyCode: "TwilightCouncil/Probe"
						displayText: "Build Twilight Council"
						if: -> @buildCard is 'advanced'

					BuildTemplarArchive:
						icon: "templararchive.jpg"
						hotkeyCode: "TemplarArchive/Probe"
						displayText: "Build Templar Archive"
						if: -> @buildCard is 'advanced'


			Zealot:
				icon: "zealot.jpg"
				displayText: "Zealot"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.rally']
					Charge:
						icon: "Charge.png"
						hotkeyCode: "Charge/Zealot"
						displayText: "Charge"


			Stalker:
				icon: "stalker.jpg"
				displayText: "Stalker"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.rally']
					Blink:
						icon: "Blink.png"
						hotkeyCode: "Blink/Stalker"
						displayText: "Blink"

			HighTemplar:
				icon: "hightemplar.jpg"
				displayText: "High Templar"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.rally', 'unit.archonWarp']
					Feedback:
						icon: "Feedback.png"
						hotkeyCode: "Feedback/HighTemplar"
						displayText: "Feedback"

					PsiStorm:
						icon: "PsiStorm.png"
						hotkeyCode: "PsiStorm/HighTemplar"
						displayText: "Psi Storm"

			DarkTemplar:
				icon: "darktemplar.jpg"
				displayText: "Dark Templar"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.rally', 'unit.archonWarp']

			Oracle:
				icon: "oracle.jpg"
				displayText: "Oracle"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.cancel']
					LightofAiur:
						icon: "Envision.png"
						hotkeyCode: "LightofAiur/Oracle"
						displayText: "Envision"

					OracleRevelation:
						icon: "OracleRevelation.png"
						hotkeyCode: "OracleRevelation/Oracle"
						displayText: "Revelation"

					OracleWeaponOff:
						icon: "PulsarBeamOff.jpg"
						hotkeyCode: "OracleWeaponOff/Oracle"
						displayText: "Deactivate Pulsar Beam"
						on: -> @weapon = no
						if: -> @weapon

					OracleWeaponOn:
						icon: "PulsarBeam.png"
						hotkeyCode: "OracleWeaponOn/Oracle"
						displayText: "Activate Pulsar Beam"
						on: -> @weapon = yes
						if: -> not @weapon

			MothershipCore:
				icon: "mothershipcore.jpg"
				displayText: "Mothership Core"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.cancel']
					MorphToMothership:
						icon: "MorphToMothership.png"
						hotkeyCode: "MorphToMothership/MothershipCore"
						displayText: "Morph To Mothership"

					MothershipCoreMassRecall:
						icon: "MassRecall.png"
						hotkeyCode: "MothershipCoreMassRecall/MothershipCore"
						displayText: "Mass Recall"

					MothershipCoreWeapon:
						icon: "MothershipCoreWeapon.png"
						hotkeyCode: "MothershipCoreWeapon/MothershipCore"
						displayText: "Photon Overcharge"

					TemporalField:
						icon: "TemporalField.png"
						hotkeyCode: "TemporalField/MothershipCore"
						displayText: "Time Warp"

			Phoenix:
				icon: "phoenix.jpg"
				displayText: "Phoenix"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.cancel']
					GravitonBeam:
						icon: "GravitonBeam.png"
						hotkeyCode: "GravitonBeam/Phoenix"
						displayText: "Graviton Beam"

			WarpPrism:
				icon: "warpprism.jpg"
				displayText: "Warp Prism"
				commands:
					inherit: ['unit.movement', 'unit.load']
					PhasingMode:
						icon: "PhasingMode.png"
						hotkeyCode: "PhasingMode/WarpPrism"
						displayText: "Phasing Mode"

					TransportMode:
						icon: "TransportMode.png"
						hotkeyCode: "TransportMode/WarpPrism"
						displayText: "Transport Mode"

			Sentry:
				icon: "sentry.jpg"
				displayText: "Sentry"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.rally']
					Cancel:
						icon: "Cancel.png"
						hotkeyCode: "Cancel"
						displayText: "Cancel"
						if: -> @hallucinateCard
						on: -> @hallucinateCard = no
					ArchonHallucination:
						icon: "archon.jpg"
						hotkeyCode: "ArchonHallucination/Sentry"
						displayText: "Archon Hallucination"
						if: -> @hallucinateCard

					ColossusHallucination:
						icon: "colossus.jpg"
						hotkeyCode: "ColossusHallucination/Sentry"
						displayText: "Colossus Hallucination"
						if: -> @hallucinateCard

					ForceField:
						icon: "ForceField.png"
						hotkeyCode: "ForceField/Sentry"
						displayText: "Force Field"
						if: -> not @hallucinateCard

					GuardianShield:
						icon: "GuardianShield.gif"
						hotkeyCode: "GuardianShield/Sentry"
						displayText: "Guardian Shield"
						if: -> not @hallucinateCard

					Hallucination:
						icon: "Hallucination.png"
						hotkeyCode: "Hallucination/Sentry"
						displayText: "Hallucination"
						on: -> @hallucinateCard = yes
						if: -> not @hallucinateCard

					HighTemplarHallucination:
						icon: "hightemplar.jpg"
						hotkeyCode: "HighTemplarHallucination/Sentry"
						displayText: "High Templar Hallucination"
						if: -> @hallucinateCard

					ImmortalHallucination:
						icon: "immortal.jpg"
						hotkeyCode: "ImmortalHallucination/Sentry"
						displayText: "Immortal Hallucination"
						if: -> @hallucinateCard

					OracleHallucination:
						icon: "oracle.jpg"
						hotkeyCode: "OracleHallucination/Sentry"
						displayText: "Oracle Hallucination"
						if: -> @hallucinateCard

					PhoenixHallucination:
						icon: "phoenix.jpg"
						hotkeyCode: "PhoenixHallucination/Sentry"
						displayText: "Phoenix Hallucination"
						if: -> @hallucinateCard

					ProbeHallucination:
						icon: "probe.jpg"
						hotkeyCode: "ProbeHallucination/Sentry"
						displayText: "Probe Hallucination"
						if: -> @hallucinateCard

					StalkerHallucination:
						icon: "stalker.jpg"
						hotkeyCode: "StalkerHallucination/Sentry"
						displayText: "Stalker Hallucination"
						if: -> @hallucinateCard

					VoidRayHallucination:
						icon: "voidray.jpg"
						hotkeyCode: "VoidRayHallucination/Sentry"
						displayText: "Void Ray Hallucination"
						if: -> @hallucinateCard

					WarpPrismHallucination:
						icon: "warpprism.jpg"
						hotkeyCode: "WarpPrismHallucination/Sentry"
						displayText: "Warp Prism Hallucination"
						if: -> @hallucinateCard

					ZealotHallucination:
						icon: "zealot.jpg"
						hotkeyCode: "ZealotHallucination/Sentry"
						displayText: "Zealot Hallucination"
						if: -> @hallucinateCard

			VoidRay:
				icon: "voidray.jpg"
				displayText: "Void Ray"
				commands:
					inherit: ['unit.movement', 'unit.combat']
					VoidRaySwarmDamageBoost:
						icon: "prismatic_beams.png"
						hotkeyCode: "VoidRaySwarmDamageBoost/VoidRay"
						displayText: "Prismatic Alignment"

			Carrier:
				icon: "carrier.jpg"
				displayText: "Carrier"
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.cancel']
					Interceptor:
						icon: "TrainInterceptors.gif"
						hotkeyCode: "Interceptor/Carrier"
						displayText: "Interceptor"

			Mothership:
				icon: "mothership.jpg"
				displayText: "Mothership"
				commands:
					inherit: ['unit.movement', 'unit.cancel']
					MassRecall:
						icon: "MassRecall.png"
						hotkeyCode: "MassRecall/Mothership"
						displayText: "Mass Recall"

					TemporalField:
						icon: "TemporalField.png"
						hotkeyCode: "TemporalField/Mothership"
						displayText: "Time Warp"

		buildings:
			Nexus:
				icon: "nexus.jpg"
				displayText: "Nexus"
				commands:
					inherit: ['unit.cancel', 'unit.combat', 'unit.rally']
					MothershipCore:
						icon: "mothershipcore.jpg"
						hotkeyCode: "MothershipCore/Nexus"
						displayText: "Mothership Core"

					Probe:
						icon: "probe.jpg"
						hotkeyCode: "Probe/Nexus"
						displayText: "Probe"

					TimeWarp:
						icon: "ChronoBoost.png"
						hotkeyCode: "TimeWarp/Nexus"
						displayText: "Time Warp"

			Gateway:
				icon: "gateway.jpg"
				displayText: "Gateway"
				commands:
					inherit: ['unit.cancel', 'unit.rally']
					DarkTemplar:
						icon: "darktemplar.jpg"
						hotkeyCode: "DarkTemplar"
						displayText: "Dark Templar"

					HighTemplar:
						icon: "hightemplar.jpg"
						hotkeyCode: "HighTemplar"
						displayText: "High Templar"

					MorphBackToGateway:
						icon: "gateway.jpg"
						hotkeyCode: "MorphBackToGateway"
						displayText: "Morph Back To Gateway"

					Stalker:
						icon: "stalker.jpg"
						hotkeyCode: "Stalker"
						displayText: "Stalker"

					UpgradeToWarpGate:
						icon: "warpgate.jpg"
						hotkeyCode: "UpgradeToWarpGate/Gateway"
						displayText: "Upgrade to Warp Gate"

					Zealot:
						icon: "zealot.jpg"
						hotkeyCode: "Zealot"
						displayText: "Zealot"
					Sentry:
						icon: "sentry.jpg"
						hotkeyCode: "Sentry"
						displayText: "Sentry"

			Forge:
				icon: "forge.jpg"
				displayText: "Forge"
				commands:
					inherit: ['unit.cancel']
					ProtossGroundArmorLevel1:
						icon: "ProtossGroundArmorLevel1.gif"
						hotkeyCode: "ProtossGroundArmorLevel1/Forge"
						displayText: "Protoss Ground Armor 1"

					ProtossGroundWeaponsLevel1:
						icon: "ProtossGroundWeaponsLevel1.gif"
						hotkeyCode: "ProtossGroundWeaponsLevel1/Forge"
						displayText: "Protoss Ground Weapons 1"

					ProtossShieldsLevel1:
						icon: "ProtossShieldsLevel1.gif"
						hotkeyCode: "ProtossShieldsLevel1/Forge"
						displayText: "Protoss Shields 1"

			PhotonCannon:
				icon: "photoncannon.jpg"
				displayText: "Photon Cannon"
				commands:
					inherit: ['unit.combat', 'unit.cancel']

			CyberneticsCore:
				icon: "cyberneticscore.jpg"
				displayText: "Cybernetics Core"
				commands:
					inherit: ['unit.cancel']
					ProtossAirArmorLevel1:
						icon: "ProtossAirArmorLevel1.gif"
						hotkeyCode: "ProtossAirArmorLevel1/CyberneticsCore"
						displayText: "Protoss Air Armor Level1"

					ProtossAirWeaponsLevel1:
						icon: "ProtossAirWeaponsLevel1.gif"
						hotkeyCode: "ProtossAirWeaponsLevel1/CyberneticsCore"
						displayText: "Protoss Air Weapons Level1"

					ResearchWarpGate:
						icon: "ResearchWarpgate.gif"
						hotkeyCode: "ResearchWarpGate/CyberneticsCore"
						displayText: "Research Warp Gate"

			RoboticsFacility:
				icon: "roboticsfacility.jpg"
				displayText: "Robotics Facility"
				commands:
					inherit: ['unit.cancel', 'unit.rally']
					Colossus:
						icon: "colossus.jpg"
						hotkeyCode: "Colossus/RoboticsFacility"
						displayText: "Colossus"

					Immortal:
						icon: "immortal.jpg"
						hotkeyCode: "Immortal/RoboticsFacility"
						displayText: "Immortal"

					Observer:
						icon: "observer.jpg"
						hotkeyCode: "Observer/RoboticsFacility"
						displayText: "Observer"

					WarpPrism:
						icon: "warpprism.jpg"
						hotkeyCode: "WarpPrism/RoboticsFacility"
						displayText: "Warp Prism"

			RoboticsBay:
				icon: "roboticsbay.jpg"
				displayText: "Robotics Bay"
				commands:
					inherit: ['unit.cancel']
					ResearchExtendedThermalLance:
						icon: "ColossusRange.gif"
						hotkeyCode: "ResearchExtendedThermalLance/RoboticsBay"
						displayText: "Colossus Range"

					ResearchGraviticBooster:
						icon: "ObserverSpeed.gif"
						hotkeyCode: "ResearchGraviticBooster/RoboticsBay"
						displayText: "Observer Speed"

					ResearchGraviticDrive:
						icon: "WarpPrismSpeed.gif"
						hotkeyCode: "ResearchGraviticDrive/RoboticsBay"
						displayText: "Warp Prism Speed"

			Stargate:
				icon: "stargate.jpg"
				displayText: "Stargate"
				commands:
					inherit: ['unit.cancel', 'unit.rally']
					Carrier:
						icon: "carrier.jpg"
						hotkeyCode: "Carrier/Stargate"
						displayText: "Carrier"

					Oracle:
						icon: "oracle.jpg"
						hotkeyCode: "Oracle/Stargate"
						displayText: "Oracle"

					Phoenix:
						icon: "phoenix.jpg"
						hotkeyCode: "Phoenix/Stargate"
						displayText: "Phoenix"

					Sentry:
						icon: "sentry.jpg"
						hotkeyCode: "Sentry/Stargate"
						displayText: "Sentry"

					Tempest:
						icon: "Tempest.png"
						hotkeyCode: "Tempest/Stargate"
						displayText: "Tempest"

					VoidRay:
						icon: "voidray.jpg"
						hotkeyCode: "VoidRay/Stargate"
						displayText: "Void Ray"

			TwilightCouncil:
				icon: "twilightcouncil.jpg"
				displayText: "Twilight Council"
				commands:
					inherit: ['unit.cancel']
					ResearchCharge:
						icon: "Charge.png"
						hotkeyCode: "ResearchCharge/TwilightCouncil"
						displayText: "Research Charge"

					ResearchStalkerTeleport:
						icon: "Blink.png"
						hotkeyCode: "ResearchStalkerTeleport/TwilightCouncil"
						displayText: "Research Blink"

			TemplarArchive:
				icon: "templararchive.jpg"
				displayText: "Templar Archive"
				commands:
					inherit: ['unit.cancel']
					ResearchPsiStorm:
						icon: "PsiStorm.png"
						hotkeyCode: "ResearchPsiStorm/TemplarArchive"
						displayText: "Research Psi Storm"

			FleetBeacon:
				icon: "fleetbeacon.jpg"
				displayText: "Fleet Beacon"
				commands:
					inherit: ['unit.cancel']
					AnionPulseCrystals:
						icon: "AnionPulseCrystals.png"
						hotkeyCode: "AnionPulseCrystals/FleetBeacon"
						displayText: "Phoenix Range"

					ResearchInterceptorLaunchSpeedUpgrade:
						icon: "GravitonCatapult.gif"
						hotkeyCode: "ResearchInterceptorLaunchSpeedUpgrade/FleetBeacon"
						displayText: "Interceptor Launch Speed"

	Terran:
		units:
			SCV:
				icon: 'scv.jpg'
				displayText: 'SCV'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.worker']
					Repair:
						icon: 'Repair.png'
						hotkeyCode: 'Repair'
						displayText: 'Repair'
						if: -> not @buildCard
					Build:
						icon: 'Build.png'
						hotkeyCode: 'TerranBuild/SCV'
						displayText: 'Build Basic'
						if: -> not @buildCard
						on: -> @buildCard = 'basic'
					BuildAdvanced:
						icon: 'BuildAdvanced.png'
						hotkeyCode: 'TerranBuildAdvanced/SCV'
						displayText: 'Build Advanced'
						if: -> not @buildCard
						on: -> @buildCard = 'advanced'
					Cancel:
						icon: 'Cancel.png'
						hotkeyCode: 'Cancel'
						displayText: 'Cancel'
						if: -> @buildCard
						on: -> @buildCard = null

					BuildBarracks:
						icon: 'barracks.jpg'
						hotkeyCode: 'Barracks/SCV'
						displayText: 'Build Barracks'
						if: -> @buildCard is 'basic'
					BuildBunker:
						icon: 'bunker.jpg'
						hotkeyCode: 'Bunker/SCV'
						displayText: 'Build Bunker'
						if: -> @buildCard is 'basic'
					BuildCommandCenter:
						icon: 'commandcenter.jpg'
						hotkeyCode: 'CommandCenter/SCV'
						displayText: 'Build Command Center'
						if: -> @buildCard is 'basic'
					BuildEngineeringBay:
						icon: 'engineeringbay.jpg'
						hotkeyCode: 'EngineeringBay/SCV'
						displayText: 'Build Engineering Bay'
						if: -> @buildCard is 'basic'
					BuildMissileTurret:
						icon: 'missileturret.jpg'
						hotkeyCode: 'MissileTurret/SCV'
						displayText: 'Build Missile Turret'
						if: -> @buildCard is 'basic'
					Refinery:
						icon: 'Refinary.png'
						hotkeyCode: 'Refinery/SCV'
						displayText: 'Refinery'
						if: -> @buildCard is 'basic'
					BuildSupplyDepot:
						icon: 'supplydepot.jpg'
						hotkeyCode: 'SupplyDepot/SCV'
						displayText: 'Build Supply Depot'
						if: -> @buildCard is 'basic'
					BuildArmory:
						icon: 'armory.jpg'
						hotkeyCode: 'Armory/SCV'
						displayText: 'Build Armory'
						if: -> @buildCard is 'advanced'
					BuildFactory:
						icon: 'factory.jpg'
						hotkeyCode: 'Factory/SCV'
						displayText: 'Build Factory'
						if: -> @buildCard is 'advanced'
					BuildFusionCore:
						icon: 'fusioncore.jpg'
						hotkeyCode: 'FusionCore/SCV'
						displayText: 'Build Fusion Core'
						if: -> @buildCard is 'advanced'
					BuildGhostAcademy:
						icon: 'ghostacademy.jpg'
						hotkeyCode: 'GhostAcademy/SCV'
						displayText: 'Build Ghost Academy'
						if: -> @buildCard is 'advanced'
					BuildSensorTower:
						icon: 'sensortower.jpg'
						hotkeyCode: 'SensorTower/SCV'
						displayText: 'Build Sensor Tower'
						if: -> @buildCard is 'basic'
					BuildStarport:
						icon: 'starport.jpg'
						hotkeyCode: 'Starport/SCV'
						displayText: 'Build Starport'
						if: -> @buildCard is 'advanced'
			Marine:
				icon: 'marine.jpg'
				displayText: 'Marine'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					Stim:
						icon: 'Stim.png'
						hotkeyCode: 'Stim'
						displayText: 'Stim'
			Marauder:
				icon: 'marauder.jpg'
				displayText: 'Marauder'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					Stim:
						icon: 'Stim.png'
						hotkeyCode: 'Stim'
						displayText: 'Stim'
			Reaper:
				icon: 'reaper.jpg'
				displayText: 'Reaper'
				commands:
					inherit: ['unit.movement', 'unit.combat']
			Ghost:
				icon: 'ghost.jpg'
				displayText: 'Ghost'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.cancel']
					CloakOff:
						icon: 'Decloack.jpg'
						hotkeyCode: 'CloakOff'
						displayText: 'Cloak Off'
						if: -> @cloaked
						on: -> @cloaked = no
					CloakOn:
						icon: 'Cloak.png'
						hotkeyCode: 'CloakOnBanshee'
						displayText: 'Cloak On'
						if: -> not @cloaked
						on: -> @cloaked = yes
					EMP:
						icon: 'EMP.png'
						hotkeyCode: 'EMP/Ghost'
						displayText: 'EMP'
					GhostHoldFire:
						icon: 'GhostHoldFire.png'
						hotkeyCode: 'GhostHoldFire/Ghost'
						displayText: 'Ghost Hold Fire'
					NukeCalldown:
						icon: 'NukeCalldown.png'
						hotkeyCode: 'NukeCalldown/Ghost'
						displayText: 'Nuke Calldown'
					Snipe:
						icon: 'Snipe.png'
						hotkeyCode: 'Snipe/Ghost'
						displayText: 'Snipe'
					WeaponsFree:
						icon: 'WeaponsFree.png'
						hotkeyCode: 'WeaponsFree/Ghost'
						displayText: 'Weapons Free'
			WidowMine:
				icon: 'widowmine.jpg'
				displayText: 'Widow Mine'
				commands:
					inherit: ['unit.movement']
					WidowMineBurrow:
						icon: 'WidowMineBurrow.png'
						hotkeyCode: 'WidowMineBurrow/WidowMine'
						displayText: 'Widow Mine Burrow'
						if: -> not @burrowed
						on: -> @burrowed = yes
					WidowMineUnburrow:
						icon: 'WidowMineUnburrow.jpg'
						hotkeyCode: 'WidowMineUnburrow/WidowMine'
						displayText: 'Widow Mine Unburrow'
						if: -> @burrowed
						on: -> @burrowed = no
			Hellion:
				icon: 'hellion.jpg'
				displayText: 'Hellion'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					MorphToHellion:
						icon: 'hellion.jpg'
						hotkeyCode: 'MorphToHellion/Hellion'
						displayText: 'Morph To Hellion'
						if: -> @hellbat
						on: -> @hellbat = no
					MorphToHellbat:
						icon: 'hellbat.jpg'
						hotkeyCode: 'MorphToHellionTank/Hellion'
						displayText: 'Morph To Hellbat'
						if: -> not @hellbat
						on: -> @hellbat = yes
			SiegeTank:
				icon: 'siegetank.jpg'
				displayText: 'Siege Tank'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					SiegeMode:
						icon: 'SiegeMode.png'
						hotkeyCode: 'SiegeMode'
						displayText: 'Siege Mode'
						if: -> not @sieged
						on: -> @sieged = yes
					Unsiege:
						icon: 'Unsiege.png'
						hotkeyCode: 'Unsiege'
						displayText: 'Unsiege'
						if: -> @sieged
						on: -> @sieged = no
			Thor:
				icon: 'thor.jpg'
				displayText: 'Thor'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.cancel']
					'ArmorpiercingMode':
						icon: 'HighImpactPayload.png'
						hotkeyCode: 'ArmorpiercingMode'
						displayText: 'High Impact Payload'
						if: -> not @highimpact
						on: -> @highimpact = yes
					ExplosivePayload:
						icon: 'ExplosivePayload.png'
						hotkeyCode: 'ExplosiveMode'
						displayText: 'Explosive Payload'
						if: -> @highimpact
						on: -> @highimpact = no
			Viking:
				icon: 'viking.jpg'
				displayText: 'Viking'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					AssaultMode:
						icon: 'AssaultMode.png'
						hotkeyCode: 'AssaultMode'
						displayText: 'Assault Mode'
						if: -> not @fightermode
						on: -> @fightermode = yes
					FighterMode:
						icon: 'FighterMode.png'
						hotkeyCode: 'FighterMode'
						displayText: 'Fighter Mode'
						if: -> @fightermode
						on: -> @fightermode = no
			Raven:
				icon: 'raven.jpg'
				displayText: 'Raven'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					AutoTurret:
						icon: 'AutoTurret.png'
						hotkeyCode: 'AutoTurret/Raven'
						displayText: 'Auto Turret'
					BuildAutoTurret:
						icon: 'BuildAutoTurret.png'
						hotkeyCode: 'BuildAutoTurret/Raven'
						displayText: 'Build Auto Turret'
					BuildPointDefenseDrone:
						icon: 'BuildPointDefenseDrone.png'
						hotkeyCode: 'BuildPointDefenseDrone/Raven'
						displayText: 'Build Point Defense Drone'
					HunterSeekerMissile:
						icon: 'HunterSeekerMissile.png'
						hotkeyCode: 'HunterSeekerMissile/Raven'
						displayText: 'Hunter Seeker Missile'
					PointDefenseDrone:
						icon: 'PointDefenseDrone.png'
						hotkeyCode: 'PointDefenseDrone/Raven'
						displayText: 'Point Defense Drone'
			Banshee:
				icon: 'banshee.jpg'
				displayText: 'Banshee'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					CloakOff:
						icon: 'Decloack.jpg'
						hotkeyCode: 'CloakOff'
						displayText: 'Cloak Off'
						if: -> @cloaked
						on: -> @cloaked = no
					CloakOn:
						icon: 'Cloak.png'
						hotkeyCode: 'CloakOnBanshee'
						displayText: 'Cloak On'
						if: -> not @cloaked
						on: -> @cloaked = yes
			Medivac:
				icon: 'medivac.jpg'
				displayText: 'Medivac'
				commands:
					inherit: ['unit.movement', 'unit.load']
					Heal:
						icon: 'Heal.png'
						hotkeyCode: 'Heal/Medivac'
						displayText: 'Heal'
					MedivacSpeedBoost:
						icon: 'MedivacSpeedBoost.png'
						hotkeyCode: 'MedivacSpeedBoost/Medivac'
						displayText: 'Medivac Speed Boost'
			Battlecruiser:
				icon: 'battlecruiser.jpg'
				displayText: 'Battlecruiser'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					YamatoGun:
						icon: 'YamatoGun.png'
						hotkeyCode: 'YamatoGun'
						displayText: 'Yamato Gun'
		buildings:
			CommandCenter:
				icon: 'commandcenter.jpg'
				displayText: 'Command Center'
				commands:
					inherit: ['unit.flying', 'unit.cancel']
					CommandCenterLoad:
						icon: 'Load.gif'
						hotkeyCode: 'CommandCenterLoad'
						displayText: 'Command Center Load'
						if: -> @upgrade isnt 'OrbitalCommand'
					CommandCenterUnloadAll:
						icon: 'UnloadAll.jpg'
						hotkeyCode: 'CommandCenterUnloadAll'
						displayText: 'Command Center Unload All'
						if: -> @upgrade isnt 'OrbitalCommand'
					BuildOrbitalCommand:
						icon: 'orbitalcommand.jpg'
						hotkeyCode: 'OrbitalCommand/CommandCenter'
						displayText: 'Build Orbital Command'
						if: -> not (@upgrade or @lifted)
						on: -> @upgrade = 'OrbitalCommand'
					BuildSCV:
						icon: 'scv.jpg'
						hotkeyCode: 'SCV'
						displayText: 'Build SCV'
						if: -> not @lifted

					UpgradeToPlanetaryFortress:
						icon: 'planetaryfortress.jpg'
						hotkeyCode: 'UpgradeToPlanetaryFortress/CommandCenter'
						displayText: 'Upgrade To Planetary Fortress'
						if: -> not (@upgrade or @lifted)
						on: -> @upgrade = 'PlanetaryFortress'
					CalldownMULE:
						icon: 'CalldownMULE.png'
						hotkeyCode: 'CalldownMULE/OrbitalCommand'
						displayText: 'Calldown MULE'
						if: -> @upgrade is 'OrbitalCommand' and not @lifted
					Scan:
						icon: 'Scan.png'
						hotkeyCode: 'Scan/OrbitalCommand'
						displayText: 'Scan'
						if: -> @upgrade is 'OrbitalCommand' and not @lifted
					SupplyDrop:
						icon: 'SupplyDrop.png'
						hotkeyCode: 'SupplyDrop/OrbitalCommand'
						displayText: 'Supply Drop'
						if: -> @upgrade is 'OrbitalCommand' and not @lifted
					Attack:
						icon: 'Attack.png'
						hotkeyCode: 'Attack'
						displayText: 'Attack'
						if: -> @upgrade is 'PlanetaryFortress'
					Stop:
						icon: 'Stop.png'
						hotkeyCode: 'StopPlanetaryFortress/PlanetaryFortress'
						displayText: 'Stop'
						if: -> @upgrade is 'PlanetaryFortress' or @lifted
			SupplyDepot:
				icon: 'supplydepot.jpg'
				displayText: 'Supply Depot'
				commands:
					inherit: ['unit.cancel', 'unit.underconstruction']
					Lower:
						icon: 'Lower.gif'
						hotkeyCode: 'Lower/SupplyDepot'
						displayText: 'Lower Supply Depot'
						if: -> not @lowered
						on: -> @lowered = yes
					Raise:
						icon: 'supplydepot.jpg'
						hotkeyCode: 'Raise/SupplyDepotLowered'
						displayText: 'Raise Supply Depot'
						if: -> @lowered
						on: -> @lowered = no
			Barracks:
				icon: 'barracks.jpg'
				displayText: 'Barracks'
				commands:
					inherit: ['unit.flying', 'unit.cancel']
					BuildGhost:
						icon: 'ghost.jpg'
						hotkeyCode: 'Ghost/Barracks'
						displayText: 'Build Ghost'
						if: -> not @lifted
					BuildMarauder:
						icon: 'marauder.jpg'
						hotkeyCode: 'Marauder/Barracks'
						displayText: 'Build Marauder'
						if: -> not @lifted
					BuildMarine:
						icon: 'marine.jpg'
						hotkeyCode: 'Marine/Barracks'
						displayText: 'Build Marine'
						if: -> not @lifted
					BuildReactor:
						icon: 'reactor.jpg'
						hotkeyCode: 'Reactor/Barracks'
						displayText: 'Build Reactor'
						if: -> not (@upgrade or @lifted)
						on: -> @upgrade = 'Reactor'
					BuildReaper:
						icon: 'reaper.jpg'
						hotkeyCode: 'Reaper/Barracks'
						displayText: 'Build Reaper'
						if: -> not @lifted
					BuildTechLab:
						icon: 'techlab.jpg'
						hotkeyCode: 'TechLabBarracks/Barracks'
						displayText: 'Build Tech Lab'
						if: -> not (@upgrade or @lifted)
						on: -> @upgrade = 'TechLab'
			BarracksTechLab:
				icon: 'barrackstechlab.jpg'
				displayText: 'Barracks Tech Lab'
				commands:
					inherit: ['unit.cancel']
					ResearchStimpack:
						icon: 'Stim.png'
						hotkeyCode: 'Stimpack/BarracksTechLab'
						displayText: 'Research Stimpack'
					ResearchShieldWall:
						icon: 'CombatShield.png'
						hotkeyCode: 'ResearchShieldWall/BarracksTechLab'
						displayText: 'Research Combat Shield'
					ResearchPunisherGrenades:
						icon: 'ConcussiveShells.png'
						hotkeyCode: 'ResearchPunisherGrenades/BarracksTechLab'
						displayText: 'Research Concussive Shells'
			Bunker:
				icon: 'bunker.jpg'
				displayText: 'Bunker'
				commands:
					inherit: ['unit.cancel', 'unit.load', 'unit.attack']
					Salvage:
						icon: 'Salvage.gif'
						hotkeyCode: 'Salvage/Bunker'
						displayText: 'Salvage'
					Rally:
						icon: 'Rally.jpg'
						hotkeyCode: 'SetBunkerRallyPoint/Bunker'
						displayText: 'Rally'
			MissileTurret:
				icon: 'missileturret.jpg'
				displayText: 'Missile Turret'
				commands:
					inherit: ['unit.combat', 'unit.cancel']
			EngineeringBay:
				icon: 'engineeringbay.jpg'
				displayText: 'Engineering Bay'
				commands:
					inherit: ['unit.cancel']
					ResearchHiSecAutoTracking:
						icon: 'HisecAutoTracking.gif'
						hotkeyCode: 'ResearchHiSecAutoTracking/EngineeringBay'
						displayText: 'Hi-Sec Auto Tracking'
					ResearchNeosteelFrame:
						icon: 'NeosteelFrames.gif'
						hotkeyCode: 'ResearchNeosteelFrame/EngineeringBay'
						displayText: 'Research Neosteel Frame'
					TerranInfantryArmorLevel1:
						icon: 'InfantryArmor1.gif'
						hotkeyCode: 'TerranInfantryArmorLevel1/EngineeringBay'
						displayText: 'Terran Infantry Armor'
					TerranInfantryWeaponsLevel1:
						icon: 'InfantryWeapons1.gif'
						hotkeyCode: 'TerranInfantryWeaponsLevel1/EngineeringBay'
						displayText: 'Terran Infantry Weapons'
					UpgradeBuildingArmorLevel1:
						icon: 'BuildingArmor.gif'
						hotkeyCode: 'UpgradeBuildingArmorLevel1/EngineeringBay'
						displayText: 'Upgrade Building Armor'
			Factory:
				icon: 'factory.jpg'
				displayText: 'Factory'
				commands:
					inherit: ['unit.flying', 'unit.cancel']
					BuildHellion:
						icon: 'hellion.jpg'
						hotkeyCode: 'Hellion/Factory'
						displayText: 'Build Hellion'
						if: -> not @lifted
					HellionTank:
						icon: 'hellbat.jpg'
						hotkeyCode: 'HellionTank/Factory'
						displayText: 'Build HellBat'
						if: -> not @lifted
					BuildSiegeTank:
						icon: 'siegetank.jpg'
						hotkeyCode: 'SiegeTank/Factory'
						displayText: 'Build Siege Tank'
						if: -> not @lifted
					BuildTechLab:
						icon: 'TechLab.png'
						hotkeyCode: 'TechLabFactory/Factory'
						displayText: 'Build Tech Lab'
						if: -> not @lifted
					BuildThor:
						icon: 'thor.jpg'
						hotkeyCode: 'Thor/Factory'
						displayText: 'Build Thor'
						if: -> not @lifted
					BuildWidowMine:
						icon: 'widowmine.jpg'
						hotkeyCode: 'WidowMine/Factory'
						displayText: 'Build Widow Mine'
						if: -> not @lifted
					BuildReactor:
						icon: 'reactor.jpg'
						hotkeyCode: 'Reactor/Factory'
						displayText: 'Build Reactor'
						if: -> not (@upgrade or @lifted)
						on: -> @upgrade = 'Reactor'
					BuildTechLab:
						icon: 'techlab.jpg'
						hotkeyCode: 'TechLabFactory/Factory'
						displayText: 'Build Tech Lab'
						if: -> not (@upgrade or @lifted)
						on: -> @upgrade = 'TechLab'
			FactoryTechLab:
				icon: 'factorytechlab.jpg'
				displayText: 'Factory Tech Lab'
				commands:
					inherit: ['unit.cancel']
					ResearchHighCapacityBarrels:
						icon: 'InfernalPreigniter.png'
						hotkeyCode: 'ResearchHighCapacityBarrels/FactoryTechLab'
						displayText: 'Research Infernal Pre-Igniter'
					ResearchDrillClaws:
						icon: 'DrillingClaws.png'
						hotkeyCode: 'ResearchDrillClaws/FactoryTechLab'
						displayText: 'Research Drill Claws'
			Starport:
				icon: 'starport.jpg'
				displayText: 'Starport'
				commands:
					inherit: ['unit.flying', 'unit.cancel']
					Banshee:
						icon: 'banshee.jpg'
						hotkeyCode: 'Banshee/Starport'
						displayText: 'Banshee'
						if: -> not @lifted
					BuildBattlecruiser:
						icon: 'battlecruiser.jpg'
						hotkeyCode: 'Battlecruiser/Starport'
						displayText: 'Build Battlecruiser'
						if: -> not @lifted
					BuildTechLabStarport:
						icon: 'BuildTechLabStarport.png'
						hotkeyCode: 'BuildTechLabStarport'
						displayText: 'Build Tech Lab Starport'
						if: -> not @lifted
					BuildMedivac:
						icon: 'medivac.jpg'
						hotkeyCode: 'Medivac/Starport'
						displayText: 'Build Medivac'
						if: -> not @lifted
					BuildRaven:
						icon: 'raven.jpg'
						hotkeyCode: 'Raven/Starport'
						displayText: 'Build Raven'
						if: -> not @lifted
					BuildReactor:
						icon: 'reactor.jpg'
						hotkeyCode: 'Reactor/Starport'
						displayText: 'Build Reactor'
						if: -> not (@upgrade or @lifted)
						on: -> @upgrade = 'Reactor'
					BuildTechLab:
						icon: 'techlab.jpg'
						hotkeyCode: 'TechLabStarport/Starport'
						displayText: 'Build Tech Lab'
						if: -> not (@upgrade or @lifted)
						on: -> @upgrade = 'TechLab'
					VikingFighter:
						icon: 'viking.jpg'
						hotkeyCode: 'VikingFighter/Starport'
						displayText: 'Viking Fighter'
						if: -> not @lifted
			StarportTechLab:
				icon: 'starporttechlab.jpg'
				displayText: 'Starport Tech Lab'
				commands:
					inherit: ['unit.cancel']
					ResearchBansheeCloak:
						icon: 'Cloak.png'
						hotkeyCode: 'ResearchBansheeCloak/StarportTechLab'
						displayText: 'Research Banshee Cloak'
					ResearchDurableMaterials:
						icon: 'DurableMaterials.gif'
						hotkeyCode: 'ResearchDurableMaterials/StarportTechLab'
						displayText: 'Research Durable Materials'
					ResearchMedivacEnergyUpgrade:
						icon: 'CaduceusReactor.gif'
						hotkeyCode: 'ResearchMedivacEnergyUpgrade/StarportTechLab'
						displayText: 'Research Medivac Energy Upgrade'
					ResearchRavenEnergyUpgrade:
						icon: 'CorvidReactor.gif'
						hotkeyCode: 'ResearchRavenEnergyUpgrade/StarportTechLab'
						displayText: 'Research Raven Energy Upgrade'
			Armory:
				icon: 'armory.jpg'
				displayText: 'Armory'
				commands:
					inherit: ['unit.cancel']
					TerranVehicleAndShipPlatingLevel1:
						icon: 'VehiclePlating1.gif'
						hotkeyCode: 'TerranVehicleAndShipPlatingLevel1/Armory'
						displayText: 'Upgrade Terran Vehicle Plating'
					TerranVehicleAndShipWeaponsLevel1:
						icon: 'VehicleWeapons1.gif'
						hotkeyCode: 'TerranVehicleAndShipWeaponsLevel1/Armory'
						displayText: 'Upgrade Terran Vehicle Weapons'
			GhostAcademy:
				icon: 'ghostacademy.jpg'
				displayText: 'Ghost Academy'
				commands:
					inherit: ['unit.cancel']
					NukeArm:
						icon: 'NukeCalldown.png'
						hotkeyCode: 'NukeArm/GhostAcademy'
						displayText: 'Nuke Arm'
					ResearchPersonalCloaking:
						icon: 'Cloak.png'
						hotkeyCode: 'ResearchPersonalCloaking/GhostAcademy'
						displayText: 'Research Personal Cloaking'
			FusionCore:
				icon: 'fusioncore.jpg'
				displayText: 'Fusion Core'
				commands:
					inherit: ['unit.cancel']
					ResearchBattlecruiserEnergyUpgrade:
						icon: 'BehemothReactor.gif'
						hotkeyCode: 'ResearchBattlecruiserEnergyUpgrade/FusionCore'
						displayText: 'Research Battlecruiser Energy Upgrade'
					ResearchBattlecruiserSpecializations:
						icon: 'YamatoCannon.png'
						hotkeyCode: 'ResearchBattlecruiserSpecializations/FusionCore'
						displayText: 'Research Weapon Refit'
			SensorTower:
				icon: 'sensortower.jpg'
				displayText: 'Sensor Tower'
	Zerg:
		units:
			Larva:
				icon: 'larva.jpg'
				displayText: 'Larva'
				commands:
					MorphToCorruptor:
						icon: 'corruptor.jpg'
						hotkeyCode: 'Corruptor/Larva'
						displayText: 'Morph to Corruptor'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToDrone:
						icon: 'drone.jpg'
						hotkeyCode: 'Drone/Larva'
						displayText: 'Morph to Drone'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToHydralisk:
						icon: 'hydralisk.jpg'
						hotkeyCode: 'Hydralisk/Larva'
						displayText: 'Morph to Hydralisk'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToInfestor:
						icon: 'infestor.jpg'
						hotkeyCode: 'Infestor/Larva'
						displayText: 'Morph to Infestor'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToMutalisk:
						icon: 'mutalisk.jpg'
						hotkeyCode: 'Mutalisk/Larva'
						displayText: 'Morph to Mutalisk'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToOverlord:
						icon: 'overlord.jpg'
						hotkeyCode: 'Overlord/Larva'
						displayText: 'Morph to Overlord'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToQueen:
						icon: 'queen.jpg'
						hotkeyCode: 'Queen/Larva'
						displayText: 'Morph to Queen'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToRoach:
						icon: 'roach.jpg'
						hotkeyCode: 'Roach/Larva'
						displayText: 'Morph to Roach'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToSwarmHost:
						icon: 'swarmhost.jpg'
						hotkeyCode: 'SwarmHostMP/Larva'
						displayText: 'Morph to Swarm Host'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToUltralisk:
						icon: 'ultralisk.jpg'
						hotkeyCode: 'Ultralisk/Larva'
						displayText: 'Morph to Ultralisk'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToViper:
						icon: 'viper.jpg'
						hotkeyCode: 'Viper/Larva'
						displayText: 'Morph to Viper'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
					MorphToZergling:
						icon: 'zergling.jpg'
						hotkeyCode: 'Zergling/Larva'
						displayText: 'Morph to Zergling'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Egg'
			Egg:
				icon: 'egg.jpg'
				displayText: 'Egg'
				commands:
					Rally:
						icon: 'Rally.jpg'
						hotkeyCode: 'RallyEgg'
						displayText: 'Rally'
			Drone:
				icon: 'drone.jpg'
				displayText: 'Drone'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.burrow', 'unit.worker']
					BuildBasic:
						icon: 'Build.png'
						hotkeyCode: 'ZergBuild/Drone'
						displayText: 'Build Basic'
						if: -> not (@buildCard or @burrowed)
						on: -> @buildCard = 'basic'
					BuildAdvanced:
						icon: 'BuildAdvanced.png'
						hotkeyCode: 'ZergBuildAdvanced/Drone'
						displayText: 'Build Advanced'
						if: -> not (@buildCard or @burrowed)
						on: -> @buildCard = 'advanced'
					Cancel:
						icon: 'Cancel.png'
						hotkeyCode: 'Cancel'
						displayText: 'Cancel'
						if: -> @buildCard
						on: -> @buildCard = null
					BuildEvolutionChamber:
						icon: 'evolutionchamber.jpg'
						hotkeyCode: 'EvolutionChamber/Drone'
						displayText: 'Build Evolution Chamber'
						if: -> @buildCard is 'basic'
					BuildExtractor:
						icon: 'Extractor.png'
						hotkeyCode: 'Extractor/Drone'
						displayText: 'Extractor'
						if: -> @buildCard is 'basic'
					BuildHatchery:
						icon: 'hatchery.jpg'
						hotkeyCode: 'Hatchery/Drone'
						displayText: 'Build Hatchery'
						if: -> @buildCard is 'basic'
					BuildRoachWarren:
						icon: 'roachwarren.jpg'
						hotkeyCode: 'RoachWarren/Drone'
						displayText: 'Build Roach Warren'
						if: -> @buildCard is 'basic'
					BuildSpawningPool:
						icon: 'spawningpool.jpg'
						hotkeyCode: 'SpawningPool/Drone'
						displayText: 'Build Spawning Pool'
						if: -> @buildCard is 'basic'
					BuildSpineCrawler:
						icon: 'spinecrawler.jpg'
						hotkeyCode: 'SpineCrawler/Drone'
						displayText: 'Build Spine Crawler'
						if: -> @buildCard is 'basic'
					BuildSporeCrawler:
						icon: 'sporecrawler.jpg'
						hotkeyCode: 'SporeCrawler/Drone'
						displayText: 'Build Spore Crawler'
						if: -> @buildCard is 'basic'
					BuildBanelingNest:
						icon: 'banelingnest.jpg'
						hotkeyCode: 'BanelingNest/Drone'
						displayText: 'Build Baneling Nest'
						if: -> @buildCard is 'basic'
					BuildHydraliskDen:
						icon: 'hydraliskden.jpg'
						hotkeyCode: 'HydraliskDen/Drone'
						displayText: 'Build Hydralisk Den'
						if: -> @buildCard is 'advanced'
					BuildInfestationPit:
						icon: 'infestationpit.jpg'
						hotkeyCode: 'InfestationPit/Drone'
						displayText: 'Build Infestation Pit'
						if: -> @buildCard is 'advanced'
					BuildNydusNetwork:
						icon: 'nydusnetwork.jpg'
						hotkeyCode: 'NydusNetwork/Drone'
						displayText: 'Build Nydus Network'
						if: -> @buildCard is 'advanced'
					BuildSpire:
						icon: 'spire.jpg'
						hotkeyCode: 'Spire/Drone'
						displayText: 'Build Spire'
						if: -> @buildCard is 'advanced'
					BuildUltraliskCavern:
						icon: 'ultraliskcavern.jpg'
						hotkeyCode: 'UltraliskCavern/Drone'
						displayText: 'Build Ultralisk Cavern'
						if: -> @buildCard is 'advanced'
			Overlord:
				icon: 'overlord.jpg'
				displayText: 'Overlord'
				commands:
					inherit: ['unit.movement']
					GenerateCreep:
						icon: 'GenerateCreep.png'
						hotkeyCode: 'GenerateCreep/Overlord'
						displayText: 'Generate Creep'
						if: -> not @gencreep
						on: -> @gencreep = yes
					MorphToOverseer:
						icon: 'MorphToOverseer.png'
						hotkeyCode: 'MorphToOverseer/Overlord'
						displayText: 'Morph To Overseer'
					StopGenerateCreep:
						icon: 'StopGenerateCreep.png'
						hotkeyCode: 'StopGenerateCreep/Overlord'
						displayText: 'Stop Generate Creep'
						if: -> @gencreep
						on: -> @gencreep = no
			Zergling:
				icon: 'zergling.jpg'
				displayText: 'Zergling'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.burrow']
					MorphToBaneling:
						icon: 'baneling.jpg'
						hotkeyCode: 'Baneling/Zergling'
						displayText: 'Morph to Baneling'
						if: -> not @burrowed
			Roach:
				icon: 'roach.jpg'
				displayText: 'Roach'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.burrow']
			Queen:
				icon: 'queen.jpg'
				displayText: 'Queen'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.burrow']
					BuildCreepTumor:
						icon: 'BuildCreepTumor.png'
						hotkeyCode: 'BuildCreepTumor/Queen'
						displayText: 'Build Creep Tumor'
						if: -> not @burrowed
					InjectLarva:
						icon: 'larva.jpg'
						hotkeyCode: 'MorphMorphalisk/Queen'
						displayText: 'Inject Larva'
						if: -> not @burrowed
					Transfusion:
						icon: 'Transfusion.png'
						hotkeyCode: 'Transfusion/Queen'
						displayText: 'Transfusion'
						if: -> not @burrowed
			Baneling:
				icon: 'baneling.jpg'
				displayText: 'Baneling'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.burrow']
					DisableBuildingAttack:
						icon: 'Explode.png'
						hotkeyCode: 'DisableBuildingAttack/Baneling'
						displayText: 'Disable Building Attack'
						if: -> @buildingAttack and not @burrowed
						on: -> @buildingAttack = no
					EnableBuildingAttack:
						icon: 'EnableBuildingAttack.png'
						hotkeyCode: 'EnableBuildingAttack/Baneling'
						displayText: 'Enable Building Attack'
						if: -> not @buildingAttack and not @burrowed
						on: -> @buildingAttack = yes
					Explode:
						icon: 'Explode.png'
						hotkeyCode: 'Explode/Baneling'
						displayText: 'Explode'
			Ultralisk:
				icon: 'ultralisk.jpg'
				displayText: 'Ultralisk'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.burrow']
			Hydralisk:
				icon: 'hydralisk.jpg'
				displayText: 'Hydralisk'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.burrow']
			Infestor:
				icon: 'infestor.jpg'
				displayText: 'Infestor'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.burrow']
					FungalGrowth:
						icon: 'FungalGrowth.png'
						hotkeyCode: 'FungalGrowth/Infestor'
						displayText: 'Fungal Growth'
						if: -> not @burrowed
					InfestedTerrans:
						icon: 'InfestedTerrans.gif'
						hotkeyCode: 'InfestedTerrans/Infestor'
						displayText: 'Infested Terrans'
					NeuralParasite:
						icon: 'NeuralParasite.png'
						hotkeyCode: 'NeuralParasite/Infestor'
						displayText: 'Neural Parasite'
						if: -> not @burrowed
			SwarmHost:
				icon: 'swarmhost.jpg'
				displayText: 'Swarm Host'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.burrow']
					SpawnLocustsBurrowed:
						icon: 'SpawnLocusts.png'
						hotkeyCode: 'SwarmHost/SwarmHostBurrowedMP'
						displayText: 'Spawn Locusts'
						if: -> @burrowed
					SpawnLocusts:
						icon: 'SpawnLocusts.png'
						hotkeyCode: 'SwarmHost/SwarmHostMP'
						displayText: 'Spawn Locusts'
						if: -> not @burrowed
			Viper:
				icon: 'viper.jpg'
				displayText: 'Viper'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					BlindingCloud:
						icon: 'BlindingCloud.png'
						hotkeyCode: 'BlindingCloud/Viper'
						displayText: 'Blinding Cloud'
					FaceEmbrace:
						icon: 'ViperAbduct.png'
						hotkeyCode: 'FaceEmbrace/Viper'
						displayText: 'Abduct'
					ViperConsume:
						icon: 'ViperConsume.png'
						hotkeyCode: 'ViperConsume/Viper'
						displayText: 'Viper Consume'
			Corruptor:
				icon: 'corruptor.jpg'
				displayText: 'Corruptor'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					BroodLord:
						icon: 'broodlord.jpg'
						hotkeyCode: 'BroodLord/Corruptor'
						displayText: 'Brood Lord'
					CorruptionAbility:
						icon: 'CorruptionAbility.png'
						hotkeyCode: 'CorruptionAbility/Corruptor'
						displayText: 'Corruption Ability'
			Overseer:
				icon: 'overseer.jpg'
				displayText: 'Overseer'
				commands:
					inherit: ['unit.movement', 'unit.combat']
					Contaminate:
						icon: 'Contaminate.png'
						hotkeyCode: 'Contaminate/Overseer'
						displayText: 'Contaminate'
					SpawnChangeling:
						icon: 'SpawnChangeling.gif'
						hotkeyCode: 'SpawnChangeling/Overseer'
						displayText: 'Spawn Changeling'
			Broodlord:
				icon: 'broodlord.jpg'
				displayText: 'Broodlord'
				commands:
					inherit: ['unit.movement', 'unit.combat']
		buildings:
			Hatchery:
				icon: 'hatchery.jpg'
				displayText: 'Hatchery'
				commands:
					inherit: ['unit.cancel']
					SelectLarva:
						icon: 'larva.jpg'
						hotkeyCode: 'Larva'
						displayText: 'Select Larva'
						on: -> @globalState.selectNew 'Zerg', 'units', 'Larva'
					Queen:
						icon: 'queen.jpg'
						hotkeyCode: 'Queen'
						displayText: 'Spawn Queen'
					EvolveVentralSacks:
						icon: 'VentralSacs.gif'
						hotkeyCode: 'EvolveVentralSacks'
						displayText: 'Evolve Ventral Sacks'
					BuildLair:
						icon: 'lair.jpg'
						hotkeyCode: 'Lair/Hatchery'
						displayText: 'Build Lair'
						if: -> not @upgrade
						on: -> @upgrade = 'Lair'
					BuildHive:
						icon: 'hive.jpg'
						hotkeyCode: 'Hive/Lair'
						displayText: 'Build Hive'
						if: -> @upgrade is 'Lair'
						on: -> @upgrade = 'Hive'
					ResearchBurrow:
						icon: 'Burrow.gif'
						hotkeyCode: 'ResearchBurrow'
						displayText: 'Research Burrow'
					overlordspeed:
						icon: 'PneumatizedCarapace.gif'
						hotkeyCode: 'overlordspeed'
						displayText: 'Pneumatized Carapace'
			SpineCrawler:
				icon: 'spinecrawler.jpg'
				displayText: 'Spine Crawler Uprooted'
				commands:
					inherit: ['unit.movement', 'unit.combat', 'unit.cancel']
					Root:
						icon: 'Root.png'
						hotkeyCode: 'SpineCrawlerRoot/SpineCrawlerUprooted'
						displayText: 'Root'
						on: -> @unrooted = no
						if: -> @unrooted
					Uproot:
						icon: 'Uproot.png'
						hotkeyCode: 'SpineCrawlerUproot/SpineCrawler'
						displayText: 'Uproot'
						on: -> @unrooted = yes
						if: -> not @unrooted
			SporeCrawler:
				icon: 'sporecrawler.jpg'
				displayText: 'Spore Crawler'
				commands:
					inherit: ['unit.movement','unit.combat', 'unit.cancel']
					Root:
						icon: 'Root.png'
						hotkeyCode: 'SporeCrawlerRoot/SporeCrawlerUprooted'
						displayText: 'Root'
						on: -> @unrooted = no
						if: -> @unrooted
					Uproot:
						icon: 'Uproot.png'
						hotkeyCode: 'SporeCrawlerUproot/SporeCrawler'
						displayText: 'Uproot'
						on: -> @unrooted = yes
						if: -> not @unrooted
			SpawningPool:
				icon: 'spawningpool.jpg'
				displayText: 'Spawning Pool'
				commands:
					inherit: ['unit.cancel']
					zerglingattackspeed:
						icon: 'AdrenalGlands.gif'
						hotkeyCode: 'zerglingattackspeed/SpawningPool'
						displayText: 'Adrenal Glands'
					zerglingmovementspeed:
						icon: 'MetabolicBoost.gif'
						hotkeyCode: 'zerglingmovementspeed/SpawningPool'
						displayText: 'Metabolic Boost'
			RoachWarren:
				icon: 'roachwarren.jpg'
				displayText: 'Roach Warren'
				commands:
					inherit: ['unit.cancel']
					EvolveGlialRegeneration:
						icon: 'EvolveGlialRegeneration.gif'
						hotkeyCode: 'EvolveGlialRegeneration/RoachWarren'
						displayText: 'Evolve Glial Regeneration'
					EvolveTunnelingClaws:
						icon: 'EvolveTunnelingClaws.gif'
						hotkeyCode: 'EvolveTunnelingClaws/RoachWarren'
						displayText: 'Evolve Tunneling Claws'
			EvolutionChamber:
				icon: 'evolutionchamber.jpg'
				displayText: 'Evolution Chamber'
				commands:
					inherit: ['unit.cancel']
					zerggroundarmor1:
						icon: 'ZergGroundCarapace1.gif'
						hotkeyCode: 'zerggroundarmor1/EvolutionChamber'
						displayText: 'Ground Carapace'
					zergmeleeweapons1:
						icon: 'ZergMeleeAttacks1.gif'
						hotkeyCode: 'zergmeleeweapons1/EvolutionChamber'
						displayText: 'Melee Weapons'
					zergmissileweapons1:
						icon: 'ZergMissileAttacks1.gif'
						hotkeyCode: 'zergmissileweapons1/EvolutionChamber'
						displayText: 'Missle Weapons'
			HydraliskDen:
				icon: 'hydraliskden.jpg'
				displayText: 'Hydralisk Den'
				commands:
					inherit: ['unit.cancel']
					MuscularAugments:
						icon: 'MuscularAugments.png'
						hotkeyCode: 'MuscularAugments/HydraliskDen'
						displayText: 'Muscular Augments (Range)'
					hydraliskspeed:
						icon: 'GroovedSpines.gif'
						hotkeyCode: 'hydraliskspeed/HydraliskDen'
						displayText: 'Grooved Spines (Speed)'
			InfestationPit:
				icon: 'infestationpit.jpg'
				displayText: 'Infestation Pit'
				commands:
					inherit: ['unit.cancel']
					EvolveInfestorEnergyUpgrade:
						icon: 'PathogenGlands.gif'
						hotkeyCode: 'EvolveInfestorEnergyUpgrade/InfestationPit'
						displayText: 'Pathogen Glands'
					ResearchLocustLifetimeIncrease:
						icon: 'IncreasedLocustLifetime.gif'
						hotkeyCode: 'ResearchLocustLifetimeIncrease/InfestationPit'
						displayText: 'Enduring Locusts'
					ResearchNeuralParasite:
						icon: 'NeuralParasite.png'
						hotkeyCode: 'ResearchNeuralParasite/InfestationPit'
						displayText: 'Research Neural Parasite'
			UltraliskCavern:
				icon: 'ultraliskcavern.jpg'
				displayText: 'Ultralisk Cavern'
				commands:
					inherit: ['unit.cancel']
					EvolveChitinousPlating:
						icon: 'ChitinousPlating.gif'
						hotkeyCode: 'EvolveChitinousPlating/UltraliskCavern'
						displayText: 'Evolve Chitinous Plating'
			BanelingNest:
				icon: 'banelingnest.jpg'
				displayText: 'Baneling Nest'
				commands:
					inherit: ['unit.cancel']
					EvolveCentrificalHooks:
						icon: 'CentrifugalHooks.gif'
						hotkeyCode: 'EvolveCentrificalHooks/BanelingNest'
						displayText: 'Centrifugal Hooks'
			Spire:
				icon: 'spire.jpg'
				displayText: 'Spire'
				commands:
					inherit: ['unit.cancel']
					BuildGreaterSpire:
						icon: 'greaterspire.jpg'
						hotkeyCode: 'GreaterSpire/Spire'
						displayText: 'Build Greater Spire'
					GreaterSpireBroodlord:
						icon: 'GreaterSpireBroodlord.png'
						hotkeyCode: 'GreaterSpireBroodlord/Spire'
						displayText: 'Greater Spire Broodlord'
					zergflyerarmor1:
						icon: 'FlyerCarapace1.gif'
						hotkeyCode: 'zergflyerarmor1'
						displayText: 'Flyer Carapace'
					zergflyerattack1:
						icon: 'FlyerAttack1.gif'
						hotkeyCode: 'zergflyerattack1'
						displayText: 'Flyer Attacks'
			GreaterSpire:
				icon: 'greaterspire.jpg'
				displayText: 'Greater Spire'
				commands:
					inherit: ['unit.cancel']
					zergflyerarmor1:
						icon: 'FlyerCarapace1.gif'
						hotkeyCode: 'zergflyerarmor1'
						displayText: 'Flyer Carapace'
					zergflyerattack1:
						icon: 'FlyerAttack1.gif'
						hotkeyCode: 'zergflyerattack1'
						displayText: 'Flyer Attacks'
			NydusNetwork:
				icon: 'nydusnetwork.jpg'
				displayText: 'Nydus Network'
				commands:
					inherit: ['unit.load', 'unit.cancel']
					SummonNydusWorm:
						icon: 'NydusWorm.jpeg'
						hotkeyCode: 'SummonNydusWorm/NydusNetwork'
						displayText: 'Summon Nydus Worm'
					Stop:
						icon: 'Stop.png'
						hotkeyCode: 'Stop'
						displayText: 'Stop'
			CreepTumor:
				icon: 'creeptumor.jpg'
				displayText: 'Creep Tumor'
				commands:
					inherit: ['unit.cancel']
					BuildCreepTumorPropagate:
						icon: 'SpawnCreepTumor.gif'
						hotkeyCode: 'BuildCreepTumorPropagate/CreepTumorBurrowed'
						displayText: 'Build Creep Tumor Propagate'
