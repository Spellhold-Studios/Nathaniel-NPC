//CONTENTS
//Initial meeting

//Initial meeting

BEGIN FHNAT

IF ~Global("FHMetNath","GLOBAL",0)
Global("WorkingForBodhi","GLOBAL",1)~ FHMeet_Scared
SAY @0 /* ~You - I know of you - you're working with those undead creatures! Leave me be!~ */
IF ~~ DO ~SetGlobal("FHMetNath","GLOBAL",1) EscapeArea()~
EXIT
END

IF ~Global("FHMetNath","GLOBAL",0)
!CharName("Matthias",Player1)
!CharName("Tomasz",Player1)
!CharName("Chorinthis",Player1)
!CharName("Xavier",Player1)
!Global("WorkingForBodhi","GLOBAL",1)~ THEN BEGIN FHMeet
SAY @1 /* ~Excuse me, <SIRMAAM>? My name's Nathaniel Aplin-Fletcher. I was wondering - have you seen a man about as tall as me, with dark hair? An abrupt manner? His name's Latimer Bryce. He's ... very dear to me, and he's missing.~ */
++ @2 /* ~I only arrived here recently myself. How did you lose him?~ */ DO ~SetGlobal("FHMetNath","GLOBAL",1)~ + FHMeet_Lost
++ @3 /* ~I'm sorry, I don't have time to talk. If you'll excuse me...~ */ DO ~SetGlobal("FHMetNath","GLOBAL",1)~ + FHMeet_Sorry
++ @4 /* ~I have no wish to talk to one such as you.~ */ DO ~SetGlobal("FHMetNath","GLOBAL",1)~ + FHMeet_Mean
END

IF ~~ BEGIN FHMeet_Leave
SAY @5 /* ~Very well. But if you want to speak again, I'll be at the Mithrest Inn.~ */
IF ~~ DO ~SetGlobal("FHNathMithrest","GLOBAL",1) EscapeAreaMove("AR0704",683,667,11)~
EXIT
END

IF ~~ BEGIN FHMeet_Sorry
SAY @6 /* ~That's fine, of course--~ */
=
@7 /* ~Wait! Aren't you from Baldur's Gate? <CHARNAME>...?~ */   
++ @8 /* ~Yes, I am. Why do you ask?~ */ + FHMeet_Past
++ @9 /* ~Go and talk to someone who cares. I've left all that behind me.~ */ + FHMeet_Mean
++ @10 /* ~Look, sir, I really don't have the time ... there are other things I need to do.~ */ DO ~SetGlobal("FHNathMithrest","GLOBAL",1)~ + FHMeet_Leave
++ @11 /* ~No, I'm not. Who is that?~ */ + FHMeet_Deny
++ @12 /* ~Bal-dur's Gate? What is that? I not from there. Is inn? Spa, maybe?~ */ + FHMeet_weird
END

IF ~~ BEGIN FHMeet_Lost
SAY @13 /* ~Well ... to tell the truth he was the one who lost me. He, well, we had a disagreement.~ */
++ @14 /* ~Where did you last see him? Maybe I could help.~ */ + FHMeet_Concern
++ @15 /* ~Is there anything I can do?~ */ + FHMeet_Concern
++ @16 /* ~That's a little extreme. Did you have a fight or something?~ */ + FHMeet_Concern
++ @17 /* ~That's pretty inept. I'm not surprised he wanted to see the back of you.~ */ + FHMeet_Mean
END

IF ~~ BEGIN FHMeet_Mean
SAY @18 /* ~It's foolish to be so rude to a stranger. Excuse me.~ */
IF ~~ DO ~EscapeArea()~
EXIT
END

IF ~~ BEGIN FHMeet_Deny
SAY @19 /* ~Oh - I do apologise. I mistook you for someone else.~ */
IF ~~ DO ~EscapeArea()~
EXIT
END

IF ~~ BEGIN FHMeet_weird
SAY @20 /* ~Pardon? Look, I'm sure I recognise you. Just give me a straight answer, and I'll stop bothering you.~ */
++ @21 /* ~Never mind... Why do you ask, anyway?~ */ + FHMeet_Past
++ @22 /* ~Go and talk to someone who cares.~ */ + FHMeet_Mean
++ @23 /* ~I have no idea what you're talking about.~ */ + FHMeet_Deny
++ @24 /* ~Straight ans-wer? What is this Bal-dur's Gate you speak of?~ */ + FHMeet_Deny
END

IF ~~ BEGIN FHMeet_Past
SAY @25 /* ~I suppose you must not have seen me. I used to work in the Baldur's Gate branch of the Flaming Fist. With Latimer. You killed Angelo!~ */
++ @26 /* ~So what are you doing here?~ */ + FHMeet_Here
++ @27 /* ~Then you'll know that I did nothing wrong! You people wrongly incarcerated me!~ */ + FHMeet_Accuse
++ @28 /* ~Do you people never give up? The Grand Duke exonerated me, you should know that!~ */ + FHMeet_Accuse
++ @29 /* ~I don't need this bother. Please leave me be.~ */ DO ~SetGlobal("FHNathMithrest","GLOBAL",1)~ + FHMeet_Leave
END

IF ~~ BEGIN FHMeet_Concern
SAY @30 /* ~Thank you for your concern, but--~ */
=
@7 /* ~Wait! Aren't you from Baldur's Gate? <CHARNAME>...?~ */   
++ @8 /* ~Yes, I am. Why do you ask?~ */ + FHMeet_Past
++ @9 /* ~Go and talk to someone who cares. I've left all that behind me.~ */ + FHMeet_Mean
++ @31 /* ~Look, I really don't have the time ... there are other things I need to do.~ */ DO ~SetGlobal("FHNathMithrest","GLOBAL",1)~ + FHMeet_Leave
++ @32 /* ~Bal-dur's Gate? No, I not from there. Is inn? Spa, maybe?~ */ + FHMeet_Deny
++ @11 /* ~No, I'm not. Who is that?~ */ + FHMeet_Deny
END

IF ~~ BEGIN FHMeet_Accuse
SAY @33 /* ~And I should tell you that I had nothing to do with that. Anyway, that isn't important now. I need to find Latimer.~ */
++ @34 /* ~Wait! I still want to know why the two of you were here in the first place.~ */ + FHMeet_Here
IF ~!Global("PlayerThiefGuild","GLOBAL",1)~ THEN REPLY @35 /* ~I could help you look for him, if you'd like.~ */ + FHMeet_Doubtful
IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN REPLY @35 /* ~I could help you look for him, if you'd like.~ */ + FHMeet_thiefguild
++ @36 /* ~Well, good luck, I suppose.~ */ + FHMeet_Luck
++ @37 /* ~Try going to the Government District. Maybe the guards will know something ... good luck.~ */ DO ~SetGlobal("FHNathMithrest","GLOBAL",1)~ + FHMeet_Goodbye
END

IF ~~ BEGIN FHMeet_Here
SAY @38 /* ~I could ask you the same question - I thought you were still around the city. Well, we left the Fist, and then... Look, I'm - I'm sorry but I don't have the time to stay and talk. I really should go.~ */
IF ~!Global("PlayerThiefGuild","GLOBAL",1)~ THEN REPLY @39 /* ~It's safer if you're not alone - how about you travel with me for a spell?~ */ + FHMeet_Doubtful
IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN REPLY @40 /* ~It's safer if you're not alone - how about you travel with me for a while?~ */ + FHMeet_thiefguild
++ @41 /* ~I see. Well, the best of luck to you.~ */ + FHMeet_Luck
++ @42 /* ~Go and talk to the guards. Maybe someone will have told them something. Good luck.~ */ DO ~SetGlobal("FHNathMithrest","GLOBAL",1)~ + FHMeet_Goodbye
END

IF ~~ BEGIN FHMeet_Luck
SAY @43 /* ~Thank you. I appreciate it.~ */
IF ~!Global("PlayerThiefGuild","GLOBAL",1)~ THEN REPLY @44 /* ~Would you like to join me? I'm travelling, and you'll be safer than if you're alone.~ */ + FHMeet_Doubtful
IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN REPLY @44 /* ~Would you like to join me? I'm travelling, and you'll be safer than if you're alone.~ */ + FHMeet_thiefguild
++ @45 /* ~Goodbye, then.~ */ DO ~SetGlobal("FHNathMithrest","GLOBAL",1)~ + FHMeet_Goodbye
END

IF ~~ BEGIN FHMeet_Doubtful
SAY @46 /* ~I don't know ... you've got your own business to attend to. I wouldn't want us to hold each other up.~ */
++ @47 /* ~It wouldn't be a bother. You look like you can hold your own in a fight.~ */ + FHMeet_Yes
++ @48 /* ~There are ... things happening in my life that require warriors.~ */ + FHMeet_Yes
++ @49 /* ~Fair enough. Well, goodbye then.~ */ DO ~SetGlobal("FHNathMithrest","GLOBAL",1)~ + FHMeet_Goodbye
END

IF ~~ BEGIN FHMeet_thiefguild
SAY @50 /* ~I don't think that would be a good idea. I haven't been here long but your reputation as a criminal is well-known.~ */
IF ~~ DO ~EscapeArea()~
EXIT
END

IF ~~ BEGIN FHMeet_Goodbye
SAY @51 /* ~Goodbye. It was nice to meet you at last. Look, I'm staying at the Mithrest Inn, so if you want to meet again that's where I'll be.~ */
IF ~~ DO ~EscapeAreaMove("AR0704",683,667,11)~
EXIT
END

IF ~~ BEGIN FHMeet_Yes
SAY @52 /* ~Well, if you're sure. All right, then.~ */
++ @53 /* ~Excellent. I'm sure you'll be a useful companion.~ */ + FHMeet_use
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY @54 /* ~I should mention that my friend is being held by the Cowled Wizards and I'm looking for a way of helping her.~ */ + FHMeet_Cowled
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY @55 /* ~There's a mage named Irenicus that I'm hunting at the moment - is that a problem for you?~ */ + FHMeet_Irenicus
END

IF ~~ BEGIN FHMeet_Cowled
SAY @56 /* ~The Cowled Wizards? Aren't they the rulers here? Hmm... Well, I'm sure we'll be able to do it without breaking the law. I was about to go to the Council of Six building to ask about Latimer, so maybe we could stop off there beforehand.~ */
IF ~~ THEN UNSOLVED_JOURNAL @57 /* ~Nathaniel's search for Latimer
In Athkatla I met a man named Nathaniel, formerly a member of the Flaming Fist in Baldur's Gate. I have agreed to help him look for his lover Latimer, who he ended up separated from several months ago.~ */
DO ~SetGlobal("NathJoined","LOCALS",1)
SetGlobalTimer("FHSeeBrega","GLOBAL",TWO_DAYS)
JoinParty()~
EXIT
END

IF ~~ BEGIN FHMeet_Irenicus
SAY @58 /* ~I can see from your face that he isn't someone to be befriended. I ... I'll do all I can to help you. I was about to go to the Council of Six building to ask about Latimer, though, so I'd appreciate it if we could stop off there.~ */
IF ~~ THEN UNSOLVED_JOURNAL @57 /* ~Nathaniel's search for Latimer
In Athkatla I met a man named Nathaniel, formerly a member of the Flaming Fist in Baldur's Gate. I have agreed to help him look for his lover Latimer, who he ended up separated from several months ago.~ */
DO ~SetGlobal("NathJoined","LOCALS",1)
SetGlobalTimer("FHSeeBrega","GLOBAL",TWO_DAYS)
JoinParty()~
EXIT
END

IF ~~ BEGIN FHMeet_use
SAY @59 /* ~I hope so, too. I was about to go to the Council of Six building to ask about Latimer, so maybe we could stop off there.~ */
IF ~~ THEN UNSOLVED_JOURNAL @57 /* ~Nathaniel's search for Latimer
In Athkatla I met a man named Nathaniel, formerly a member of the Flaming Fist in Baldur's Gate. I have agreed to help him look for his lover Latimer, who he ended up separated from several months ago.~ */
DO ~SetGlobal("NathJoined","LOCALS",1)
SetGlobalTimer("FHSeeBrega","GLOBAL",TWO_DAYS)
JoinParty()~
EXIT
END

IF ~OR(4)
CharName("Matthias",Player1)
CharName("Tomasz",Player1)
CharName("Xavier",Player1)
CharName("Chorinthis",Player1)~ THEN BEGIN FHMeet_EasterEgg
SAY @60 /* ~You - you followed me here? How did you-- Leave me! Leave me be!~ */   
IF ~~ DO ~EscapeArea()~
EXIT
END

IF ~Global("FHNathMithrest","GLOBAL",1)~ THEN BEGIN FHNathMithrestMeet
SAY @61 /* ~Hello again. I've been looking around and I haven't seen any sign of Latimer. I don't suppose...? No, you haven't, have you? Ah, well.~ */
IF ~!Global("PlayerThiefGuild","GLOBAL",1)~ THEN REPLY @62 /* ~Would you like to join me for a while? It would be useful to have someone else around.~ */ + FHMithJoin
IF ~Global("PlayerThiefGuild","GLOBAL",1)~ THEN REPLY @62 /* ~Would you like to join me for a while? It would be useful to have someone else around.~ */ + FHMithJoinGuild
++ @63 /* ~Well, good luck to you.~ */ EXIT
END

IF ~~ BEGIN FHMithJoin
SAY @64 /* ~Really? All right, then. Oh, one thing - I'd like to go to the Government building to see if the guards have seen Latimer around.~ */
IF ~~ THEN UNSOLVED_JOURNAL @65 /* ~Nathaniel's search for Latimer
In Athkatla I met a man named Nathaniel, formerly a member of the Flaming Fist in Baldur's Gate. I have agreed to help him look for his friend Latimer, who he ended up separated from several months ago.~ */
DO ~SetGlobal("NathJoined","LOCALS",1)
SetGlobalTimer("FHSeeBrega","GLOBAL",TWO_DAYS)
JoinParty()~
EXIT
END

IF ~~ BEGIN FHMithJoinGuild
SAY @66 /* ~I don't think so. I've heard about your criminal reputation in this city.~ */
IF ~~ DO ~EscapeArea()~
EXIT
END
