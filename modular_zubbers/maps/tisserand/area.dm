/// Areas

/area/station/service/kitchen/tisserand
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Kitchen"

/area/station/service/kitchen/tisserand/Initialize(mapload)
	. = ..()
	name = "\improper [pick("Greggs", "Hungry Jack's", "Baker's Delight", "Grill'd", "Guzman y Gomez", "Oporto", "Pancake Parlour", "Red Rooster", "Brodies", "Kingsleys", "Cold Rock Ice Creamery", "Zambrero", "Eagle Boys", "Donut King", "Boost Juice", "Crust", "Hog's Breath Cafe", "Mad Mex", "Sumo Salad", "Salsas", "Zeus Street Greek", "La Porchetta", "Noodle Box", "Wokitup", "Wokinabox", "Roll'd", "Lord of the Fries", "Betty’s Burgers & Concrete Co.", "Sushi Hub", "Breadtop", "Pie Face", "SpudBAR", "Grease Monkey", "Wendy's Milk Bar", "Yatala Pie Shop", "Sizzler", "Sandwich Chefs", "Soul Origin", "Soonta", "The Tuckerbox", "1919 Lanzhou Beef Noodle", "Canteen")]"

/area/station/security/lobby
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Security Lobby"

/area/station/service/hydroponics/apiary
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Apiary"

/area/station/ai/satellite/outlook
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper AI Satellite Outlook"

/area/station/hallway/primary/tram/sciai
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Science Tram"

/area/station/science/walkway
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Science Walkway"

/area/station/engineering/walkway
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Engineering Walkway"

/area/station/security/walkway
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Security Walkway"

/area/station/medical/walkway
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Medical Walkway"

/area/station/commons/park
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Park"

/area/station/hallway/tube
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Tube Room"

/area/station/medical/chemistry/walkway
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Chemistry Walkway"

/area/station/ai/satellite/garden
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper AI Satellite Garden"

/area/station/medical/virology/walkway
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Virology Walkway"

/area/station/commons/fitness/recreation/gambling
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Gambling Den"

/area/station/hallway/fore/starboard
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Fore Starboard Primary Hallway"

/area/station/hallway/fore/port
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Fore Port Primary Hallway"

/area/station/cargo/walkway
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Cargo Walkway"

/area/station/maintenance/department/science/south
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper South Science Maintenance"

/area/station/maintenance/department/science/west
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper West Science Maintenance"

/area/station/commons/fitness/recreation/bowling
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Bowling Alley"

/area/station/maintenance/cocoon
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper The Cocoon"

/area/station/maintenance/rags
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Whirling-in-Rags"
	ambientsounds = list(
		'modular_zubbers/sound/ambiance/rags.ogg',
		)

/area/station/common/smokes
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Gas-N-Smoke Store"

/// tram subways

/area/station/subway/cargo/west
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subW"
	name = "\improper Cargo Subway Platform - West Tram"

/area/station/subway/cargo/north
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subN"
	name = "\improper Cargo Subway Platform - North Tram"


/area/station/subway/sec/north
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subN"
	name = "\improper Security Subway Platform - North Tram"

/area/station/subway/sec/east
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subE"
	name = "\improper Security Subway Platform - East Tram"


/area/station/subway/sci/east
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subE"
	name = "\improper Science Subway Platform - East Tram"

/area/station/subway/sci/south
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subS"
	name = "\improper Science Subway Platform - South Tram"


/area/station/subway/central/south
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subS"
	name = "\improper Central Subway Platform - South Tram"


/area/station/subway/med/south
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subS"
	name = "\improper Medical Subway Platform - South Tram"

/area/station/subway/med/west
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "subW"
	name = "\improper Medical Subway Platform - West Tram"

/area/station/subway/tunnel
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Subway Tunnels"

/area/station/command/eva/arrivals
	icon = 'modular_zubbers/icons/areas/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Arrivals EVA Storage"
