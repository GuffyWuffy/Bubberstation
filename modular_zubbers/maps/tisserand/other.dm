/obj/modular_map_root/tissstation
	config_file = "strings/modular_maps/TissStation.toml"

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
				victim.Stun(3 SECONDS)
				victim.Knockdown(3 SECONDS)
			if(zone == BODY_ZONE_L_LEG || zone == BODY_ZONE_R_LEG)
				visible_message(span_warning("STRIKE!!"))
				playsound(src, strike_sound, YEET_SOUND_VOLUME, ignore_walls = FALSE, vary = sound_vary)
				victim.Stun(3 SECONDS)
				victim.Knockdown(3 SECONDS)
			victim.Stun(1 SECONDS)
	else if(isliving(hit_atom))
		var/mob/living/target = hit_atom
		target.Stun(2 SECONDS)
