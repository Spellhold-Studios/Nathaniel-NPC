APPEND FHN25J

IF ~IsGabber(Player1)
Global("NathRomanceActive","GLOBAL",2)
!Global("FHFlirtsDisabled","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",3)
!Global("FHNathStartFlirtToB","GLOBAL",1)
CombatCounter(0)~ THEN BEGIN FHFlirt25
SAY @0 /* ~(Nathaniel gives you a wide smile as you approach him.)~ */
IF ~RandomNum(4,1)~ THEN REPLY @1 /* ~(Whisper in Nathaniel's ear) Tonight you're mine, Nathaniel.~ */ + FHFlirt_ToBmine1
IF ~RandomNum(4,2)~ THEN REPLY @1 /* ~(Whisper in Nathaniel's ear) Tonight you're mine, Nathaniel.~ */ + FHFlirt_ToBmine2
IF ~RandomNum(4,3)~ THEN REPLY @1 /* ~(Whisper in Nathaniel's ear) Tonight you're mine, Nathaniel.~ */ + FHFlirt_ToBmine3
IF ~RandomNum(4,4)~ THEN REPLY @1 /* ~(Whisper in Nathaniel's ear) Tonight you're mine, Nathaniel.~ */ + FHFlirt_ToBmine4
IF ~RandomNum(4,1)~ THEN REPLY @2 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_ToBthanks1
IF ~RandomNum(4,2)~ THEN REPLY @2 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_ToBthanks2
IF ~RandomNum(4,3)~ THEN REPLY @2 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_ToBthanks3
IF ~RandomNum(4,4)~ THEN REPLY @2 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_ToBthanks4
IF ~HPLT("Nath",10)~ THEN REPLY @3 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_ToBhow1
IF ~RandomNum(4,1)~ THEN REPLY @4 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_ToBhow2
IF ~RandomNum(4,2)~ THEN REPLY @4 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_ToBhow3
IF ~RandomNum(4,3)~ THEN REPLY @4 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_ToBhow4
IF ~RandomNum(4,4)~ THEN REPLY @4 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_ToBhow5
IF ~RandomNum(4,1)~ THEN REPLY @5 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_ToBback1
IF ~RandomNum(4,2)~ THEN REPLY @5 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_ToBback2
IF ~RandomNum(4,3)~ THEN REPLY @5 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_ToBback3
IF ~RandomNum(4,4)~ THEN REPLY @5 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_ToBback4
IF ~RandomNum(4,1)~ THEN REPLY @6 /* ~I love you, Nathaniel.~ */ + FHFlirt_ToBlove1
IF ~RandomNum(4,2)~ THEN REPLY @6 /* ~I love you, Nathaniel.~ */ + FHFlirt_ToBlove2
IF ~RandomNum(4,3)~ THEN REPLY @6 /* ~I love you, Nathaniel.~ */ + FHFlirt_ToBlove3
IF ~RandomNum(4,4)~ THEN REPLY @6 /* ~I love you, Nathaniel.~ */ + FHFlirt_ToBlove4
IF ~RandomNum(2,1)~ THEN REPLY @7 /* ~(Admire Nathaniel.)~ */ + FHFlirt_ToBadmire1
IF ~RandomNum(2,2)~ THEN REPLY @7 /* ~(Admire Nathaniel.)~ */ + FHFlirt_ToBadmire2
IF ~RandomNum(4,1)~ THEN REPLY @8 /* ~(Hug Nathaniel.)~ */ + FHFlirt_ToBhug1
IF ~RandomNum(4,2)~ THEN REPLY @8 /* ~(Hug Nathaniel.)~ */ + FHFlirt_ToBhug2
IF ~RandomNum(4,3)~ THEN REPLY @8 /* ~(Hug Nathaniel.)~ */ + FHFlirt_ToBhug3
IF ~RandomNum(4,4)~ THEN REPLY @8 /* ~(Hug Nathaniel.)~ */ + FHFlirt_ToBhug4
IF ~AreaType(FOREST) RandomNum(4,1)~ THEN REPLY @9 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_ToBfflower1
IF ~AreaType(FOREST) RandomNum(4,2)~ THEN REPLY @9 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_ToBfflower2
IF ~AreaType(FOREST) RandomNum(4,3)~ THEN REPLY @9 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_ToBfflower3
IF ~AreaType(FOREST) RandomNum(4,4)~ THEN REPLY @9 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_ToBfflower4
IF ~OR(2) AreaCheck("AR5003") AreaCheck("AR5501") RandomNum(3,1)~ THEN REPLY @10 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_ToBcbath1
IF ~OR(2) AreaCheck("AR5003") AreaCheck("AR5501") RandomNum(3,2)~ THEN REPLY @10 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_ToBcbath2
IF ~AreaType(FOREST) RandomNum(4,1)~ THEN REPLY @10 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_ToBfbath1
IF ~AreaType(FOREST) RandomNum(4,2)~ THEN REPLY @10 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_ToBfbath2
IF ~AreaType(FOREST) RandomNum(4,3)~ THEN REPLY @10 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_ToBfbath3
IF ~AreaType(FOREST) RandomNum(4,4)~ THEN REPLY @10 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_ToBfbath4
IF ~Global("FHTickle","LOCALS",1) CheckStatGT(Player1,15,STR)~ THEN REPLY @11 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_ToBtickle1
IF ~Global("FHTickle","LOCALS",1) !CheckStatGT(Player1,15,STR)~ THEN REPLY @11 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_ToBtickle2
IF ~RandomNum(4,1)~ THEN REPLY @12 /* ~(Stroke Nathaniel's cheek.)~ */ + FHFlirt_ToBcheek1
IF ~RandomNum(4,2)~ THEN REPLY @12 /* ~(Stroke Nathaniel's cheek.)~ */ + FHFlirt_ToBcheek2
IF ~RandomNum(4,3)~ THEN REPLY @12 /* ~(Stroke Nathaniel's cheek.)~ */ + FHFlirt_ToBcheek3
IF ~RandomNum(4,4)~ THEN REPLY @12 /* ~(Stroke Nathaniel's cheek.)~ */ + FHFlirt_ToBcheek4
IF ~RandomNum(4,1)~ THEN REPLY @13 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_ToBundress1
IF ~RandomNum(4,2)~ THEN REPLY @13 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_ToBundress2
IF ~RandomNum(4,3)~ THEN REPLY @13 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_ToBundress3
IF ~RandomNum(4,4)~ THEN REPLY @13 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_ToBundress4
IF ~RandomNum(4,1)~ THEN REPLY @14 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_ToBneck1
IF ~RandomNum(4,2)~ THEN REPLY @14 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_ToBneck2
IF ~RandomNum(4,3)~ THEN REPLY @14 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_ToBneck3
IF ~RandomNum(4,4)~ THEN REPLY @14 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_ToBneck4
IF ~RandomNum(4,1)~ THEN REPLY @15 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_ToBkiss1
IF ~RandomNum(4,2)~ THEN REPLY @15 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_ToBkiss2
IF ~RandomNum(4,3)~ THEN REPLY @15 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_ToBkiss3
IF ~RandomNum(4,4)~ THEN REPLY @15 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_ToBkiss4
IF ~RandomNum(4,1)~ THEN REPLY @16 /* ~(Kiss Nathaniel passionately.)~ */ + FHFlirt_ToBpassion1
IF ~RandomNum(4,2)~ THEN REPLY @16 /* ~(Kiss Nathaniel passionately.)~ */ + FHFlirt_ToBpassion2
IF ~RandomNum(4,3)~ THEN REPLY @16 /* ~(Kiss Nathaniel passionately.)~ */ + FHFlirt_ToBpassion3
IF ~RandomNum(4,4)~ THEN REPLY @16 /* ~(Kiss Nathaniel passionately.)~ */ + FHFlirt_ToBpassion4
IF ~RandomNum(4,1)~ THEN REPLY @17 /* ~(Slide your hand under Nathaniel's shirt.)~ */ + FHFlirt_ToBshirt1
IF ~RandomNum(4,2)~ THEN REPLY @17 /* ~(Slide your hand under Nathaniel's shirt.)~ */ + FHFlirt_ToBshirt2
IF ~RandomNum(4,3)~ THEN REPLY @17 /* ~(Slide your hand under Nathaniel's shirt.)~ */ + FHFlirt_ToBshirt3
IF ~RandomNum(4,4)~ THEN REPLY @17 /* ~(Slide your hand under Nathaniel's shirt.)~ */ + FHFlirt_ToBshirt4
IF ~RandomNum(4,1)~ THEN REPLY @18 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_ToBear1
IF ~RandomNum(4,2)~ THEN REPLY @18 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_ToBear2
IF ~RandomNum(4,3)~ THEN REPLY @18 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_ToBear3
IF ~RandomNum(4,4)~ THEN REPLY @18 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_ToBear4
IF ~RandomNum(4,1)~ THEN REPLY @19 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_ToBthigh1
IF ~RandomNum(4,2)~ THEN REPLY @19 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_ToBthigh2
IF ~RandomNum(4,3)~ THEN REPLY @19 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_ToBthigh3
IF ~RandomNum(4,4)~ THEN REPLY @19 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_ToBthigh4
IF ~RandomNum(4,1)~ THEN REPLY @20 /* ~(Slap Nathaniel's rear.)~ */ + FHFlirt_ToBslap1
IF ~RandomNum(4,2)~ THEN REPLY @20 /* ~(Slap Nathaniel's rear.)~ */ + FHFlirt_ToBslap2
IF ~RandomNum(4,3)~ THEN REPLY @20 /* ~(Slap Nathaniel's rear.)~ */ + FHFlirt_ToBslap3
IF ~RandomNum(4,4)~ THEN REPLY @20 /* ~(Slap Nathaniel's rear.)~ */ + FHFlirt_ToBslap4
IF ~CheckStatGT(Player1,15,STR) RandomNum(4,1)~ THEN REPLY @21 /* ~(Sweep Nathaniel off his feet.)~ */ + FHFlirt_ToBfeet1
IF ~CheckStatGT(Player1,15,STR) RandomNum(4,2)~ THEN REPLY @21 /* ~(Sweep Nathaniel off his feet.)~ */ + FHFlirt_ToBfeet2
IF ~CheckStatGT(Player1,15,STR) RandomNum(4,3)~ THEN REPLY @21 /* ~(Sweep Nathaniel off his feet.)~ */ + FHFlirt_ToBfeet3
IF ~CheckStatGT(Player1,15,STR) RandomNum(4,4)~ THEN REPLY @21 /* ~(Sweep Nathaniel off his feet.)~ */ + FHFlirt_ToBfeet4
IF ~CheckStatLT(Player1,16,STR) RandomNum(4,1)~ THEN REPLY @22 /* ~(Jump on Nathaniel's back.)~ */ + FHFlirt_ToBjump1
IF ~CheckStatLT(Player1,16,STR) RandomNum(4,2)~ THEN REPLY @22 /* ~(Jump on Nathaniel's back.)~ */ + FHFlirt_ToBjump2
IF ~CheckStatLT(Player1,16,STR) RandomNum(4,3)~ THEN REPLY @22 /* ~(Jump on Nathaniel's back.)~ */ + FHFlirt_ToBjump3
IF ~CheckStatLT(Player1,16,STR) RandomNum(4,4)~ THEN REPLY @22 /* ~(Jump on Nathaniel's back.)~ */ + FHFlirt_ToBjump4
++ @23 /* ~Nathaniel, I'm not really comfortable with you flirting with me all the time.~ */ + FHDisableFlirts
++ @24 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBmine1
SAY @25 /* ~I’m yours *always*, my darling.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBmine2
SAY @26 /* ~(Nathaniel gives you a faintly hungry grin.) I look forward to it.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBmine3
SAY @27 /* ~(He flushes, but the spark in his eyes betrays the amusement and pleasure that override his embarrassment.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBmine4
SAY @28 /* ~Mmm. You've no idea how nice it is to hear you say that.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBthanks1
SAY @29 /* ~Thank *you*, <CHARNAME>. I just hope that together we’ll be able to do enough to save all these people who need us.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBthanks2
SAY @30 /* ~It’s not something you have to thank me for, <CHARNAME>. It’s only what you deserve, and I – I really should be able to do more for you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBthanks3
SAY @31 /* ~Oh! Well, you're welcome, though I think it's not me you should be patting on the back - it's *you*.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBthanks4
SAY @32 /* ~And I'm always glad that I'm here with you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBhow1
SAY @33 /* ~I...feel a little...could someone heal me?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBhow2
SAY @34 /* ~(He rubs his shoulder with a wince.) That last battle was a little rough on me, but it’s nothing a healing potion won’t fix. Don’t worry, love. I’m fine.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBhow3
SAY @35 /* ~You don't have to ask me all the time, darling. I'm fine.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBhow4
SAY @36 /* ~I'm feeling all right to<DAYNIGHT>, <CHARNAME> - and I hope I can help you feel the same.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBhow5
SAY @37 /* ~(In answer, Nathaniel gives you a brilliant smile and drops a light kiss on your cheek.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBback1
SAY @38 /* ~(He frowns in concern as he gently rubs your offended muscles.) You should be more careful, darling. I don’t like to see you get hurt.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBback2
SAY @39 /* ~(Nathaniel's hands are deliciously warm as he massages your shoulders, though he stops after a few minutes.)~ */
=
@40 /* ~There, <CHARNAME> - I don't want you falling asleep!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBback3
SAY @41 /* ~(His hands are confident as they trace the shape of your stiff muscles along your shoulders and back. He takes his time working downwards, reaching your lower back in firm strokes that make your skin tingle.)~ */
=
@42 /* ~(He wraps his arms around your chest, pressing himself against you and resting his face in the crook of your neck for a moment.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBback4
SAY @43 /* ~(Nathaniel starts to rub your back, but then seems to get distracted kissing the back of your neck. He turns you round to kiss you on the mouth.)~ */
=
@44 /* ~Sorry, you're just too distracting!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBlove1
SAY @45 /* ~(He throws his arms around you in a fierce embrace.) I love you too, I want you to know that I will whatever happens.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBlove2
SAY @46 /* ~Mmmm, I don't think hearing you say that will ever get boring.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBlove3
SAY @47 /* ~(In reply, he kisses you on the cheek, then gives your neck a playful lick.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBlove4
SAY @48 /* ~I love you too, and I can't see it ever being different.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBadmire1
SAY @49 /* ~(In a blessedly peaceful moment, you take the time to properly take stock of Nathaniel's appearance.)~ */
=
@50 /* ~(Your gaze lingers on a few features - his muscled calves, his long fingers as he absent-mindedly flexes them - but rests finally on his face.)~ */
=
@51 /* ~(His expression is somewhat troubled, with a crease settled between his eyebrows. Except for these lines his skin is smooth.)~ */
=
@52 /* ~(When he sees you watching him the worry lines smooth out. He gives you a smile and reaches over to squeeze your hand.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBadmire2
SAY @53 /* ~(Your eyes are drawn to Nathaniel's hair. You have noticed that he pays it little attention beyond keeping it clean and combing it with his fingers in the mornings, so it is a wonder that it is so soft and shiny; it practically begs to be touched.)~ */
=
@54 /* ~(As if in response to your thoughts, Nathaniel runs his hand through the thick waves, mussing them. It is longer than how he kept it back in Baldur's Gate, and you offer a quick prayer of thanks that he hasn't had time to have it trimmed.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBhug1
SAY @55 /* ~(Nathaniel returns your embrace, sighing in pleasure as he leans against you. After you break apart, there is a smile about his mouth and eyes that does not fade for a long time.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBhug2
SAY @56 /* ~(Nathaniel kisses you on the cheek.) Not right now, <CHARNAME>. Maybe we should be getting on...?~ */
=
@57 /* ~(He does, however, give your shoulder a squeeze before you continue your journey.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBhug3
SAY @58 /* ~Mmmm, lovely. (Nathaniel holds on to you tightly for a few long moments before letting you go with a kiss.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBhug4
SAY @59 /* ~(Nathaniel relaxes into your embrace, then begins to kiss the side of your neck. He gives you a sheepish smile.)~ */
=
@60 /* ~You smell so good, I can't resist!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfflower1
SAY @61 /* ~(As you walk you absentmindedly gather a handful of wild flowers, gaining several strange looks from the rest of the party, but it's worth it to see the flattered expression on Nathaniel's face when you present him with them.)~ */
=
@62 /* ~Thank you, <CHARNAME>, that's...~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfflower2
SAY @63 /* ~(He smiles and kisses you in thanks. You note, later, that one of the flowers is tucked behind a weapon strap on his chest over his heart.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfflower3
SAY @64 /* ~Oh, <CHARNAME>, you shouldn't have! (Nathaniel's smile belies his words, however, and he gives you a kiss on the cheek in thanks.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfflower4
SAY @65 /* ~I appreciate it, darling, I really do, but where am I going to put them?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBcbath1
SAY @66 /* ~(Nathaniel looks slightly uncomfortable but nods at your suggestion. You take his hand and lead him to the bathing rooms, and though they're rather busy you poke Nathaniel into fast-talking the pair of you a private bath.)~ */
=
@67 /* ~(All manners of stares follow the pair of you and by the time you are behind closed doors, he is painfully self-conscious, dithering as you rip off your soiled clothes. In fact, by the time you turn your attention to him, he has only managed to take off his pack and equipment and lay it beside yours. You sigh humouringly and pull off his clothes.)~ */
=
@68 /* ~(You manoeuvre both of you into the tub, facing each other, and you hiss slightly at the too-hot temperature. Nathaniel doesn't seem to notice; he is looking at a point on the far wall with far too much interest.)~ */
=
@69 /* ~(You wash yourself, then take the softest washcloth you can find and tend to Nathaniel. He follows the movements of your hands with his eyes as you gently scrub away layers of dirt and sweat from his chest and legs, leaving smooth, wetly shining skin beneath your fingers. He stirs beneath your touch and runs his fingers through your hair.)~ */
=
@70 /* ~(He brushes his lips to yours, then leans his head against you. Your hands and the heat combine to make him groggy but he sleepily washes your hair, planting wet, chaste kisses on your face as he does so. You return the favour, relishing in the warmth and the feeling of safety which are so lacking in your travels.) <CHARNAME>, I love you.~ */
=
@71 /* ~(Finally, the cooling temperature drives Nathaniel out of the water and into the coarse towels waiting for you. The self-consciousness that had possessed him has faded, and he smiles when he sees you watch him dress.)~ */
=
@72 /* ~Thank you for this, <CHARNAME>, it was wonderful.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBcbath2
SAY @73 /* ~(Nathaniel leads the way to the bathing rooms, and when there are no attendants to be found, his excitement is barely dampened. You wander around for a few minutes until you locate the back rooms and go into the nearest one. There is indeed a bath there but a couple are inside it together, cuddling intimately. They move to cover themselves but Nathaniel has already pulled the door shut and you move to the next room together.)~ */
= @74 /* ~(This one is deserted and Nathaniel quickly fills the bath with steaming water, adding a splash of flower-scented oil as you undress. He pulls off his own clothes, throwing them into the corner with unusual abandon, and kisses you with a force that sends you back half a step. The bath beckons you both, so he breaks off and clambers in. The sigh that comes from the back of his throat sends a flush of warmth through you and you eagerly join him.)~ */
= @75 /* ~(You wash yourselves, and despite his earlier passion Nathaniel refrains from even touching you. From the look in his eyes, you suspect that this stems from a sense of delayed gratification rather than the absence of desire. When you are thoroughly clean, you lean back luxuriously, giving him an eyeful, and he launches himself at you with no restraint at all, pressing the length of his body against you and running his hands all over you like he is trying to memorise each square inch by touch.)~ */
= @76 /* ~<CHARNAME>, I - you're so - I *love* you so much!~ */
= @77 /* ~(He leans over you with his forearms resting on the sides of the tub, then laughs - you notice that your antics have spilt almost all the water onto the floor, and that you are lying in only a few inches of dirty, soapy stuff that you get out of immediately. He only laughs more as the two of you dress whilst trying not to slip on the wet tiled floor.)~ */
= @78 /* ~(You leave clean, happy and contented.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfbath1
SAY @79 /* ~I'd rather not go in *that* water, with - with...*things*. Ask me when we're in an inn.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfbath2
SAY @80 /* ~(Nathaniel stares warily at the nearby stream and shrugs, following you to the water's edge.)~ */
= @81 /* ~(He fusses over his clothes and his swords, trying to balance them on a chest-high branch. At your quizzical look, he scowls.) You never know who might be around, I don't want them stolen or anything.~ */
= @82 /* ~(You lose patience and pull him into the water, and he yelps at the cold. Whilst you wash yourself, he shivers waist deep in the water and half-heartedly splashes himself clean.)~ */
= @83 /* ~(You take pity on him and press your body against his in an effort to warm his skin. He sighs and rests against you for a moment, then climbs out of the water and pulls on a fresh set of clothes without even letting his skin dry. He looks at you a little balefully but smiles after a moment.)~ */
= @84 /* ~That wasn't the nicest experience, <CHARNAME>...but it was much better with you around.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfbath3
SAY @85 /* ~(Nathaniel gives you a look at your suggestion of an open-air bath, but agrees all the same. He strokes your skin as you undress, perhaps trying to distract you from the impending cold water, but when you dive into the water he sighs and follows suit.)~ */
= @86 /* ~(He swims over to you, treading water, and pulls you into a hug, lightly kissing the side of your neck. He breaks off abruptly.)~ */
= @87 /* ~<CHARNAME>! Don't tickle me - I was trying to be romantic - aaaah!~ */
= @88 /* ~(His horrified realisation that you were not tickling him is a sight to behold, though less pleasing than the sight of him as he climbs out of the water at a lightning-quick pace. Unfortunately he dresses with equal speed and stands on the bank, shivering.)~ */
= @89 /* ~<CHARNAME>, there are things *living* in there! Come out!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfbath4
SAY @90 /* ~(Nathaniel agrees to your suggestion surprisingly easily, showing only a hint of the reluctance that he has in the past to get into the cold water.)~ */
=
@91 /* ~(As he sluices off the grime of travel, you find yourself studying his body. The months of journeying with you have had their effect, both good and bad. Nathaniel's chest and arms are more defined than they used to be and his muscles flex deliciously as he stretches, but there are numerous battle scars marring his skin.)~ */
=
@92 /* ~(Nathaniel notices your study, and shakes the water from his hair.) What is it, <CHARNAME>?~ */
++ @93 /* ~Nothing, just admiring the view.~ */ + FHFlirt_ToBbath4_nothing
++ @94 /* ~You've been through a lot, travelling with me.~ */ + FHFlirt_ToBbath4_through
++ @95 /* ~(Kiss him.)~ */ + FHFlirt_ToBbath4_kiss
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBbath4_nothing
SAY @96 /* ~(He smiles and puts his arms around you.) Oh, <CHARNAME>, I love you.~ */
=
@97 /* ~But this water's-- well. Let's do this later.~ */
=
@98 /* ~(It may just be your imagination, but as he turns away you could swear you saw him wink at you.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBbath4_through
SAY @99 /* ~We all have, and you the most, my darling. But there's nowhere I'd rather be than here by your side.~ */
=
@100 /* ~Well, maybe not *right* here. Let's get out - I need to warm up!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBbath4_kiss
SAY @101 /* ~(He responds eagerly, pressing his body against yours.)~ */
=
@102 /* ~Mmm, that's definitely worth the cold!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBtickle1
SAY @103 /* ~(When you sidle over to Nathaniel and go to tickle his armpits, he grabs your wrists: he must have been expecting this from you for a while.)~ */
= @104 /* ~(You pull away from him, breaking his grip, and tickle him mercilessly. He starts giggling and collapses into your arms, pressing his lips clumsily against yours.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBtickle2
SAY @103 /* ~(When you sidle over to Nathaniel and go to tickle his armpits, he grabs your wrists: he must have been expecting this from you for a while.)~ */
= @105 /* ~(You pull against him but you can't break his grip, and he wraps his arms around you, pinning your hands in place. He kisses you slowly, smiling when he withdraws.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBcheek1
SAY @106 /* ~(When you gently run your fingers along Nathaniel’s jawline, his eyes flutter closed and he begins to smile. His hand comes up to capture yours, and he grips it tightly.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBcheek2
SAY @107 /* ~(Nathaniel twists round and softly bites your finger. The look he gives you is distinctly lascivious.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBcheek3
SAY @108 /* ~(He smiles widely and gives you a brief but tight hug.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBcheek4
SAY @109 /* ~(Nathaniel takes your hand and kisses each finger before squeezing it and letting it drop.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBundress1
SAY @110 /* ~(No Amnish scenery could compare to the sight before you. You study Nathaniel with intense scrupulousness, and in your mind's eye you remove the pieces of clothing that interfere with your view.)~ */
= @111 /* ~(Nathaniel cannot help but notice the predatory smile on your face and smiles back at you.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBundress2
SAY @112 /* ~(You turn the full force of your attention to Nathaniel...or more specifically, the fine specimen that is his body.)~ */
= @113 /* ~(Whilst giving you the occasional headache in battle, the absence of protective leathers certainly aids you when you admire his physique. Still, you decide that the clothes he *is* wearing are too decent for your tastes, and in your mind you fix that problem.)~ */
= @114 /* ~(Nathaniel looks over at you and smiles, shaking his head with amusement as he turns his attention back to the tasks at hand.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBundress3
SAY @115 /* ~<CHARNAME>, please. Not right now.~ */
=
@116 /* ~(Despite his words, you cannot help but notice him lowering his eyes in an artful fashion as he watches you for a couple of moments.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBundress4
SAY @117 /* ~(Nathaniel is quick to notice the expression on your face. He leans over and whispers wetly into your ear.)~ */
=
@118 /* ~Wait until tonight, and then you'll get what you want.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBneck1
SAY @119 /* ~(Nathaniel sighs contentedly as your lips touch him and leans backwards into your arms, against your chest. His shoulders are unusually relaxed as he reaches up to touch your cheek.)~ */
= @120 /* ~(You stand pressed against each other for a few minutes, but the moment has to end. Nathaniel turns around and kisses you on the lips, his eyes sparkling.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBneck2
SAY @121 /* ~(His eyes half-close and the smile that grows on his face is one of pure, unadulterated pleasure.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBneck3
SAY @122 /* ~(Nathaniel gasps faintly. Not letting you continue, he grabs you and kisses you hard on the mouth.)~ */
=
@123 /* ~(He holds you tightly for a couple of minutes, then releases you with a satisfied sigh.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBneck4
SAY @124 /* ~Ohhh, that feels lovely, <CHARNAME>...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBkiss1
SAY @125 /* ~Mmm, lovely.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBkiss2
SAY @126 /* ~(Your quick kiss leaves him standing open-mouthed, watching you with bright eyes.)~ */
= @127 /* ~(Before you have a chance to go back to formation, he leans closer and returns the favour.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBkiss3
SAY @128 /* ~Mmm, you taste wonderful.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBkiss4
SAY @129 /* ~(Nathaniel's hand comes up to stroke your face for a second before you break apart. As you continue to walk, Nathaniel's face is lit up with a smile.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBpassion1
SAY @130 /* ~(Nathaniel stiffens and tries half-heartedly to draw back. With a moaning sigh, he surrenders to your onslaught.)~ */
= @131 /* ~(He is decidedly dazed when you finish, and grins at you, his cheeks flushed.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBpassion2
SAY @132 /* ~(At the touch of your lips Nathaniel melts into you, responding with a gentle passion equal to your ardour.)~ */
= @133 /* ~(Needless to say, you leave him struck dumb, smiling after you when you retreat back into formation.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBpassion3
SAY @134 /* ~(You catch Nathaniel unawares when you start to kiss him but he responds to you quickly, taking your face in his hands and leaning against you.)~ */
= @135 /* ~(You feel warmth radiating out from his face, and when you open your eyes to take a peek, you see the familiar excited blush creeping up his cheeks.)~ */
= @136 /* ~(After another moment he breaks off, bringing a hand up against your lips.)~ */
= @137 /* ~Later. We finish this...later.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBpassion4
SAY @138 /* ~(As you come close, Nathaniel grabs you and locks his lips against yours. When he finally breaks away, he treats you to a wide smile.)~ */
=
@139 /* ~Sorry, did I interrupt you?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBshirt1
SAY @140 /* ~(When Nathaniel pauses for a moment, you take the opportunity to ease your fingers underneath the hem of his shirt. The skin of his waist is warm and soft, and you rub it gently.)~ */
=
@141 /* ~Mmm...what’s this for, <CHARNAME>? I like it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBshirt2
SAY @142 /* ~Walking behind and slightly beside Nathaniel, you gently put your arm around his shoulders and let your hand drift underneath the neckline of his shirt. You stroke his collarbone lightly with your thumb.)~ */
=
@143 /* ~(He stops in his tracks, and when you look at him you see that his eyes have half closed. He opens them and gives you a cautious smile.) That’s lovely, really it is...but maybe later, when we’ve not got so much to do.~ */
IF ~~ THEN EXIT
END

IF ~~ BEGIN FHFlirt_ToBshirt3
SAY @144 /* ~(In a slow moment you walk close against Nathaniel and ease your hands underneath his shirt. Your palms rest against his hips, and you revel in feeling him lean against you.)~ */
=
@145 /* ~(After several seconds he takes your hands in his and removes them from their resting place. He brings them up to his mouth, gently kisses your palms, and gives you a winsome smile.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBshirt4
SAY @146 /* ~(You notice that at some point in the day’s travels Nathaniel’s shirt has come undone partway, at his neck. Never one to miss on a golden opportunity such as this, you swoop in and slip your hands underneath his shirt where it gapes open.~ */
=
@147 /* ~(The skin of his chest his warm and smooth, and you relish running your fingertips over it. Nathaniel is trembling mightily under your touch, and the flush that suffuses his cheeks creeps all the way down his neck and almost to the skin you are touching. Needless to say, when you finally withdraw your hands his disappointment is obvious.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBear1
SAY @148 /* ~(You gently nuzzle Nathaniel's neck and he leans against you, closing his eyes and sighing. Your mouth finds its way up to his ear and you nip it, breathing against his neck.)~ */
= @149 /* ~(He gives a shiver and growls at the back of his throat, then pushes you away, his hands lingering on your shoulders.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBear2
SAY @150 /* ~Sto-stop it, <CHARNAME>, I can't think when you're doing that!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBear3
SAY @151 /* ~(Nathaniel shivers and sighs at the touch of your mouth, then gently pushes you away.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBear4
SAY @152 /* ~That feels really--~ */
=
@153 /* ~(As Nathaniel breaks off, it is clear that he is enjoying himself far too much to bother with words.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBthigh1
SAY @154 /* ~(Nathaniel jumps and looks up at you, excited and embarrassed and nervous at once.)~ */
= @155 /* ~(You squeeze the muscle gently, and he removes your hand. He is smiling but his eyes are serious.)~ */
= @156 /* ~Not...not in public. I don't want to draw attention to ourselves like that.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBthigh2
SAY @157 /* ~<CHARNAME>...what - what are you...no, don't mind me.~ */
= @158 /* ~(Nathaniel's eyebrows pinch together and he flushes, but he does nothing to stop you.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBthigh3
SAY @159 /* ~(Nathaniel's eyes widen and he pulls you into a tight hug, kissing the side of your neck.)~ */
= @160 /* ~Um, shall we get going? Sorry...I got a little carried away.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBthigh4
SAY @161 /* ~(Nathaniel's thigh tenses satisfyingly and he smiles at you, giving you a brief hug.)~ */
= @162 /* ~Wait till we rest, all right?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBslap1
SAY @163 /* ~(No matter how many times you’ve admired this particular part of Nathaniel’s anatomy before, its appeal never fades. Reaching out, you show your appreciation with a soft thwack and a quick rub.)~ */
=
@164 /* ~(Nathaniel stiffens momentarily and turns to face you. His gaze checks the surroundings briefly, then he returns the favour to your backside. He pulls you to him and gives you a resounding kiss on the mouth.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBslap2
SAY @165 /* ~Watch out, <CHARNAME>, I can give as good as I get!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBslap3
SAY @166 /* ~(Nathaniel jumps in surprise, then gives you an amused smile.) Enough of that, love. Be patient and wait until tonight!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBslap4
SAY @167 /* ~(Nathaniel is focusing so much on the road ahead that he is oblivious as you approach behind him, but you definitely get his attention when you suddenly slap his rear.)~ */
= @168 /* ~(He scowls and rubs the smarting skin, but he can't help the grin on his face from growing.) I don't know what I did to offend you, <CHARNAME>...~ */
= @169 /* ~But I'll be sure to deserve more next time.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfeet1
SAY @170 /* ~(Coming up behind Nathaniel, you tuck one arm under his knees and one around his back, and pull him off his feet. He yelps, throwing his arms around your neck instinctively.)~ */
=
@171 /* ~(When he speaks, his voice is breathless with both surprise and laughter.) Let – let me down!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfeet2
SAY @172 /* ~(When he’s least expecting it, you throw your arms around Nathaniel’s middle and spin. The momentum swings him off his feet and he laughs, hugging your neck and pressing his face against your neck.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfeet3
SAY @173 /* ~(You slide your hands underneath Nathaniel’s armpits with the intention of picking him up, but he wrenches away from you, smiling.)~ */
=
@174 /* ~<CHARNAME>! That tickles!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBfeet4
SAY @175 /* ~(Nathaniel gives a yelp as you put your arms around his waist and lift him into the air.)~ */
=
@176 /* ~What was that for, <CHARNAME>?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBjump1
SAY @177 /* ~(Your legs are feeling rather tired, so you tap Nathaniel on the shoulder and jump at him, throwing your arms around his neck. You can feel him chuckling under his breath by the movement in his chest as he leans backwards, levering you off the ground.)~ */
=
@178 /* ~Having fun, <CHARNAME>?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBjump2
SAY @179 /* ~(On the spur of the moment you leap onto Nathaniel’s back. His reactions are impressive: he grabs your thighs and pulls you up so you’re stable before there’s time for you to fall.)~ */
=
@180 /* ~(He twists his head around to look back at you.) I could carry you if you’d like, <CHARNAME>...but I don’t think it’d be very respectable!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBjump3
SAY @181 /* ~(When you hook one arm around Nathaniel's neck and tell him to pick you up, he looks a little incredulous. Accomodating as ever, however, he lifts you at the backs of your knees and hoists you into the air.)~ */
=
@182 /* ~(Your faces are close, and you see his pupils dilate as he studies you. He licks his lips and smiles.)~ */
=
@183 /* ~Let me put you down. I wouldn't want to get distracted and drop you!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_ToBjump4
SAY @184 /* ~(Nathaniel jumps and you almost slide to the ground.)~ */
=
@185 /* ~Warn me next time, <CHARNAME>! I don't want you getting hurt.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHDisableFlirts
SAY @186 /* ~Of course! Sorry, I didn't mean to distract you.~ */
IF ~~ THEN DO
~SetGlobal("FHFlirtsDisabled","GLOBAL",1)~
EXIT
END

END
