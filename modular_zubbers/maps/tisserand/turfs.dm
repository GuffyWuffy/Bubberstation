/turf/open/floor/wood/bowling
	desc = "Careful! The bowling lane is oiled regularly!"
	name = "Bowling Lane"

/turf/open/floor/wood/bowling/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wet_floor, TURF_WET_LUBE, INFINITY, 0, INFINITY, TRUE)


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
