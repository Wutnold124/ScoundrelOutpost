/mob/living/simple_animal/hostile/skeleton
	name = "reanimated skeleton"
	desc = "A real bonefied skeleton, doesn't seem like it wants to socialize."
	icon = 'icons/mob/simple_human.dmi'
	icon_state = "skeleton"
	icon_living = "skeleton"
	icon_dead = "skeleton"
	gender = NEUTER
	mob_biotypes = MOB_UNDEAD|MOB_HUMANOID
	turns_per_move = 5
	speak_emote = list("rattles")
	emote_see = list("rattles")
	combat_mode = TRUE
	maxHealth = 40
	health = 40
	speed = 1
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15
	minbodytemp = 0
	maxbodytemp = 1500
	healable = 0 //they're skeletons how would bruise packs help them??
	attack_verb_continuous = "slashes"
	attack_verb_simple = "slash"
	attack_sound = 'sound/hallucinations/growl1.ogg'
	attack_vis_effect = ATTACK_EFFECT_CLAW
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_plas" = 0, "max_plas" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 5
	robust_searching = 1
	stat_attack = HARD_CRIT
	faction = list("skeleton")
	see_in_dark = NIGHTVISION_FOV_RANGE
	lighting_alpha = LIGHTING_PLANE_ALPHA_MOSTLY_INVISIBLE
	death_message = "collapses into a pile of bones!"
	del_on_death = 1
	loot = list(/obj/effect/decal/remains/human)

	footstep_type = FOOTSTEP_MOB_SHOE

/mob/living/simple_animal/hostile/skeleton/survivor
	name = "undead survivor"
	desc = "The reanimated remains of some stranded traveler, wielding an improvised spear. Seems they didn't survive long."
	icon_state = "survivor"
	icon_living = "survivor"
	icon_dead = "survivor_dead"
	maxHealth = 55
	health = 55
	weather_immunities = list(TRAIT_SNOWSTORM_IMMUNE)
	melee_damage_lower = 17
	melee_damage_upper = 20
	death_message = "collapses into a pile of bones, its gear falling to the floor!"
	loot = list(/obj/effect/decal/remains/human,
				/obj/item/spear,
				/obj/item/clothing/shoes/winterboots,
				/obj/item/clothing/suit/hooded/wintercoat)


/mob/living/simple_animal/hostile/skeleton/templar
	name = "undead templar"
	desc = "The reanimated remains of a holy templar knight."
	icon_state = "templar"
	icon_living = "templar"
	icon_dead = "templar_dead"
	maxHealth = 150
	health = 150
	weather_immunities = list(TRAIT_SNOWSTORM_IMMUNE)
	speed = 2
	force_threshold = 10 //trying to simulate actually having armor
	obj_damage = 50
	melee_damage_lower = 25
	melee_damage_upper = 30
	death_message = "collapses into a pile of bones, its gear clanging as it hits the ground!"
	loot = list(/obj/effect/decal/remains/human,
				/obj/item/clothing/suit/chaplainsuit/armor/templar,
				/obj/item/clothing/head/helmet/chaplain,
				/obj/item/claymore/weak{name = "holy sword"})

/mob/living/simple_animal/hostile/skeleton/ice
	name = "ice skeleton"
	desc = "A reanimated skeleton protected by a thick sheet of natural ice armor. Looks slow, though."
	speed = 5
	maxHealth = 75
	health = 75
	weather_immunities = list(TRAIT_SNOWSTORM_IMMUNE)
	color = rgb(114,228,250)
	loot = list(/obj/effect/decal/remains/human{color = rgb(114,228,250)})

/mob/living/simple_animal/hostile/skeleton/plasmaminer
	name = "shambling miner"
	desc = "A plasma-soaked miner, their exposed limbs turned into a grossly incandescent bone seemingly made of plasma."
	icon_state = "plasma_miner"
	icon_living = "plasma_miner"
	icon_dead = "plasma_miner"
	maxHealth = 150
	health = 150
	harm_intent_damage = 10
	melee_damage_lower = 15
	melee_damage_upper = 20
	light_color = LIGHT_COLOR_PURPLE
	death_message = "collapses into a pile of bones, their suit dissolving among the plasma!"
	loot = list(/obj/effect/decal/remains/plasma)

/mob/living/simple_animal/hostile/skeleton/plasmaminer/jackhammer
	desc = "A plasma-soaked miner, their exposed limbs turned into a grossly incandescent bone seemingly made of plasma. They seem to still have their mining tool in their hand, gripping tightly."
	icon_state = "plasma_miner_tool"
	icon_living = "plasma_miner_tool"
	icon_dead = "plasma_miner_tool"
	maxHealth = 185
	health = 185
	harm_intent_damage = 15
	melee_damage_lower = 20
	melee_damage_upper = 25
	attack_verb_continuous = "blasts"
	attack_verb_simple = "blast"
	attack_sound = 'sound/weapons/sonic_jackhammer.ogg'
	attack_vis_effect = null // jackhammer moment
	loot = list(/obj/effect/decal/remains/plasma, /obj/item/pickaxe/drill/jackhammer)

/mob/living/simple_animal/hostile/skeleton/plasmaminer/Initialize(mapload)
	. = ..()
	set_light(2)
