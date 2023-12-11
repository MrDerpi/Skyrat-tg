/datum/emote/living/lewdmoan
	key = "lewdmoan"
	key_third_person = "lewdmoans"
	message = "moans lewdly!"
	emote_type = EMOTE_VISIBLE | EMOTE_AUDIBLE

/datum/emote/living/lewdmoan/get_sound(mob/living/user)
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/human_user = user
	if(HAS_MIND_TRAIT(human_user, TRAIT_MIMING))
		return
	if(human_user.physique == FEMALE)
		return play_lewd_sound(get_turf(human_user), pick('modular_skyrat/modules/modular_items/lewd_items/sounds/final_f1.ogg',
										'modular_skyrat/modules/modular_items/lewd_items/sounds/final_f2.ogg',
										'modular_skyrat/modules/modular_items/lewd_items/sounds/final_f3.ogg'), 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds)
	else
		return play_lewd_sound(get_turf(human_user), pick('modular_skyrat/modules/modular_items/lewd_items/sounds/final_m1.ogg',
										'modular_skyrat/modules/modular_items/lewd_items/sounds/final_m2.ogg',
										'modular_skyrat/modules/modular_items/lewd_items/sounds/final_m3.ogg'), 50, TRUE, pref_to_check = /datum/preference/toggle/erp/sounds)
