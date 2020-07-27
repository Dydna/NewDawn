/*//////////////////////////////////////////////////////////////////////////////////////////////////////
	Syllable list compiled in this file based on work by Stefan Trost, available at the following URLs
						https://www.sttmedia.com/syllablefrequency-english
						https://www.sttmedia.com/syllablefrequency-french
						https://www.sttmedia.com/syllablefrequency-german
*///////////////////////////////////////////////////////////////////////////////////////////////////////

/datum/language/human/euro
	name = LANGUAGE_HUMAN_EURO
	desc = "Искусственно созданный язык, разработанный европейскими и африканскими исследовательскими институтами и представленный во время Цюрихской конференции в Швейцарии в 2119 году, \
			после небольших разногласий был принят в качестве 'lingua franca' ( всеобщего языка ) всего космического пространства Сола после основания ЦПСС"
	speech_verb = "говорит"
	whisper_verb = "шепчет"
	colour = ""
	key = "1"
	flags = WHITELISTED
	shorthand = "ВЯЦС"
	partial_understanding = list(
		LANGUAGE_HUMAN_CHINESE = 5,
		LANGUAGE_HUMAN_ARABIC = 5,
		LANGUAGE_HUMAN_INDIAN = 5,
		LANGUAGE_HUMAN_IBERIAN = 30,
		LANGUAGE_HUMAN_RUSSIAN = 5,
		LANGUAGE_HUMAN_SELENIAN = 75,
		LANGUAGE_SPACER = 20
	)
	syllables = list(
		"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
		"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
		"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
		"ch", "de", "ge", "be", "ach", "abe", "ich", "ein", "die", "sch", "auf", "aus", "ber", "che", "ent", "que",
		"ait", "les", "lle", "men", "ais", "ans", "ait", "ave", "con", "com", "des", "tre", "eta", "eur", "est",
		"ing", "the", "ver", "was", "ith", "hin"
	)
