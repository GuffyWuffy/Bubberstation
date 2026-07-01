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
