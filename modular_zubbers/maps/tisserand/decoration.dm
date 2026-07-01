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

/obj/item/paper/fluff/downward_spiral
	name = "The Downward Spiral"
	desc = "A dark slip of paper with text hastily scrawled upon it."
	default_raw_text = @{"<h1>
	you got a head lioke a hole loll"</h1>
	"}
	color = "#2a2a2a"

/obj/structure/bed/dogbed/jettin
	desc = "Jettin's bed. I'm sure he'd prefer a steamy bath."
	name = "Jettin's bed"
	anchored = TRUE
