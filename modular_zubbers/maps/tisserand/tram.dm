/// AI SAT TRAM

/obj/effect/landmark/transport/transport_id/tiss/line_ai
	specific_transport_id = TISS_LINE_AI

/obj/effect/landmark/transport/nav_beacon/tram/nav/tiss/ai
	name = TISS_LINE_AI
	specific_transport_id = TRAM_NAV_BEACONS
	dir = SOUTH

/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/ai/north
	name = "Science"
	specific_transport_id = TISS_LINE_AI
	platform_code = TISS_AI_NORTH
	tgui_icons = list("Science" = "flask")

/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/ai/south
	name = "AI Satellite"
	specific_transport_id = TISS_LINE_AI
	platform_code = TISS_AI_SOUTH
	tgui_icons = list("AI" = "cogs")

/obj/machinery/transport/tram_controller/tiss/ai
	configured_transport_id = TISS_LINE_AI

/obj/machinery/transport/tram_controller/tiss/ai/find_controller()
	for(var/datum/transport_controller/linear/tram/tram as anything in SStransport.transports_by_type[TRANSPORT_TYPE_TRAM])
		if(tram.specific_transport_id == configured_transport_id)
			controller_datum = tram
			break

	if(!controller_datum)
		return

	controller_datum.notify_controller(src)
	RegisterSignal(SStransport, COMSIG_TRANSPORT_UPDATED, PROC_REF(sync_controller))








/// NORTH TRAM (CARGO TO SEC)

/obj/effect/landmark/transport/transport_id/tiss/line_north
	specific_transport_id = TISS_LINE_N

/obj/effect/landmark/transport/nav_beacon/tram/nav/tiss/north
	name = TISS_LINE_N
	specific_transport_id = TRAM_NAV_BEACONS
	dir = EAST // start from cargo


/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/north/cargo
	name = "Cargo"
	specific_transport_id = TISS_LINE_N
	platform_code = TISS_NORTH_CARGO
	tgui_icons = list("Science" = "flask") // FIX

/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/north/sec
	name = "Security"
	specific_transport_id = TISS_LINE_N
	platform_code = TISS_NORTH_SEC
	tgui_icons = list("AI" = "cogs") // FIX


/obj/machinery/transport/tram_controller/tiss/north
	configured_transport_id = TISS_LINE_N

/obj/machinery/transport/tram_controller/tiss/north/find_controller()
	for(var/datum/transport_controller/linear/tram/tram as anything in SStransport.transports_by_type[TRANSPORT_TYPE_TRAM])
		if(tram.specific_transport_id == configured_transport_id)
			controller_datum = tram
			break

	if(!controller_datum)
		return

	controller_datum.notify_controller(src)
	RegisterSignal(SStransport, COMSIG_TRANSPORT_UPDATED, PROC_REF(sync_controller))




/// EAST TRAM (SEC TO SCI)

/obj/effect/landmark/transport/transport_id/tiss/line_east
	specific_transport_id = TISS_LINE_E

/obj/effect/landmark/transport/nav_beacon/tram/nav/tiss/east
	name = TISS_LINE_E
	specific_transport_id = TRAM_NAV_BEACONS
	dir = SOUTH // start from sec


/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/east/sec
	name = "Security"
	specific_transport_id = TISS_LINE_E
	platform_code = TISS_EAST_SEC
	tgui_icons = list("Science" = "flask") // FIX

/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/east/sci
	name = "Science"
	specific_transport_id = TISS_LINE_E
	platform_code = TISS_EAST_SCI
	tgui_icons = list("Science" = "flask")


/obj/machinery/transport/tram_controller/tiss/east
	configured_transport_id = TISS_LINE_E

/obj/machinery/transport/tram_controller/tiss/east/find_controller()
	for(var/datum/transport_controller/linear/tram/tram as anything in SStransport.transports_by_type[TRANSPORT_TYPE_TRAM])
		if(tram.specific_transport_id == configured_transport_id)
			controller_datum = tram
			break

	if(!controller_datum)
		return

	controller_datum.notify_controller(src)
	RegisterSignal(SStransport, COMSIG_TRANSPORT_UPDATED, PROC_REF(sync_controller))




/// SOUTH TRAM (MED TO CENTRAL TO SCI)

/obj/effect/landmark/transport/transport_id/tiss/line_south
	specific_transport_id = TISS_LINE_S

/obj/effect/landmark/transport/nav_beacon/tram/nav/tiss/south
	name = TISS_LINE_S
	specific_transport_id = TRAM_NAV_BEACONS
	dir = WEST // start from sci? or central if you can figure that out


/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/south/sci
	name = "Science"
	specific_transport_id = TISS_LINE_S
	platform_code = TISS_SOUTH_SCI
	tgui_icons = list("Science" = "flask")

/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/south/central
	name = "Central"
	specific_transport_id = TISS_LINE_S
	platform_code = TISS_SOUTH_CENTRAL
	tgui_icons = list("Science" = "flask") // FIX

/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/south/med
	name = "Medical"
	specific_transport_id = TISS_LINE_S
	platform_code = TISS_SOUTH_MED
	tgui_icons = list("Science" = "flask") // FIX


/obj/machinery/transport/tram_controller/tiss/south
	configured_transport_id = TISS_LINE_S

/obj/machinery/transport/tram_controller/tiss/south/find_controller()
	for(var/datum/transport_controller/linear/tram/tram as anything in SStransport.transports_by_type[TRANSPORT_TYPE_TRAM])
		if(tram.specific_transport_id == configured_transport_id)
			controller_datum = tram
			break

	if(!controller_datum)
		return

	controller_datum.notify_controller(src)
	RegisterSignal(SStransport, COMSIG_TRANSPORT_UPDATED, PROC_REF(sync_controller))




/// WEST TRAM (CARGO TO MED)

/obj/effect/landmark/transport/transport_id/tiss/line_west
	specific_transport_id = TISS_LINE_W

/obj/effect/landmark/transport/nav_beacon/tram/nav/tiss/west
	name = TISS_LINE_W
	specific_transport_id = TRAM_NAV_BEACONS
	dir = NORTH // start from med


/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/west/med
	name = "Medical"
	specific_transport_id = TISS_LINE_W
	platform_code = TISS_WEST_MED
	tgui_icons = list("Science" = "flask") // FIX

/obj/effect/landmark/transport/nav_beacon/tram/platform/tiss/west/cargo
	name = "Cargo"
	specific_transport_id = TISS_LINE_W
	platform_code = TISS_WEST_CARGO
	tgui_icons = list("Science" = "flask") // FIX


/obj/machinery/transport/tram_controller/tiss/west
	configured_transport_id = TISS_LINE_W

/obj/machinery/transport/tram_controller/tiss/west/find_controller()
	for(var/datum/transport_controller/linear/tram/tram as anything in SStransport.transports_by_type[TRANSPORT_TYPE_TRAM])
		if(tram.specific_transport_id == configured_transport_id)
			controller_datum = tram
			break

	if(!controller_datum)
		return

	controller_datum.notify_controller(src)
	RegisterSignal(SStransport, COMSIG_TRANSPORT_UPDATED, PROC_REF(sync_controller))




/obj/machinery/transport/destination_sign/indicator/tiss/north
	icon = 'modular_zubbers/icons/maps/tisserand/tram_indicator.dmi'
	configured_transport_id = TISS_LINE_N

/obj/machinery/transport/destination_sign/indicator/tiss/east
	icon = 'modular_zubbers/icons/maps/tisserand/tram_indicator.dmi'
	configured_transport_id = TISS_LINE_E

/obj/machinery/transport/destination_sign/indicator/tiss/south
	icon = 'modular_zubbers/icons/maps/tisserand/tram_indicator.dmi'
	configured_transport_id = TISS_LINE_S

/obj/machinery/transport/destination_sign/indicator/tiss/west
	icon = 'modular_zubbers/icons/maps/tisserand/tram_indicator.dmi'
	configured_transport_id = TISS_LINE_W

/obj/machinery/transport/destination_sign/Initialize(mapload)
	. = ..()
	LAZYADD(available_faces, TISS_LINE_N)
	LAZYADD(available_faces, TISS_LINE_E)
	LAZYADD(available_faces, TISS_LINE_S)
	LAZYADD(available_faces, TISS_LINE_W)
