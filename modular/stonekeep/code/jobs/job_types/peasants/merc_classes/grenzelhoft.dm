/datum/advclass/mercenary/sk/grenzelhoft
	name = "Grenzelhoft Mercenary"
	tutorial = "A mercenary from the Grenzelhoft Empire's Mercenary Guild. Adept swordmasters never shying away from a duel, their only care is coin, and the procurement of coin - by any means necessary."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Dwarf"
	)
	outfit = /datum/outfit/job/stonekeep/merc/grenzelhoft
	category_tags = list(CTAG_SKMERCENARY)
	maximum_possible_slots = 6

	cmode_music = 'modular/stonekeep/sound/cmode/combat_grenzelhoft.ogg'

/datum/outfit/job/stonekeep/merc/grenzelhoft/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
		H.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)	//Big sword user so - really helps them.
		H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
		H.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/axesmaces, pick(2,3), TRUE) // Equal chance between skilled and average, can use a cudgel to beat less dangerous targets into submission
		H.adjust_skillrank(/datum/skill/combat/polearms, pick (2,3), TRUE)
		H.adjust_skillrank(/datum/skill/combat/shields, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)

	if(H.gender == FEMALE)
		H.underwear = "Femleotard"
		H.underwear_color = CLOTHING_SOOT_BLACK
		H.update_body()

	beltr = /obj/item/storage/belt/pouch/coins/poor
	neck = /obj/item/clothing/neck/chaincoif/iron
	pants = /obj/item/clothing/pants/grenzelpants
	shoes = /obj/item/clothing/shoes/grenzelhoft
	gloves = /obj/item/clothing/gloves/angle/grenzel
	belt = /obj/item/storage/belt/leather/mercenary
	beltl = /obj/item/weapon/mace/cudgel
	shirt = /obj/item/clothing/shirt/grenzelhoft
	head = /obj/item/clothing/head/helmet/skullcap/grenzelhoft
	armor = /obj/item/clothing/armor/cuirass/grenzelhoft
	backl = /obj/item/storage/backpack/satchel
	backr = /obj/item/weapon/sword/long/greatsword/zwei
	if(!H.has_language(/datum/language/oldpsydonic))
		H.grant_language(/datum/language/oldpsydonic)
		to_chat(H, "<span class='info'>I can speak Old Psydonic with ,m before my speech.</span>")

	H.merctype = 6

	H.change_stat("strength", 2) // They need this to roll at least min STR for the Zwei.
	H.change_stat("endurance", 1)
	H.change_stat("constitution", 2)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)

	H.skin_tone = SKIN_COLOR_ICECAP
