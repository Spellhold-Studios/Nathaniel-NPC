BEGIN FHBRYCE

//Romance

CHAIN IF ~Global("FHBryceHere","GLOBAL",0) Global("NathRomanceActive","GLOBAL",1)~ THEN FHBRYCE FHBryceGreetRom
@0 /* ~Well, hello there, gorgeous. Took your sweet time. I've been looking all over for you.~ */
DO ~SetGlobal("FHBryceHere","GLOBAL",1)~
== FHNATJ
@1 /* ~I ... Latimer?~ */
== FHBRYCE
@2 /* ~Of course, who else would call you gorgeous? Now c'mere.~ */   
== JANJ IF ~InParty("Jan")~ THEN
@3 /* ~My goodness me! Look who's come out of the woodwork! And looking at that scowl, I haven't seen an expression like that since the day that Aunt Rebecca ended up threatening an entire clan of xvarts with a wooden spoon!~ */
== HAERDAJ IF ~InParty("HaerDalis")~ THEN
@4 /* ~Ah, what is this? It will be interesting to see what transpires.~ */
== VICONJ IF ~InParty("Viconia")~ THEN
@5 /* ~Nathaniel, if I am to commend you on one thing it is on your choice of this male. A pity he is clearly unbalanced: I could have enjoyed turning him to preference of females.~ */
== AERIEJ IF ~InParty("Aerie")~ THEN
@6 /* ~Th-that's Latimer? He looks like the kind of man Uncle Quayle used to warn me about.~ */
== KELDORJ IF ~InParty("Keldorn")~ THEN
@7 /* ~He looks to be a man of uncertain character. Be wary, <CHARNAME>. He may behave unpredictably.~ */
== ANOMENJ IF ~InParty("Anomen")~ THEN
@8 /* ~I can see the damage wrought by drink in this man, <CHARNAME>. I recognise it from dealing with my father. This man is clearly nothing but a rogue.~ */
== FHNATJ
@9 /* ~Lat-- Latimer, I thought ... Avery told me that you were ... dead.~ */   
== FHBRYCE
@10 /* ~That bastard would, Thaniel. Didn't I say he was against us? He would've killed me if I hadn't got away.~ */   
== MINSCJ IF ~InParty("Minsc")~ THEN
@11 /* ~The angry man is wrong! Boo says that Nathaniel's friend would not have lied about such a thing, and Boo knows these things!~ */
== FHNATJ
@12 /* ~Yes, but--~ */   
== FHBRYCE
@13 /* ~Thaniel. Who's that?~ */   
== FHNATJ
@14 /* ~Oh, him? He killed Angelo, and - and he...~ */   
== FHBRYCE
@15 /* ~Whatever. Come on, I've got a room waiting for us. We can ... catch up.~ */   
== FHNATJ
@16 /* ~No, you don't understand--~ */   
== FHBRYCE
@17 /* ~I haven't had any for ages. I was waiting for you, sweetness.~ */   
== FHNATJ
@18 /* ~No, let go, I - I can't!~ */
== FHBRYCE
@19 /* ~I see. You didn't wait long, did you? I bet you hopped into bed with the first person that came along, dammit!~ */
== FHNATJ
@20 /* ~That's not true, how can you know what I felt, you had run away!~ */
== FHBRYCE
@21 /* ~Are you calling me a coward? You weakling, calling me a coward? You--~ */
END
IF ~!PartyHasItem("FHRING")~ THEN EXTERN FHBRYCE FHBryce_noring
IF ~PartyHasItem("FHRING")~ THEN EXTERN FHBRYCE FHBryce_ring

CHAIN FHBRYCE FHBryce_noring
@22 /* ~You threw away the ring I gave you.~ */
== FHNATJ
@23 /* ~No - yes, I did, but - I thought you were dead!~ */
== FHBRYCE
@24 /* ~I thought you loved me.~ */
== FHNATJ
@25 /* ~I did! I do - I mean, I...~ */
== FHBRYCE
@26 /* ~I don't know if I can forgive you for that, Thaniel.~ */
== FHNATJ
@27 /* ~Latimer, please...~ */
== FHBRYCE
@28 /* ~Make it up to me. Come with me and we can be like before.~ */
== FHNATJ
@29 /* ~Latimer--~ */
== FHBRYCE
@30 /* ~We can be happy again.~ */
END
++ @31 /* ~Nathaniel, I need you here. Please, don't go with him.~ */ EXTERN FHNATJ NathBryce_please
++ @32 /* ~Excuse me? Nathaniel, you're going to just abandon me?~ */ EXTERN FHNATJ NathBryce_please
++ @33 /* ~This guy's a creep, he's just manipulating you!~ */ EXTERN FHNATJ NathBryce_manipulate
++ @34 /* ~How can you even consider going with this man? He treated you like dirt!~ */ EXTERN FHNATJ NathBryce_manipulate
++ @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coerce
++ @36 /* ~You obviously still feel for him, no matter what we had ... go with him if that's what you want.~ */ EXTERN FHNATJ NathBryce_feel
++ @37 /* ~Fine, fine, leave. You need him more than I need you.~ */ EXTERN FHNATJ NathBryce_need

CHAIN FHBRYCE FHBryce_ring
@39 /* ~Oh, sweetpea. You've still got the ring I gave you.~ */
== FHNATJ
@40 /* ~Yes - I do ... I couldn't throw it away.~ */
== FHBRYCE
@41 /* ~See? There's proof for you of your love. Our love. We're meant to be.~ */
== FHNATJ
@42 /* ~That's not the point, that's not it--~ */
== FHBRYCE
@43 /* ~What?~ */
== FHNATJ
@44 /* ~It's just I didn't want to forget you but I ... I...~ */
== FHBRYCE
@45 /* ~You what? Tell me. Now.~ */
== FHNATJ
@46 /* ~I ... I moved on.~ */
== FHBRYCE
@26 /* ~I don't know if I can forgive you for that, Thaniel.~ */
== FHNATJ
@27 /* ~Latimer, please...~ */
== FHBRYCE
@28 /* ~Make it up to me. Come with me and we can be like before.~ */
== FHNATJ
@29 /* ~Latimer--~ */
== FHBRYCE
@30 /* ~We can be happy again.~ */
END
++ @31 /* ~Nathaniel, I need you here. Please, don't go with him.~ */ EXTERN FHNATJ NathBryce_please
++ @32 /* ~Excuse me? Nathaniel, you're going to just abandon me?~ */ EXTERN FHNATJ NathBryce_please
++ @33 /* ~This guy's a creep, he's just manipulating you!~ */ EXTERN FHNATJ NathBryce_manipulate
++ @34 /* ~How can you even consider going with this man? He treated you like dirt!~ */ EXTERN FHNATJ NathBryce_manipulate
++ @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coerce
++ @36 /* ~You obviously still feel for him, no matter what we had ... go with him if that's what you want.~ */ EXTERN FHNATJ NathBryce_feel
++ @37 /* ~Fine, fine, leave. You need him more than I need you.~ */ EXTERN FHNATJ NathBryce_need

//Friends with PC, male 

CHAIN
IF ~InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHBryceHere","GLOBAL",0)
Gender(Player1,MALE)
!Global("NathRomanceActive","GLOBAL",1)~ THEN FHBRYCE FHBryceGreetF1
@0 /* ~Well, hello there, gorgeous. Took your sweet time. I've been looking all over for you.~ */
DO ~SetGlobal("FHBryceHere","GLOBAL",1)~
== FHNATJ
@1 /* ~I ... Latimer?~ */
== JANJ IF ~InParty("Jan")~ THEN
@38 /* ~My goodness me! Look who's come out of the woodwork! I think he would have gotten on well with Uncle Scratchy, looking at that scowl. I haven't seen an expression like that since the day that Aunt Rebecca ended up threatening an entire clan of xvarts with a wooden spoon! Mind you, it was a gift from a passing merchant who had robes in a very interesting shade of green, so that would explain her confidence.~ */
== HAERDAJ IF ~InParty("HaerDalis")~ THEN
@4 /* ~Ah, what is this? It will be interesting to see what transpires.~ */
== VICONJ IF ~InParty("Viconia")~ THEN
@5 /* ~Nathaniel, if I am to commend you on one thing it is on your choice of this male. A pity he is clearly unbalanced: I could have enjoyed turning him to preference of females.~ */
== AERIEJ IF ~InParty("Aerie")~ THEN
@6 /* ~Th-that's Latimer? He looks like the kind of man Uncle Quayle used to warn me about.~ */
== KELDORJ IF ~InParty("Keldorn")~ THEN
@7 /* ~He looks to be a man of uncertain character. Be wary, <CHARNAME>. He may behave unpredictably.~ */
== ANOMENJ IF ~InParty("Anomen")~ THEN
@8 /* ~I can see the damage wrought by drink in this man, <CHARNAME>. I recognise it from dealing with my father. This man is clearly nothing but a rogue.~ */
== FHBRYCE
@2 /* ~Of course, who else would call you gorgeous? Now c'mere.~ */   
== FHNATJ
@9 /* ~Lat-- Latimer, I thought ... Avery told me that you were ... dead.~ */   
== FHBRYCE
@10 /* ~That bastard would, Thaniel. Didn't I say he was against us? He would've killed me if I hadn't got away.~ */   
== FHNATJ
@12 /* ~Yes, but--~ */   
== FHBRYCE
@13 /* ~Thaniel. Who's that?~ */   
== FHNATJ
@47 /* ~Oh, him? He killed Angelo, and he...~ */   
== FHBRYCE
@15 /* ~Whatever. Come on, I've got a room waiting for us. We can ... catch up.~ */   
== FHNATJ
@16 /* ~No, you don't understand--~ */   
== FHBRYCE
@17 /* ~I haven't had any for ages. I was waiting for you, sweetness.~ */   
== FHNATJ
@18 /* ~No, let go, I - I can't!~ */
== FHBRYCE
@19 /* ~I see. You didn't wait long, did you? I bet you hopped into bed with the first person that came along, dammit!~ */
== FHNATJ
@20 /* ~That's not true, how can you know what I felt, you had run away!~ */
== FHBRYCE
@21 /* ~Are you calling me a coward? You weakling, calling me a coward? You--~ */
END
IF ~PartyHasItem("FHRING")~ THEN EXTERN FHBRYCE FHBryce_friend1ring
IF ~!PartyHasItem("FHRING")~ THEN EXTERN FHBRYCE FHBryce_friend1noring

CHAIN FHBRYCE FHBryce_friend1ring
@39 /* ~Oh, sweetpea. You've still got the ring I gave you.~ */
== FHNATJ
@40 /* ~Yes - I do ... I couldn't throw it away.~ */
== FHBRYCE
@48 /* ~See? There's proof for you. We're meant to be.~ */
== FHNATJ
@42 /* ~That's not the point, that's not it--~ */
== FHBRYCE
@43 /* ~What?~ */
== FHNATJ
@44 /* ~It's just I didn't want to forget you but I ... I...~ */
== FHBRYCE
@45 /* ~You what? Tell me. Now.~ */
== FHNATJ
@46 /* ~I ... I moved on.~ */
== FHBRYCE
@26 /* ~I don't know if I can forgive you for that, Thaniel.~ */
== FHNATJ
@27 /* ~Latimer, please...~ */
== FHBRYCE
@28 /* ~Make it up to me. Come with me and we can be like before.~ */
== FHNATJ
@29 /* ~Latimer--~ */
== FHBRYCE
@30 /* ~We can be happy again.~ */
END
++ @49 /* ~Nathaniel, we need you here. Please, don't go with him.~ */ EXTERN FHNATJ NathBryce_please
++ @33 /* ~This guy's a creep, he's just manipulating you!~ */ EXTERN FHNATJ NathBryce_manipulatefriend
++ @34 /* ~How can you even consider going with this man? He treated you like dirt!~ */ EXTERN FHNATJ NathBryce_manipulatefriend
IF ~ReputationGT(Player1,11)~ THEN REPLY @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coercehigh
IF ~ReputationLT(Player1,13)~ THEN REPLY @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coercelow
++ @50 /* ~You obviously still feel for him ... go with him if that's what you want.~ */ EXTERN FHNATJ NathBryce_feelfriend
++ @37 /* ~Fine, fine, leave. You need him more than I need you.~ */ EXTERN FHNATJ NathBryce_need

CHAIN FHBRYCE FHBryce_friend1noring
@22 /* ~You threw away the ring I gave you.~ */
== FHNATJ
@23 /* ~No - yes, I did, but - I thought you were dead!~ */
== FHBRYCE
@51 /* ~You threw it away? I thought you loved me.~ */
== FHNATJ
@25 /* ~I did! I do - I mean, I...~ */
== FHBRYCE
@26 /* ~I don't know if I can forgive you for that, Thaniel.~ */
== FHNATJ
@27 /* ~Latimer, please...~ */
== FHBRYCE
@28 /* ~Make it up to me. Come with me and we can be like before.~ */
== FHNATJ
@29 /* ~Latimer--~ */
== FHBRYCE
@30 /* ~We can be happy again.~ */
END
++ @49 /* ~Nathaniel, we need you here. Please, don't go with him.~ */ EXTERN FHNATJ NathBryce_please
++ @33 /* ~This guy's a creep, he's just manipulating you!~ */ EXTERN FHNATJ NathBryce_manipulatefriend
++ @34 /* ~How can you even consider going with this man? He treated you like dirt!~ */ EXTERN FHNATJ NathBryce_manipulatefriend
IF ~ReputationGT(Player1,11)~ THEN REPLY @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coercehigh
IF ~ReputationLT(Player1,13)~ THEN REPLY @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coercelow
++ @50 /* ~You obviously still feel for him ... go with him if that's what you want.~ */ EXTERN FHNATJ NathBryce_feelfriend
++ @37 /* ~Fine, fine, leave. You need him more than I need you.~ */ EXTERN FHNATJ NathBryce_need

//Friends with PC, female

CHAIN
IF ~InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHBryceHere","GLOBAL",0)
Gender(Player1,FEMALE)
!Global("NathRomanceActive","GLOBAL",1)~ THEN FHBRYCE FHBryceGreetF2
@0 /* ~Well, hello there, gorgeous. Took your sweet time. I've been looking all over for you.~ */
DO ~SetGlobal("FHBryceHere","GLOBAL",1)~
== FHNATJ
@1 /* ~I ... Latimer?~ */
== JANJ IF ~InParty("Jan")~ THEN
@38 /* ~My goodness me! Look who's come out of the woodwork! I think he would have gotten on well with Uncle Scratchy, looking at that scowl. I haven't seen an expression like that since the day that Aunt Rebecca ended up threatening an entire clan of xvarts with a wooden spoon! Mind you, it was a gift from a passing merchant who had robes in a very interesting shade of green, so that would explain her confidence.~ */
== HAERDAJ IF ~InParty("HaerDalis")~ THEN
@4 /* ~Ah, what is this? It will be interesting to see what transpires.~ */
== VICONJ IF ~InParty("Viconia")~ THEN
@5 /* ~Nathaniel, if I am to commend you on one thing it is on your choice of this male. A pity he is clearly unbalanced: I could have enjoyed turning him to preference of females.~ */
== AERIEJ IF ~InParty("Aerie")~ THEN
@6 /* ~Th-that's Latimer? He looks like the kind of man Uncle Quayle used to warn me about.~ */
== KELDORJ IF ~InParty("Keldorn")~ THEN
@7 /* ~He looks to be a man of uncertain character. Be wary, <CHARNAME>. He may behave unpredictably.~ */
== ANOMENJ IF ~InParty("Anomen")~ THEN
@8 /* ~I can see the damage wrought by drink in this man, <CHARNAME>. I recognise it from dealing with my father. This man is clearly nothing but a rogue.~ */
== FHBRYCE
@2 /* ~Of course, who else would call you gorgeous? Now c'mere.~ */   
== FHNATJ
@9 /* ~Lat-- Latimer, I thought ... Avery told me that you were ... dead.~ */   
== FHBRYCE
@10 /* ~That bastard would, Thaniel. Didn't I say he was against us? He would've killed me if I hadn't got away.~ */   
== FHNATJ
@12 /* ~Yes, but--~ */   
== FHBRYCE
@13 /* ~Thaniel. Who's that?~ */   
== FHNATJ
@52 /* ~Oh, her? She killed Angelo, and she...~ */
== FHBRYCE
@15 /* ~Whatever. Come on, I've got a room waiting for us. We can ... catch up.~ */   
== FHNATJ
@16 /* ~No, you don't understand--~ */   
== FHBRYCE
@17 /* ~I haven't had any for ages. I was waiting for you, sweetness.~ */   
== FHNATJ
@18 /* ~No, let go, I - I can't!~ */
== FHBRYCE
@53 /* ~What do you mean, you can't? You still love me, so what's the problem?~ */
== FHNATJ
@54 /* ~How would you know? You ran away!~ */
== FHBRYCE
@21 /* ~Are you calling me a coward? You weakling, calling me a coward? You--~ */
END
IF ~PartyHasItem("FHRING")~ THEN EXTERN FHBRYCE FHBryce_friend2ring
IF ~!PartyHasItem("FHRING")~ THEN EXTERN FHBRYCE FHBryce_friend2noring

CHAIN FHBRYCE FHBryce_friend2ring
@39 /* ~Oh, sweetpea. You've still got the ring I gave you.~ */
== FHNATJ
@40 /* ~Yes - I do ... I couldn't throw it away.~ */
== FHBRYCE
@55 /* ~See? It's proof of your love. Our love. We're meant to be. Come with me and we can be like before.~ */
== FHNATJ
@29 /* ~Latimer--~ */
== FHBRYCE
@30 /* ~We can be happy again.~ */
END
++ @49 /* ~Nathaniel, we need you here. Please, don't go with him.~ */ EXTERN FHNATJ NathBryce_pleasewoman
++ @56 /* ~I want you to stay, Nathaniel. This guy's a creep, he's just manipulating you!~ */ EXTERN FHNATJ NathBryce_manipulatefriend
IF ~ReputationGT(Player1,11)~ THEN REPLY @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coercehigh
IF ~ReputationLT(Player1,13)~ THEN REPLY @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coercelow
++ @50 /* ~You obviously still feel for him ... go with him if that's what you want.~ */ EXTERN FHNATJ NathBryce_feelfriend
++ @37 /* ~Fine, fine, leave. You need him more than I need you.~ */ EXTERN FHNATJ NathBryce_need

CHAIN FHBRYCE FHBryce_friend2noring
@22 /* ~You threw away the ring I gave you.~ */
== FHNATJ
@23 /* ~No - yes, I did, but - I thought you were dead!~ */
== FHBRYCE
@51 /* ~You threw it away? I thought you loved me.~ */
== FHNATJ
@25 /* ~I did! I do - I mean, I...~ */
== FHBRYCE
@26 /* ~I don't know if I can forgive you for that, Thaniel.~ */
== FHNATJ
@27 /* ~Latimer, please...~ */
== FHBRYCE
@28 /* ~Make it up to me. Come with me and we can be like before.~ */
== FHNATJ
@29 /* ~Latimer--~ */
== FHBRYCE
@30 /* ~We can be happy again.~ */
END
++ @49 /* ~Nathaniel, we need you here. Please, don't go with him.~ */ EXTERN FHNATJ NathBryce_pleasewoman
++ @56 /* ~I want you to stay, Nathaniel. This guy's a creep, he's just manipulating you!~ */ EXTERN FHNATJ NathBryce_manipulatefriend
IF ~ReputationGT(Player1,11)~ THEN REPLY @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coercehigh
IF ~ReputationLT(Player1,13)~ THEN REPLY @35 /* ~You should do what you think is right. I won't coerce you into anything.~ */ EXTERN FHNATJ NathBryce_coercelow
++ @50 /* ~You obviously still feel for him ... go with him if that's what you want.~ */ EXTERN FHNATJ NathBryce_feelfriend
++ @37 /* ~Fine, fine, leave. You need him more than I need you.~ */ EXTERN FHNATJ NathBryce_need

CHAIN FHNATJ NathBryce_please
@281 /* ~I'm needed ... I'm needed here ... <CHARNAME>'s right.~ */
== FHBRYCE
@282 /* ~No. No, you can't. You have to come with me!~ */
== FHNATJ
@283 /* ~I'm sorry, but I'm staying!~ */
== FHBRYCE
@284 /* ~It's all his fault, the conniving-- you! You damn rat, poisoning his mind, I'll kill you!~ */
== FHNATJ
@285 /* ~Gods, Latimer, don't say that!~ */
END
IF ~Global("NathRomanceActive","GLOBAL",1)~ THEN REPLY @286 /* ~Fine, if that's how it has to be! Nathaniel belongs with me!~ */ EXTERN FHBRYCE NathBryce_man
IF ~Global("NathRomanceActive","GLOBAL",1)~ THEN REPLY @287 /* ~This is ridiculous. Nathaniel, relax.~ */ EXTERN FHBRYCE NathBryce_calm
IF ~!Global("NathRomanceActive","GLOBAL",1)~ THEN REPLY @287 /* ~This is ridiculous. Nathaniel, relax.~ */ EXTERN FHBRYCE NathBryce_calmmalefriend
++ @288 /* ~Oh, you can try. Come on, Latimer, if you're man enough.~ */ EXTERN FHBRYCE NathBryce_man
IF ~Global("NathRomanceActive","GLOBAL",1)~ THEN REPLY @289 /* ~No one's killing anyone. Stop this.~ */ EXTERN FHBRYCE NathBryce_calm
IF ~!Global("NathRomanceActive","GLOBAL",1)~ THEN REPLY @289 /* ~No one's killing anyone. Stop this.~ */ EXTERN FHBRYCE NathBryce_calmmalefriend
++ @290 /* ~I'm not fighting you, Latimer. Just go before you make even more of a fool of yourself.~ */ EXTERN FHBRYCE NathBryce_notfight
IF ~Global("NathRomanceActive","GLOBAL",1)~ THEN REPLY @291 /* ~Both of you! Calm down!~ */ EXTERN FHBRYCE NathBryce_calm
IF ~!Global("NathRomanceActive","GLOBAL",1)~ THEN REPLY @291 /* ~Both of you! Calm down!~ */ EXTERN FHBRYCE NathBryce_calmmalefriend

CHAIN FHNATJ NathBryce_manipulate
@294 /* ~No ... no, that's not right ... he wouldn't do that!~ */
== FHBRYCE
@295 /* ~Of course I wouldn't. I love you, sweetheart. Now come on.~ */
== FHNATJ
@296 /* ~<CHARNAME> ... what should I do? I - I don't know, I don't know what to do!~ */
END
++ @297 /* ~I want you, Nathaniel... I need you.~ */ + NathBryce_wantneed
++ @298 /* ~We all need you, Nathaniel - especially me.~ */ + NathBryce_wantneed
++ @299 /* ~Nathaniel, you mean so much to me...~ */ + NathBryce_wantneed
++ @300 /* ~I can't help you decide. It's your choice.~ */ + NathBryce_choice
++ @301 /* ~I don't want to force you into anything ... you know your own mind better than me.~ */ + NathBryce_choice

CHAIN FHNATJ NathBryce_coerce
@306 /* ~What I - what I think is right? I don't know, I - I need your help!~ */
== FHBRYCE
@307 /* ~He doesn't want to help someone like you. I'm the only one who can protect you, who can help. Now stop playing around and come back to the inn with me! NOW!~ */
== FHNATJ
@308 /* ~NO! No, I won't go with you! I'm staying here!~ */
== FHBRYCE
@309 /* ~YOU, <CHARNAME>, this is your fault! He wouldn't be like this if you weren't here. I'll take Thaniel, and you won't stop me.~ */
END
++ @310 /* ~You're a creep, Latimer. He stays with me.~ */ EXTERN FHBRYCE NathBryce_man
++ @311 /* ~He belongs here, with people who care about him. So get out of my face!~ */ EXTERN FHBRYCE NathBryce_notfight
++ @312 /* ~Fine, you forced my hand - Nathaniel, I'll fight to keep you with me!~ */ EXTERN FHBRYCE NathBryce_man
++ @313 /* ~Go on then. He's far too much bother, to tell the truth.~ */ + NathBryce_need

CHAIN FHNATJ NathBryce_feel
@314 /* ~I don't know ... if it - if I should...~ */
== FHBRYCE
@315 /* ~You know it's best. You love me, I love you, it's right. Now come with me!~ */
== FHNATJ
@316 /* ~Latimer, I wanted this for so long, and now - now I don't know, you're so different and <CHARNAME> is here--~ */
== FHBRYCE
@317 /* ~Don't make me ask you again, Thaniel. I'm losing my bloody patience!~ */
== FHNATJ
@318 /* ~All right, all right, please, don't shout, I - I have to say goodbye to <CHARNAME>, at least!~ */
=
@319 /* ~<CHARNAME>, I ... I don't know what to say.~ */
END
++ @320 /* ~Say you'll stay here ... if you're doubtful about going you probably should stay.~ */ EXTERN FHBRYCE NathBryce_man
++ @321 /* ~You belong here, Nathaniel, with people who really care about you.~ */ EXTERN FHBRYCE NathBryce_man
++ @322 /* ~Look at this man, Nathaniel. He's a creep! Stay with us.~ */ EXTERN FHBRYCE NathBryce_notfight
++ @323 /* ~Just say goodbye and leave, Nathaniel.~ */ + NathBryce_goodbye

CHAIN FHNATJ NathBryce_need
@324 /* ~Are you - are you serious? I thought we--~ */
== FHBRYCE
@325 /* ~Oh, who cares about <PRO_HIMHER>. You owe me, Thaniel, but I'll forgive you. Now let's get out of here.~ */
== FHNATJ
@326 /* ~But - but <CHARNAME>, <PRO_HESHE> ... goodbye--~ */
== FHBRYCE
@327 /* ~Yeah, yeah. Let's go.~ */
== FHNATJ
@328 /* ~I--~ */   
DO ~EscapeArea()
ActionOverride("FHBRYCE",EscapeArea())~
EXIT

CHAIN FHNATJ NathBryce_manipulatefriend
@294 /* ~No ... no, that's not right ... he wouldn't do that!~ */
== FHBRYCE
@295 /* ~Of course I wouldn't. I love you, sweetheart. Now come on.~ */
== FHNATJ
@296 /* ~<CHARNAME> ... what should I do? I - I don't know, I don't know what to do!~ */
END
++ @302 /* ~Stay with me, please. I need you in the group.~ */ + NathBryce_wantneed
++ @303 /* ~Nathaniel, stay? You're such a good friend to me.~ */ + NathBryce_wantneed
++ @304 /* ~We all need you, Nathaniel. Especially me. Where would I be without you?~ */ + NathBryce_wantneed
IF ~ReputationLT(Player1,11)~ THEN REPLY @300 /* ~I can't help you decide. It's your choice.~ */ + NathBryce_choicelow
IF ~ReputationGT(Player1,13)~ THEN REPLY @300 /* ~I can't help you decide. It's your choice.~ */ + NathBryce_choicehigh
IF ~ReputationLT(Player1,11)~ THEN REPLY @305 /* ~I don't want to force you into anything ... you know your own mind better than I do.~ */ + NathBryce_choicelow
IF ~ReputationGT(Player1,13)~ THEN REPLY @305 /* ~I don't want to force you into anything ... you know your own mind better than I do.~ */ + NathBryce_choicehigh

CHAIN FHNATJ NathBryce_feelfriend
@347 /* ~I don't know ... if it - if I should--~ */
== FHBRYCE
@348 /* ~You know it's best. You love me, I love you, it's best. Now come with me!~ */
== FHNATJ
@349 /* ~Latimer, I wanted this for so long, but now--~ */
== FHBRYCE
@317 /* ~Don't make me ask you again, Thaniel. I'm losing my bloody patience!~ */
== FHNATJ
@345 /* ~All right, all right, but please, don't shout, I - I have to say goodbye to <CHARNAME>, at least!~ */
=
@319 /* ~<CHARNAME>, I ... I don't know what to say.~ */
END
++ @350 /* ~Say you'll stay here instead ... I thought I could do without you but I can't.~ */ + NathBryce_without
++ @351 /* ~If you're doubtful about going you probably should stay here.~ */ EXTERN FHBRYCE NathBryce_man
++ @322 /* ~Look at this man, Nathaniel. He's a creep! Stay with us.~ */ EXTERN FHBRYCE NathBryce_notfight
++ @323 /* ~Just say goodbye and leave, Nathaniel.~ */ + NathBryce_goodbye

CHAIN FHNATJ NathBryce_coercehigh
@306 /* ~What I - what I think is right? I don't know, I - I need your help!~ */
== FHBRYCE
@344 /* ~<CHARNAME> doesn't want to be bothered to help someone like you. I'm the only one who can protect you. Now stop playing around and come back to the inn with me! NOW!~ */
== FHNATJ
@308 /* ~NO! No, I won't go with you! I'm staying here!~ */
== FHBRYCE
@309 /* ~YOU, <CHARNAME>, this is your fault! He wouldn't be like this if you weren't here. I'll take Thaniel, and you won't stop me.~ */
END
++ @310 /* ~You're a creep, Latimer. He stays with me.~ */ EXTERN FHBRYCE NathBryce_man
++ @311 /* ~He belongs here, with people who care about him. So get out of my face!~ */ EXTERN FHBRYCE NathBryce_notfight
++ @312 /* ~Fine, you forced my hand - Nathaniel, I'll fight to keep you with me!~ */ EXTERN FHBRYCE NathBryce_man
++ @313 /* ~Go on then. He's far too much bother, to tell the truth.~ */ + NathBryce_need

CHAIN FHNATJ NathBryce_coercelow
@306 /* ~What I - what I think is right? I don't know, I - I need your help!~ */
== FHBRYCE
@344 /* ~<CHARNAME> doesn't want to be bothered to help someone like you. I'm the only one who can protect you. Now stop playing around and come back to the inn with me! NOW!~ */
== FHNATJ
@345 /* ~All right, all right, but please, don't shout, I - I have to say goodbye to <CHARNAME>, at least!~ */
== FHBRYCE
@346 /* ~No, you don't. Come on, we're leaving.~ */
== FHNATJ
@328 /* ~I--~ */   
DO ~EscapeArea()
ActionOverride("FHBRYCE",EscapeArea())~
EXIT

CHAIN FHNATJ NathBryce_pleasewoman
@281 /* ~I'm needed ... I'm needed here ... <CHARNAME>'s right.~ */
== FHBRYCE
@282 /* ~No. No, you can't. You have to come with me!~ */
== FHNATJ
@283 /* ~I'm sorry, but I'm staying!~ */
== FHBRYCE
@292 /* ~It's all her fault, the conniving little-- you! You bitch, poisoning his mind, I'll kill you!~ */
== FHNATJ
@285 /* ~Gods, Latimer, don't say that!~ */
END
++ @293 /* ~Fine, if that's how it has to be! Nathaniel's my friend, and he belongs with us!~ */ EXTERN FHBRYCE NathBryce_man
++ @287 /* ~This is ridiculous. Nathaniel, relax.~ */ EXTERN FHBRYCE NathBryce_calmfemalefriend
++ @289 /* ~No one's killing anyone. Stop this.~ */ EXTERN FHBRYCE NathBryce_calmfemalefriend
++ @291 /* ~Both of you! Calm down!~ */ EXTERN FHBRYCE NathBryce_calmfemalefriend
++ @288 /* ~Oh, you can try. Come on, Latimer, if you're man enough.~ */ EXTERN FHBRYCE NathBryce_man
++ @290 /* ~I'm not fighting you, Latimer. Just go before you make even more of a fool of yourself.~ */ EXTERN FHBRYCE NathBryce_notfight

CHAIN FHBRYCE NathBryce_man
@57 /* ~Right, that's it!~ */
== FHNATJ
@58 /* ~STOP IT! Latimer, if you hurt <PRO_HIMHER>, I swear I'll - just stay away from <PRO_HIMHER>! Stay away from me!~ */
== FHBRYCE
@59 /* ~Thaniel, I'm going to have to--~ */
== FHNATJ
@60 /* ~No. No, you're not doing anything to me again. I don't need you anymore!~ */
== FHBRYCE
@61 /* ~Do you have any idea of what you're saying? LISTEN TO--~ */
== FHNATJ
@62 /* ~NO! I don't want to see you again!~ */
== FHBRYCE
@63 /* ~(Latimer clears his throat, then spits onto Nathaniel's face.)~ */
=
@64 /* ~The feeling is mutual. I can't believe I thought you were worth my time.~ */
DO ~EscapeArea()
AddXPObject("Nath",20000)~
EXIT

CHAIN FHBRYCE NathBryce_calm
@66 /* ~Yeah, Thaniel, listen to your lovebird, because I'm going to clip his wings, and then I'm taking you and I'll--~ */
== FHNATJ
@67 /* ~No. No, you're not doing anything to me again! Especially those things!~ */
== FHBRYCE
@68 /* ~I'm not going to listen to this!~ */
== FHNATJ
@69 /* ~STOP IT! Just leave me alone! I don't need you anymore!~ */
== FHBRYCE
@61 /* ~Do you have any idea of what you're saying? LISTEN TO--~ */
== FHNATJ
@62 /* ~NO! I don't want to see you again!~ */
== FHBRYCE
@63 /* ~(Latimer clears his throat, then spits onto Nathaniel's face.)~ */
=
@64 /* ~The feeling is mutual. I can't believe I thought you were worth my time.~ */
DO ~EscapeArea()
AddXPObject("Nath",20000)~
EXIT

CHAIN FHBRYCE NathBryce_calmmalefriend
@66 /* ~Yeah, Thaniel, listen to your lovebird, because I'm going to clip his wings, and then I'm taking you and I'll--~ */
== FHNATJ
@70 /* ~He's not my-- you're not doing anything to me again. Especially those things!~ */
== FHBRYCE
@68 /* ~I'm not going to listen to this!~ */
== FHNATJ
@69 /* ~STOP IT! Just leave me alone! I don't need you anymore!~ */
== FHBRYCE
@61 /* ~Do you have any idea of what you're saying? LISTEN TO--~ */
== FHNATJ
@62 /* ~NO! I don't want to see you again!~ */
== FHBRYCE
@63 /* ~(Latimer clears his throat, then spits onto Nathaniel's face.)~ */
=
@64 /* ~The feeling is mutual. I can't believe I thought you were worth my time.~ */
DO ~EscapeArea()
AddXPObject("Nath",20000)~
EXIT

CHAIN FHBRYCE NathBryce_notfight
@65 /* ~How dare you! That's it, I SWEAR!~ */
== FHNATJ
@58 /* ~STOP IT! Latimer, if you hurt <PRO_HIMHER>, I swear I'll - just stay away from <PRO_HIMHER>! Stay away from me!~ */
== FHBRYCE
@59 /* ~Thaniel, I'm going to have to--~ */
== FHNATJ
@60 /* ~No. No, you're not doing anything to me again. I don't need you anymore!~ */
== FHBRYCE
@61 /* ~Do you have any idea of what you're saying? LISTEN TO--~ */
== FHNATJ
@62 /* ~NO! I don't want to see you again!~ */
== FHBRYCE
@63 /* ~(Latimer clears his throat, then spits onto Nathaniel's face.)~ */
=
@64 /* ~The feeling is mutual. I can't believe I thought you were worth my time.~ */
DO ~EscapeArea()
AddXPObject("Nath",20000)~
EXIT

CHAIN FHNATJ NathBryce_wantneed
@329 /* ~Yes. Yes, that's what I want, I want to--~ */
== FHBRYCE
@330 /* ~WHAT? No, you can't! You have to come with me!~ */
== FHNATJ
@331 /* ~I'm sorry, but I'm staying.~ */
== FHBRYCE
@332 /* ~It's all <CHARNAME>'s fault, the conniving-- you! You damn rat, poisoning his mind, I'll kill you!~ */
== FHNATJ
@285 /* ~Gods, Latimer, don't say that!~ */
END
IF ~Gender(Player1,MALE)~ THEN REPLY @287 /* ~This is ridiculous. Nathaniel, relax.~ */ EXTERN FHBRYCE NathBryce_calmmalefriend
IF ~Gender(Player1,FEMALE)~ THEN REPLY @287 /* ~This is ridiculous. Nathaniel, relax.~ */ EXTERN FHBRYCE NathBryce_calmfemalefriend
++ @288 /* ~Oh, you can try. Come on, Latimer, if you're man enough.~ */ EXTERN FHBRYCE NathBryce_man
IF ~Gender(Player1,MALE)~ THEN REPLY @289 /* ~No one's killing anyone. Stop this.~ */ EXTERN FHBRYCE NathBryce_calmmalefriend
IF ~Gender(Player1,FEMALE)~ THEN REPLY @289 /* ~No one's killing anyone. Stop this.~ */ EXTERN FHBRYCE NathBryce_calmfemalefriend
++ @290 /* ~I'm not fighting you, Latimer. Just go before you make even more of a fool of yourself.~ */ EXTERN FHBRYCE NathBryce_notfight
IF ~Gender(Player1,MALE)~ THEN REPLY @291 /* ~Both of you! Calm down!~ */ EXTERN FHBRYCE NathBryce_calmmalefriend
IF ~Gender(Player1,FEMALE)~ THEN REPLY @291 /* ~Both of you! Calm down!~ */ EXTERN FHBRYCE NathBryce_calmfemalefriend

CHAIN FHNATJ NathBryce_choice
@333 /* ~I want you to help me, <CHARNAME>, but I - you - I'm staying with you, no matter what you say. Do you hear? Latimer, you're not wanted.~ */
== FHBRYCE
@334 /* ~How dare you say that to me! That's it, I SWEAR!~ */
== FHNATJ
@335 /* ~STOP IT! Latimer, if you hurt me, I swear I'll - just stay away from me!~ */
== FHBRYCE
@336 /* ~Thaniel, I'm going to have to--~ */
== FHNATJ
@337 /* ~No. No, you're not doing anything to me again. I don't need you and I don't love you anymore!~ */
== FHBRYCE
@338 /* ~Do you have any idea of what you're saying? LISTEN TO--~ */
== FHNATJ
@339 /* ~NO! I don't want to see you again!~ */
DO ~AddXPObject("Nath",20000)~
== FHBRYCE
@340 /* ~(Latimer clears his throat, then spits onto Nathaniel's face.) The feeling is mutual. I can't believe I thought you were worth my time.~ */
DO ~ActionOverride("FHBRYCE",EscapeArea())~
EXIT

CHAIN FHNATJ NathBryce_goodbye
@341 /* ~You've done so much for me, "Goodbye" won't do, <CHARNAME>, I'm sorry for all of this, I--~ */
== FHBRYCE
@342 /* ~And so on, and so on. Come on, honey, I'm aching for some action.~ */
== FHNATJ
@343 /* ~All right. Let's ... let's go, then.~ */
DO ~EscapeArea()
ActionOverride("FHBRYCE",EscapeArea())~
EXIT

CHAIN FHNATJ NathBryce_choicelow
@358 /* ~Then I - I just don't know!~ */
== FHBRYCE
@359 /* ~I know what you should do and so do you, so stop playing around and come back to the inn with me! NOW!~ */
== FHNATJ
@345 /* ~All right, all right, but please, don't shout, I - I have to say goodbye to <CHARNAME>, at least!~ */
== FHBRYCE
@346 /* ~No, you don't. Come on, we're leaving.~ */
== FHNATJ
@328 /* ~I--~ */   
DO ~EscapeArea()
ActionOverride("FHBRYCE",EscapeArea())~
EXIT

CHAIN FHNATJ NathBryce_choicehigh
@358 /* ~Then I - I just don't know!~ */
== FHBRYCE
@360 /* ~I know what you should do, and so do you, so stop playing around and come back to the inn with me! NOW!~ */
== FHNATJ
@308 /* ~NO! No, I won't go with you! I'm staying here!~ */
== FHBRYCE
@361 /* ~<CHARNAME>, this is your fault! He wouldn't be like this if you weren't here. I'll take Thaniel, and you won't stop me!~ */
END
++ @310 /* ~You're a creep, Latimer. He stays with me.~ */ EXTERN FHBRYCE NathBryce_man
++ @311 /* ~He belongs here, with people who care about him. So get out of my face!~ */ EXTERN FHBRYCE NathBryce_notfight
++ @312 /* ~Fine, you forced my hand - Nathaniel, I'll fight to keep you with me!~ */ EXTERN FHBRYCE NathBryce_man
++ @313 /* ~Go on then. He's far too much bother, to tell the truth.~ */ + NathBryce_need

CHAIN FHNATJ NathBryce_without
@352 /* ~Yes - yes, I'll stay, that's better for everyone.~ */
== FHBRYCE
@353 /* ~Excuse me? Better for everyone? Thaniel, do you forget the debt you owe me?~ */
== FHNATJ
@354 /* ~No, Latimer, I don't owe you anything.~ */
== FHBRYCE
@355 /* ~You say yes then turn around and slap me in the face? That's IT!~ */
== FHNATJ
@356 /* ~STOP IT! Latimer, if you hurt me, I swear I'll-- just stay away from me!~ */
== FHBRYCE
@336 /* ~Thaniel, I'm going to have to--~ */
== FHNATJ
@357 /* ~No. No, you're not doing anything to me again. Now leave me be. I don't need you anymore!~ */
== FHBRYCE
@338 /* ~Do you have any idea of what you're saying? LISTEN TO--~ */
== FHNATJ
@339 /* ~NO! I don't want to see you again!~ */
== FHBRYCE
@340 /* ~(Latimer clears his throat, then spits onto Nathaniel's face.) The feeling is mutual. I can't believe I thought you were worth my time.~ */
DO ~AddXPObject("Nath",20000)
ActionOverride("FHBRYCE",EscapeArea())~
EXIT

CHAIN FHBRYCE NathBryce_calmfemalefriend
@71 /* ~Yeah, Thaniel, listen to your whore, because I'm going to sort her out, and then I'm taking you and I'm going to--~ */
== FHNATJ
@72 /* ~She is not a-- You're not doing anything to me again. Especially those things!~ */
== FHBRYCE
@68 /* ~I'm not going to listen to this!~ */
== FHNATJ
@69 /* ~STOP IT! Just leave me alone! I don't need you anymore!~ */
== FHBRYCE
@61 /* ~Do you have any idea of what you're saying? LISTEN TO--~ */
== FHNATJ
@62 /* ~NO! I don't want to see you again!~ */
== FHBRYCE
@63 /* ~(Latimer clears his throat, then spits onto Nathaniel's face.)~ */
=
@64 /* ~The feeling is mutual. I can't believe I thought you were worth my time.~ */
DO ~EscapeArea()
AddXPObject("Nath",20000)~
EXIT
