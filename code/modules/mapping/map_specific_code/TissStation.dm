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

/obj/item/toy/plush/maddie
	icon = 'modular_zubbers/icons/obj/toys/plushes.dmi'
	name = "maddie plushie"
	desc = "Oh hey, that's a plushie of Maddie. You love her!"
	icon_state = "plushie_maddie"
	inhand_icon_state = null
	attack_verb_continuous = list("squeaks at", "strikes", "bashes")
	attack_verb_simple = list("squeak at", "strike", "bash")
	squeak_override = list('modular_zubbers/sound/items/toy_squeak/mrdSqueak.ogg' = 1)
	gender = FEMALE

// Tisserand: added Feb 13, 2026 (https://github.com/Cirrial/troutstation/pull/100)
/obj/structure/plaque/static_plaque/golden/commission/tiss
	desc = "Spinward Sector Station SS-13\n'Tisserand' Class Outpost\nCommissioned 13/02/2566\n'Orbiting Greatness'"

/obj/structure/sign/map/tiss
	icon = 'modular_zubbers/icons/obj/sign.dmi'
	icon_state = "map-tiss"
	desc = "A near floor to ceiling map of the station's asteroids. In the center is Service (in green) and the Bridge (in deep blue). On the right is arrivals (in blue and black), and on the left is departures (in red and black). <br>\
	Clockwise from the top left is the Supply asteroid (in brown), the Security asteroid (in red), the Science asteroids (in purple), the Engineering asteroids (in yellow), and the Medical asteroids (in light blue)."

/obj/structure/sign/directions/tube
	icon = 'modular_zubbers/icons/obj/sign.dmi'
	name = "tube room sign"
	desc = "A direction sign, pointing out which way the tube room is."
	icon_state = "direction_tube"

MAPPING_DIRECTIONAL_HELPERS(/obj/structure/sign/directions/tube, 32)

/obj/structure/fluff/orb_red
	name = "red orb"
	desc = "An immense red sphere, seemingly not of this world. It's almost transparent, and it's internals seem to... throb?"
	icon = 'modular_zubbers/icons/effects/64x64.dmi'
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
	icon = 'modular_zubbers/icons/effects/64x64.dmi'
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

/mob/living/basic/lizard/greyscale //for adding custom colour (varedit color)
	icon = 'modular_zubbers/icons/mob/simple/greylizard.dmi'
	icon_state = "lizard_grey"
	icon_living = "lizard_grey"
	icon_dead = "lizard_grey_dead"
	icon_gib = "lizard_grey_gib"

/obj/item/dog_bone/treet
	name = "\improper Dog's Treet"
	desc = "A tasty femur full of juicy marrow, the perfect gift for you and your best friend."

/obj/item/dog_bone/treet/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/examine_lore, \
		lore_hint = span_notice("You can [EXAMINE_HINT("look closer")] to to read the exceptionally long hand-written tag on the [src]."), \
		lore = "Was Anyone Else Offended by Pence's Shirt?<br>\
		His shirt reads 'Dog's Treet' which obviously implies that he eats dog food. There was someone like that on a show that I watched and dog food was not made for human consumption so I'm not sure where he got a shirt like that.<br>\
		My point is, my cousin watched me play KH2 once and noticed this shirt and now he wants to try a dog treat.<br>\
		I feel a disturbance because I don't know why they included this quality in the game. I think Kingdom Hearts encourages people to try dog food, possibly subliminally because of his shirt (that mostly goes unnoticed) and I find that totally unnecessary."\
	)

/// Slime Attack Crate
/obj/structure/closet/crate/slime
	name = "suspicious green crate"
	desc = "Nothing will happen if you open this crate. I promise."
	icon_state = "hydrocrate"
	base_icon_state = "hydrocrate"
	open_sound = 'modular_zubbers/sound/machines/crate/slime_open.ogg'
	close_sound = 'modular_zubbers/sound/machines/crate/slime_close.ogg'
	var/slimed = FALSE //will only slime once

/obj/structure/closet/crate/slime/after_open(mob/living/user, force)
	. = ..()
	if(!slimed)
		slimed = TRUE
		to_chat(user, span_greentext("Watch out! Slime attack!"))
		explosion(src, 0, 0, 1, 0, 0, FALSE, FALSE, TRUE, FALSE, TRUE)
		var/include_flags = INCLUDE_HELD|INCLUDE_ACCESSORIES|INCLUDE_POCKETS

		for (var/turf/open/floor/T in RANGE_TURFS(pick(1,2), src.loc))
			new /obj/effect/decal/cleanable/greenglow(T)

			for (var/mob/living/M in T)
				for (var/obj/item/slimedHold in M.get_equipped_items(include_flags))
					slimedHold.add_atom_colour("#47b200", WASHABLE_COLOUR_PRIORITY)

			for (var/obj/slimeItem in T)
				slimeItem.add_atom_colour("#47b200", WASHABLE_COLOUR_PRIORITY)

/// Picnic Blanket Floor

/turf/open/floor/carpet/picnic
	name = "picnic blanket"
	desc = "A wide sheet of material, meant for laying over grass to provide a clean picnicking surface. Complete with a classic red-and-white tartan pattern! \
	Check it out I'm in the park like blanket."
	icon = 'modular_zubbers/icons/turf/floors/carpet_picnic.dmi'
	icon_state = "carpet_picnic-255"
	base_icon_state = "carpet_picnic"
	floor_tile = /obj/item/stack/tile/carpet/picnic
	smoothing_groups = SMOOTH_GROUP_TURF_OPEN + SMOOTH_GROUP_CARPET_PICNIC
	canSmoothWith = SMOOTH_GROUP_CARPET_PICNIC

/obj/item/stack/tile/carpet/picnic
	name = "picnic blanket"
	icon = 'modular_zubbers/icons/obj/tiles.dmi'
	icon_state = "tile-carpet-picnic"
	turf_type = /turf/open/floor/carpet/picnic
	merge_type = /obj/item/stack/tile/carpet/picnic
	tile_reskin_types = null

/obj/item/stack/tile/carpet/picnic/fifty
	amount = 50

/datum/supply_pack/service/picnic
	name = "Picnic Blanket Crate"
	desc = "A big blanket for sitting on during a casual picnic in the park."
	cost = CARGO_CRATE_VALUE
	contains = list(/obj/item/stack/tile/carpet/picnic/fifty = 1)
	crate_name = "picnic blanket crate"
	discountable = SUPPLY_PACK_UNCOMMON_DISCOUNTABLE

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

/// bowling ball

/obj/item/bowling_ball
	name = "bowling ball"
	desc = "A perfectly round bowling ball."
	throw_drop_sound = 'modular_zubbers/sound/effects/coconut_bonk.ogg'
	mob_throw_hit_sound = 'modular_zubbers/sound/effects/coconut_bonk.ogg'
	hitsound = 'modular_zubbers/sound/effects/coconut_bonk.ogg'
	attack_verb_continuous = list("bonks", "bops")
	attack_verb_simple = list("bonk", "bop")
	icon = 'modular_zubbers/icons/obj/bowling.dmi'
	icon_state = "bowling_ball"
	w_class = WEIGHT_CLASS_NORMAL
	throw_speed = 2
	throw_range = 8
	force = 3
	demolition_mod = 1.5
	throwforce = 8
	var/strike_sound = 'modular_zubbers/sound/effects/bowling_strike.ogg'

/obj/item/bowling_ball/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	. = ..()
	if(ishuman(hit_atom))
		var/mob/living/carbon/human/victim = hit_atom
		if(victim)
			var/zone = throwingdatum.target_zone
			if(zone == BODY_ZONE_HEAD)
				visible_message(span_warning("[victim] was hit in the head by a bowling ball!"))
				victim.Stun(4 SECONDS)
				victim.Knockdown(4 SECONDS)
			if(zone == BODY_ZONE_L_LEG || zone == BODY_ZONE_R_LEG)
				visible_message(span_warning("STRIKE!!"))
				playsound(src, strike_sound, YEET_SOUND_VOLUME, ignore_walls = FALSE, vary = sound_vary)
				victim.Stun(4 SECONDS)
				victim.Knockdown(4 SECONDS)
			victim.Stun(2 SECONDS)
	else if(isliving(hit_atom))
		var/mob/living/target = hit_atom
		target.Stun(3 SECONDS)
