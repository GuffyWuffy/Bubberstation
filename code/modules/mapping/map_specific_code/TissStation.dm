/obj/modular_map_root/tissstation
	config_file = "strings/modular_maps/TissStation.toml"


/obj/item/paper/fluff/downward_spiral
	name = "The Downward Spiral"
	desc = "A dark slip of paper with text hastily scrawled upon it."
	default_raw_text = @{"<h1>
	you got a head lioke a hole loll"</h1>
	"}
	color = "#2a2a2a"

/mob/living/basic/pet/penguin/emperor/jettin
	name = "Jettin"
	desc = "The Quartermaster's pet penguin. Incapable of learning tricks, and is the master of his own destiny."
	gender = MALE
	gold_core_spawnable = NO_SPAWN
	unique_pet = TRUE

/obj/structure/bed/dogbed/jettin
	desc = "Jettin's bed. I'm sure he'd prefer a steamy bath."
	name = "Jettin's bed"
	anchored = TRUE

/turf/open/floor/wood/bowling
	desc = "Careful! The bowling lane is oiled regularly!"
	name = "Bowling Lane"

/turf/open/floor/wood/bowling/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wet_floor, TURF_WET_LUBE, INFINITY, 0, INFINITY, TRUE)

/obj/effect/spawner/random/food_or_drink/guffin
	name = "mcguffin spawner"
	icon_state = "donut"
	spawn_loot_chance = 90
	loot = list(
		/obj/item/food/burger/mcguffin = 3,
		/obj/item/food/burger/rootguffin = 1,
	)

/turf/closed/wall/mineral/stone
	name = "stone wall"
	desc = "A wall with stone plating. Cold and rough. The kind of thing kingdoms are made of."
	icon = 'troutstation/icons/turf/walls/stone_wall.dmi'
	icon_state = "stone_wall-0"
	base_icon_state = "stone_wall"
	sheet_type = /obj/item/stack/sheet/mineral/sandstone
	hardness = 45
	explosive_resistance = 0
	smoothing_flags = SMOOTH_BITMASK
//	smoothing_groups = SMOOTH_GROUP_STONE_WALLS + SMOOTH_GROUP_WALLS + SMOOTH_GROUP_CLOSED_TURFS
//	canSmoothWith = SMOOTH_GROUP_STONE_WALLS
	custom_materials = list(/datum/material/sandstone = SHEET_MATERIAL_AMOUNT*2)
	rust_resistance = RUST_RESISTANCE_BASIC

/turf/closed/wall/mineral/stone/wizard
	icon = 'troutstation/icons/turf/walls/stone_wall_wizard.dmi'
	icon_state = "stone_wall_wizard-0"
	base_icon_state = "stone_wall_wizard"
	// smoothing_groups = SMOOTH_GROUP_STONE_WALLS_WIZARD + SMOOTH_GROUP_WALLS + SMOOTH_GROUP_CLOSED_TURFS
	// canSmoothWith = SMOOTH_GROUP_STONE_WALLS_WIZARD

/obj/structure/sink/cauldron
	name = "cauldron"
	icon = 'troutstation/icons/obj/watercloset.dmi'
	icon_state = "cauldron"
	desc = "A mystically shitty cauldron which seems to slowly refill its contents. You don't think you'd be able to actually brew with this..."
	dispensedreagent = /datum/reagent/luminescent_fluid

/obj/effect/turf_decal/tile/white
	name = "white tile decal"
	color = "#d9d9d9"
	alpha = 255

TILE_DECAL_SUBTYPE_HELPER(/obj/effect/turf_decal/tile/white)

/obj/item/toy/plush/maddie
	icon = 'troutstation/icons/obj/toys/plushes.dmi'
	name = "maddie plushie"
	desc = "Oh hey, that's a plushie of Maddie. You love her!"
	icon_state = "plushie_maddie"
	inhand_icon_state = null
	attack_verb_continuous = list("squeaks at", "strikes", "bashes")
	attack_verb_simple = list("squeak at", "strike", "bash")
	squeak_override = list('troutstation/sound/items/toy_squeak/mrdSqueak.ogg' = 1)
	gender = FEMALE
	breedable = FALSE // do not the maddie

// Tisserand: added Feb 13, 2026 (https://github.com/Cirrial/troutstation/pull/100)
/obj/structure/plaque/static_plaque/golden/commission/tiss
	desc = "Spinward Sector Station SS-13\n'Tisserand' Class Outpost\nCommissioned 13/02/2566\n'Orbiting Greatness'"

/obj/structure/sign/map/tiss
	icon = 'troutstation/icons/obj/signs.dmi'
	icon_state = "map-tiss"
	desc = "A near floor to ceiling map of the station's asteroids. In the center is Service (in green) and the Bridge (in deep blue). On the right is arrivals (in blue and black), and on the left is departures (in red and black). <br>\
	Clockwise from the top left is the Supply asteroid (in brown), the Security asteroid (in red), the Science asteroids (in purple), the Engineering asteroids (in yellow), and the Medical asteroids (in light blue)."

/obj/structure/sign/directions/tube
	icon = 'troutstation/icons/obj/signs.dmi'
	name = "tube room sign"
	desc = "A direction sign, pointing out which way the tube room is."
	icon_state = "direction_tube"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/directions/tube, 32)

/obj/structure/fluff/orb_red
	name = "red orb"
	desc = "An immense red sphere, seemingly not of this world. It's almost transparent, and it's internals seem to... throb?"
	icon = 'troutstation/icons/effects/64x64.dmi'
	icon_state = "orb_red"
	pixel_x = -16
	maptext_height = 64
	maptext_width = 64
	density = TRUE
	deconstructible = FALSE
	layer = EDGED_TURF_LAYER
	light_power = 2
	light_range = 2
	light_color = COLOR_RED

/obj/structure/fluff/orb_blue
	name = "blue orb"
	desc = "An immense blue sphere, seemingly not of this world. It's almost transparent, and it's internals seem to... throb?"
	icon = 'troutstation/icons/effects/64x64.dmi'
	icon_state = "orb_blue"
	pixel_x = -16
	maptext_height = 64
	maptext_width = 64
	density = TRUE
	deconstructible = FALSE
	layer = EDGED_TURF_LAYER
	light_power = 2
	light_range = 2
	light_color = COLOR_BLUE




/// Areas

/area/station/service/kitchen/tisserand
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Kitchen"

/area/station/service/kitchen/tisserand/Initialize(mapload)
	. = ..()
	name = "\improper [pick("Greggs", "Hungry Jack's", "Baker's Delight", "Grill'd", "Guzman y Gomez", "Oporto", "Pancake Parlour", "Red Rooster", "Brodies", "Kingsleys", "Cold Rock Ice Creamery", "Zambrero", "Eagle Boys", "Donut King", "Boost Juice", "Crust", "Hog's Breath Cafe", "Mad Mex", "Sumo Salad", "Salsas", "Zeus Street Greek", "La Porchetta", "Noodle Box", "Wokitup", "Wokinabox", "Roll'd", "Lord of the Fries", "Betty’s Burgers & Concrete Co.", "Sushi Hub", "Breadtop", "Pie Face", "SpudBAR", "Grease Monkey", "Wendy's Milk Bar", "Yatala Pie Shop", "Sizzler", "Sandwich Chefs", "Soul Origin", "Soonta", "The Tuckerbox", "1919 Lanzhou Beef Noodle", "Canteen")]"

/area/station/security/lobby
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Security Lobby"

/area/station/service/hydroponics/apiary
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Apiary"

/area/station/ai/satellite/outlook
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper AI Satellite Outlook"

/area/station/hallway/primary/tram/sciai
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Science Tram"

/area/station/science/walkway
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Science Walkway"

/area/station/engineering/walkway
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Engineering Walkway"

/area/station/security/walkway
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Security Walkway"

/area/station/medical/walkway
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Medical Walkway"

/area/station/commons/park
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Park"

/area/station/hallway/tube
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Tube Room"

/area/station/medical/chemistry/walkway
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Chemistry Walkway"

/area/station/ai/satellite/garden
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper AI Satellite Garden"

/area/station/medical/virology/walkway
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Virology Walkway"

/area/station/commons/fitness/recreation/gambling
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Gambling Den"

/area/station/hallway/fore/starboard
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Fore Starboard Primary Hallway"

/area/station/hallway/fore/port
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Fore Port Primary Hallway"

/area/station/cargo/walkway
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Cargo Walkway"

/area/station/maintenance/department/science/south
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper South Science Maintenance"

/area/station/maintenance/department/science/west
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper West Science Maintenance"

/area/station/commons/fitness/recreation/bowling
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Bowling Alley"

/area/station/maintenance/cocoon
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper The Cocoon"

/area/station/maintenance/rags
	icon = 'troutstation/icons/area/areas_station.dmi'
	icon_state = "tiss"
	name = "\improper Whirling-in-Rags"
	ambientsounds = list(
		'troutstation/sound/ambience/rags.ogg',
		)

/// Tram

/obj/effect/landmark/transport/transport_id/tiss/line_1
	specific_transport_id = TISS_LINE_1

/obj/effect/landmark/transport/nav_beacon/tram/nav/tiss/main
	name = TISS_LINE_1
	specific_transport_id = TRAM_NAV_BEACONS
	dir = SOUTH

/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/north
	name = "Science"
	specific_transport_id = TISS_LINE_1
	platform_code = TISS_NORTH
	tgui_icons = list("Science" = "flask")

/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/south
	name = "AI Satellite"
	specific_transport_id = TISS_LINE_1
	platform_code = TISS_SOUTH
	tgui_icons = list("AI" = "cogs")

/obj/machinery/transport/tram_controller/tiss
	configured_transport_id = TISS_LINE_1

/obj/machinery/transport/tram_controller/tiss/find_controller()
	for(var/datum/transport_controller/linear/tram/tram as anything in SStransport.transports_by_type[TRANSPORT_TYPE_TRAM])
		if(tram.specific_transport_id == configured_transport_id)
			controller_datum = tram
			break

	if(!controller_datum)
		return

	controller_datum.notify_controller(src)
	RegisterSignal(SStransport, COMSIG_TRANSPORT_UPDATED, PROC_REF(sync_controller))

