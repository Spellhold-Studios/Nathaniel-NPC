//CONTENTS
//Nightmare talk
//Imoen talk
//Post-vampire talk
//PC dual-classes to thief
//Underdark interjections
//Anomen and Aerie romance talks
//Misc interjections: Neb, Tanner, Firkraag, Talos necklace
//Reputation talks
//I_C_T
//Quest dialogue
//Post-Avery talk
//Post-Bryce talk
//Bodhi's abduction
//Tree of Life
//Player-initiated dialogue

BEGIN FHNATJ

//Nightmare talk

IF ~Global("FHNathNightmare","LOCALS",2)~ FHNightmare
SAY @0 /* ~<CHARNAME>, you don't seem like you're resting well at night. What's wrong?~ */
++ @1 /* ~Nothing. Just a few troubled dreams.~ */ DO ~SetGlobal("FHNathNightmare","LOCALS",3)~ + FHNightmare_nothing
++ @2 /* ~I'd rather not talk about it at the moment, Nathaniel.~ */ DO ~SetGlobal("FHNathNightmare","LOCALS",3)~ + FHNightmare_notalk
++ @3 /* ~I keep having nightmares about Imoen, and - and Irenicus.~ */ DO ~SetGlobal("FHNathNightmare","LOCALS",3)~ + FHNightmare_night
++ @4 /* ~I'm sorry. Did I keep you awake or something?~ */ DO ~SetGlobal("FHNathNightmare","LOCALS",3)~ + FHNightmare_awake
END

IF ~~ FHNightmare_nothing
SAY @5 /* ~Hmm. It didn't sound like "nothing" to me, but if you're sure... Just try and take care of yourself, all right? I don't want you getting sick.~ */
IF ~~ EXIT
END

IF ~~ FHNightmare_notalk
SAY @6 /* ~Of course - sorry, I didn't mean to bother you about it. But try and take care of yourself, all right? I don't want you getting sick.~ */
IF ~~ EXIT
END

IF ~~ FHNightmare_night
SAY @7 /* ~Ah.~ */
=
@8 /* ~With what you've been through it's nothing to be ashamed of. If you need anything, wake me up and tell me, all right? And take care of yourself. I don't want you getting sick.~ */
IF ~~ EXIT
END

IF ~~ FHNightmare_awake
SAY @9 /* ~No, no, not at all. Don't worry about it. I was just wondering if there was anything wrong I could help you with.~ */
++ @10 /* ~Nothing, really. But thank you.~ */ + FHNightmare_nothing
++ @11 /* ~I'm not in the mood to discuss this right now, Nathaniel.~ */ + FHNightmare_notalk
++ @12 /* ~I've been having nightmares about Irenicus.~ */ + FHNightmare_night
END

//Imoen talk

// Pre-chapter 4 Imoen talk

IF ~Global("FHNAskImoen","GLOBAL",2)~ FHNIm
SAY @13 /* ~I was wondering about something, <CHARNAME>...?~ */   
=
@14 /* ~We're looking for - her name's Imoen, isn't it? And since we're spending all this time doing it, she must be very important to you. I was just wondering who she was. Is she your sister?~ */
++ @15 /* ~We're friends. She was around in Candlekeep, and she rather reminds me of home.~ */ DO ~SetGlobal("FHNAskImoen","GLOBAL",3)~ + FHNIm_pleasant
++ @16 /* ~She gets a bit too chirpy sometimes, but she's been a steadfast friend for most of my life.~ */ DO ~SetGlobal("FHNAskImoen","GLOBAL",3)~ + FHNIm_pleasant
++ @17 /* ~I can't stand her, actually. The real issue here is Irenicus, and how I can get my revenge.~ */ DO ~SetGlobal("FHNAskImoen","GLOBAL",3)~ + FHNIm_abandon
++ @18 /* ~I'm afraid I've got more important things to do than chat, at the moment.~ */ DO ~SetGlobal("FHNAskImoen","GLOBAL",3)~ + FHNIm_harsh
END

IF ~~ FHNIm_harsh
SAY @19 /* ~Never mind, then - sorry for distracting you.~ */
IF ~~ EXIT
END

IF ~~ FHNIm_pleasant
SAY @20 /* ~You know, I envy you a little. I didn't have anyone my age around when I was growing up - like I said, it was just my father and me, and then later my kensai tutor.~ */
++ @21 /* ~All that can be said for children is that they're immature, though Imoen grew up after we left.~ */ + FHNIm_sibling
++ @22 /* ~I do miss those times, rather. Things seemed so much more carefree back then - certainly they were less dangerous.~ */ + FHNIm_past
++ @23 /* ~Imoen always livened everything up - she'd play the funniest tricks on the monks!~ */ + FHNIm_havoc
END

IF ~~ FHNIm_past
SAY @24 /* ~You know, I think I understand how you feel - I often miss the time I spent in Baldur's Gate, too. But you have to try not to get preoccupied with things - otherwise, you can't get anything done.~ */
++ @25 /* ~I'm not preoccupied. I was just answering your questions - you don't have to start preaching at me.~ */ + FHNIm_upset
++ @26 /* ~The past was better than the present in so many ways. Can you blame me for being preoccupied?~ */ + FHNIm_know
++ @27 /* ~That doesn't stop me missing playing around in Candlekeep - I remember every trick we played.~ */ + FHNIm_havoc
END

IF ~~ FHNIm_abandon
SAY @28 /* ~Then why are you-- You mean you're just going to abandon her once you find Irenicus?~ */
++ @29 /* ~I don't see why she should travel with us just because we share a common enemy.~ */ + FHNIm_annoyed
++ @30 /* ~I'll make sure she's all right once I've dealt with Irenicus, but she's not my main concern.~ */ + FHNIm_ruffled
END

IF ~~ FHNIm_sibling
SAY @31 /* ~Children aren't that immature, are they? I don't know, I haven't been around them that much, but they've always seemed sweet enough.~ */
=
@32 /* ~Still, I'm sure Imoen and you were nice enough. I can just imagine the two of you causing havoc with all of your games.~ */
++ @33 /* ~Actually, it was more she who caused the havoc. I was having to rein her in all the time.~ */ + FHNIm_rein
++ @34 /* ~That's about right! We had a great deal of fun together.~ */ + FHNIm_right
++ @35 /* ~Sometimes I'd go a little far by accident, but she would always make the adults laugh.~ */ + FHNIm_rein
END

IF ~~ FHNIm_rein
SAY @36 /* ~I can imagine that, too, now you mention it. You seem more of the steady type.~ */
++ @37 /* ~Nathaniel? You're not helping with my missing her, you know.~ */ + FHNIm_stop
++ @38 /* ~Even so, Imoen was a great friend - I miss her, especially when she could be in such danger.~ */ + FHNIm_miss
END

IF ~~ FHNIm_right
SAY @39 /* ~Well, I hope you've mellowed now - at least a little. I don't want the two of you playing any pranks on me when we get her back!~ */
++ @40 /* ~*If* we get her back, you mean. Nothing's certain when it comes to my situation.~ */ + FHNIm_if
++ @41 /* ~Pranks or not, I miss her a great deal. She was a great friend to me.~ */ + FHNIm_miss
++ @42 /* ~Um, Nathaniel? You're not helping with my missing her.~ */ + FHNIm_stop
END

IF ~~ FHNIm_if
SAY @43 /* ~No, <CHARNAME>, you mustn't think like that. What we have to do is carry on hoping and not start losing it.~ */
=
@44 /* ~I've got enough hope for the both of us, for Latimer and for Imoen, so you can take some of mine, all right?~ */
IF ~~ EXIT
END

IF ~~ FHNIm_havoc
SAY @45 /* ~I can just imagine the two of you, causing havoc in the libraries! I suppose you were rather a handful for the monks, were you?~ */
++ @33 /* ~Actually, it was more she who caused the havoc. I was having to rein her in all the time.~ */ + FHNIm_rein
++ @34 /* ~That's about right! We had a great deal of fun together.~ */ + FHNIm_right
++ @35 /* ~Sometimes I'd go a little far by accident, but she would always make the adults laugh.~ */ + FHNIm_rein
END

IF ~~ FHNIm_upset
SAY @46 /* ~No, you don't understand, I didn't mean that at all! I was just trying to--~ */
++ @47 /* ~You might not have meant it that way, but I'd rather you didn't talk down to me like that.~ */ + FHNIm_inept
++ @48 /* ~Fine, fine, don't worry about it. It's not a problem.~ */ + FHNIm_inept
++ @49 /* ~Just leave me alone for the moment, Nathaniel.~ */ + FHNIm_endrom
END

IF ~~ FHNIm_know
SAY @50 /* ~You shouldn't dwell on things, though. I know--~ */
=
@51 /* ~Well - just - it's bad to dwell on the past, isn't it? We'll find Imoen, I'm sure of it.~ */
IF ~~ EXIT
END

IF ~~ FHNIm_annoyed
SAY @52 /* ~I can't believe you're saying that! I thought you were a better person. How can you think of abandoning your friend like that?~ */
IF ~~ DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ FHNIm_ruffled
SAY @53 /* ~Hmm. That's something, I suppose.~ */
IF ~~ EXIT
END

IF ~~ FHNIm_stop
SAY @54 /* ~I'm sorry, I didn't mean to drag up things that upset you.~ */
=
@55 /* ~I know that it's bad to dwell on things, <CHARNAME>, so I'll stop bothering you about it.~ */
IF ~~ EXIT
END

IF ~~ FHNIm_miss
SAY @56 /* ~I know you do. What we have to do is carry on hoping, though. I've got enough hope for the both of us - I'm trying to find Latimer *and* Imoen, so you can have some of mine, all right? We'll find her, I'm sure.~ */
IF ~~ EXIT
END

IF ~~ FHNIm_inept
SAY @57 /* ~Ah - it seems whatever I say goes wrong. I'm sorry. Let's carry on - I'll talk when I have something useful to say.~ */
IF ~~ EXIT
END

IF ~~ FHNIm_endrom
SAY @58 /* ~Excuse me. I'll talk to you another time.~ */
IF ~~ EXIT
END

//Post-vampire talks

IF ~Global("FHPostVamp","GLOBAL",1)~ THEN BEGIN FHPostVamp
SAY @1105 /* ~<CHARNAME>. <CHARNAME>, are you awake?~ */
++ @1106 /* ~I *was* asleep. What is it?~ */ DO ~SetGlobal("FHPostVamp","GLOBAL",2) SetGlobal("FHVampEmotional","GLOBAL",2)~ + FHPostVamp_what
++ @1107 /* ~Mmm? What's up?~ */ DO ~SetGlobal("FHPostVamp","GLOBAL",2) SetGlobal("FHVampEmotional","GLOBAL",2)~ + FHPostVamp_what
++ @1108 /* ~I am now. What is it, Nathaniel?~ */ DO ~SetGlobal("FHPostVamp","GLOBAL",2) SetGlobal("FHVampEmotional","GLOBAL",2)~ + FHPostVamp_what
++ @1109 /* ~Oh, leave it, Nathaniel.~ */ DO ~SetGlobal("FHPostVamp","GLOBAL",2) SetGlobal("FHVampEmotional","GLOBAL",2)~ + FHPostVamp_leave
END

IF ~~ THEN BEGIN FHPostVamp_what
SAY @1110 /* ~I-- I'll come over to you.~ */
=
@1111 /* ~I feel like - like I'm crawling out of my skin. Ever since that - that thing took me, I've felt tainted. When - when I look at my hands, they look wrong somehow, and my body feels as if it's something horrible.~ */
=
@1112 /* ~That's - that's why I've been avoiding you. Please, I...~ */
IF ~Global("FHNathSleep","GLOBAL",1)~ THEN REPLY @1113 /* ~Nathaniel, you're not tainted just because of what she did. And I love you.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ + FHPostVamp_love1
IF ~Global("FHNathSleep","GLOBAL",2)~ THEN REPLY @1113 /* ~Nathaniel, you're not tainted just because of what she did. And I love you.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ + FHPostVamp_love1
IF ~Global("FHNathSleep","GLOBAL",3)~ THEN REPLY @1113 /* ~Nathaniel, you're not tainted just because of what she did. And I love you.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ + FHPostVamp_love2
IF ~Global("FHNathSleep","GLOBAL",1)~ THEN REPLY @1114 /* ~You love me, and I'm tainted. At least you don't have the blood of a god in you.~ */ + FHPostVamp_taint1
IF ~Global("FHNathSleep","GLOBAL",2)~ THEN REPLY @1114 /* ~You love me, and I'm tainted. At least you don't have the blood of a god in you.~ */ + FHPostVamp_taint1
IF ~Global("FHNathSleep","GLOBAL",3)~ THEN REPLY @1114 /* ~You love me, and I'm tainted. At least you don't have the blood of a god in you.~ */ + FHPostVamp_taint2
++ @1115 /* ~Stop this. I don't want any more of your self-pity.~ */ + FHPostVamp_selfpity
END

IF ~~ THEN BEGIN FHPostVamp_leave
SAY @1116 /* ~I'm sorry. Ever since that - that thing took me, I've felt tainted. When - when I look at my hands, they look wrong somehow, and my body feels as if it's something horrible.~ */
=
@1112 /* ~That's - that's why I've been avoiding you. Please, I...~ */
IF ~Global("FHNathSleep","GLOBAL",1)~ THEN REPLY @1113 /* ~Nathaniel, you're not tainted just because of what she did. And I love you.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ + FHPostVamp_love1
IF ~Global("FHNathSleep","GLOBAL",2)~ THEN REPLY @1113 /* ~Nathaniel, you're not tainted just because of what she did. And I love you.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ + FHPostVamp_love1
IF ~Global("FHNathSleep","GLOBAL",3)~ THEN REPLY @1113 /* ~Nathaniel, you're not tainted just because of what she did. And I love you.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ + FHPostVamp_love2
IF ~Global("FHNathSleep","GLOBAL",1)~ THEN REPLY @1114 /* ~You love me, and I'm tainted. At least you don't have the blood of a god in you.~ */ + FHPostVamp_taint1
IF ~Global("FHNathSleep","GLOBAL",2)~ THEN REPLY @1114 /* ~You love me, and I'm tainted. At least you don't have the blood of a god in you.~ */ + FHPostVamp_taint1
IF ~Global("FHNathSleep","GLOBAL",3)~ THEN REPLY @1114 /* ~You love me, and I'm tainted. At least you don't have the blood of a god in you.~ */ + FHPostVamp_taint2
++ @1115 /* ~Stop this. I don't want any more of your self-pity.~ */ + FHPostVamp_selfpity
END

IF ~~ THEN BEGIN FHPostVamp_selfpity
SAY @1117 /* ~I ... all right then.~ */
IF ~~ DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN FHPostVamp_love1
SAY @1118 /* ~I love you too, but I feel like you shouldn't be touching me. Not after me being that thing. But I - I want to feel your skin...~ */
=
@1119 /* ~Please, I-- I need to know that I'm not one of those creatures any more. I need to know that you still feel the same about me - I couldn't bear it if-- I know it's not the - the best time for it to be our first night together--~ */
++ @1120 /* ~You're right, it isn't the best time. But you seem to need it.~ */ + FHPostVamp_yes1
++ @1121 /* ~Nathaniel, I'm not sure that sleeping with you is the best way to make you feel better.~ */ + FHPostVamp_best
++ @1122 /* ~Please, Nathaniel. I've never been with a man like this before, and it makes me nervous.~ */ + FHPostVamp_nervous
END

IF ~~ THEN BEGIN FHPostVamp_love2
SAY @1123 /* ~I love you too, but I feel like you shouldn't be touching me. Not after me being that thing. But I - I want to feel your skin again...~ */
=
@1124 /* ~Please, I-- I need to know that I'm not one of those creatures any more. I need to know that you still feel the same about me - I couldn't bear it if--~ */
++ @1125 /* ~Oh, Nathaniel, I've been wanting to touch you since then, but you've just turned away. Of course I'll stay with you now.~ */ + FHPostVamp_yes2
++ @1121 /* ~Nathaniel, I'm not sure that sleeping with you is the best way to make you feel better.~ */ + FHPostVamp_harm
++ @1126 /* ~Not when you're in this state. It could do more harm than good.~ */ + FHPostVamp_harm
END

IF ~~ THEN BEGIN FHPostVamp_taint1
SAY @1127 /* ~I know, and - and that's why I tried to help you when you went strange. She did things to me, <CHARNAME>, oh, Gods...~ */
=
@1128 /* ~I feel like you shouldn't be touching me. Not after me being that thing. But I - want to feel your skin...~ */
=
@1119 /* ~Please, I-- I need to know that I'm not one of those creatures any more. I need to know that you still feel the same about me - I couldn't bear it if-- I know it's not the - the best time for it to be our first night together--~ */
++ @1120 /* ~You're right, it isn't the best time. But you seem to need it.~ */ + FHPostVamp_yes1
++ @1121 /* ~Nathaniel, I'm not sure that sleeping with you is the best way to make you feel better.~ */ + FHPostVamp_best
++ @1122 /* ~Please, Nathaniel. I've never been with a man like this before, and it makes me nervous.~ */ + FHPostVamp_nervous
END

IF ~~ THEN BEGIN FHPostVamp_taint2
SAY @1129 /* ~I know, and that's why I tried to help you when you went ... went strange. She did things to me, <CHARNAME>... oh, Gods...~ */
=
@1130 /* ~I feel like you shouldn't be touching me. Not after me being that thing. But I - I want to  feel your skin again...~ */
=
@1124 /* ~Please, I-- I need to know that I'm not one of those creatures any more. I need to know that you still feel the same about me - I couldn't bear it if--~ */
++ @1125 /* ~Oh, Nathaniel, I've been wanting to touch you since then, but you've just turned away. Of course I'll stay with you now.~ */ + FHPostVamp_yes2
++ @1121 /* ~Nathaniel, I'm not sure that sleeping with you is the best way to make you feel better.~ */ + FHPostVamp_harm
++ @1126 /* ~Not when you're in this state. It could do more harm than good.~ */ + FHPostVamp_harm
END

IF ~~ THEN BEGIN FHPostVamp_shoulder1
SAY @1131 /* ~I feel like you shouldn't be touching me. Not after me being that thing. But I - I want to feel your skin...~ */
=
@1119 /* ~Please, I-- I need to know that I'm not one of those creatures any more. I need to know that you still feel the same about me - I couldn't bear it if-- I know it's not the - the best time for it to be our first night together--~ */
++ @1120 /* ~You're right, it isn't the best time. But you seem to need it.~ */ + FHPostVamp_yes1
++ @1121 /* ~Nathaniel, I'm not sure that sleeping with you is the best way to make you feel better.~ */ + FHPostVamp_best
++ @1122 /* ~Please, Nathaniel. I've never been with a man like this before, and it makes me nervous.~ */ + FHPostVamp_nervous
END

IF ~~ THEN BEGIN FHPostVamp_shoulder2
SAY @1132 /* ~I feel like you shouldn't be touching me. Not after me being that thing. But I - I want to feel your skin again...~ */
=
@1124 /* ~Please, I-- I need to know that I'm not one of those creatures any more. I need to know that you still feel the same about me - I couldn't bear it if--~ */
++ @1125 /* ~Oh, Nathaniel, I've been wanting to touch you since then, but you've just turned away. Of course I'll stay with you now.~ */ + FHPostVamp_yes2
++ @1121 /* ~Nathaniel, I'm not sure that sleeping with you is the best way to make you feel better.~ */ + FHPostVamp_harm
++ @1126 /* ~Not when you're in this state. It could do more harm than good.~ */ + FHPostVamp_harm
END

IF ~~ THEN BEGIN FHPostVamp_yes1
SAY @1133 /* ~Oh ... oh, thank you, <CHARNAME>. It - it won't be as good as if we were somewhere nicer, but I'll - I'll try and make it as good for you as I can?~ */
IF ~~ THEN DO ~SetGlobal("FHNathSleep","GLOBAL",3) RestParty()~
EXIT
END

IF ~~ THEN BEGIN FHPostVamp_best
SAY @1134 /* ~I know, but it's the only way I can think of to-- Please, <CHARNAME>?~ */
++ @1135 /* ~All right, then, Nathaniel.~ */ + FHPostVamp_yes1
++ @1136 /* ~No. I want the first time to be truly special.~ */ + FHPostVamp_no
++ @1137 /* ~If you're sure it won't do more harm than good, then yes. I will.~ */ + FHPostVamp_yes1
END

IF ~~ THEN BEGIN FHPostVamp_nervous
SAY @1138 /* ~I don't want to sound like I'm just forcing you into bed ... I know how you feel, but ... this is so important to me. Please.~ */
++ @1135 /* ~All right, then, Nathaniel.~ */ + FHPostVamp_yes1
++ @1136 /* ~No. I want the first time to be truly special.~ */ + FHPostVamp_no
++ @1137 /* ~If you're sure it won't do more harm than good, then yes. I will.~ */ + FHPostVamp_yes1
END

IF ~~ THEN BEGIN FHPostVamp_yes2
SAY @1139 /* ~Oh ... oh, thank you, <CHARNAME>. It - it won't be as good as the other times, but I'll - I'll try and make it up to you next time?~ */
IF ~~ THEN DO ~SetGlobal("FHNathSleep","GLOBAL",3) RestParty()~
EXIT
END

IF ~~ THEN BEGIN FHPostVamp_harm
SAY @1140 /* ~I ... I know, but it's the only way I can think of to-- Please, <CHARNAME>?~ */
++ @1135 /* ~All right, then, Nathaniel.~ */ + FHPostVamp_yes2
++ @1141 /* ~If you're sure, then ... yes. I will.~ */ + FHPostVamp_yes2
++ @1142 /* ~I really don't think it's right to use intimacy like this, Nathaniel.~ */ + FHPostVamp_no
END

IF ~~ THEN BEGIN FHPostVamp_no
SAY @1143 /* ~I ... I see. Can I stay with you here, then? Please, just to feel you next to me?~ */
++ @1144 /* ~Yes. I'd like that.~ */ + FHPostVamp_yeswarm
++ @1145 /* ~No, Nathaniel. I'd rather not.~ */ + FHPostVamp_nowarm
END

IF ~~ THEN BEGIN FHPostVamp_yeswarm
SAY @1146 /* ~Thank - thank you...~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN FHPostVamp_nowarm
SAY @1147 /* ~I ... all right.~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

//PC dual-classes to thief

IF ~Global("NathThief1","GLOBAL",1)~ NathThief1
SAY @118 /* ~<CHARNAME>, I thought better of you than that you'd become a thief. It's your decision, I suppose.~ */ /* ~<CHARNAME>, I thought better of you than that you'd become a thief. (sigh) It's your decision, I suppose.~ */
IF ~~ DO ~SetGlobal("NathThief1","GLOBAL",2)~ EXIT
END

IF ~Global("NathThief2","GLOBAL",1)~ NathThief2
SAY @119 /* ~<CHARNAME>. We should talk about this. Why did you decide to take up as a thief, even though you're perfectly good at what you do? It's ... it's not something to be admired.~ */   
++ @120 /* ~I need these skills to help us survive, Nathaniel.~ */ DO ~SetGlobal("NathThief2","GLOBAL",2)~ + NathThief2_survive
++ @121 /* ~It isn't because I enjoy breaking the law, Nathaniel - it's a necessity.~ */ DO ~SetGlobal("NathThief2","GLOBAL",2)~ + NathThief2_survive
++ @122 /* ~I don't see that my changing profession has anything to do with our being together.~ */ DO ~SetGlobal("NathThief2","GLOBAL",2)~ + NathThief2_everything
++ @123 /* ~Let's just keep business and pleasure separate, all right? What's my profession got to do with us?~ */ DO ~SetGlobal("NathThief2","GLOBAL",2)~ + NathThief2_everything
END

IF ~~ NathThief2_survive
SAY @124 /* ~Hmm. I think you're exaggerating the importance of these skills. Surely there are other--~ */
=
@125 /* ~(sigh) Look, let's just forget we had this conversation, all right? I love you, and that's what's important.~ */
IF ~~ EXIT
END

IF ~~ NathThief2_everything
SAY @126 /* ~It's got everything to do with it - I just ... well, I can't respect you as much as I did. I'm sorry.~ */
++ @127 /* ~I'm sorry, too. I didn't think it would have this much of an impact on you.~ */ + NathThief2_impact
++ @128 /* ~Are you breaking up with me, Nathaniel?~ */ + NathThief2_break
++ @129 /* ~If you're going to be that shallow, maybe I don't respect you as much as I did.~ */ + NathThief2_shallow
END


IF ~~ NathThief2_impact
SAY @130 /* ~It's ... it's all right. I'll get over it. Nothing's as important as the fact that I love you, I promise. Let's just forget this conversation happened, all right?~ */
IF ~~ EXIT
END

IF ~~ NathThief2_break
SAY @131 /* ~No, of course not. All that matters is that I love you, I promise. Let's just forget this conversation happened, all right?~ */
IF ~~ EXIT
END

IF ~~ NathThief2_shallow
SAY @132 /* ~Stop it! I didn't mean to be shallow - I was just saying! Look, I'm sorry, all right? Let's just forget this conversation happened.~ */
IF ~~ EXIT
END

//Underdark Interjections

IF ~Global("FHUDUpset1","LOCALS",1)~ FHUDUpset1
SAY @134 /* ~I know that we have to keep up this pretence, but that was too much. Please, don't do it again.~ */   
++ @135 /* ~Are you jealous, Nathaniel?~ */ DO ~SetGlobal("FHUDUpset1","LOCALS",2)~ + FHUDUpset1_jealous
++ @136 /* ~It's just a ruse. Don't worry about it.~ */ DO ~SetGlobal("FHUDUpset1","LOCALS",2)~ + FHUDUpset1_ruse
++ @137 /* ~I'll do what I want with whom I want, Nathaniel.~ */ DO ~SetGlobal("FHUDUpset1","LOCALS",2) SetGlobal("NathRomanceActive","GLOBAL",3)~ + FHUDUpset1_slut
END

IF ~~ FHUDUpset1_jealous
SAY @138 /* ~I don't like to admit it, but ... yes. I don't like the way she looks at you ... like you're a piece of meat. Just remember I can offer you more than she can, all right?~ */
++ @136 /* ~It's just a ruse. Don't worry about it.~ */ + FHUDUpset1_ruse
++ @137 /* ~I'll do what I want with whom I want, Nathaniel.~ */ + FHUDUpset1_slut
END

IF ~~ FHUDUpset1_ruse
SAY @139 /* ~A ruse to gain what, exactly? Look, please just be careful.~ */
IF ~~ EXIT
END

IF ~~ FHUDUpset1_slut
SAY @140 /* ~This - this place has obviously corrupted you! I know this is no place for an argument, but-- Just don't come near me!~ */
IF ~~ EXIT
END

IF ~Global("FHUDUpset2","LOCALS",1)~ FHUDUpset2
SAY @141 /* ~You bastard! How could you let her touch you? After what I said-- just stay away from me!~ */   
IF ~~ DO ~SetGlobal("FHUDUpset1","LOCALS",2)
SetGlobal("FHUDUpset2","LOCALS",2)
SetGlobal("NathRomanceActive","GLOBAL",3)
SetGlobal("CharnameIsASlut","GLOBAL",1)~
EXIT
END

IF ~Global("FHUDUpset3","LOCALS",1) AreaCheck("AR2204")~ FHUDUpset3
SAY @142 /* ~Oh, thank goodness. I'm glad she didn't have time to ... do things to you. I was so worried.~ */   
IF ~~ DO ~SetGlobal("FHUDUpset3","LOCALS",2)~
EXIT
END

IF ~Global("FHSleptWithDrowWoman","GLOBAL",1)~
THEN BEGIN FHSleptWithDrowWoman
SAY @143 /* ~I saw what happened with that woman. How could you think I'd miss it? I know this is no place for an argument but I can't be with you any longer!~ */   
IF ~~ DO
~SetGlobal("FHSleptWithDrowWoman","GLOBAL",2)
SetGlobal("NathRomanceActive","GLOBAL",3)
SetGlobal("FHCharnameIsASlut","GLOBAL",1)~
EXIT
END

IF ~Global("FHDumped","GLOBAL",1)~ FHDumped
SAY @144 /* ~<CHARNAME>. This is ... difficult. But now I'm free to talk to you, I have to. I ... I cared about you a great deal. I still do. And ... for you to sleep with that woman ... it hurts me every time I'm around you. So ... this is goodbye.~ */   
IF ~~ DO
~SetGlobal("FHDumped","GLOBAL",2)
LeaveParty()
EscapeArea()~
EXIT
END

//Anomen and Aerie romance talks

//LG Anomen

IF ~Global("AnomenIsKnight","GLOBAL",1)
Global("FHAnomenTalk","GLOBAL",2)~ FHAnoRom1
SAY @145 /* ~I have to say, <CHARNAME>, you've made a good choice with Anomen. I know that he'll treat you well.~ */
++ @146 /* ~Nathaniel, you sound like a mother hen.~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom1_hen
++ @147 /* ~I know he will, too.~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom1_know
++ @148 /* ~Ah, Nathaniel. You look so smug whenever we're together - I'd almost think you set the two of us up.~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom1_set
++ @149 /* ~Why, thank you, Nathaniel.~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom1_thank
++ @150 /* ~I'm glad you approve, Nathaniel, but I think I'm capable of choosing someone who's right for me.~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom1_capable
END

IF ~~ FHAnoRom1_hen
SAY @151 /* ~And what's wrong with sounding like a mother hen? You mean a lot to me and I wasn't about to let you throw your life away over some man who didn't deserve you.~ */
++ @152 /* ~Good thing I made the right choice, then! I dread to think what you'd have done otherwise.~ */ + FHAnoRom1_dread
++ @153 /* ~(laugh) Oh, Nathaniel. You're one of the sweetest men I know.~ */ + FHAnoRom1_sweet
++ @154 /* ~So what would you have done if I'd gone for someone else? Killed them?~ */ + FHAnoRom1_dread
++ @155 /* ~Hmm. I think I'm capable of choosing someone who's right for me. You don't need to worry so much.~ */ + FHAnoRom1_capable
END

IF ~~ FHAnoRom1_know
SAY @156 /* ~Good. I hope the two of you are very happy ... and I hope I'll be invited to the wedding?~ */
IF ~~ EXIT
END

IF ~~ FHAnoRom1_set
SAY @157 /* ~<CHARNAME>! I wouldn't do something like that. But you mean a lot to me, and I wasn't about to let you throw yourself away over some man who didn't deserve you.~ */
++ @158 /* ~Good thing I made the right choice, then! I hate to think what you'd have done otherwise.~ */ + FHAnoRom1_dread
++ @153 /* ~(laugh) Oh, Nathaniel. You're one of the sweetest men I know.~ */ + FHAnoRom1_sweet
++ @154 /* ~So what would you have done if I'd gone for someone else? Killed them?~ */ + FHAnoRom1_dread
++ @155 /* ~Hmm. I think I'm capable of choosing someone who's right for me. You don't need to worry so much.~ */ + FHAnoRom1_capable
END

IF ~~ FHAnoRom1_thank
SAY @159 /* ~You're welcome. I hope the two of you are very happy ... and I hope I'll be invited to the wedding?~ */
IF ~~ EXIT
END

IF ~~ FHAnoRom1_capable
SAY @160 /* ~Oh, I didn't mean I thought you weren't. It's obvious that you are capable. I hope the two of you are very happy ... and I hope I'll be invited to the wedding?~ */
IF ~~ EXIT
END

IF ~~ FHAnoRom1_dread
SAY @161 /* ~Hey, what are you implying? Anyway, I hope the two of you are very happy.~ */
IF ~~ EXIT
END

IF ~~ FHAnoRom1_sweet
SAY @162 /* ~"Sweet"? Well, it's not the first time someone's called me that ... though I think they were joking before. Thank you. And I hope the two of you are very happy.~ */
IF ~~ EXIT
END

//CN Anomen

IF ~Global("AnomenIsNotKnight","GLOBAL",1)
Global("FHAnomenTalk","GLOBAL",2)~ FHAnoRom2
SAY @163 /* ~Um, <CHARNAME>? Could I have a moment? I've noticed that you and Anomen have become ... very close. And, and I'm not sure it's a good thing.~ */
IF ~!Global("Keldorn4","LOCALS",2) !Global("BAerie4","LOCALS",1)~ THEN REPLY @164 /* ~What are you talking about? Anomen treats me well.~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom2_treat
IF ~Global("Keldorn4","LOCALS",2)~ THEN REPLY @165 /* ~If you're talking about the thing with Keldorn--~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom2_kel
IF ~Global("BAerie4","LOCALS",1)~ THEN REPLY @166 /* ~If you're referring to the thing with Aerie--~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom2_kel
++ @167 /* ~If you don't mind me saying, you're getting overprotective.~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom2_protect
++ @168 /* ~I'm perfectly capable of choosing who I want to spend time with, Nathaniel.~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom2_capable
++ @169 /* ~But he's so much happier now that he's with me.~ */ DO ~SetGlobal("FHAnomenTalk","GLOBAL",3)~ + FHAnoRom2_happy
++ @170 /* ~But, Nathaniel, I love him.~ */ + FHAnoRom2_love
IF ~Global("FHCNAnomen","LOCALS",3)~ THEN REPLY @171 /* ~He mentioned that you've been really strange around him lately.~ */ + FHAnoRom2_strange
END

IF ~~ FHAnoRom2_treat
SAY @172 /* ~Yes. Yes, he does. But ... haven't you noticed his manner? He's changed so much ... and to tell you the truth, it worries me. Because of what happened to Latimer ... and I know it's a different situation but...~ */
++ @173 /* ~Well, thank you for caring, Nathaniel.~ */ + FHAnoRom2_thanks
++ @174 /* ~Anomen would never be like Latimer!~ */ + FHAnoRom2_never
++ @175 /* ~I like the way he's changed. He's much more easygoing now that he doesn't have the Order to worry about.~ */ + FHAnoRom2_easy
++ @176 /* ~But he's so much happier now - it's like there's a weight off his shoulders.~ */ + FHAnoRom2_easy
++ @177 /* ~This is ridiculous. Don't presume to tell me what I can and can't do!~ */ + FHAnoRom2_angry
END

IF ~~ FHAnoRom2_kel
SAY @178 /* ~That partly. But it's everything. He's so ... he's changed so much, and to tell you the truth, it worries me. Because, well, of what happened to Latimer ... and I know it's a different situation but...~ */
++ @173 /* ~Well, thank you for caring, Nathaniel.~ */ + FHAnoRom2_thanks
++ @174 /* ~Anomen would never be like Latimer!~ */ + FHAnoRom2_never
++ @175 /* ~I like the way he's changed. He's much more easygoing now that he doesn't have the Order to worry about.~ */ + FHAnoRom2_easy
++ @176 /* ~But he's so much happier now - it's like there's a weight off his shoulders.~ */ + FHAnoRom2_easy
++ @177 /* ~This is ridiculous. Don't presume to tell me what I can and can't do!~ */ + FHAnoRom2_angry
END

IF ~~ FHAnoRom2_protect
SAY @179 /* ~(sigh) Maybe I am. But I know how I feel, and I ... he's changed so much, and it worries me. Because of what happened with Latimer. And I know it's a different situation, but...~ */
++ @173 /* ~Well, thank you for caring, Nathaniel.~ */ + FHAnoRom2_thanks
++ @174 /* ~Anomen would never be like Latimer!~ */ + FHAnoRom2_never
++ @175 /* ~I like the way he's changed. He's much more easygoing now that he doesn't have the Order to worry about.~ */ + FHAnoRom2_easy
++ @176 /* ~But he's so much happier now - it's like there's a weight off his shoulders.~ */ + FHAnoRom2_easy
++ @177 /* ~This is ridiculous. Don't presume to tell me what I can and can't do!~ */ + FHAnoRom2_angry
END

IF ~~ FHAnoRom2_capable
SAY @180 /* ~I know that. And I'm not trying to insult your intelligence. But he's changed so much ... and it worries me. Because, well, of what happened with Latimer. And I know it's a different situation but...~ */
++ @173 /* ~Well, thank you for caring, Nathaniel.~ */ + FHAnoRom2_thanks
++ @174 /* ~Anomen would never be like Latimer!~ */ + FHAnoRom2_never
++ @175 /* ~I like the way he's changed. He's much more easygoing now that he doesn't have the Order to worry about.~ */ + FHAnoRom2_easy
++ @176 /* ~But he's so much happier now - it's like there's a weight off his shoulders.~ */ + FHAnoRom2_easy
++ @177 /* ~This is ridiculous. Don't presume to tell me what I can and can't do!~ */ + FHAnoRom2_angry
END

IF ~~ FHAnoRom2_happy
SAY @181 /* ~Is he, though? He wanted to get into the Order so much, and then his wish was destroyed. He might seem like he's bearing it well, but there's got to be more to it.~ */
=

@182 /* ~He's changed so much and it ... worries me, because of what happened with Latimer. And I know it's a different situation, but...~ */
++ @173 /* ~Well, thank you for caring, Nathaniel.~ */ + FHAnoRom2_thanks
++ @174 /* ~Anomen would never be like Latimer!~ */ + FHAnoRom2_never
++ @175 /* ~I like the way he's changed. He's much more easygoing now that he doesn't have the Order to worry about.~ */ + FHAnoRom2_easy
++ @176 /* ~But he's so much happier now - it's like there's a weight off his shoulders.~ */ + FHAnoRom2_easy
++ @177 /* ~This is ridiculous. Don't presume to tell me what I can and can't do!~ */ + FHAnoRom2_angry
END

IF ~~ FHAnoRom2_love
SAY @183 /* ~Well ... I ... just be careful? I hope your love is strong enough to stop him falling further.~ */
IF ~~ EXIT
END

IF ~~ FHAnoRom2_strange
SAY @7 /* ~Ah.~ */
=
@184 /* ~Well ... then you know how I feel about it. I hope your love is strong enough to stop him falling further.~ */
IF ~~ EXIT
END

IF ~~ FHAnoRom2_thanks
SAY @185 /* ~I'm not trying to break the two of you up. I just ... he makes me nervous. I hope your love is strong enough to stop him falling further.~ */
IF ~~ EXIT
END

IF ~~ FHAnoRom2_never
SAY @186 /* ~You didn't know Latimer before he was ... different. He was angry, but he wasn't ... he wasn't a bad person. Anomen's not either, but people can change so much. Anyway, I just thought I should tell you what I was thinking.~ */
++ @187 /* ~Well, thank you for caring, I suppose.~ */ + FHAnoRom2_thanks
++ @188 /* ~But he's so much happier now!~ */ + FHAnoRom2_easy
++ @189 /* ~But I love him, Nathaniel.~ */ + FHAnoRom2_love
++ @177 /* ~This is ridiculous. Don't presume to tell me what I can and can't do!~ */ + FHAnoRom2_angry
END

IF ~~ FHAnoRom2_easy
SAY @190 /* ~Maybe it seems that way to you, but I ... it's just that I recognise Latimer in him. I'm sorry.~ */
++ @187 /* ~Well, thank you for caring, I suppose.~ */ + FHAnoRom2_thanks
++ @189 /* ~But I love him, Nathaniel.~ */ + FHAnoRom2_love
++ @177 /* ~This is ridiculous. Don't presume to tell me what I can and can't do!~ */ + FHAnoRom2_angry
END

IF ~~ FHAnoRom2_angry
SAY @191 /* ~I didn't mean it like that! All right, I'll stop interfering. I don't want to upset you any more.~ */
IF ~~ EXIT
END

//Aerie

IF ~Global("FHAerieTalk","GLOBAL",2)~ FHAerieRom
SAY @192 /* ~I'm glad you've been able to bring some joy into Aerie's life, <CHARNAME>. It's wonderful to see her so much happier - and it's all because of you. You seem so happy together.~ */
++ @193 /* ~Thank you, Nathaniel. It's good to know that I have your blessing.~ */ DO ~SetGlobal("FHAerieTalk","GLOBAL",3)~ + FHAerieRom_bless
++ @194 /* ~Well, of course I wasn't going to be cruel to her!~ */ DO ~SetGlobal("FHAerieTalk","GLOBAL",3)~ + FHAerieRom_cruel
++ @195 /* ~I'm glad, too. I'm just pleased that she's becoming more sure of herself.~ */ DO ~SetGlobal("FHAerieTalk","GLOBAL",3)~ + FHAerieRom_sure
++ @196 /* ~She gives me a great deal of joy, too.~ */ DO ~SetGlobal("FHAerieTalk","GLOBAL",3)~ + FHAerieRom_joy
++ @197 /* ~Yes, and being around her makes me feel complete.~ */ DO ~SetGlobal("FHAerieTalk","GLOBAL",3)~ + FHAerieRom_joy
END

IF ~~ FHAerieRom_bless
SAY @198 /* ~Blessing! Well, you could put it that way. When I think of what you two have, it gives me hope that things are going to be all right.~ */
++ @199 /* ~It makes me feel that everything's going to be all right, too.~ */ + FHAerieRom_allright
++ @200 /* ~Thank you.~ */ + FHAerieRom_thank
IF ~GlobalGT("FHBryceHere","GLOBAL",1)~ THEN REPLY @201 /* ~I think one day you'll find someone, too.~ */ + FHAerieRom_someone
++ @202 /* ~I'm glad that it comforts you, Nathaniel.~ */ + FHAerieRom_comfort
END

IF ~~ FHAerieRom_cruel
SAY @203 /* ~Of course not! I just wanted to say how nice it is. When I think of what you two have, it gives me hope that things are going to be all right.~ */
++ @199 /* ~It makes me feel that everything's going to be all right, too.~ */ + FHAerieRom_allright
++ @200 /* ~Thank you.~ */ + FHAerieRom_thank
IF ~GlobalGT("FHBryceHere","GLOBAL",1)~ THEN REPLY @201 /* ~I think one day you'll find someone, too.~ */ + FHAerieRom_someone
++ @202 /* ~I'm glad that it comforts you, Nathaniel.~ */ + FHAerieRom_comfort
END

IF ~~ FHAerieRom_sure
SAY @204 /* ~Yes, and that's part of it, too. I just wanted to say how nice it is - when I think of what you two have, it gives me hope that things are going to be all right.~ */
++ @199 /* ~It makes me feel that everything's going to be all right, too.~ */ + FHAerieRom_allright
++ @200 /* ~Thank you.~ */ + FHAerieRom_thank
IF ~GlobalGT("FHBryceHere","GLOBAL",1)~ THEN REPLY @201 /* ~I think one day you'll find someone, too.~ */ + FHAerieRom_someone
++ @202 /* ~I'm glad that it comforts you, Nathaniel.~ */ + FHAerieRom_comfort
END

IF ~~ FHAerieRom_joy
SAY @205 /* ~Yes, I can tell. When I think of what you two have, it gives me hope that things are going to be all right.~ */
++ @199 /* ~It makes me feel that everything's going to be all right, too.~ */ + FHAerieRom_allright
++ @200 /* ~Thank you.~ */ + FHAerieRom_thank
IF ~GlobalGT("FHBryceHere","GLOBAL",1)~ THEN REPLY @201 /* ~I think one day you'll find someone, too.~ */ + FHAerieRom_someone
++ @202 /* ~I'm glad that it comforts you, Nathaniel.~ */ + FHAerieRom_comfort
END

IF ~~ FHAerieRom_allright
SAY @206 /* ~Good. That's what love's about, isn't it? The best of luck to the both of you.~ */
IF ~~ EXIT
END

IF ~~ FHAerieRom_thank
SAY @207 /* ~No need to thank me. It was just what I was thinking. The best of luck to the both of you.~ */
IF ~~ EXIT
END

IF ~~ FHAerieRom_someone
SAY @208 /* ~Ah, maybe. I think I've had enough of those kind of friendships, though. The best of luck to the both of you.~ */
IF ~~ EXIT
END

IF ~~ FHAerieRom_comfort
SAY @209 /* ~Well, I like to see my friends being happy - who wouldn't? I suppose it gives me hope for myself, too. The best of luck to the both of you.~ */
IF ~~ EXIT
END

//Neb interjection

IF ~InParty("Nath") Global("FHNeb","GLOBAL",1)~ FHNathNeb
SAY @217 /* ~Thank the gods that disgusting creature won't harm any more children. We should tell the authorities - they'll be able to stop their investigations.~ */
IF ~~ DO ~SetGlobal("FHNeb","GLOBAL",2)~ EXIT
END

//Tanner warning

IF ~Global("FHTanner","AR0502",1)~ FHTanner
SAY @216 /* ~Oh ... oh, this is disgusting, <CHARNAME>. Let's get out of here as soon as possible?~ */
IF ~~ DO ~SetGlobal("FHTanner","AR0502",2)~ EXIT
END

//Firkraag warning

IF ~Global("FHFirkraagWarn","AR1201",1)~ FHFirkraagWarn
SAY @218 /* ~<CHARNAME>, did you see that dragon sculpture outside? Maybe Lord Firkraag has a dragon guarding Garren's child! We should be careful.~ */
IF ~~ DO ~SetGlobal("FHFirkraagWarn","AR1201",2)~ EXIT
END

//Talos necklace warning

IF ~Global("FHTalosWarn","GLOBAL",1)~ FHTalosWarn
SAY @219 /* ~<CHARNAME>, you shouldn't be doing this. We don't owe Renal Bloodscalp or Mae'Var anything!~ */
IF ~~ DO ~SetGlobal("FHTalosWarn","GLOBAL",2)~ EXIT
END

//Reputation talks

IF ~Global("NathGoes","GLOBAL",1)~ THEN BEGIN NathGoes
SAY @111 /* ~I'm shocked at your behaviour! I don't want to travel with you any longer.~ */   
IF ~~ THEN DO ~SetGlobal("NathGoes","GLOBAL",2) LeaveParty()EscapeArea()~ EXIT
END

IF ~Global("NathGoes2","GLOBAL",1)~ THEN BEGIN NathGoes2
SAY @112 /* ~You mean a lot to me, but please, you must behave better. It's not right to do such things to people.~ */   
IF ~~ THEN DO ~SetGlobal("NathGoes2","GLOBAL",2)~
EXIT
END

IF ~Global("NathGoes3","GLOBAL",1)~ THEN BEGIN NathGoes3
SAY @113 /* ~That's the last straw! I ... I'd hoped it wouldn't come to this. I'm sorry, but I'm going to have to leave.~ */   
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()EscapeArea()~ EXIT
END

INTERJECT_COPY_TRANS2 ACOLYTE1 1 FHTalosPriest
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@376 /* ~But - but how can you compare nature's chaos to human chaos? We've got a choice not to succumb to it.~ */
END

INTERJECT_COPY_TRANS ACOLYTE2 1 FHLathPriest
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@377 /* ~Nothing - it's a good thing to aim for, but in my experience joy can fail just as much as anything else.~ */
END

INTERJECT_COPY_TRANS ACOLYTE3 1 FHHelmPriest
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@378 /* ~I'm sure <CHARNAME> didn't mean any offence, sir. No one could suggest that someone as concerned with duty as Helm was heartless.~ */
END

INTERJECT_COPY_TRANS AEMERCH 1 FHExtortedMerch
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@379 /* ~That's right! Leave the merchant be!~ */
END

INTERJECT_COPY_TRANS AERIE 41 FHAerieOgre
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@380 /* ~Stay here, miss, and we'll be back as quickly as we can.~ */
END

INTERJECT AESOLD 5 FHBlacklotus
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@381 /* ~I couldn't help overhearing, "sir", that you were interested in taking Black Lotus from a smuggler! What kind of people do they hire in the guards here?~ */
EXTERN AESOLD 10

INTERJECT_COPY_TRANS AEWERE2 0 FHWerewolves
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@382 /* ~"Skins"? Watch out, <CHARNAME> ... these people seem very odd...~ */
END

INTERJECT_COPY_TRANS AHAMMED 0 FHAhammed
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@383 /* ~A knight ... Anomen. Oh, gods. You should have come earlier, <CHARNAME>! If you loved him, you should have come to stop him!~ */
END

INTERJECT_COPY_TRANS ALYNAR 1 FHPalBattle
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@384 /* ~We'll do our best to protect your knights, sir, I swear.~ */
END

INTERJECT_COPY_TRANS AMSI 1 FHAmsi
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@385 /* ~Isn't it obvious? You've been found out, you murderer!~ */
END

INTERJECT_COPY_TRANS ANOMENJ 150 FHAnomenDecide
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@386 /* ~Anomen. You - you mustn't submit to your father's poisoned wishes! You know what is right! Murder's wrong, no matter what happens, and it's justice that's important.~ */
END

INTERJECT_COPY_TRANS ANOMENJ 199 FHAnomenThief
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@387 /* ~And I'll be pleased to be with you, Anomen!~ */
END

INTERJECT_COPY_TRANS2 YUSUF 2 FHAnomenSurayahDead
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@388 /* ~Anomen, how-- she never did anything to hurt you!~ */
END

INTERJECT_COPY_TRANS ANOMENJ 105 FHAnomenSlaughterOrder
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@389 /* ~Anomen ... please - please don't--~ */
END

INTERJECT_COPY_TRANS ANOMENP 22 FHAnomenKnightYay
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@390 /* ~Anomen, well done! I'm so glad!~ */
END

INTERJECT_COPY_TRANS ARAN 20 FHAranJaylos
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@391 /* ~For heaven's sake! Why do we have to lower ourselves by doing these lowlifes' dirty work?~ */
END

INTERJECT_COPY_TRANS ARAN 41 FHAranUncertain
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@392 /* ~You mean even the people in charge are unaware of what's going on? That's terrible!~ */
END

INTERJECT_COPY_TRANS ARAN 49 FHAranDelay
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@393 /* ~I don't like working with these criminals, <CHARNAME>, and with this sort of evasiveness it's hard not to suspect their treachery.~ */
END

INTERJECT_COPY_TRANS ARAN 77 FHAranSaemon
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@394 /* ~And yet you stole our money from us and hired an untrustworthy man without even telling us that he could be dangerous!~ */
END

INTERJECT_COPY_TRANS2 ARENTHIS 16 FHArenthis
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@395 /* ~I'm glad you did that, <CHARNAME>. At least sometimes there's a happy ending for innocent people.~ */
END


INTERJECT_COPY_TRANS ARNBOY01 3 FHDouglas
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@396 /* ~Maybe there's some hope of redemption for you, then.~ */
END

CHAIN IF WEIGHT #-1 ~!NumberOfTimesTalkedTo(0)
!InPartySlot(LastTalkedToBy,0)
Name("Nath",LastTalkedToBy)
Global("FHMissy","LOCALS",0)~ THEN ARNGRL01 FHNathMissy
@397 /* ~What is it now?! Who the hell d'ya think you are, swanning in here and turning your nose up at my coats?! Do you got a coat to check or not?~ */
DO ~SetGlobal("FHMissy","LOCALS",1)~
== FHNATJ @399 /* ~No, I haven't got a coat. And I'd never touch anything from a place like this.~ */
== ARNGRL01 @398 /* ~Ha! I know your game - have your nose in the air and when I turn my back they'll all be gone! Now get outta my face!~ */
EXIT

INTERJECT_COPY_TRANS ARNMAN03 0 FHCuchal
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@400 /* ~And that's something to be proud of?~ */
END

INTERJECT_COPY_TRANS ARNMAN04 0 FHMitsu
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@401 /* ~I am not one of you! I'm only going along with this because it's what <CHARNAME> wishes!~ */
END

INTERJECT_COPY_TRANS ARNMAN05 9 FHAchon
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@402 /* ~<CHARNAME>, I wish we'd end our association with these people. The more I see, the more I despise them.~ */
END

INTERJECT_COPY_TRANS ARNMAN09 2 FHAranTraitor
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@403 /* ~I'd turn in all of you if I could, but one less of you will have to do. Guard! Did you hear what he was saying?~ */
END

CHAIN IF WEIGHT #-1 ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHApatheticGuard","GLOBAL",0)~ THEN BAMNG01 FHApatheticGuard
@404 /* ~You there, in the green! Move along, I don't like your look. Shifty eyes.~ */
DO ~SetGlobal("FHApatheticGuard","GLOBAL",1)~
== FHNATJ
@405 /* ~I used to be a guard! Concentrate on the real law-breakers in this city.~ */
EXIT

INTERJECT_COPY_TRANS BAMNG02 2 FHDrunkGuard
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@406 /* ~This is disgusting. I can't imagine how brutes like this become members of the guard.~ */
END

INTERJECT_COPY_TRANS BARONP 43 FHPloyer1
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@407 /* ~You losing your riches was justice! You should be glad to be alive, since you don't deserve even that!~ */
END

INTERJECT_COPY_TRANS BARONP 42 FHPloyer1
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@408 /* ~She may be sick, but we're perfectly capable of bringing you to justice!~ */
END

INTERJECT_COPY_TRANS BBEGG1 2 FHBeggarLiar
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@409 /* ~Oh, that's ... disappointing. I would have hoped those in this city wouldn't sink to lying for money.~ */
END

INTERJECT_COPY_TRANS BBEGG2 1 FHBeggarHalfling
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@410 /* ~If you're going to give charity, <CHARNAME>, it'd be better to fix their problems permanently. Still, it was a good thing to do.~ */
END

INTERJECT_COPY_TRANS2 BDHIGG01 9 FHHiggoldGoodLuck
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@411 /* ~I don't know much about this kind of thing, but good luck, <CHARNAME>.~ */
END

INTERJECT_COPY_TRANS BDHIGG01 38 FHHiggoldMoney
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@412 /* ~<CHARNAME>, surely there are more important things that we need to spend money on?~ */
END

INTERJECT_COPY_TRANS BDOCK1 3 FHOrc
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@413 /* ~That man deserved ... deserved something, but not death!~ */
END

INTERJECT_COPY_TRANS BECKY 0 FHBecky
== FHNATJ
IF ~InParty("Nath")
OR(2)
Global("FHRomance","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)~ THEN
@414 /* ~Yes, he is, isn't he?~ */
END

INTERJECT_COPY_TRANS JANJ 1 FHBeeloo
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@415 /* ~I hate to ask, but why do you have an elephant and where is he?~ */
END

INTERJECT_COPY_TRANS ANOMENJ 158 FHAgreeAnomenBeggar
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@416 /* ~I agree. The authorities should work on getting rid of the beggars' problems permanently. Still, it was a good thing of <CHARNAME> to do.~ */
END

CHAIN IF WEIGHT #-1 ~Global("FHFishwife","LOCALS",0)
InParty("Nath")~ THEN BFISHW1 FHFishwife
@417 /* ~You there, in the green! Swannin' around with yer no-good friends! Get a job and do somethin' useful!~ */
DO ~SetGlobal("FHFishwife","LOCALS",1)~
== FHNATJ
@418 /* ~I am doing something useful, ma'am, and I did have a job, but things happened...~ */
EXIT

CHAIN IF WEIGHT #-1 ~Global("FHMagicHater","LOCALS",0)
See("Nath")
InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BFTOWN1 FHMagicHater
@419 /* ~Magic's the scourge of this city. If only all the wizards could be rounded up and killed!~ */
DO ~SetGlobal("FHMagicHater","LOCALS",1)~
== FHNATJ @420 /* ~That's not true, ma'am. Magic's only as evil as the people who use it.~ */
EXIT

CHAIN IF WEIGHT #-1 ~Global("FHThiefHater","LOCALS",0)
See("Nath")
InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BFTOWN2 FHThiefHater
@421 /* ~The guards should pull themselves together. Why are there still thieves roaming the streets?~ */
DO ~SetGlobal("FHThiefHater","LOCALS",1)~
== FHNATJ @422 /* ~I couldn't agree more, ma'am.~ */
EXIT

CHAIN IF WEIGHT #-1 ~Global("FHBridgeHalfling","LOCALS",0)
See("Nath")
InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BFTOWN3 FHBridgeHalfling
@423 /* ~Eeek! Your swords look awfully sharp ...you're not going to poke me with them, are you?~ */
DO ~SetGlobal("FHBridgeHalfling","LOCALS",1)~
== FHNATJ @424 /* ~No, of course not. What sort of criminal do you take me for?~ */
EXIT

INTERJECT_COPY_TRANS BHARVAL 26 FHLathanderBeholder
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@425 /* ~Whether for Lathander's church or for any other, killing that Beholder's the right thing to do.~ */
END

I_C_T2 BHGAAL01 0 FHEyelessSoldiers
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@426 /* ~No, it's you who'll be destroyed, and your despicable cult with you!~ */
END

INTERJECT_COPY_TRANS BHNALLA 5 FHTalosBeholder
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@427 /* ~It's not a matter of taking power. It's a matter of doing what's right.~ */
END

INTERJECT_COPY_TRANS BHOISIG 19 FHHelmBeholder
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@428 /* ~I'm glad we're doing this - the servants of Helm deserve our loyalty. And that leader in the street was nothing but a power-mad zealot!~ */
END

INTERJECT_COPY_TRANS BHOISIG 39 FHHelmStronghold
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@429 /* ~<CHARNAME> - I don't know what to say! Joining the temple of Helm ... it's so admirable ... you truly are a great <PRO_MANWOMAN>.~ */
END

INTERJECT_COPY_TRANS BMTHIEF 0 FHBlackmarketthief
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@430 /* ~"Fallen into her hands"? <CHARNAME>, I hope you're not going to take advantage of this.~ */
END

CHAIN IF WEIGHT #-1 ~Global("FHBMTown1","LOCALS",0)
See("Nath")
InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BMTOWN1 FHBMTown1
@431 /* ~Hoy! You there, pretty-boy! All yer kind should be hung!~ */
DO ~SetGlobal("FHBMTown1","LOCALS",1)~
== FHNATJ
@432 /* ~I ... I didn't do anything to offend you. Please leave me alone.~ */
EXIT

INTERJECT_COPY_TRANS2 BMUGG1 2 FHBridgeMugger
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@433 /* ~We will! You're not going to terrorise this city any longer!~ */
END

INTERJECT_COPY_TRANS2 BOANASTE 10 FHValen1
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@434 /* ~I ... <CHARNAME> ... I had a bad feeling about her ... I don't know what it was, but... Ah, it's probably nothing.~ */
END

INTERJECT_COPY_TRANS BODHI 1 FHBodhiIntro
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@435 /* ~This is wrong, <CHARNAME>! Just being here with this ... this woman ... scares me.~ */
END

INTERJECT_COPY_TRANS BODHI 6 FHBodhiOffer
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@436 /* ~<CHARNAME>. The feeling in this place ... I can't be here much longer...~ */
END

INTERJECT_COPY_TRANS BODHI 18 FHBodhiLeave
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@437 /* ~You've made your bed and you'll sleep in it. Goodbye, <CHARNAME>. If you want to make deals with these creatures you'll do it without me!~ */
DO
~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeArea()~
END

INTERJECT_COPY_TRANS BOGRE1 1 FHOgre
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@438 /* ~<CHARNAME> won't give you anything, you brute!~ */
END

INTERJECT_COPY_TRANS BORINALL 13 FHBorinall
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@439 /* ~That was really stupid, <CHARNAME>! Talos could have done something much worse to you!~ */
END

INTERJECT_COPY_TRANS BOUNHA 4 FHBounha
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@440 /* ~I'm sure we could find others who need our help more than these people ... but it's not fair to let them down.~ */
END

CHAIN IF WEIGHT #-1 ~Global("FHBProst1","LOCALS",0)
InParty("Nath")~ THEN BPROST1 FHBProst1
@441 /* ~Oooo, you are a fine one, aren't you? Come to my rooms, sweetheart, and I'll show you the meaning of a good time.~ */
DO ~SetGlobal("FHBProst1","LOCALS",1)~
== FHNATJ
@443 /* ~I ... I'm not the kind of man you're looking for, madam. I don't sleep with women.~ */
== BPROST1
@442 /* ~Just my luck. Well, if you see any nice-looking men about, send them to me. Don't keep them to yourself!~ */
EXIT

CHAIN IF WEIGHT #-1 ~Global("FHBrat1","LOCALS",0)
InParty("Nath")~ THEN BRAT1 FHBrat1
@444 /* ~Hey, you! Can you go beat up my sister?~ */
DO ~SetGlobal("FHBrat1","LOCALS",1)~
== FHNATJ
@445 /* ~No! Maybe you should try to get on better with her.~ */
EXIT

CHAIN IF WEIGHT #-1 ~Global("FHBrat2","LOCALS",0)
InParty("Nath")~ THEN BRAT2 FHBrat2
@446 /* ~You sure are handsome, mister. I want to marry you when momma says I can!~ */
DO ~SetGlobal("FHBrat2","LOCALS",1)~
== FHNATJ
@449 /* ~Thanks for the offer, but my affections are for other kinds of people.~ */
== BRAT2
@447 /* ~You mean like h-a-r-l--~ */
== FHNATJ
@450 /* ~No, like other men.~ */
== BRAT2
@448 /* ~Ewwww!~ */
EXIT

INTERJECT_COPY_TRANS BREG01 2 FHVisaj
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@453 /* ~I can't imagine that we'd want anything from this man. Let's not get involved.~ */
END

INTERJECT_COPY_TRANS BRUS3 2 FHBrus
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@454 /* ~I never thought I'd say this, but ... I think the thief might be our best bet. I don't know why, but ... that woman gave me the shivers.~ */
END

CHAIN IF WEIGHT #-1 ~Global("FHBSailor2","LOCALS",0) InParty("Nath")~ THEN BSAILOR2 FHBSailor2
@455 /* ~Hey, you! Feel like five minutes in an alley?~ */
DO ~SetGlobal("FHBSailor2","LOCALS",1)~
== FHNATJ
@456 /* ~Me? What kind of-- Leave me alone!~ */
EXIT

INTERJECT_COPY_TRANS BSHOP01 1 FHBShop01
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@457 /* ~I'm sure there are better places for us to get equipment from, <CHARNAME>. Can't we go to them?~ */
END

CHAIN IF WEIGHT #-1 ~Global("FHBurch1","LOCALS",0)
InParty("Nath")~ THEN BURCH1 FHBurch1
@458 /* ~Why are you scowling, mister? Ma says if the wind changes you'll stay like it!~ */
DO ~SetGlobal("FHBurch1","LOCALS",1)~
== FHNATJ @459 /* ~I'm not scowling ... I was just thinking. Run along, now.~ */
EXIT

CHAIN IF WEIGHT #-1 ~Global("FHBurch2","LOCALS",0)
InParty("Nath")~ THEN BURCH2 FHBurch2
@460 /* ~MY MOTHER SAYS THAT GUARDS ARE NO-GOOD LAYABOUTS!~ */
DO ~SetGlobal("FHBurch2","LOCALS",1)~
== FHNATJ @461 /* ~That's not true! Your mother should-- Oh, go away!~ */
EXIT

INTERJECT_COPY_TRANS C6CLER1 0 FHLathanderClericHelp
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@478 /* ~Thank you for this help against these ... these things. I know Lathander will be proud of you.~ */
END

INTERJECT_COPY_TRANS C6CLER2 0 FHHelm
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@479 /* ~Thank you so much for your help, sir. I know that Helm's watching over us, and he's proud of you.~ */
END

INTERJECT_COPY_TRANS C6ERIC 0 FHEric
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@480 /* ~Thank you so much for your help, sir. I know that your goodness will stop these ... these creatures from doing their evil.~ */
END

INTERJECT_COPY_TRANS C6WILL 0 FHReirrac
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@480 /* ~Thank you so much for your help, sir. I know that your goodness will stop these ... these creatures from doing their evil.~ */
END

INTERJECT_COPY_TRANS2 CALAHA 17 FHCalahan
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@481 /* ~I'm glad those children will have a good life now despite their troubles.~ */
END

INTERJECT_COPY_TRANS CECHALLE 12 FHVerthan
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@482 /* ~Well done, <CHARNAME>. I admit, a lot of that went over my head, but I can tell you're a credit to the druid way of life.~ */
END

INTERJECT_COPY_TRANS2 CEDERIL 5 FHDeril
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@483 /* ~He had no idea that Galia was with child and she didn't tell him! How can he be blamed for this?~ */
END

INTERJECT_COPY_TRANS2 CELICH 1 FHCerndLich
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@484 /* ~I ... what just happened there...? Well, at least we got the child.~ */
END

INTERJECT_COPY_TRANS CELOGAN 10 FHLoganGiveQuest
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@485 /* ~I'm sure that <CHARNAME> will do anything to help.~ */
END

CHAIN IF WEIGHT #-1 ~See("Nath")
InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHCelvan","AR0300",0)~ THEN CELVAN FHCelvan
@486 /* ~There once was a guard from the Gate,
An abandoning thief was his mate,
He looked far and wide
But the thief he did hide
And now he's without a date.~ */ /* ~There once was a guard from the Gate,
An abandoning thief was his mate,
He looked far and wide
But the thief he did hide
And now he's without a date.~ */
DO ~SetGlobal("FHCelvan","AR0300",1)~
== FHNATJ @487 /* ~What? Are you talking about me? How do you--~ */
EXTERN CELVAN 1

INTERJECT_COPY_TRANS CENANNY 7 FHFennecia
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@488 /* ~But he didn't run off! They agreed--~ */
END

INTERJECT_COPY_TRANS CERND 7 FHCerndAlarm
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@489 /* ~They alarm me, too. Attacking innocent merchants is a crime, whether or not druids are involved!~ */
END

INTERJECT_COPY_TRANS CERND 71 FHCernd
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@490 /* ~<CHARNAME>! You can't be thinking of handing this man to the mobs?~ */
END

INTERJECT_COPY_TRANS2 CIRCG1 3 FHCircusGuard
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@491 /* ~<CHARNAME>, maybe we should leave this to the Cowled Wizards. It's their job to deal with things like this.~ */
END

CHAIN IF WEIGHT #-1 ~Global("FHMiranda","LOCALS",0)
Name("Nath",LastTalkedToBy)~ THEN CLMOM FHMiranda
@492 /* ~You!  I know you!  This child, here, is yours!!  It is time that you paid your dues for your foolish behaviour!!~ */
DO ~SetGlobal("FHMiranda","LOCALS",1)~
== FHNATJ
@494 /* ~No, she's not, ma'am.~ */
== CLMOM
@495 /* ~You were deep in your cups on that eve. I'm not surprised that you don't recall it.~ */
== FHNATJ
@496 /* ~I don't drink! Please leave me be, ma'am.~ */
== CLMOM
@497 /* ~How dare you treat the mother of your child in this manner!!  HELP!!  HELLLP!!  THIS FIENDISH BRUTE IS ATTEMPTING TO CHEAT HIS OWN BLOOD!!~ */
== FHNATJ
@498 /* ~Sssh, please! You're drawing attention!~ */
== CLMOM
@499 /* ~And why should I not when the father of my child is behaving so irresponsibly?!~ */
== FHNATJ
@500 /* ~Look, there's been some mistake. I'm ... I don't ... I've never been with a woman. I prefer men.~ */
== CLMOM
@501 /* ~Oh. Hmph. Fair enough, then. Off you go.~ */
EXIT

APPEND CLMOM
IF WEIGHT #1
~Global("FHMiranda","LOCALS",1)
Name("Nath",LastTalkedToBy)~ FHMiranda2
SAY @493 /* ~Oh, it's you again. Be on with you.~ */
IF ~~ EXIT
END
END

CHAIN IF WEIGHT #-1 ~See("Nath")
InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHBlackLotusUser","LOCALS",0)~ THEN COPCUST1 FHBlackLotusUser
@502 /* ~Mmmmmmm ... hello, darling. Care to join us?~ */
DO ~SetGlobal("FHBlackLotusUser","LOCALS",1)~
== FHNATJ @221 /* ~No, I wouldn't. And keep your filthy goods away from me. <CHARNAME>, can we go somewhere else?~ */
EXIT

INTERJECT_COPY_TRANS COPGREET 1 FHCopGreet
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@503 /* ~This is terrible, <CHARNAME>. Isn't there something we can do to stop it?~ */
END

INTERJECT_COPY_TRANS COR 2 FHCor
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@504 /* ~Maybe you should begin to respect him if you want him to obey you!~ */
END

INTERJECT_COPY_TRANS COR 25 FHCorNothing
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@505 /* ~Don't listen, Anomen. You're something, you're someone. You've managed to break out of this - this hell!~ */
END

INTERJECT_COPY_TRANS COR 34 FHCorStay
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@506 /* ~Don't, Anomen. You ... you shouldn't be around him any more than you have to be.~ */
END

INTERJECT_COPY_TRANS CORGEIG 22 FHNaliaQuest
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@507 /* ~Protective measure. Hah.~ */
END

INTERJECT_COPY_TRANS CORGEIG 31 FHNaliaQuest2
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@508 /* ~Excellent. It's good to know that some criminals are convicted in this city.~ */
END

INTERJECT_COPY_TRANS CORNEIL 8 FHCorneil
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@509 /* ~Monetary ... sacrifice? A bribe? But that's-- (sigh) Sorry, <CHARNAME>, I know I should get used to this kind of thing but somehow it always rattles me.~ */
END

CHAIN IF WEIGHT #-1 ~See("Nath")
InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHCounsec","LOCALS",0)~ THEN COUNSEC FHCounsec
@510 /* ~I'm sure that anyone would agree that the Council does an admirable job in governing the city.~ */
DO ~SetGlobal("FHCounsec","LOCALS",1)~
== FHNATJ @220 /* ~And I'm sure that anyone would agree that the corruption among the guards has to be seen to be believed.~ */
EXIT

INTERJECT_COPY_TRANS CROTHF01 10 FHAulava
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@511 /* ~You'd think people would have more sense!~ */
END

INTERJECT_COPY_TRANS CRTHF03 10 FHCrookedCrane
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@512 /* ~Alight...? <CHARNAME>, I thought it was just a joke when we spoke to them ... I should have warned you not to encourage them!~ */
END

INTERJECT_COPY_TRANS CSGAAL 6 FHTempDistGaal
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@513 /* ~This is ridiculous! What's this fanatic trying to do here?~ */
END

CHAIN IF WEIGHT #-1 ~InPartySlot(LastTalkedToBy,0)
OR(2)
Global("NathRomanceActive","GLOBAL",2)
Global("FHNathRomance","GLOBAL",1)
InParty("Nath")~ THEN DADROW21 FHDrowMasseur
@514 /* ~I greet you, <MALEFEMALE>, by the Dark Mother and the pleasure her children are entitled to. Here we breathe spices of luxury and enjoy the fruits of our conquests.~ */
=
@515 /* ~I have been trained in the temples to master the arts of oiled massage and other exotic pleasures, both to repair the aura and calm the soul.~ */
=
@516 /* ~It is a lengthy process, but a night under my care is worth a fortnight of rest in the finest boudoir... if one has the time for such a diversion, of course.~ */
== FHNATJ
@519 /* ~(whisper) Veldrin, I don't want you to do this. He has an expression of - of - I don't know, but I don't like it when he looks at you like that.~ */
END
++ @520 /* ~(whisper) All right, Nathaniel, I won't... I've changed my mind, male. I won't need your services.~ */ EXTERN DADROW21 FHMasseurDrow_no
++ @521 /* ~(whisper) Don't be silly. I need to act the part while we're here... Show me your skills, male.~ */ DO ~ApplySpell(Player1,CLERIC_CURE_SERIOUS_WOUNDS)
RestParty()~ EXIT
++ @522 /* ~Silence, male! I shall do as I wish.~ */ EXTERN FHNATJ FHMasseurDrow_yes

CHAIN DADROW21 FHMasseurDrow_no
@517 /* ~As you wish.  The lust chambers are available to all who wish them, and here all is permissible in the greater name of the Dark Mother.~ */
EXIT

CHAIN IF WEIGHT #-1 ~Name("Nath",LastTalkedToBy)~ THEN DADROW21 FHNathNoMassage
@514 /* ~I greet you, <MALEFEMALE>, by the Dark Mother and the pleasure her children are entitled to. Here we breathe spices of luxury and enjoy the fruits of our conquests.~ */
=
@515 /* ~I have been trained in the temples to master the arts of oiled massage and other exotic pleasures, both to repair the aura and calm the soul.~ */
=
@516 /* ~It is a lengthy process, but a night under my care is worth a fortnight of rest in the finest boudoir... if one has the time for such a diversion, of course.~ */
END
++ @518 /* ~I don't think I'd be interested in anything like that.~ */ EXTERN DADROW21 3

CHAIN FHNATJ FHMasseurDrow_yes
@523 /* ~(whisper) You could at least have-- Oh, never mind.~ */
DO ~ApplySpell(Player1,CLERIC_CURE_SERIOUS_WOUNDS)
RestParty()~ EXIT

INTERJECT_COPY_TRANS MAZZYJ 9 FHDanno
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@524 /* ~That was nasty, <CHARNAME>. It wouldn't have taken much work to go to help her family.~ */
END

INTERJECT_COPY_TRANS2 DCLERIC 4 FHCyricCleric
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@525 /* ~<CHARNAME>! Don't tempt fate like that - what if Cyric strikes you down?~ */
END

INTERJECT_COPY_TRANS2 DELON 15 FHDelUmar
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@526 /* ~I have to say I'm not looking forward to going to the countryside, but ... if these people need help, we should get to - where was it? - Imnesvale soon.~ */
END

INTERJECT_COPY_TRANS DELON 22 FHDelonOgres
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@527 /* ~We should hurry, <CHARNAME>. The whole village is at risk if we don't get there quickly.~ */
END

INTERJECT_COPY_TRANS DELON 36 FHUmarReturned
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@528 /* ~That doesn't sound very likely. It's probably some child being scared by a shadow.~ */
END

CHAIN IF WEIGHT #-1 ~InParty("Nath")
Global("FHDeltow01","LOCALS",0)~ THEN DELTOW01 FHDeltow01
@529 /* ~Hey! What's that pretty-boy doing in here? Watch out, he'll have the trousers off you in an instant!~ */
DO ~SetGlobal("FHDeltow01","LOCALS",1)~
== FHNATJ @530 /* ~Oh, for heavens' sake. Look, I'm not that sort of man!~ */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("Nath")
Global("FHDeltow02","LOCALS",0)~ THEN DELTOW02 FHDeltow2
@531 /* ~Oooh! You've the look of a military man! Mmmm, has anyone ever told you what a gorgeous--~ */
DO ~SetGlobal("FHDeltow02","LOCALS",1)~
== FHNATJ @532 /* ~Actually, yes, and would you mind moving your hand?~ */
EXIT

INTERJECT_COPY_TRANS DEMSON 118 FHDemson
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@533 /* ~I can't outdo that, so I'll just say well done!~ */
END

CHAIN IF WEIGHT #-1 ~InParty("Nath")
Global("FHDFTOWN1","LOCALS",0)~ THEN DFTOWN1 FHDFTOWN1
@534 /* ~Cheer up, kiddie. The world ain't goin' to end anytime soon.~ */
DO ~SetGlobal("FHDFTOWN1","LOCALS",1)~
== FHNATJ
@535 /* ~Thank you, ma'am, but... (sigh)~ */
EXIT

INTERJECT_COPY_TRANS2 DHARLOT2 9 FHDHarlot2
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@536 /* ~That was a good thing to do, <CHARNAME>. I'm glad one person in this place has good luck.~ */
END

INTERJECT_COPY_TRANS2 DLOST 4 FHDLost
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@537 /* ~I just hope she can find her way home.~ */
END

INTERJECT_COPY_TRANS JAHEIRAJ 91 FHDrenden
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@538 /* ~Sssh, Jaheira, don't try to talk.~ */
END

INTERJECT_COPY_TRANS YOSHJ 57 FHRuff2
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@539 /* ~Yoshimo! That was uncalled for!~ */
END

INTERJECT_COPY_TRANS EDWIN 34 FHEdwinRayic
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@540 /* ~Killing a Cowled Wizard! <CHARNAME>, that's wrong. What's more, he's bound to be dangerous!~ */
END

INTERJECT_COPY_TRANS2 EMBARL 6 FHEmbarl
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@541 /* ~Well, I suppose that was the best thing to do. I mean, I'm sure he didn't deserve whatever Mae'var was going to do to him ... though you could have handed him over to the guards.~ */
END

INTERJECT_COPY_TRANS2 JAHEIRAJ 356 FHFirkraagOffer
== FHNATJ
IF ~InParty("Nath")
!InParty("Nalia")~ THEN
@542 /* ~Hmm, it's all right in principle, I suppose, but shouldn't his own forces be doing something about the ogres? Besides, the countryside's so - so chaotic.~ */
END

CHAIN IF WEIGHT #-1 ~IsGabber("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN FAMIL1 FHFamil1
@543 /* ~The dragon-like creature purrs and its eyes flicker warmly. "Greetings, lover of <CHARNAME>."~ */
EXIT

CHAIN IF WEIGHT #-1 ~IsGabber("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN FAMIL3 FHFamil2
@544 /* ~The furry creature's eyes narrow suspiciously. "So you're the one who pets <CHARNAME>. Tell him to pet *me* more."~ */
EXIT

INTERJECT_COPY_TRANS2 FIRKRA02 21 FHFirRun
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@545 /* ~That's right, <CHARNAME>, walk slowly, don't make him angry ... just get the child and get out of here!~ */
END

INTERJECT_COPY_TRANS2 FIRKRA02 0 FHFirSee
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@546 /* ~What! Firkraag's a dragon?!~ */
END

INTERJECT_COPY_TRANS2 GAAL 14 FHGaal
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@547 /* ~This rod's bound to be somewhere dangerous, <CHARNAME> ... we should be on our guard.~ */
END

INTERJECT_COPY_TRANS GARKID01 13 FHGarkid
== FHNATJ
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)
Global("FHNathRomance","GLOBAL",1)~ THEN
@548 /* ~Er, <CHARNAME>, I'm sure this is all innocent, but maybe you should tell her about us?~ */
END

INTERJECT_COPY_TRANS2 GARREN 27 FHGarKilledKnights
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@549 /* ~We have to go and talk to Garren and get back the Order's good wishes, <CHARNAME>. If paladins come to battle us I won't fight them.~ */
END

INTERJECT_COPY_TRANS2 GARREN 22 FHGarKilledKnights2
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@550 /* ~Can you do anything to help, sir?~ */
END

INTERJECT_COPY_TRANS2 GARREN 35 FHGarrenChildKidnap
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@551 /* ~Then that's what we must do! Come on, <CHARNAME> - this kind of crime can't go unpunished!~ */
END

INTERJECT_COPY_TRANS2 GIRL2 5 FHSlaveGirl
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@552 /* ~That was a wonderful thing to do, <CHARNAME>. I just hope that they find their way home.~ */
END

CHAIN IF WEIGHT #-1 ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHGlad2","LOCALS",0)~ THEN GLAD2 FHGlad2
@553 /* ~Please help us! We are being kept to be killed!~ */
DO ~SetGlobal("FHGlad2","LOCALS",1)~
== FHNATJ @554 /* ~We've got to help them, <CHARNAME>! Please, we have to stop this!~ */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHGMTOWN02","LOCALS",0)~ THEN GMTOWN02 FHGMTOWN2
@555 /* ~Hey, you've got nice swords! Are you in the army? That's the best thing ever!~ */
DO ~SetGlobal("FHGMTOWN02","LOCALS",1)~ 
== FHNATJ
@556 /* ~I used to be a guard, which was better. In the army you're fighting wars, not fighting for the law.~ */
EXIT

INTERJECT YOSHJ 87 FHYoshiStealNoble
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@557 /* ~Is this it? Here you go, sir. It'd be a shame if some thief stole it.~ */
EXTERN GNOBLEM2 8

INTERJECT_COPY_TRANS HELLJON 7 FHLastIrenicusRom
== FHNATJ
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN
@558 /* ~The man I love suffered because of you, and he's not going to be hurt any more! We've killed you once and we'll kill you again!~ */   
END

INTERJECT_COPY_TRANS HELLJON 8 FHLastIrenicusRom
== FHNATJ
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN
@558 /* ~The man I love suffered because of you, and he's not going to be hurt any more! We've killed you once and we'll kill you again!~ */   
END

INTERJECT_COPY_TRANS HELLJON 9 FHLastIrenicusRom
== FHNATJ
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN
@558 /* ~The man I love suffered because of you, and he's not going to be hurt any more! We've killed you once and we'll kill you again!~ */   
END

INTERJECT_COPY_TRANS HELLJON 10 FHLastIrenicusRom
== FHNATJ
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN
@558 /* ~The man I love suffered because of you, and he's not going to be hurt any more! We've killed you once and we'll kill you again!~ */   
END

INTERJECT_COPY_TRANS HELLJON 7 FHLastIrenicusFriend
== FHNATJ
IF ~InParty("Nath")
Global("NathFriend","GLOBAL",1)~ THEN
@559 /* ~You're not going to hurt my friend any more! We've killed you once and we'll kill you again!~ */   
END

INTERJECT_COPY_TRANS HELLJON 8 FHLastIrenicusFriend
== FHNATJ
IF ~InParty("Nath")
Global("NathFriend","GLOBAL",1)~ THEN
@559 /* ~You're not going to hurt my friend any more! We've killed you once and we'll kill you again!~ */   
END

INTERJECT_COPY_TRANS HELLJON 9 FHLastIrenicusFriend
== FHNATJ
IF ~InParty("Nath")
Global("NathFriend","GLOBAL",1)~ THEN
@559 /* ~You're not going to hurt my friend any more! We've killed you once and we'll kill you again!~ */   
END

INTERJECT_COPY_TRANS HELLJON 10 FHLastIrenicusFriend
== FHNATJ
IF ~InParty("Nath")
Global("NathFriend","GLOBAL",1)~ THEN
@559 /* ~You're not going to hurt my friend any more! We've killed you once and we'll kill you again!~ */   
END

INTERJECT_COPY_TRANS HELLJON 7 FHLastIrenicusComp
== FHNATJ
IF ~InParty("Nath")
!Global("NathRomanceActive","GLOBAL",2)
!Global("NathFriend","GLOBAL",1)~ THEN
@560 /* ~We've killed you once and we'll kill you again, you bastard! You're not going to cause any more harm!~ */   
END

INTERJECT_COPY_TRANS HELLJON 8 FHLastIrenicusComp
== FHNATJ
IF ~InParty("Nath")
!Global("NathRomanceActive","GLOBAL",2)
!Global("NathFriend","GLOBAL",1)~ THEN
@560 /* ~We've killed you once and we'll kill you again, you bastard! You're not going to cause any more harm!~ */   
END

INTERJECT_COPY_TRANS HELLJON 9 FHLastIrenicusComp
== FHNATJ
IF ~InParty("Nath")
!Global("NathRomanceActive","GLOBAL",2)
!Global("NathFriend","GLOBAL",1)~ THEN
@560 /* ~We've killed you once and we'll kill you again, you bastard! You're not going to cause any more harm!~ */   
END

INTERJECT_COPY_TRANS HELLJON 10 FHLastIrenicusComp
== FHNATJ
IF ~InParty("Nath")
!Global("NathRomanceActive","GLOBAL",2)
!Global("NathFriend","GLOBAL",1)~ THEN
@560 /* ~We've killed you once and we'll kill you again, you bastard! You're not going to cause any more harm!~ */   
END

INTERJECT_COPY_TRANS HENDAK 2 FHHendak
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@561 /* ~We've got to do something about this, <CHARNAME>! People being bought and sold as property ... it's terrible!~ */
END

INTERJECT_COPY_TRANS2 HIDDEN 13 FHHidden
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@562 /* ~But ... but how did Uncle Gerhardt know about all this? And what was ... one of those things doing in the city?~ */
END

INTERJECT_COPY_TRANS INSPECT 13 FHAeg
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@563 /* ~Gods, <CHARNAME>, anyone as evil as whoever's doing this has to be stopped!~ */
END

INTERJECT_COPY_TRANS IMOEN2 22 FHLeaveImoen
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@564 /* ~<CHARNAME>, I'm not going to let your ... sister? ... die here. I'll do better than she would - leave me and take her with you. Please.~ */
END

INTERJECT_COPY_TRANS JANJ 136 FHJanBribe
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@565 /* ~I can't believe that the councilmen take bribes in this city. Especially for such pointless matters.~ */
== JANJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@566 /* ~Oh, Nathy, don't look so pale. Once you've been acquainted with the ways of the world you won't bat an eyelid!~ */
END

INTERJECT_COPY_TRANS JAGALVAR 42 FHGalvarey
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@567 /* ~<CHARNAME>, I hope you realise that I've no intention of letting this maniac do that to you.~ */
END

INTERJECT_COPY_TRANS2 LEHTIN 10 FHLeht
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@568 /* ~So this is what happens when the guards aren't doing their job. This place makes me sick.~ */
END

INTERJECT_COPY_TRANS2 LUSETTE 11 FHLusette
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@569 /* ~Even if they think it's for the "balance", those Harpers shouldn't take the law into their own hands like that!~ */
END

INTERJECT_COPY_TRANS2 MADAM 6 FHMadam
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@570 /* ~<CHARNAME>, you're not seriously considering...? It's disgusting!~ */
END

CHAIN IF WEIGHT #-1 ~Name("Nath",LastTalkedToBy)~ THEN DADROW23 FHDrowWoman
@571 /* ~I welcome you to the lust chambers, male. I do so adore the presence of new blood... especially in such a handsome form, and with such battle prowess, I hear.~ */
=
@572 /* ~You come from Ched Nasad.  I have heard that the Nasadrans are stuffy and conservative.  I am intrigued to see if this matter is the truth or not.~ */
=
@573 /* ~Come, male.  I demand that you please me.  I have fought long in the Society for Lolth's valor, and I am in need of a reprieve for a night.~ */
END
++ @574 /* ~Though you are, ah, beautiful... I am not interested.  Sorry.~ */ EXTERN DADROW23 4
++ @575 /* ~No!  I have no interest in one such as you!  Do not disgust me!~ */ EXTERN DADROW23 5

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
Name("Nath",LastTalkedToBy)~ THEN MADAM FHMadam
@576 /* ~Greetings, my <LADYLORD>.  I am Madame Nin, and I am here to ensure you are pleasantly accompanied.  Are you interested in companionship, my <LADYLORD>?~ */
END
++ @577 /* ~Um... perhaps I had best be on my way.  Please excuse me.~ */ EXTERN MADAM 1

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)
Name("Nath",LastTalkedToBy)~ THEN MADAM FHMadam2
@578 /* ~So ... do you wish a companion for the evening, then?~ */
END
++ @579 /* ~Actually, no. Please excuse me.~ */ EXTERN MADAM 2
++ @580 /* ~Er, no.  I will be on my way.~ */ EXTERN MADAM 1

CHAIN IF WEIGHT #-1 ~InPartySlot(LastTalkedToBy,0)
OR(2)
Global("FHNathRomance","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)
InParty("Nath")~ THEN MADAM FHMadamRomance
@576 /* ~Greetings, my <LADYLORD>.  I am Madame Nin, and I am here to ensure you are pleasantly accompanied.  Are you interested in companionship, my <LADYLORD>?~ */
== FHNATJ @581 /* ~<CHARNAME> ... you know how I feel about this. Please, don't do it.~ */
EXTERN MADAM 17

INTERJECT_COPY_TRANS MARIA 5 FHMaria
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@582 /* ~Oh ... goodness ... maybe we shouldn't be here? It's not for us to intrude...~ */
END

INTERJECT_COPY_TRANS MAZZY 20 FHMazzy
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@583 /* ~A dragon! It would be stupid to try to face it, <CHARNAME>.~ */
END

INTERJECT_COPY_TRANS2 MAZZY 6 FHMazzyNoFree
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@584 /* ~<CHARNAME>, we can't just leave her here! If you could live with yourself, I certainly couldn't!~ */
END

INTERJECT_COPY_TRANS2 NALIA 13 FHNaliaHelp
== FHNATJ
IF ~IsValidForPartyDialogue("Nath")~ THEN
@585 /* ~It's all very well to help people, but showing them how to help themselves is better ... sometimes they don't want assisting.~ */
END

INTERJECT_COPY_TRANS2 NALIA 14 FHNaliaHelp2
== FHNATJ
IF ~IsValidForPartyDialogue("Nath")~ THEN
@586 /* ~Helping people is good, but showing them how to help themselves is better ... sometimes they don't want to be helped.~ */
END

INTERJECT_COPY_TRANS NALIA 95 FHNaliaStrong
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@587 /* ~I hope you've thought about what a responsibility this is. If you don't do well at this, you could hurt so many people.~ */
END

INTERJECT_COPY_TRANS2 NEB 5 FHNebAttack
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@588 /* ~You disguised yourself but I know you now. You. You - how did you escape the prison? You MURDERING FIEND!~ */
END

CHAIN IF WEIGHT #-1 ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHNoble1","LOCALS",0)~ THEN NOBLE1 FHNoble1
@589 /* ~Ooh! You look the fighting sort. Are you going to enter the pit?~ */
DO ~SetGlobal("FHNoble1","LOCALS",1)~
== FHNATJ
@590 /* ~No. And being interested in this kind of thing is ghastly.~ */
EXIT

CHAIN IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("FHBODY")~ THEN OGHMONK1 FHOghmaMonk
@591 /* ~Have you come seeking wisdom from the Binder of What is Known? The Wise God stands ready.~ */
END
++ @592 /* ~No, thank you, I have no need of help at the moment.~ */ EXTERN OGHMONK1 5
++ @593 /* ~A friend is afflicted by vampirism.  An old book suggested that followers of Oghma might know something about that.~ */ EXTERN OGHMONK1 6

CHAIN IF WEIGHT #-1 ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHOriona","LOCALS",0)~ THEN ORIONA FHOriona
@594 /* ~Ah, you must be Belden's son! I've heard so much about you.~ */
DO ~SetGlobal("FHOriona","LOCALS",1)~
== FHNATJ
@596 /* ~P-pardon?~ */
== ORIONA
@597 /* ~Do not look so surprised, dear! I was in Baldur's Gate a week ago to spend some time with one of the Grand Dukes. Mmm, very pleasant he was, too...~ */
== FHNATJ
@598 /* ~A Grand Duke spent time with you?!~ */
== ORIONA
@599 /* ~Everyone has their little secrets, darling.~ */
== FHNATJ
@600 /* ~My father. How--~ */
== ORIONA
@601 /* ~I wouldn't know, sweetheart. I didn't see him up close. Still, he looked well.~ */
== FHNATJ
@602 /* ~Did you see anyone from the Fist? Archie Matheson, Devlyn Kennedy?~ */
== ORIONA
@603 /* ~Sorry. I don't move in those circles.~ */
== FHNATJ
@604 /* ~Oh. Never mind.~ */
== ORIONA
@605 /* ~Cheer up, dear. I'd offer you some time, but I heard that you don't appreciate women. If you change your mind, remember I'm here, yes?~ */
EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)
Name("Nath",LastTalkedToBy)~ THEN PIRCOR01 FHBrynWhore
@606 /* ~Well met! Are you looking for bit of fun? You seem to be a REAL man...~ */
END
++ @607 /* ~In fact, I am looking for a girl named Claire. I believe she's in your line of business.~ */ EXTERN PIRCOR01 5
++ @608 /* ~Why don't you tell me how I might get into your Guildhouse? I have business to discuss with Lady Galvena.~ */ EXTERN PIRCOR01 7
++ @609 /* ~Excuse me. I must be going.~ */ EXTERN PIRCOR01 13

INTERJECT_COPY_TRANS PIRCOR02 12 FHGinia
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@610 /* ~Disgusting. The Cowled Wizards should have a better sense of responsibility for their island.~ */
END

INTERJECT_COPY_TRANS2 PIRCOR04 1 FHBrynWhore2
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@611 /* ~No, a man like me could not use a girl's company. Please leave me alone.~ */
END

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)
Name("Nath",LastTalkedToBy)
Global("SanikPlot","GLOBAL",1)
Global("MedallionSearch","AR1600",0)
!Dead("pirmur01")~ THEN PIRCOR04 FHBrynWhore2_medallion
@612 /* ~A fine day to ye!  Would ye care for a decent night o' pleasure in me arms?  'Tis only a meagre cost, for so much, aye?~ */
END
++ @613 /* ~Actually, I'm looking for a girl named Claire.  Perhaps you know her?~ */ EXTERN PIRCOR04 6
++ @614 /* ~I'd prefer to know how to get into your guildhouse.  I have business to discuss with Lady Galvena.~ */ EXTERN PIRCOR04 32

INTERJECT_COPY_TRANS2 PIRMUR01 2 FHGal
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@615 /* ~You slavemistress! Your guards have gone the same way as you will!~ */
END

INTERJECT_COPY_TRANS PIRPIR07 1 FHDrunkPirate
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@616 /* ~(sigh) What is it about drinking that makes people tell bad jokes?~ */
END

INTERJECT_COPY_TRANS PIRSEA01 0 FHPirate
== FHNATJ
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@617 /* ~A criminal hideout? This city gets worse the more I see of it.~ */
END

INTERJECT Player1 3 FHSlayerDizzy
== FHNATJ
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN
@618 /* ~Do you want to lean on me, <CHARNAME>? Or we could rest for a little while if you want. No one's forcing you to carry on at such a pace.~ */
END
++ @619 /* ~Thank you, but I think we should press on. The sooner we get out of this place, the sooner my soul can be returned.~ */ EXTERN FHNATJ FHDizzy_Pity
++ @620 /* ~It was ... strange. I felt out of control for a moment. But it's passed now.~ */ EXTERN FHNATJ FHDizzy_passed
++ @621 /* ~It's all right. It was just a dizzy spell - probably a side-effect of the ritual.~ */ EXTERN FHNATJ FHDizzy_passed
++ @622 /* ~I'm not an invalid, Nathaniel. Kindly keep your pity to yourself.~ */ EXTERN FHNATJ FHDizzy_Pity

CHAIN FHNATJ FHDizzy_Pity
@623 /* ~As you wish, but I'm still keeping an eye on you. You shouldn't push yourself so hard.~ */
EXIT

CHAIN FHNATJ FHDizzy_passed
@624 /* ~Well, I'm glad it's gone, but I'm still keeping an eye on you. You shouldn't push yourself when you're in this state.~ */
EXIT

INTERJECT_COPY_TRANS Player1 5 FHSlayerNoRom
== FHNATJ
IF ~InParty("Nath")
OR(2)
Global("NathRomanceActive","GLOBAL",0)
Global("NathRomanceActive","GLOBAL",3)~ THEN
@625 /* ~<CHARNAME>! What - what was that? Was it something to do with your soul being gone? If I didn't know you I'd be running!~ */     
END

INTERJECT_COPY_TRANS Player1 5 FHSlayerRom
== FHNATJ
IF ~InParty("Nath")
OR(2)
Global("FHNathRomance","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)~ THEN
@626 /* ~<CHARNAME> ... I ... come here, let me hold you. We'll - we'll be able to stop this, I - I promise.~ */
END

INTERJECT Player1 7 FHSlayerWake
== FHNATJ
IF ~InParty("Nath")
See("Nath")
OR(2)
Global("FHNathRomance","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)~ THEN
@627 /* ~I'm glad you're awake. I stayed up to check that you'd be all right, but you were so restless. You look like a ghost - can I get you something?~ */
END
++ @628 /* ~Get back, Nathaniel! I think it's happening again!~ */
DO ~SetGlobal("EndangerLovedOne","GLOBAL",221)~ EXTERN FHNATJ FHDanger
++ @629 /* ~Thank you, but you shouldn't stand so close. I'm not sure I'm safe.~ */
DO ~SetGlobal("EndangerLovedOne","GLOBAL",221)~ EXTERN FHNATJ FHDanger
++ @630 /* ~Stay back, you idiot! I could turn into the Slayer at any moment!~ */
DO ~SetGlobal("EndangerLovedOne","GLOBAL",221)~ EXTERN FHNATJ FHDanger

CHAIN FHNATJ FHDanger
@631 /* ~<CHARNAME>? Speak a little louder? I-- No! <CHARNAME>!~ */
DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("Nath") Global("EndangerLovedOne","GLOBAL",221)~ THEN EXTERN Player1 12
END

INTERJECT Player1 10 FHEndanger
== FHNATJ IF ~InParty("Nath") Global("EndangerLovedOne","GLOBAL",221)~ THEN
@632 /* ~Oh ... thank goodness you're all right! How are you feeling?~ */
END
++ @633 /* ~I could have killed you, Nathaniel. I should leave, for your sake.~ */ EXTERN FHNATJ FHleave
++ @634 /* ~I tried to warn you what was going on, but I couldn't speak. I'm so sorry.~ */ EXTERN FHNATJ FHSorry
++ @635 /* ~Are you hurt at all?~ */ EXTERN FHNATJ FHhurt
++ @636 /* ~Aren't you scared? I could have killed you...~ */ EXTERN FHNATJ FHScare
++ @637 /* ~Thank you, Nathaniel. I ... I don't know who else would react so calmly.~ */ EXTERN FHNATJ FHThanks

CHAIN FHNATJ FHleave
@638 /* ~I'll ignore that comment, since it's the most ridiculous thing I've heard all <DAYNIGHT>. We'll get through this together, just like we have before.~ */
END
++ @639 /* ~But I attacked you! Are you hurt?~ */ + FHHurt2
++ @640 /* ~Aren't you scared? Next time we might not be so lucky!~ */ + FHScare2
++ @641 /* ~Thank you, Nathaniel. For being so understanding.~ */ + FHThanks2

CHAIN FHNATJ FHSorry
@642 /* ~Don't bother apologising, <CHARNAME>. You weren't in control of yourself. The important thing is that you're not losing yourself to that thing any longer.~ */
END
++ @640 /* ~Aren't you scared? Next time we might not be so lucky!~ */ + FHScare2
++ @643 /* ~Are you hurt?~ */ + FHHurt2
++ @644 /* ~Thank you. For being understanding.~ */ + FHThanks2

CHAIN FHNATJ FHhurt
@645 /* ~It's not important. You weren't in control of yourself. The important thing is that you're not losing yourself to that thing any longer.~ */
END
++ @640 /* ~Aren't you scared? Next time we might not be so lucky!~ */ + FHScare2
++ @646 /* ~I should leave, Nathaniel. I could have killed you.~ */ + FHLeave2
++ @647 /* ~I love you, Nathaniel. Thank you.~ */ + FHLove2
++ @644 /* ~Thank you. For being understanding.~ */ + FHThanks2

CHAIN FHNATJ FHScare
@648 /* ~I'm - I'm terrified, if you really want to know. But if I concentrate on making you better, I can ignore it. Do you see?~ */
END
++ @639 /* ~But I attacked you! Are you hurt?~ */ + FHHurt2
++ @649 /* ~I tried to tell you what was going on, but I couldn't speak. I'm so sorry.~ */ + FHHurt2
++ @650 /* ~I should leave the group, Nathaniel. For both of our sakes.~ */ + FHLeave2

CHAIN FHNATJ FHThanks
@651 /* ~I don't know about "calm", but it's my duty, <CHARNAME>. Also, if I try to take care of you, it'll stop me feeling so terrified about all the things that have happened.~ */
END
++ @639 /* ~But I attacked you! Are you hurt?~ */ + FHHurt2
++ @649 /* ~I tried to tell you what was going on, but I couldn't speak. I'm so sorry.~ */ + FHHurt2
++ @650 /* ~I should leave the group, Nathaniel. For both of our sakes.~ */ + FHLeave2

CHAIN FHNATJ FHLove
@652 /* ~I love you, too, with everything I am. And that won't change, no matter how many nasty spiked things you turn into.~ */
END
++ @643 /* ~Are you hurt?~ */ + FHHurt2
++ @653 /* ~I tried to warn you, but I couldn't speak. I'm so sorry.~ */ + FHHurt2
++ @654 /* ~I shouldn't abuse such strong love. I should leave, for both of our sakes.~ */ + FHLeave2
++ @655 /* ~Aren't you scared? Next time, we might not be so lucky.~ */ + FHScare2

CHAIN FHNATJ FHHurt2
@656 /* ~That's not important. The important thing is that you're not losing yourself to that thing any longer.~ */
=
@657 /* ~Now, let's get going. We're not going to be able to get you better by wasting time here. Can you walk all right?~ */
EXIT

CHAIN FHNATJ FHScare2
@658 /* ~I'm - I'm terrified. But if I concentrate on trying to make you feel better, I can ignore it. Do you see?~ */
=
@659 /* ~Now, let's get going. Wasting time here isn't going to fix things. Can you walk all right?~ */
EXIT

CHAIN FHNATJ FHLeave2
@660 /* ~I'm going to ignore that comment, <CHARNAME>. It's the most ridiculous thing I've heard all <DAYNIGHT>.~ */
=
@661 /* ~Now, let's get going. We're not going to be able to make you better by wasting time here. Can you walk all right?~ */
EXIT

CHAIN FHNATJ FHLove2
@662 /* ~I love you too, <CHARNAME>. Now, let's get going. We're not going to be able to get you better by wasting time here. Can you walk all right?~ */
EXIT

CHAIN FHNATJ FHThanks2
@663 /* ~It's my duty, <CHARNAME>. Also, if I try to take care of you, it'll stop me feeling so terrified about all the things that have happened.~ */
=
@664 /* ~Now, let's get going. We're not going to be able to fix this by wasting time here. Can you walk all right?~ */
EXIT

INTERJECT_COPY_TRANS Player1 15 FHLonkDead
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@665 /* ~We should go and see to those poor souls who were locked here. I don't like to think what they might do if they're let loose.~ */
END

INTERJECT_COPY_TRANS Player1 16 FHIrenicusDead
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@666 /* ~Finally. Finally, it's done! It almost seems like an anticlimax, but after all this time I just wanted it all to be over.~ */
END

INTERJECT_COPY_TRANS Player1 25 FHInHell
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@667 /* ~What? What happened? Where is this place? I was fighting beside you and Irenicus was dead, I was sure of it! And there was a ... a tugging, and the next thing I knew I was ... here. I hope you've got something up your sleeve to get us out, but I promise I'll stay at your side. Not that there's much choice!~ */
END

CHAIN IF WEIGHT #-1 ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHReligiousHomophobe","LOCALS",0)~ THEN POSTUL6 FHRH
@668 /* ~Oh, dear me. A pretty-boy. Why must you traipse around bringing your perversions here?~ */
DO ~SetGlobal("FHReligiousHomophobe","LOCALS",1)~
== FHNATJ 
@669 /* ~I am not perverted.~ */
== POSTUL6
@670 /* ~Oh, but you are! Didn't you know, you're going to Hell!~ */
== FHNATJ
@671 /* ~Leave me alone.~ */
== POSTUL6
@672 /* ~Oh look, he's pouting! Save it for your catamites, boy.~ */
== FHNATJ
@673 /* ~Leave. Me. Alone.~ */
== POSTUL6
@674 /* ~Oh, very well!~ */
DO ~ActionOverride("Postul6",RunAwayFrom("Nath",120))~
EXIT

INTERJECT_COPY_TRANS PPAPHRIL 4 FHAphril
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@675 /* ~My goodness ... it's ... I can't even imagine...~ */
END

INTERJECT_COPY_TRANS PPDILI 4 FHDili
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@676 /* ~Can we ... can we come away from her now?~ */
END

INTERJECT_COPY_TRANS2 PPDUEL1 5 FHPPDuel1
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@677 /* ~One less pirate around here is always a good thing.~ */
END

INTERJECT_COPY_TRANS2 PPDUEL2 5 FHPPDuel2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@677 /* ~One less pirate around here is always a good thing.~ */
END

INTERJECT_COPY_TRANS PPIMOEN 1 FHPPIm
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@678 /* ~Oh ... oh, <CHARNAME>, I'm sorry. I hope that - that there's a way to help her.~ */
END

INTERJECT_COPY_TRANS PPIRENI1 4 FHPPIreni
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@679 /* ~You don't need to "explain". I thought Amn would be better than this, but all I've seen is corruption, and this prison is the worst of it!~ */
END

INTERJECT_COPY_TRANS2 PPIRENI2 32 FHPPireni2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@680 /* ~You're the mad one, Irenicus! You're not going to hurt <CHARNAME> any more!~ */
END

INTERJECT_COPY_TRANS PPDILI 6 FHDili2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@676 /* ~Can we ... can we come away from her now?~ */
END

INTERJECT_COPY_TRANS PPAPHRIL 0 FHApril2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@681 /* ~Seeing everything...? My goodness ... it's ... I can't even imagine...~ */
END

INTERJECT_COPY_TRANS PPTIAX 6 FHTiax
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@682 /* ~Tiax! He was ranting in Baldur's Gate market for a time, but he didn't cause any harm. Most people just laughed at him.~ */
END

INTERJECT_COPY_TRANS YOSHJ 110 FHYoshimBetray1
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@683 /* ~E-explanation? What--~ */
END

INTERJECT_COPY_TRANS YOSHJ 111 FHYoshimBetray2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@684 /* ~Y-Yoshimo? What's--~ */
END

INTERJECT_COPY_TRANS YOSHJ 112 FHYoshimBetray3
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@685 /* ~Y-Yoshimo? What are you--~ */
END

INTERJECT_COPY_TRANS2 YOSHJ 113 FHYoshiBetray2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@686 /* ~I ... I trusted you ... even though you were a thief, because I thought you-- Now ... I know why you pretended you cared!~ */
END

INTERJECT_COPY_TRANS PPJOYE2 3 FHDace
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@687 /* ~Oh, gods ... to become a vampire? That's the worst thing-- <CHARNAME>, we have to do something!~ */
END

INTERJECT_COPY_TRANS2 PPSAEM 59 FHSaemonVamp
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@688 /* ~You've betrayed us to those creatures! You bastard!~ */
END

INTERJECT_COPY_TRANS PPTIAX 1 FHTiax2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@689 /* ~Tiax! Seeing you again takes me back... How are the world-conquering plans going?~ */
END

INTERJECT_COPY_TRANS2 HAERDAJ 6 FHHaerGem
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@690 /* ~Then you got us to steal that gem under false pretences! <CHARNAME>, they used us!~ */
END

INTERJECT_COPY_TRANS2 RANGER1 1 FHRanger
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@691 /* ~The murderer hires mercenaries to protect him from the law? So be it - they deserve to die, too!~ */
END

INTERJECT_COPY_TRANS2 VALRAN01 1 FHRanger2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@691 /* ~The murderer hires mercenaries to protect him from the law? So be it - they deserve to die, too!~ */
END

INTERJECT_COPY_TRANS2 RENAL 30 FHRenalMaevar
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@692 /* ~So we're to join a thief guild, <CHARNAME>? I don't like the way this is going...~ */
END

INTERJECT_COPY_TRANS2 RENFELD 6 FHRenfeld
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@693 /* ~Who would do something like that? We've got to help him!~ */
END

INTERJECT_COPY_TRANS RIFTM01 36 FHAmaunator
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@694 /* ~That creature ... used to be a *god*? I never thought I'd-- <CHARNAME>, travelling with you certainly is - is interesting!~ */
END

INTERJECT_COPY_TRANS2 ROGER 1 FHRoger
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@695 /* ~Hmm. I'd rather you didn't take advantage of this criminal. It only lets all the other thieves carry on their work.~ */
END

INTERJECT_COPY_TRANS RUFPAL2 5 FHRuf
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@696 /* ~(sigh) Couldn't you just have ignored him?~ */
END

INTERJECT_COPY_TRANS SAHKNG01 1 FHSah
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@697 /* ~The smell of this place almost makes me wish I was back in Athkatla.~ */
END

INTERJECT_COPY_TRANS SAHPR3 0 FHSah2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@698 /* ~As if there weren't enough prophecies about you already. I hate to say it, <CHARNAME>, but why does your life have to be so ... eventful?~ */
END

INTERJECT_COPY_TRANS2 SALVANAS 20 FHSalvanas
== FHNATJ IF ~InParty("Nath") Global("NathFriend","GLOBAL",1)~ THEN
@699 /* ~Leave <CHARNAME> alone. She doesn't want you bothering her.~ */
END

INTERJECT_COPY_TRANS SBWENCH 9 FHGracie
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@700 /* ~She seemed nice, Edwin. If you'd wanted, we could have left you to talk to her for a while.~ */
END

INTERJECT_COPY_TRANS2 SCTELWYN 28 FHTelwynScarles
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@701 /* ~I'm glad Helm isn't offended by all this. I was worried...~ */
END

INTERJECT_COPY_TRANS SLAVERM 0 FHSlaveGuard
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@702 /* ~They give money to the guards? And the guards *take* it?~ */
END

INTERJECT_COPY_TRANS2 SLILMAT 12 FHYoshiIlmater
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@703 /* ~Thank ... thank you for doing that, <CHARNAME>. I hope he can rest in peace.~ */
END

INTERJECT_COPY_TRANS2 SUJON 14 FHSuJon
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@704 /* ~You'll do nothing of the kind, you fiend! That soul's <CHARNAME>'s and we're going to get it back for <PRO_HIMHER>!~ */
END

INTERJECT_COPY_TRANS2 TANNER 18 FHTannerRunAway
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@705 /* ~He won't be able to run from justice for long! Come on, <CHARNAME>!~ */
END

INTERJECT_COPY_TRANS TIRDIR 2 FHTirdir
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@706 /* ~Who would do something like that? It's lucky that we happened to be here.~ */
END

INTERJECT_COPY_TRANS2 ANOMENJ 224 FHAnoTirdir
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@707 /* ~Normally I'd agree with you, but with something this horrible... And in this city, the garrison seem to fail when they're called upon.~ */
END

INTERJECT_COPY_TRANS2 THESHAL 3 FHTheshal
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@708 /* ~Well, I suppose it's good that they try. Still, I can't see it working.~ */
END

INTERJECT_COPY_TRANS TOLGER 75 FHTolger1
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@709 /* ~I think you should agree. It must be important if it needs to be kept so secret.~ */
END

INTERJECT_COPY_TRANS TOLGER 5 FHTolger2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@710 /* ~Think about it, <CHARNAME>. Why would a Cowled Wizard lie to us? Just agree and we can find out how to help.~ */
END

INTERJECT_COPY_TRANS TOLGER 76 FHTolger3
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@711 /* ~A job well done. That criminal won't trouble Amn any longer!~ */
END

INTERJECT_COPY_TRANS TOLGER2 0 FHTolger_betray
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@712 /* ~You - you lied to us!~ */
END

INTERJECT_COPY_TRANS TOLGER2 2 FHTolger_betray2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@712 /* ~You - you lied to us!~ */
END

INTERJECT_COPY_TRANS2 TRAX 7 FHTrax
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@713 /* ~Yes, he-- ouch!~ */
END

EXTEND_BOTTOM TRGYP02 2
IF
~!InPartySlot(LastTalkedToBy,0)
Name("Nath",LastTalkedToBy)~
THEN EXTERN TRGYP02 FHGypsy
END

CHAIN TRGYP02 FHGypsy
@714 /* ~Choices, choices, dear man ... do not let them overwhelm you. Voices from your past call to you, but do not succumb to fear, for that is your greatest enemy.~ */
== FHNATJ
@715 /* ~I ... I'm not sure what it means, but thank you all the same, ma'am.~ */
EXIT

INTERJECT_COPY_TRANS TRSKIN01 18 FHRaissa
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@716 /* ~<CHARNAME>, that was a really good thing to do. After all we've done here, I'm so glad to be in your company.~ */
END

CHAIN UDPHAE01 FHPhaereDisbelief
@717 /* ~The male who fights with you?! Surely you are not serious? Still, I will have him executed once I am Matron to be sure of you. In any case, if you do suffer such an inclination, a night with me is the best way to cure it.~ */
END
++ @718 /* ~Well, alright, it's not him ... it's, uh, someone else you don't know...~ */ EXTERN UDPHAE01 111
++ @719 /* ~But I still can't do this, Phaere...~ */ EXTERN UDPHAE01 101
++ @720 /* ~Well, perhaps it's not someone ... it's, ah, a more personal problem...~ */ EXTERN UDPHAE01 105
++ @721 /* ~Very well. It seems I have little choice.~ */ EXTERN UDPHAE01 103

INTERJECT UDSILVER 9 FHAdalon
== FHNATJ IF ~!InParty("Imoen2")
!InParty("Nalia")
InParty("Nath")~ THEN
@722 /* ~Lady ... you're so beautiful...~ */
END UDSILVER 58

CHAIN IF WEIGHT #-1 ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHUrchin1","LOCALS",0)~ THEN URCHIN1 FHUrchin1
@723 /* ~Ye sure looks like a pansy to me!~ */
DO ~SetGlobal("FHUrchin1","LOCALS",1)~
== FHNATJ
@724 /* ~(sigh) Where do you learn those words from?~ */
EXIT

INTERJECT_COPY_TRANS2 VALYGAR 28 FHValygarDead
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@725 /* ~A murderer can't die with honour! I fight with <CHARNAME>!~ */
END

INTERJECT_COPY_TRANS VALYGAR 43 FHValy1
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@726 /* ~Why should we believe him over the Cowled Wizards, <CHARNAME>? He's a murderer!~ */
END

INTERJECT_COPY_TRANS2 VALYGAR 44 FHValy2
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@727 /* ~<CHARNAME>, I hope you know what you're doing here. I can't see why you trust him - I certainly don't.~ */
== VALYGAR IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@728 /* ~And if you are as much on the wizards' side as you seem, I certainly do not trust *you*.~ */
END

INTERJECT_COPY_TRANS VICG1 2 FHVicFan
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@729 /* ~Oh, horrible. I hate seeing things like this ... people who are out of control seem to be capable of such cruelty.~ */
END

INTERJECT_COPY_TRANS2 VICONI 2 FHViconia
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@730 /* ~I know mobs are terrible, but ... I can't help thinking that they had a reason for taking this woman. I'm not sure we should trust her.~ */
END

CHAIN IF WEIGHT #-1 ~See("Nath")
InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHWaylane","LOCALS",0)~ THEN WAYLANE FHWaylane
@731 /* ~Hey! Hey, you! You in the green!~ */
DO ~SetGlobal("FHWaylane","LOCALS",1)~
== FHNATJ
@732 /* ~Are you speaking to me?~ */
== WAYLANE
@733 /* ~Yes, you! See this Sphere, here? See the way the gold burnishes?~ */
== FHNATJ
@734 /* ~Yes, I suppose it's quite pretty.~ */
== WAYLANE
@735 /* ~Yeah! Great conversation piece! Yours for only 500 gold!~ */
== FHNATJ
@736 /* ~But what would I do with it?~ */
== WAYLANE
@737 /* ~Well, it can ... marvellous storage space ... garden...~ */
== FHNATJ
@738 /* ~How can you sell something if you don't know what it does?~ */
== WAYLANE
@739 /* ~Well, I...~ */
== FHNATJ
@740 /* ~And another thing. Do you own this thing?~ */
== WAYLANE
@741 /* ~Well ... kind of...~ */
=
@742 /* ~(Stupid pretty-boy.)~ */
== FHNATJ
@743 /* ~Pardon?~ */    
== WAYLANE
@744 /* ~Nothing.~ */
EXIT

INTERJECT_COPY_TRANS UHKID02 1 FHDilbert
== FHNATJ IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@745 /* ~<CHARNAME>, if they're given those things there's no knowing what they might do...~ */
END

EXTEND_BOTTOM UDPHAE01 106
IF
~OR(2)
Global("NathRomanceActive","GLOBAL",2)
Global("FHNathRomance","GLOBAL",1)~ THEN REPLY
@746 /* ~My companion, Nathaniel.~ */ EXTERN UDPHAE01 FHPhaereDisbelief
END

//Quest dialogue

CHAIN IF WEIGHT #-1 ~InParty("Nath")
Global("TalkAvery","GLOBAL",0)
Global("FHBylanna","GLOBAL",0)~ THEN BYLANNA FHBylanna
@462 /* ~Good business to you.  Is there aught that I can help you with?~ */
DO ~SetGlobal("FHBylanna","GLOBAL",1)~
== FHNATJ @463 /* ~Yes, ma'am. I'm looking for a friend of mine, and I was wondering if the guards had seen him.~ */
== BYLANNA
@464 /* ~It is best for you to speak with Inspector Brega for that, sir. Good luck.~ */
== FHNATJ
@200 /* ~Thank you.~ */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("TalkAvery","GLOBAL",0)
Global("FHBylanna","GLOBAL",1)
Global("FHBrega","GLOBAL",0)~ THEN HABREGA FHBrega
@465 /* ~Is there something that you need, citizen?~ */
DO ~SetGlobal("FHBrega","GLOBAL",1)
SetGlobal("FHBregaUpset","GLOBAL",1)~
== FHNATJ
@467 /* ~Yes, please. I'm looking for a friend of mine, and Mistress Ianulin said you were the best person to speak to.~ */
== HABREGA
@468 /* ~She was right. What does this friend of yours look like?~ */
== FHNATJ
@469 /* ~He's fairly tall and dark... His name's Latimer Bryce--~ */
== HABREGA
@470 /* ~Ah. So you are a friend of his. Perhaps it is best if you are taken in for questioning.~ */
== FHNATJ
@471 /* ~No! You don't understand! I've done nothing wrong, I'm a guard-- Look. Do you have him here?~ */
== HABREGA
@472 /* ~No. He was arrested by one of my guards and escaped from custody a couple of weeks ago. Do you have any evidence that would help us?~ */
== FHNATJ
@473 /* ~No. No, I don't. I'm sorry to have bothered you.~ */
== HABREGA
@474 /* ~Hmm. Well, if you do find any sign of him, I'd be grateful if you returned and informed us.~ */
== FHNATJ
@475 /* ~I ... thank you for your help.~ */
EXIT

CHAIN IF WEIGHT #-1 ~InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("TalkAvery","GLOBAL",1)
Global("FHBryceHere","GLOBAL",0)
Global("FHBrega","GLOBAL",1)
Global("FHBrega2","GLOBAL",0)~ THEN HABREGA FHBrega2
@465 /* ~Is there something that you need, citizen?~ */
=
@466 /* ~Ah, it's you again. Have you seen anything of that friend of yours?~ */
DO ~SetGlobal("FHBrega2","GLOBAL",1)~
== FHNATJ
@476 /* ~No. But a Trademeet guard told me he ... had been killed.~ */
== HABREGA
@477 /* ~My thanks to you for informing us. He was a nuisance; you should not mourn overlong.~ */
EXIT

CHAIN IF ~Global("FHSeeBregaComplain","GLOBAL",1)~ THEN FHNATJ FHSeeBregaComplain
@222 /* ~<CHARNAME>, please could we get to the Council of Six building to ask about Latimer? It wouldn't take a moment.~ */
DO ~SetGlobal("FHSeeBregaComplain","GLOBAL",2)~ EXIT

CHAIN IF ~Global("FHBregaUpset","GLOBAL",2)~ THEN FHNATJ FHBregaUpset
@223 /* ~This ... isn't good. I knew he'd sunk low, but to be held in custody ... and not submit to justice! Thank you for coming here with me, <CHARNAME>, but I can't say that I'm happier for it...~ */
END
IF ~~ THEN UNSOLVED_JOURNAL @224 /* ~Nathaniel's search for Latimer
We have spoken to Inspector Brega, who told Nathaniel that Latimer was arrested recently and held in custody, but escaped a couple of weeks ago. Nathaniel seems downcast by the news.~ */ /* ~Nathaniel's search for Latimer
We have spoken to Inspector Brega, who told Nathaniel that Latimer was arrested recently and held in custody, but escaped a couple of weeks ago. Nathaniel seems downcast by the news.~ */
DO ~SetGlobal("FHBregaUpset","GLOBAL",3)~
EXIT

CHAIN IF ~Global("FHNathWorried","GLOBAL",1)~ THEN FHNATJ NathWorried
@240 /* ~<CHARNAME>, I hate to complain, but we should be going to see Avery. I know the sort of man he is - he wouldn't have contacted me unless it was about something important.~ */
END
++ @241 /* ~Of course, Nathaniel. There have just been things going on.~ */ DO ~SetGlobal("FHNathWorried","GLOBAL",2)~ + NathWorried_yes
++ @242 /* ~Look, I just don't have time to talk to him.~ */ DO ~SetGlobal("FHNathWorried","GLOBAL",2)~ + NathWorried_no

CHAIN FHNATJ NathWorried_yes
@243 /* ~Thank you. Let's get there quickly.~ */
END
IF ~~ THEN UNSOLVED_JOURNAL @244 /* ~Nathaniel has heard from Lieutenant Fairfax
Nathaniel feels that going to see Avery is important, and I have agreed to make my way as quickly as possible to Trademeet.~ */ /* ~Nathaniel has heard from Lieutenant Fairfax
Nathaniel feels that going to see Avery is important, and I have agreed to make my way as quickly as possible to Trademeet.~ */
EXIT

CHAIN FHNATJ NathWorried_no
@245 /* ~Then I'm afraid I have to leave you. Perhaps I will see you again.~ */
END
IF ~~ THEN SOLVED_JOURNAL @246 /* ~Nathaniel has heard from Lieutenant Fairfax
I was unable to accompany Nathaniel to see his old friend, so he has gone alone to Trademeet.~ */ /* ~Nathaniel has heard from Lieutenant Fairfax
I was unable to accompany Nathaniel to see his old friend, so he has gone alone to Trademeet.~ */
DO ~LeaveParty()
EscapeArea()~
EXIT

//Post-Avery dialogue bit

CHAIN FHNATJ NathLT12_signofweakness
@59 /* ~Are you sure? It's a sign of weakness - I wouldn't want--~ */
END
++ @60 /* ~Everyone's weak at times. Why should you be any different?~ */ + NathLT12_strong
++ @61 /* ~It's not as if I'm a paradigm of strength myself.~ */ + NathLT12_strong
++ @62 /* ~It's hardly a sign. It's you who are weak.~ */ + NathLT12_romancedead
++ @63 /* ~So? I'd rather hear you explain than apologising for it.~ */ + NathLT12_explain

CHAIN FHNATJ NathLT12_respect
@64 /* ~Thank - thank you. I don't want you to lose your respect for me because of all this.~ */
END
++ @65 /* ~But what is "all this"? Why does it happen to you?~ */ + NathLT12_explain
++ @66 /* ~Well, considering I didn't respect you anyway, nothing's changed.~ */ + NathLT12_romancedead
++ @67 /* ~Trust me, you'd have to do a lot more to lose my respect.~ */ + NathLT12_partofme

CHAIN FHNATJ NathLT12_weak
@68 /* ~I'm not weak! I just - I just have moments where I forget myself. That's all.~ */
END
++ @69 /* ~Sure, sure. You're weak and you always have been, Nathaniel.~ */ + NathLT12_romancedead
++ @70 /* ~But why does it happen?~ */ + NathLT12_explain
++ @71 /* ~Everyone's weak sometimes. Why should you be any different?~ */ + NathLT12_strong

CHAIN FHNATJ NathLT12_strong
@72 /* ~That isn't true. Look at what you've been through - you don't fall apart at the slightest provocation!~ */
END
++ @73 /* ~Nathaniel, if you don't be quiet I'll give you provocation!~ */ + NathLT12_romancedead
++ @74 /* ~I almost did, in Irenicus' dungeon. I thought there was no hope left.~ */ + NathLT12_nohope
++ @75 /* ~Nathaniel, it wasn't "at the slightest provocation".~ */ + NathLT12_respect

CHAIN FHNATJ NathLT12_explain
@76 /* ~Oh... Gods, where to start? Latimer dead and now to explain...~ */
=
@77 /* ~No. I should. All right. I've always been anxious at times but that first year of the Flaming Fist made it turn into these attacks.~ */
=
@78 /* ~I'm sorry for not telling you. But they're wrong, they're weakness. I can't be a burden!~ */
END
++ @79 /* ~Surely everyone at the Fist knew about them, though?~ */ + NathLT12_nohide
++ @80 /* ~Did you tell Latimer?~ */ + NathLT12_lat
++ @81 /* ~I could have helped!~ */ + NathLT12_help
++ @82 /* ~Oh, Nathaniel. I'm so sorry.~ */ + NathLT12_sympathy

CHAIN FHNATJ NathLT12_romancedead
@83 /* ~I've just lost the man I loved and that's all you have to say? Leave me alone!~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT

CHAIN FHNATJ NathLT12_partofme
@84 /* ~It's nice of you to say that, and I hope it's true. Because of what happened, it's a part of me. I wish it wasn't.~ */
END
++ @85 /* ~What do you mean?~ */ + NathLT12_explain
++ @86 /* ~Avery said something but I'd rather hear it from you.~ */ + NathLT12_explain

CHAIN FHNATJ NathLT12_nohope
@87 /* ~There's - there's always hope. I forgot that - and look where it's got me.~ */
END
++ @88 /* ~Where did it get you?~ */ + NathLT12_explain

CHAIN FHNATJ NathLT12_nohide
@89 /* ~You're - you're right. I couldn't hide it. Not from Avery or Archie...~ */
END
++ @90 /* ~Or from me. Sometimes you've seemed edgy.~ */ + NathLT12_help
++ @91 /* ~You shouldn't hide things like that. It just makes it worse when they come out.~ */ + NathLT12_help
++ @92 /* ~What about Latimer? Did you tell him?~ */ + NathLT12_lat

CHAIN FHNATJ NathLT12_lat
@93 /* ~Of course I told him! He kept me sane back then! I loved him.~ */
END
++ @94 /* ~But Avery said he did those horrible things--~ */ + NathLT12_outrage
++ @95 /* ~But he hurt you.~ */ + NathLT12_outrage
++ @96 /* ~Sane? Barely!~ */ + NathLT12_outrage
++ @97 /* ~I'm so sorry he's gone, Nathaniel.~ */ + NathLT12_sympathy

CHAIN FHNATJ NathLT12_help
@98 /* ~I thought they'd gone away. When you saw that scar I realised they hadn't gone away at all and I was so - so mortified.~ */
END
++ @99 /* ~You still should have told me. Did I leave you hanging like Latimer did? No!~ */ + NathLT12_outrage
++ @100 /* ~I'm so sorry about all of this.~ */ + NathLT12_sympathy

CHAIN FHNATJ NathLT12_sympathy
@101 /* ~*You're* sorry? Leave me alone!~ */
EXIT

CHAIN FHNATJ NathLT12_outrage
@102 /* ~Don't say that, you-- Just because I chose to stay with you doesn't mean that I'll - I'll just sit here and listen to you say that about him!~ */
END
++ @103 /* ~Easy, Nathaniel, calm down--~ */ + NathLT12_easy
++ @104 /* ~Who are you trying to convince, Nathaniel - me or you?~ */ + NathLT12_convince
++ @105 /* ~You said yourself that you were going to move on. Remember? The panic's clouding your judgement!~ */ + NathLT12_judgement
++ @106 /* ~I'm sorry - just calm down--~ */ + NathLT12_calm

CHAIN FHNATJ NathLT12_easy
@107 /* ~Easy? It's been anything but that and Latimer's - Latimer was the one who got me through it! He saved me and I'm not going to stand here and listen to people say otherwise, least of all you!~ */
EXIT

CHAIN FHNATJ NathLT12_convince
@108 /* ~You, of course, you-- Latimer saved me and I'm not going to stand here and listen to people say otherwise, least of all you!~ */
EXIT

CHAIN FHNATJ NathLT12_judgement
@109 /* ~My judgement's clouded? Latimer saved me and I'm not going to stand here and listen to people say otherwise, least of all you!~ */
EXIT

CHAIN FHNATJ NathLT12_calm
@110 /* ~You're sorry? Latimer saved me and I'm not going to stand here and listen to people say otherwise, least of all you!~ */
EXIT

//Post-Bryce talk

CHAIN IF ~Global("FHBryceHere","GLOBAL",2)
!PartyHasItem("FHRING")
Global("NathRomanceActive","GLOBAL",1)~ THEN FHNATJ NathReact
@272 /* ~(Nathaniel wipes his face and hunches his arms around himself.) Gods ... oh gods... he was - he was alive and-- oh--~ */
=
@273 /* ~(He launches himself at you and hugs you desperately.) You're so much better than he ever could be ... how could I have-- oh-- I'm glad I threw away that damn ring!~ */
=
@274 /* ~Please, can we get going? I ... I'd rather not think about him.~ */
END
IF ~~ THEN SOLVED_JOURNAL @275 /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */ /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */
DO ~SetGlobal("FHBryceHere","GLOBAL",3)~
EXIT

CHAIN IF ~Global("FHBryceHere","GLOBAL",2)
!PartyHasItem("FHRING")
Global("NathFriend","GLOBAL",3)~ THEN FHNATJ NathReactFriend
@272 /* ~(Nathaniel wipes his face and hunches his arms around himself.) Gods ... oh gods... he was - he was alive and-- oh--~ */
=
@276 /* ~How could I have-- oh-- I'm glad I threw away that damn ring!~ */
=
@274 /* ~Please, can we get going? I ... I'd rather not think about him.~ */
END
IF ~~ THEN SOLVED_JOURNAL @275 /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */ /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */
DO ~SetGlobal("FHBryceHere","GLOBAL",3)~
EXIT

CHAIN IF ~Global("FHBryceHere","GLOBAL",2)
!PartyHasItem("FHRING")
!Global("NathFriend","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",1)~ THEN FHNATJ NathReactComp
@272 /* ~(Nathaniel wipes his face and hunches his arms around himself.) Gods ... oh gods... he was - he was alive and-- oh--~ */
=
@276 /* ~How could I have-- oh-- I'm glad I threw away that damn ring!~ */
=
@274 /* ~Please, can we get going? I ... I'd rather not think about him.~ */
END
IF ~~ THEN SOLVED_JOURNAL @275 /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */ /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */
DO ~SetGlobal("FHBryceHere","GLOBAL",3)~
EXIT

CHAIN IF ~Global("FHBryceHere","GLOBAL",2)
PartyHasItem("FHRING")
Global("NathRomanceActive","GLOBAL",1)~ THEN FHNATJ NathReactRing
@277 /* ~(Nathaniel wipes his face and hunches his arms around himself.) Gods ... oh gods... <CHARNAME> - he was - he was alive and-- oh--~ */
=
@278 /* ~You're so much better than he ever could be ... how could I have-- oh--~ */
=
@279 /* ~I should get rid of this. This stupid ring ... reminding me of him every second when he was... There! That's him gone!~ */
=
@274 /* ~Please, can we get going? I ... I'd rather not think about him.~ */
END
IF ~~ THEN SOLVED_JOURNAL @275 /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */ /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */
DO ~SetGlobal("FHBryceHere","GLOBAL",3)
TakePartyItem("FHRING")~
EXIT

CHAIN IF ~Global("FHBryceHere","GLOBAL",2)
PartyHasItem("FHRING")
Global("NathFriend","GLOBAL",3)~ THEN FHNATJ NathReactRingFriend
@277 /* ~(Nathaniel wipes his face and hunches his arms around himself.) Gods ... oh gods... <CHARNAME> - he was - he was alive and-- oh--~ */
=
@280 /* ~How could I have-- oh--~ */
=
@279 /* ~I should get rid of this. This stupid ring ... reminding me of him every second when he was... There! That's him gone!~ */
=
@274 /* ~Please, can we get going? I ... I'd rather not think about him.~ */
END
IF ~~ THEN SOLVED_JOURNAL @275 /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */ /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */
DO ~SetGlobal("FHBryceHere","GLOBAL",3)
TakePartyItem("FHRING")~
EXIT

CHAIN IF ~Global("FHBryceHere","GLOBAL",2)
PartyHasItem("FHRING")
!Global("NathRomanceActive","GLOBAL",1)
!Global("NathFriend","GLOBAL",1)~ THEN FHNATJ NathReactRingComp
@272 /* ~(Nathaniel wipes his face and hunches his arms around himself.) Gods ... oh gods... he was - he was alive and-- oh--~ */
=
@280 /* ~How could I have-- oh--~ */
=
@279 /* ~I should get rid of this. This stupid ring ... reminding me of him every second when he was... There! That's him gone!~ */
=
@274 /* ~Please, can we get going? I ... I'd rather not think about him.~ */
END
IF ~~ THEN SOLVED_JOURNAL @275 /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */ /* ~Latimer is alive
Latimer is alive! Nathaniel is justifiably shaken, and so am I! He arrived without warning and attempted to force Nathaniel to return with him. However, I managed to convince Nathaniel to stay. I hope this is the last we will see of him.~ */
DO ~SetGlobal("FHBryceHere","GLOBAL",3)
DestroyItem("FHRING")~
EXIT

//Vamped//

ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2)
   		               !InParty("Nath")
 		               !Global("NathRomanceActive","GLOBAL",2)~

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN EXTERN BODHIAMB FHNathkidnap_start
END

APPEND BODHIAMB
IF ~~ FHNathkidnap_start
SAY #56540
IF ~OR(2)
!InPartyAllowDead("Nath")
Dead("Nath")~ THEN GOTO 6
IF ~InPartyAllowDead("Nath")
!Dead("Nath")~ THEN GOTO FHNathkidnap_2
END

IF ~~ FHNathkidnap_2
SAY @747 /* ~Take this boy, for example. What is his name? Ah, yes, Nathaniel. It is such a pity it is when a couple suffers a loss, is it not?~ */
IF ~~ THEN EXTERN FHNATJ FHNathkidnap_3
END

IF ~~ FHNathkidnap_4
SAY @748 /* ~Oh, pretty boy, I can smell your fear; you reek of it. In any case, I was not referring to the loss of <CHARNAME>.~ */
IF ~~ THEN UNSOLVED_JOURNAL @749 /* ~The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Nathaniel.  Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible.  I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!~ */ /* ~The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and stealing from me the one person that is dearest to my heart: Nathaniel.  Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue I will lose even more than I thought possible.  I cannot give up on the Rhynn Lanthorn... but now the life and immortal soul of the one I love is at stake, as well!~ */
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHKidnap")~
EXIT
END
END

APPEND FHNATJ
IF ~~ FHNathkidnap_3
SAY @750 /* ~You ... you won't hurt <CHARNAME>, you fiend!~ */     
IF ~~ THEN EXTERN BODHIAMB FHNathkidnap_4
END
END

//Tree of Life//

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("Nath")
!Dead("Nath")
!Global("NathRomanceActive","GLOBAL",2)
Global("FHTreeoflife","GLOBAL",0)~ THEN DO
~SetGlobal("FHTreeoflife","GLOBAL",1)~ GOTO FHTreeofLifeNoRomance
IF ~InParty("Nath")
!Dead("Nath")
Global("NathRomanceActive","GLOBAL",2)
Global("FHTreeoflife","GLOBAL",0)~ THEN DO
~SetGlobal("FHTreeoflife","GLOBAL",1)~ GOTO FHTreeofLifeRomance
END

APPEND PLAYER1
IF ~~ FHTreeofLifeNoRomance
SAY @751 /* ~Nathaniel, former guard of Baldur's Gate, has matured a great deal since your chance meeting in Athkatla. No longer so uncertain of his destiny, he is resolute at your side.~ */
++ @752 /* ~Nathaniel, this isn't your fight. I've disrupted your life enough; are you sure you want to do this?~ */ EXTERN FHNATJ FHTreeofLifeNoRomance_notfight
++ @753 /* ~You don't have to do this, Nathaniel. You could go back to Trademeet and live a normal life.~ */ EXTERN FHNATJ FHTreeofLifeNoRomance_normal
++ @754 /* ~I need to know that you'll stand by me, Nathaniel. Are you ready for this?~ */ EXTERN FHNATJ FHTreeofLifeNoRomance_ready
END

IF ~~ FHTreeofLifeRomance
SAY @755 /* ~Nathaniel: the hardships that he has suffered before and while in your company have only served to bring you closer. He touches the side of your face before you begin to speak.~ */
++ @756 /* ~Nathaniel--~ */ EXTERN FHNATJ FHTreeofLifeRomance_answer
END
END

CHAIN FHNATJ FHTreeofLifeNoRomance_notfight
@757 /* ~It wasn't you who disrupted my life before. It was Sarevok. And I'm not going to back out of helping you - I couldn't live with myself. Besides, what would Avery say?~ */     
END
COPY_TRANS PLAYER1 33

CHAIN FHNATJ FHTreeofLifeNoRomance_normal
@758 /* ~Pardon me, but I do have to say this. I couldn't live with myself if I abandoned you now - besides, what would Avery say?~ */     
END
COPY_TRANS PLAYER1 33

CHAIN FHNATJ FHTreeofLifeNoRomance_ready
@759 /* ~I'm ... as ready as I'll ever be. I'm scared of what might happen, but I couldn't live with myself if I abandoned you now. Besides, what would Avery say?~ */     
END
COPY_TRANS PLAYER1 33

CHAIN FHNATJ FHTreeofLifeRomance_answer
@760 /* ~Ssh, <CHARNAME>. You don't have to try to convince me. It's scary, but I'm ready to face this. With you.~ */     
=
@761 /* ~You've helped me so much. All the time I've known you, you've been so good to me. You've made me feel safe, <CHARNAME>, and given the kind of life we lead that's an amazing thing.~ */     
=
@762 /* ~And travelling with you ... being with you ... it's made me feel that I've got a purpose. Maybe I have or maybe I haven't, but I know that I'm meant to be here with you.~ */     
=
@763 /* ~I know we've been through terrible things, but I swear I'd go through them again if it meant that I'd end up with you. I love you.~ */   
END
COPY_TRANS PLAYER1 33

APPEND FHNATJ

//Nathaniel-initiated flirts: non serious

IF
~Global("FHFlirtsDisabled","GLOBAL",0)
Global("FHNathStartFlirtSOA","GLOBAL",1)
GlobalLT("NathLoveTalk","LOCALS",34)~ THEN BEGIN FHFlirtBase1
SAY @1148 /* ~(Nathaniel is watching you, a thoughtful expression on his face.)~ */
IF ~RandomNum(17,1)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathGlance2
IF ~RandomNum(17,2)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathSmile
IF ~RandomNum(17,3)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathBlush
IF ~RandomNum(17,4)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathGlad
IF ~RandomNum(17,5)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathShoulder
IF ~RandomNum(17,6)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHug
IF ~RandomNum(17,7) ReputationGT(Player1,16)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHighRep
IF ~RandomNum(17,8) PartyHasItem("FHRING")~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathRing
IF ~RandomNum(17,8) !PartyHasItem("FHRING")~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathNoRing
IF ~RandomNum(17,9)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHand
IF ~RandomNum(17,10)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathCompliment
IF ~RandomNum(17,11)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathTalk
IF ~RandomNum(17,12) HPLT(Player1,25)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathCharHurt
IF ~RandomNum(17,13) HPLT("Nath",25)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHurt
IF ~RandomNum(17,14)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathUncomfortable
IF ~RandomNum(17,15) AreaType(DUNGEON)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathDungeon
IF ~RandomNum(17,16) ReputationLT(Player1,11)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathLowRep
IF ~RandomNum(17,17)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathGlance
END

IF ~~ THEN BEGIN NathGlance
SAY @1149 /* ~(As you turn to look back at him, he glances away.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathGlance2
SAY @1150 /* ~(He holds your gaze for a second before glancing away.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathSmile
SAY @1151 /* ~(He gives you a half-smile before looking away.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathBlush
SAY @1152 /* ~(He blushes faintly and fiddles with the strap of his pack.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathGlad
SAY @1153 /* ~You know, I'm glad I came with you on this journey. I enjoy your company.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathShoulder
SAY @1154 /* ~(He smiles and reaches forward to lightly squeeze your shoulder.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHug
SAY @1155 /* ~(He looks a little pale to<DAYNIGHT>. He comes towards you and gives you a tight hug, seeming reluctant to let go.)~ */
++ @1156 /* ~Hey! Get off me!~ */ + NathHug_getoff
++ @1157 /* ~Mmm.~ */ + NathHug_mmm
++ @1158 /* ~Does that help at all?~ */ + NathHug_help
++ @1159 /* ~What was that for?~ */ + NathHug_what
END

IF ~~ THEN BEGIN NathHug_getoff
SAY @1160 /* ~Sorry! I just felt a little bad - and you always seem to help. That's all.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHug_mmm
SAY @1161 /* ~(Nathaniel lets go of you as if burned.) Um, <CHARNAME>? Sorry about that.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHug_help
SAY @1162 /* ~Yes. Thank you. I'm all right, it's just your hugs always seem to make me feel better.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHug_what
SAY @1163 /* ~Oh, I felt a little bad, and your hugs always seem to make me feel better.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHighRep
SAY @1164 /* ~I'm so proud to be travelling with you, <CHARNAME>. You're always looking out for other people ... and I really respect that.~ */   
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLowRep
SAY @1165 /* ~Hmm. <CHARNAME>, you might want to think about what you're doing. We should be trying to do what's right.~ */  
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathRing
SAY @1166 /* ~(He glances down at the ring on his wedding finger. As he bites his lip, his eyes shine momentarily.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathNoRing
SAY @1167 /* ~(He glances at his wedding finger where the ring from Latimer used to be. Glancing up, he half-smiles at you.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHand
SAY @1168 /* ~(His hand is warm as he takes your own and briefly squeezes it, smiling at you as he lets go.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathCompliment
SAY @1169 /* ~<CHARNAME>, you look nice to<DAYNIGHT>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathTalk
SAY @1170 /* ~You know, I really enjoy spending time with you. Having someone to talk to after all that time alone ... it's lovely.~ */   
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathCharHurt
SAY @1171 /* ~<CHARNAME>? Do you need someone to heal you? I wish I could, but...~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHurt
SAY @1172 /* ~<CHARNAME> ... please help me! I don't want to leave you alone!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathUncomfortable
SAY @1173 /* ~(He laughs a little uncomfortably.) Sorry, <CHARNAME> ... I was just ... never mind.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathDungeon
SAY @1174 /* ~(Nathaniel reaches over and grips your arm.) Ah-- sorry, <CHARNAME>. It's just that this place ... this place scares me.~ */
IF ~~ THEN EXIT
END

//Nathaniel-initiated flirts: serious, no sex
IF
~Global("FHFlirtsDisabled","GLOBAL",0)
Global("FHNathStartFlirtSOA","GLOBAL",1)
OR(2)
Global("FHNathRomance","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)
Global("FHNathSleep","GLOBAL",0)~ THEN BEGIN NathFlirtBase2
SAY @1175 /* ~(Nathaniel moves to your side. The smile on his face says plainly that you mean as much to him as he does to you.)~ */ 
IF ~RandomNum(18,1)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHug2
IF ~RandomNum(18,2)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHug3
IF ~RandomNum(18,3)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathKiss1
IF ~RandomNum(18,4)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathKiss2
IF ~RandomNum(18,5)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHighRep
IF ~RandomNum(18,5)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathLowRep
IF ~RandomNum(18,6) PartyHasItem("FHRING")~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathRing
IF ~RandomNum(18,7)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathShoulderCaress
IF ~RandomNum(18,8)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHairStroke
IF ~RandomNum(18,9) Race(Player1,HUMAN)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHumEarNibble
IF ~RandomNum(18,9) OR(2) Race(Player1,HALF_ELF) Race(Player1,ELF)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathElfEarNibble
IF ~RandomNum(18,10)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathWatch
IF ~RandomNum(18,11)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHand2
IF ~RandomNum(18,12)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathFootMassage
IF ~RandomNum(18,13)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathThanks
IF ~RandomNum(18,14)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathOgle
IF ~RandomNum(18,15)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHold
IF ~RandomNum(18,16) Global("FHNathGivesCake","LOCALS",0)~ THEN DO ~SetGlobal("FHNathGivesCake","GLOBAL",1)~ GOTO NathCake
IF ~RandomNum(18,17) AreaType(DUNGEON)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathDungeon2
IF ~RandomNum(18,18)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathKissCheek
END

IF ~~ THEN BEGIN NathKissCheek
SAY @1176 /* ~(He brushes his lips against your cheek, touching your mouth lightly with his fingertip.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHug2
SAY @1177 /* ~(He gently pulls you into an embrace, his breath immediately becoming synchronised with yours. He withdraws and eyes you sleepily.)~ */
=
@1178 /* ~You always seem to calm me down.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathKiss1
SAY @1179 /* ~(He purposefully plants a kiss on your lips, putting his hands on the sides of your shoulders. Drawing back, he gives you a slightly questioning look.)~ */
=
@1180 /* ~Was that all right?~ */
++ @1181 /* ~Of course! I love to touch you.~ */  + NathKiss1_touch
++ @1182 /* ~Mmm, lovely, Nathaniel.~ */ + NathKiss1_lovely
++ @1183 /* ~(Lean close and kiss him again.)~ */ + NathKiss1_kiss
++ @1184 /* ~I look forward to more ... intimate attentions.~ */ + NathKiss1_intimate
++ @1185 /* ~I'm not in the mood right now, Nathaniel.~ */ + NathKiss1_mood
END

IF ~~ THEN BEGIN NathKiss1_touch
SAY @1186 /* ~And I love to touch you, too.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathKiss1_lovely
SAY @1187 /* ~(His eyes half-close at the sound of your voice.) Thank you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathKiss1_kiss
SAY @1188 /* ~(His hands come up to stroke your hair and he sighs contentedly when the kiss is over.)~ */
=
@1189 /* ~Oh, <CHARNAME>. Thank you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathKiss1_intimate
SAY @1190 /* ~(He glances to check that no one is listening and murmurs in your ear.)~ */
=
@1191 /* ~Me too.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathKiss1_mood
SAY @1192 /* ~Of course. Sorry.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathKiss2
SAY @1193 /* ~(He gives you a light kiss, smiling more widely at you.)~ */
=
@1194 /* ~You're an amazing man, you know that?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathShoulderCaress
SAY @1195 /* ~(Nathaniel squeezes your shoulder in a companionable way, but slides his hand along to caress the side of your neck.)~ */
=
@1196 /* ~(As he strokes, his breath catches in his throat and his eyes are suddenly filled with wonder.)~ */
=
@1197 /* ~<CHARNAME> ... you're so...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHairStroke
SAY @1198 /* ~(Nathaniel reaches to touch your hair, running his fingers over your head.)~ */
=
@1199 /* ~Maybe I should think of getting a lock of your hair ... though I don't know where I'd put it.~ */  
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHumEarNibble
SAY @1200 /* ~(Nathaniel gently pulls you into a hug, then turns his attention to the soft skin of your neck. His breath sends shivers down your body and you feel him smile.)~ */
=
@1201 /* ~Mmm ... you taste nice.~ */  
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathElfEarNibble
SAY @1202 /* ~(Nathaniel gently pulls you into a hug, then turns his attention to the soft skin of your neck. He cautiously licks the point of your ear and you feel him smile at your tremors.)~ */ 
=
@1201 /* ~Mmm ... you taste nice.~ */  
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathWatch
SAY @1203 /* ~(Nathaniel's eyes remain on you, with a look of combined love and wonder. You cannot help but notice the dilation of his pupils as he watches you.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHand2
SAY @1204 /* ~(Nathaniel takes your hand and squeezes it gently. He brings it to his lips and kisses it in an uncharacteristic display of chivalry, but the gesture is rather spoiled by his self-deprecating grin.)~ */
=
@1205 /* ~(You walk for a time, so entwined.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFootMassage
SAY @1206 /* ~Can I massage your feet, <CHARNAME>? You're looking a little tired.~ */  
++ @1207 /* ~No thanks, Nathaniel. Maybe another time.~ */ + NathFootMassage_no
++ @1208 /* ~Yes please!~ */ + NathFootMassage_yes
++ @1209 /* ~Hmm. Do you have any qualifications?~ */ + NathFootMassage_qualifications
++ @1210 /* ~That would be lovely.~ */ + NathFootMassage_yes
++ @1211 /* ~Aren't you the charmer. Yes, please.~ */ + NathFootMassage_yes
END

IF ~~ THEN BEGIN NathFootMassage_no
SAY @1212 /* ~Of course. I wouldn't want to force you into anything.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFootMassage_yes
SAY @1213 /* ~(Once you are sitting comfortably, Nathaniel unties your boots and starts to rub your feet. The firm motions are soothing to your aches and you find yourself half dozing off.)~ */
=
@1214 /* ~There. How's that?~ */
++ @1215 /* ~Nice. Thanks, Nathaniel.~ */ + NathFootMassage_thanks
++ @1216 /* ~Mmm, it was lovely.~ */ + NathFootMassage_thanks
++ @1217 /* ~Be a little gentler next time, all right?~ */ + NathFootMassage_gentle
++ @1218 /* ~Be a little firmer next time, all right?~ */ + NathFootMassage_firm
++ @1219 /* ~I hope you'll massage all over next time.~ */ + NathFootMassage_allover
END

IF ~~ THEN BEGIN NathFootMassage_qualifications
SAY @1220 /* ~No ... but my friends said I was very good at it.~ */
++ @1221 /* ~Not at the moment, Nathaniel.~ */ + NathFootMassage_no
++ @1222 /* ~I'm not sure I trust them, Nathaniel - maybe another time.~ */ + NathFootMassage_no
++ @1223 /* ~All right, then.~ */ + NathFootMassage_yes
++ @1224 /* ~Fair enough. Go for it, then.~ */ + NathFootMassage_yes
END

IF ~~ THEN BEGIN NathFootMassage_thanks
SAY @1225 /* ~(He grins and touches your cheek affectionately.)~ */
=
@1226 /* ~Anytime, <CHARNAME>. At least I'm good for something!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFootMassage_gentle
SAY @1227 /* ~I didn't hurt you, did I? I was trying not to... Yes, of course I won't be so rough next time.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFootMassage_firm
SAY @1228 /* ~(Nathaniel smiles with a faint mischievous gleam in his eye.) If that's the way you like it, I'm happy to oblige. <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFootMassage_allover
SAY @1229 /* ~(Nathaniel draws his fingertip down the side of your face.)~ */
=
@1230 /* ~Maybe another time.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathThanks
SAY @1231 /* ~Oh, <CHARNAME>, you mean so much to me. Thank you ... for everything.~ */   
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathOgle
SAY @1232 /* ~(Nathaniel walks close behind you for a time, and when you look back it is clear that he was surreptitiously but unmistakably eyeing your rear view.)~ */
=
@1233 /* ~(He gives you an innocent smile, but does not comment.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathHold
SAY @1234 /* ~(Nathaniel comes up behind you and wraps his arms around you, kissing the back of your neck. The kisses make the hairs on your arm prickle and you cannot help but lean into Nathaniel's embrace.)~ */
=
@1235 /* ~If only we could stay like this forever...~ */  
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathCake
SAY @1236 /* ~(Nathaniel rummages in his pack for a couple of minutes before approaching you.) <CHARNAME>? I have something for you. The store owner said it had an enchantment on it so it'd keep.~ */
=
@1237 /* ~(He hands you a carefully-wrapped piece of cake, iced and topped with red berries.)~ */
++ @1238 /* ~Thank you, Nathaniel ... that's so nice of you.~ */ + NathCake_nice
++ @1239 /* ~(Take a bite.)~ */ + NathCake_bite
++ @1240 /* ~Thanks, Nathaniel, but I'm not really a cake man.~ */ + NathCake_nothanks
++ @1241 /* ~Thank you ... I'll just put it here, where it'll be safe...~ */ + NathCake_safe
END

IF ~~ THEN BEGIN NathCake_nice
SAY @1242 /* ~Go on, try a bit.~ */
++ @1239 /* ~(Take a bite.)~ */ + NathCake_bite
++ @1243 /* ~Thanks, but cake isn't exactly one of my favourite foods.~ */  + NathCake_nothanks
++ @1244 /* ~I'll just ... put it here where it'll be safe...~ */ + NathCake_safe
END

IF ~~ THEN BEGIN NathCake_bite
SAY @1245 /* ~(The cake's taste is a mixture of sweetness and the sharpness of the berries. Once you have finished eating, Nathaniel comes closer and kisses you. He licks his lips as he withdraws.)~ */
=
@1246 /* ~I'll have to give you gifts like that more often. It seems like both of us win.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathCake_nothanks
SAY @1247 /* ~(He looks a little disappointed, but perks up as he realises that this means that he can have the cake for himself.)~ */
=
@1248 /* ~You don't know what you're missing, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathCake_safe
SAY @1249 /* ~Ahh, you don't have to try and pretend. Don't worry about it, <CHARNAME>; I'll save you the bother of disposing of it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathDungeon2
SAY @1250 /* ~(Nathaniel's hand finds yours in the darkness.) You make me feel so safe, <CHARNAME>...~ */
IF ~~ THEN EXIT
END

//Nathaniel-initiated flirts: serious, have had sex
IF
~Global("FHFlirtsDisabled","GLOBAL",0)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("NathRomanceActive","GLOBAL",2)
Global("FHNathSleep","GLOBAL",3)
Global("FHNathStartFlirtSOA","GLOBAL",1)
RealGlobalTimerExpired("FHNathFlirt","LOCALS")~ THEN BEGIN NathFlirtBase3
SAY @1251 /* ~(Nathaniel's hazel-green eyes sparkle with love as he comes nearer to you.)~ */
IF ~RandomNum(19,1)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHug2
IF ~RandomNum(19,2)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHug3
IF ~RandomNum(19,3)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathKiss1
IF ~RandomNum(19,4)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathKiss2
IF ~RandomNum(19,5)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHighRep
IF ~RandomNum(19,5)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathLowRep
IF ~RandomNum(19,6) HasItemEquiped("FHIOUN","Nath")~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathIoun
IF ~RandomNum(19,7)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathShoulderCaress
IF ~RandomNum(19,8)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHairStroke
IF ~RandomNum(19,9) Race(Player1,HUMAN)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHumEarNibble
IF ~RandomNum(19,9) OR(2) Race(Player1,HALF_ELF) Race(Player1,ELF)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathElfEarNibble
IF ~RandomNum(19,10)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathWatch
IF ~RandomNum(19,11)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHand2
IF ~RandomNum(19,12)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathFootMassage
IF ~RandomNum(19,13)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathThanks
IF ~RandomNum(19,14)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathOgle
IF ~RandomNum(19,15)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathHold
IF ~RandomNum(19,16) AreaType(DUNGEON)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathDungeon2
IF ~RandomNum(19,17)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathOgle2
IF ~RandomNum(19,18)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathLove
IF ~RandomNum(19,19)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500)~ GOTO NathKissCheek
IF ~Global("FHNathGivesCake","LOCALS",0)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500) SetGlobal("FHNathGivesCake","LOCALS",1)~ GOTO NathCake
IF ~Global("FHNathTightClothesFlirt","LOCALS",0)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500) SetGlobal("FHNathTightClothesFlirt","LOCALS",1)~ GOTO NathTightClothes
IF ~GlobalGT("FHNathVampire","GLOBAL",4) Global("FHBodhiThanks","LOCALS",0)~ THEN DO ~SetGlobal("FHNathStartFlirtSOA","GLOBAL",0) RealSetGlobalTimer("FHNathFlirt","LOCALS",2500) SetGlobal("FHBodhiThanks","LOCALS",1)~ GOTO NathBodhiThanks
END

IF ~~ THEN BEGIN NathIoun
SAY @1252 /* ~(Nathaniel takes the magenta ioun stone from his head and buffs it with his sleeve. He smiles reminiscently and looks up to meet your eyes.) I really appreciate this, <CHARNAME>.~ */
=
@1253 /* ~Even if it does clash rather.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathTightClothes
SAY @1254 /* ~(He has been watching you thoughtfully for the last few minutes.)~ */
=
@1255 /* ~You know, <CHARNAME>, you should wear closer-fitting clothes when we're not in combat. It'd show you off a lot better.~ */
++ @1256 /* ~Isn't the current view good enough?~ */ + NathTightClothes_view
++ @1257 /* ~Anything for you, Nathaniel.~ */ + NathTightClothes_anything
++ @1258 /* ~As long as you do the same, my love.~ */ + NathTightClothes_same
++ @1259 /* ~I'm not sure I like you looking at me like that. I'm not *that* handsome.~ */ + NathTightClothes_handsome
END

IF ~~ THEN BEGIN NathTightClothes_view
SAY @1260 /* ~Of course it is! But other clothes just might-- like I say, show you off. I didn't mean to offend you, really I didn't...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathTightClothes_anything
SAY @1261 /* ~(There is a faint hungry look in Nathaniel's smile.) And anything for *you*.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathTightClothes_same
SAY @1262 /* ~Whatever you want.~ */
=
@1263 /* ~(He smiles and his eyes half-close before he remembers himself with a cough.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathTightClothes_handsome
SAY @1264 /* ~(Nathaniel grabs your hand and squeezes it almost painfully.)~ */
=
@1265 /* ~To *me* you're beautiful, <CHARNAME>, and that's what matters. Don't let anyone tell you otherwise!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathOgle2
SAY @1266 /* ~(Nathaniel has walking behind you for some time and when you turn to look at him he raises his eyes; he has been openly admiring your rear view.)~ */ 
=
@1267 /* ~(He comes closer to murmur in your ear.)~ */
=
@1268 /* ~Tonight, <CHARNAME>. I promise.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLove
SAY @1269 /* ~I love you.~ */
=
@1270 /* ~Sorry, I just needed to say it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathBodhiThanks
SAY @1271 /* ~<CHARNAME> ... thank you for coming to rescue me. When I was ... that thing.~ */
IF ~~ THEN DO ~SetGlobal("FHBodhiThanks","LOCALS",1)~
EXIT
END

//No flirting post-vamp//

IF ~!Global("FHFlirtsDisabled","GLOBAL",1)
IsGabber(Player1)
CombatCounter(0)
Global("NathMatch","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",3)
Global("FHVampEmotional","GLOBAL",1)~ THEN BEGIN FHFlirtUpset2
SAY @1272 /* ~(Something has been amiss in Nathaniel's manner since his vampiric transformation, and he brushes away your attempt at conversation.)~ */
IF ~~ THEN EXIT
END

//No flirting in the Underdark

IF ~!Global("FHFlirtsDisabled","GLOBAL",1)
IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("NathFriendMatch","GLOBAL",1)
Global("NathMatch","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",3)
!Global("NathFriend","GLOBAL",2)
OR(17)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ THEN BEGIN FHFlirtUD
SAY @1273 /* ~Look - um - I don't think it's a good time at the moment.~ */
IF ~~ THEN EXIT
END

//After finding out about Bhaal

IF ~!Global("FHFlirtsDisabled","GLOBAL",1)
IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("NathMatch","GLOBAL",1)
Global("NathFriendMatch","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",3)
!Global("NathFriend","GLOBAL",2)
Global("FHLT2Upset","GLOBAL",1)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirtSemiUpset
SAY @1274 /* ~(Nathaniel gives you a small smile as you approach but does not speak. It seems that he needs some time to digest the revelation of your birth.)~ */
IF ~~ THEN EXIT
END

//After Latimer's "death"

IF ~!Global("FHFlirtsDisabled","GLOBAL",1)
IsGabber(Player1)
CombatCounter(0)
OR(2)
Global("NathMatch","GLOBAL",1)
Global("NathFriendMatch","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",3)
!Global("NathFriend","GLOBAL",2)
Global("FHNoFlirtsPostAvery","GLOBAL",1)~ THEN BEGIN FHFlirtUpset
SAY @1275 /* ~(Lost in a mixture of grief and guilt, Nathaniel turns from you as you approach.)~ */
IF ~~ THEN EXIT
END

//PC-initiated dialogues

//Romantic: Lovetalks 1-9

IF ~IsGabber(Player1)
!Global("FHLT2Upset","GLOBAL",1)
!Global("FHNoFlirtsPostAvery","GLOBAL",1)
!Global("FHFlirtsDisabled","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",3)
!Global("FHNathStartFlirtSOA","GLOBAL",1)
!Global("FHSeeBregaComplain","GLOBAL",1)
!Global("FHUDUpset1","LOCALS",1)
!Global("FHUDUpset2","LOCALS",1)
!Global("FHUDUpset3","LOCALS",1)
!Global("FHBregaUpset","GLOBAL",2)
!Global("FHBryceHere","GLOBAL",2)
Global("NathMatch","GLOBAL",1)
GlobalLT("NathLoveTalk","LOCALS",19)
CombatCounter(0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirt_LT1
SAY @1276 /* ~(You regard Nathaniel as he scans the surroundings around you. He doesn't notice you as you approach, too lost in his thoughts.)~ */
IF ~RandomNum(2,1)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks1
IF ~RandomNum(2,2)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks2
IF ~HPLT("Nath",10)~ THEN REPLY @1278 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_LT1how1
IF ~RandomNum(2,1)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how2
IF ~RandomNum(2,2)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how3
IF ~OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Global("FHSpellFlirt","LOCALS",0)~ THEN REPLY @1280 /* ~Have you ever tried casting a spell, Nathaniel?~ */ + FHFlirt_LT1spell
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,1)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal1
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,2)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal2
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,3)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal3
IF ~Class(Player1,MONK)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race1a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2b
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3a
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3b
IF ~RandomNum(3,1)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire1
IF ~RandomNum(3,2)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire2
IF ~RandomNum(3,3)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire3
IF ~RandomNum(5,1) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2a
IF ~RandomNum(5,3) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~RandomNum(5,1) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2b
IF ~RandomNum(5,3) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
++ @1285 /* ~I don't want you to misinterpret our friendship, Nathaniel. I just want us to be friends.~ */ + FHDump
++ @1286 /* ~Nathaniel, stop chatting to me every few minutes. I need to concentrate.~ */ + FHDisableFlirts
++ @1287 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

//Romantic: lovetalks 10-14

IF ~IsGabber(Player1)
!Global("FHLT2Upset","GLOBAL",1)
!Global("FHFlirtsDisabled","GLOBAL",1)
!Global("FHSeeBregaComplain","GLOBAL",1)
!Global("FHUDUpset1","LOCALS",1)
!Global("FHUDUpset2","LOCALS",1)
!Global("FHUDUpset3","LOCALS",1)
!Global("FHBregaUpset","GLOBAL",2)
!Global("FHBryceHere","GLOBAL",2)
!Global("FHNoFlirtsPostAvery","GLOBAL",1)
Global("NathMatch","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",3)
GlobalGT("NathLoveTalk","LOCALS",17)
GlobalLT("NathLoveTalk","LOCALS",25)
!Global("FHNathStartFlirtSOA","GLOBAL",1)
CombatCounter(0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirt_LT10
SAY @1276 /* ~(You regard Nathaniel as he scans the surroundings around you. He doesn't notice you as you approach, too lost in his thoughts.)~ */
IF ~RandomNum(3,1)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks1
IF ~RandomNum(3,2)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */  + FHFlirt_LT1thanks2
IF ~RandomNum(3,3)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT8thanks3
IF ~HPLT("Nath",10)~ THEN REPLY @1278 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_LT1how1
IF ~RandomNum(2,1)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how2
IF ~RandomNum(2,2)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how3
IF ~RandomNum(3,1)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back1
IF ~RandomNum(3,2)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back2
IF ~RandomNum(3,3)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT10back3
IF ~OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Global("FHSpellFlirt","LOCALS",0)~ THEN REPLY @1280 /* ~Have you ever tried casting a spell, Nathaniel?~ */ + FHFlirt_LT1spell
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,1)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal1
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,2)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal2
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,3)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal3
IF ~Class(Player1,MONK)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race1a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2b
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3a
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3b
IF ~RandomNum(2,1)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire1
IF ~RandomNum(2,2)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire3
IF ~RandomNum(4,1)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug1
IF ~RandomNum(4,2)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug2
IF ~RandomNum(4,3)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug3
IF ~RandomNum(4,4)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug4
IF ~RandomNum(5,1) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2a
IF ~RandomNum(5,3) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~RandomNum(5,1) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2b
IF ~RandomNum(5,3) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,1)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,2)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch2
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,3)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT10watch3
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT3spar1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,1)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,2)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake2
IF ~Global("FHTickle","LOCALS",0)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7ticklefirst
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,1)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle1
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,2)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle2
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,3)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle3
IF ~RandomNum(3,1)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle1
IF ~RandomNum(3,2)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle2
IF ~RandomNum(3,3)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle3
IF ~RandomNum(3,1)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link1
IF ~RandomNum(3,2)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link2
IF ~RandomNum(3,3)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link3
IF ~RandomNum(3,1)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket1
IF ~RandomNum(3,2)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket2
IF ~RandomNum(3,3)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket3
IF ~RandomNum(3,1)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face1
IF ~RandomNum(3,2)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face2
IF ~RandomNum(3,3)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face3
IF ~RandomNum(3,1)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair1
IF ~RandomNum(3,2)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair2
IF ~RandomNum(3,3)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair3
IF ~RandomNum(3,1)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet1
IF ~RandomNum(3,2)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet2
IF ~RandomNum(3,3)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet3
IF ~OR(4)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN)
Kit(Player1,UNDEADHUNTER)
Kit(Player1,CAVALIER)~ THEN REPLY @1300 /* ~(Cast Resist Fear on Nathaniel.)~ */ + FHFlirt_LT10fear1
++ @1285 /* ~I don't want you to misinterpret our friendship, Nathaniel. I just want us to be friends.~ */ + FHDump
++ @1286 /* ~Nathaniel, stop chatting to me every few minutes. I need to concentrate.~ */ + FHDisableFlirts
++ @1287 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

//Romantic: lovetalks 14-16

IF ~IsGabber(Player1)
!Global("FHLT2Upset","GLOBAL",1)
!Global("FHFlirtsDisabled","GLOBAL",1)
!Global("FHSeeBregaComplain","GLOBAL",1)
!Global("FHUDUpset1","LOCALS",1)
!Global("FHUDUpset2","LOCALS",1)
!Global("FHUDUpset3","LOCALS",1)
!Global("FHBregaUpset","GLOBAL",2)
!Global("FHBryceHere","GLOBAL",2)
!Global("FHNoFlirtsPostAvery","GLOBAL",1)
Global("NathMatch","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",3)
!Global("FHNathStartFlirtSOA","GLOBAL",1)
CombatCounter(0)
GlobalGT("NathLoveTalk","LOCALS",23)
GlobalLT("NathLoveTalk","LOCALS",31)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirt_LT14
SAY @1301 /* ~(As you approach Nathaniel, he gives you a warm smile.)~ */
IF ~RandomNum(3,1)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks1
IF ~RandomNum(3,2)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks2
IF ~RandomNum(3,3)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT8thanks3
IF ~HPLT("Nath",10)~ THEN REPLY @1278 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_LT1how1
IF ~RandomNum(3,1)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how2
IF ~RandomNum(3,2)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how3
IF ~RandomNum(3,3)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT14how4
IF ~RandomNum(3,1)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back1
IF ~RandomNum(3,2)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back2
IF ~RandomNum(3,3)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT10back3
IF ~OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Global("FHSpellFlirt","LOCALS",0)~ THEN REPLY @1280 /* ~Have you ever tried casting a spell, Nathaniel?~ */ + FHFlirt_LT1spell
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(4,1)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal1
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(4,2)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal2
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(4,3)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal3
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(4,4)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT14heal4
IF ~Class(Player1,MONK)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race1a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2b
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3a
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3b
IF ~RandomNum(4,1)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire1
IF ~RandomNum(4,2)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire2
IF ~RandomNum(4,3)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire3
IF ~RandomNum(4,4)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT14admire4
IF ~RandomNum(4,1)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug1
IF ~RandomNum(4,2)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug2
IF ~RandomNum(4,3)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug3
IF ~RandomNum(4,4)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug4
IF ~RandomNum(5,1) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2a
IF ~RandomNum(5,3) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~RandomNum(5,1) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2b
IF ~RandomNum(5,3) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,1)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,2)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch2
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,3)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT10watch3
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT3spar1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,1)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,2)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake2
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,3)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT14cake3
IF ~Global("FHTickle","LOCALS",0)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7ticklefirst
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,1)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle1
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,2)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle2
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,3)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle3
IF ~RandomNum(4,1)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle1
IF ~RandomNum(4,2)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle2
IF ~RandomNum(4,3)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle3
IF ~RandomNum(4,4)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle4
IF ~RandomNum(3,1)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link1
IF ~RandomNum(3,2)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link2
IF ~RandomNum(3,3)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link3
IF ~RandomNum(3,1)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket1
IF ~RandomNum(3,2)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket2
IF ~RandomNum(3,3)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket3
IF ~RandomNum(3,1)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face1
IF ~RandomNum(3,2)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face2
IF ~RandomNum(3,3)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face3
IF ~RandomNum(3,1)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair1
IF ~RandomNum(3,2)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair2
IF ~RandomNum(3,3)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair3
IF ~RandomNum(4,1)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet1
IF ~RandomNum(4,2)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet2
IF ~RandomNum(4,3)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet3
IF ~RandomNum(4,4)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT14feet4
IF ~OR(4)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN)
Kit(Player1,CAVALIER)
Kit(Player1,UNDEADHUNTER)~ THEN REPLY @1300 /* ~(Cast Resist Fear on Nathaniel.)~ */ + FHFlirt_LT10fear1
++ @1285 /* ~I don't want you to misinterpret our friendship, Nathaniel. I just want us to be friends.~ */ + FHDump
++ @1286 /* ~Nathaniel, stop chatting to me every few minutes. I need to concentrate.~ */ + FHDisableFlirts
++ @1287 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

//Romantic: lovetalks 15-20

IF ~IsGabber(Player1)
!Global("FHLT2Upset","GLOBAL",1)
!Global("FHFlirtsDisabled","GLOBAL",1)
!Global("FHSeeBregaComplain","GLOBAL",1)
!Global("FHUDUpset1","LOCALS",1)
!Global("FHUDUpset2","LOCALS",1)
!Global("FHUDUpset3","LOCALS",1)
!Global("FHBregaUpset","GLOBAL",2)
!Global("FHBryceHere","GLOBAL",2)
!Global("FHNoFlirtsPostAvery","GLOBAL",1)
Global("NathMatch","GLOBAL",1)
!Global("FHVampEmotional","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",3)
!Global("FHNathStartFlirtSOA","GLOBAL",1)
GlobalGT("NathLoveTalk","LOCALS",29)
GlobalLT("NathLoveTalk","LOCALS",41)
CombatCounter(0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirt_LT17
SAY @1302 /* ~(A warm feeling grows in your chest as you approach Nathaniel, part protectiveness, part attraction. He looks up at you and smiles.)~ */
IF ~RandomNum(4,1)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks1
IF ~RandomNum(4,2)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks2
IF ~RandomNum(4,3)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT8thanks3
IF ~RandomNum(4,4)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT17thanks4
IF ~HPLT("Nath",10)~ THEN REPLY @1278 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_LT1how1
IF ~RandomNum(3,1)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how2
IF ~RandomNum(3,2)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how3
IF ~RandomNum(3,3)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT14how4
IF ~RandomNum(4,1)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back1
IF ~RandomNum(4,2)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back2
IF ~RandomNum(4,3)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT10back3
IF ~RandomNum(4,4)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT17back4
IF ~OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Global("FHSpellFlirt","LOCALS",0)~ THEN REPLY @1280 /* ~Have you ever tried casting a spell, Nathaniel?~ */ + FHFlirt_LT1spell
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(4,1)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal1
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(4,2)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal2
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(4,3)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal3
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(4,4)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT14heal4
IF ~Class(Player1,MONK) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race1a
IF ~Class(Player1,MONK) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT17race1b
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(3,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(3,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2b
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(3,3)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT17race2c
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(3,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3a
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(3,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3b
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(3,3)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT17race3c
IF ~RandomNum(5,1)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire1
IF ~RandomNum(5,2)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire2
IF ~RandomNum(5,3)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire3
IF ~RandomNum(5,4)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT14admire4
IF ~RandomNum(5,5)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT17admire5
IF ~RandomNum(6,1)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug1
IF ~RandomNum(6,2)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug2
IF ~RandomNum(6,3)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug3
IF ~RandomNum(6,4)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug4
IF ~RandomNum(6,5)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT17hug5
IF ~RandomNum(6,6)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT17hug6
IF ~RandomNum(5,1) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2a
IF ~RandomNum(5,3) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~RandomNum(5,1) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2b
IF ~RandomNum(5,3) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,1)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,2)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch2
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,3)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT10watch3
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,4)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT17watch4
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,5)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT17watch5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL) RandomNum(2,1)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT3spar1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL) RandomNum(2,2)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT17spar2
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,1)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,2)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake2
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,3)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT14cake3
IF ~Global("FHTickle","LOCALS",0)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7ticklefirst
IF ~Global("FHTickle","LOCALS",1) CheckStatGT(Player1,15,STR)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT17tickle1
IF ~Global("FHTickle","LOCALS",1) !CheckStatGT(Player1,15,STR)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT17tickle2
IF ~RandomNum(4,1)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle1
IF ~RandomNum(4,2)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle2
IF ~RandomNum(4,3)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle3
IF ~RandomNum(4,4)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle4
IF ~RandomNum(4,1)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link1
IF ~RandomNum(4,2)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link2
IF ~RandomNum(4,3)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link3
IF ~RandomNum(4,4)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT17link4
IF ~RandomNum(4,1)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket1
IF ~RandomNum(4,2)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket2
IF ~RandomNum(4,3)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket3
IF ~RandomNum(4,4)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT17blanket4
IF ~RandomNum(4,1)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face1
IF ~RandomNum(4,2)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face2
IF ~RandomNum(4,3)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face3
IF ~RandomNum(4,4)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT17face4
IF ~RandomNum(4,1)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair1
IF ~RandomNum(4,2)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair2
IF ~RandomNum(4,3)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair3
IF ~RandomNum(4,4)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT17hair4
IF ~RandomNum(5,1)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet1
IF ~RandomNum(5,2)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet2
IF ~RandomNum(5,3)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet3
IF ~RandomNum(5,4)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT14feet4
IF ~RandomNum(5,5)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT17feet5
IF ~RandomNum(3,1)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT17undress1
IF ~RandomNum(3,2)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT17undress2
IF ~RandomNum(3,3)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT17undress3
IF ~OR(4)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN)
Kit(Player1,CAVALIER)
Kit(Player1,UNDEADHUNTER)~ THEN REPLY @1300 /* ~(Cast Resist Fear on Nathaniel.)~ */ + FHFlirt_LT10fear1
IF ~Global("FHBiteNeck","LOCALS",0)~ THEN REPLY @1304 /* ~(Bite Nathaniel's neck.)~ */ + FHFlirt_LT17biteneck
IF ~RandomNum(2,1)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT17neck1
IF ~RandomNum(2,2)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT17neck2
IF ~RandomNum(4,1)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss1
IF ~RandomNum(4,2)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss2
IF ~RandomNum(4,3)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss3
IF ~RandomNum(4,4)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss4
IF ~RandomNum(3,1)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT17growl1
IF ~RandomNum(3,2)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT17growl2
IF ~RandomNum(3,3)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT17growl3
IF ~RandomNum(4,1)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest1
IF ~RandomNum(4,2)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest2
IF ~RandomNum(4,3)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest3
IF ~RandomNum(4,4)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest4
IF ~RandomNum(3,1)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT17ear1
IF ~RandomNum(3,2)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT17ear2
IF ~RandomNum(3,3)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT17ear3
IF ~RandomNum(4,1)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake1
IF ~RandomNum(4,2)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake2
IF ~RandomNum(4,3)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake3
IF ~RandomNum(4,4)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake4
++ @1311 /* ~I'm not sure this is working, Nathaniel. I don't think we should carry on this relationship.~ */ + FHDumpMean
++ @1286 /* ~Nathaniel, stop chatting to me every few minutes. I need to concentrate.~ */ + FHDisableFlirts
++ @1287 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

//Romantic: lovetalk 20 onwards, no sex

IF ~IsGabber(Player1)
!Global("FHLT2Upset","GLOBAL",1)
!Global("FHFlirtsDisabled","GLOBAL",1)
!Global("FHSeeBregaComplain","GLOBAL",1)
!Global("FHUDUpset1","LOCALS",1)
!Global("FHUDUpset2","LOCALS",1)
!Global("FHUDUpset3","LOCALS",1)
!Global("FHBregaUpset","GLOBAL",2)
!Global("FHBryceHere","GLOBAL",2)
!Global("FHNoFlirtsPostAvery","GLOBAL",1)
!Global("FHVampEmotional","GLOBAL",1)
Global("NathMatch","GLOBAL",1)
GlobalGT("FHNathSleep","GLOBAL",0)
GlobalLT("FHNathSleep","GLOBAL",3)
!Global("NathRomanceActive","GLOBAL",3)
!Global("FHNathStartFlirtSOA","GLOBAL",1)
CombatCounter(0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirt_LT20
SAY @1302 /* ~(A warm feeling grows in your chest as you approach Nathaniel, part protectiveness, part attraction. He looks up at you and smiles.)~ */
IF ~~ THEN REPLY @1312 /* ~We're about to rest, Nathaniel. I've been thinking, and ... I'd like for us to sleep together. How do you feel about it?~ */ + FHFlirt_sleep
IF ~RandomNum(4,1)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks1
IF ~RandomNum(4,2)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks2
IF ~RandomNum(4,3)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT8thanks3
IF ~RandomNum(4,4)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT17thanks4
IF ~HPLT("Nath",10)~ THEN REPLY @1278 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_LT1how1
IF ~RandomNum(4,1)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT19how5
IF ~RandomNum(4,2)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how2
IF ~RandomNum(4,3)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how3
IF ~RandomNum(4,4)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT14how4
IF ~RandomNum(4,1)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back1
IF ~RandomNum(4,2)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back2
IF ~RandomNum(4,3)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT10back3
IF ~RandomNum(4,4)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT17back4
IF ~OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Global("FHSpellFlirt","LOCALS",0)~ THEN REPLY @1280 /* ~Have you ever tried casting a spell, Nathaniel?~ */ + FHFlirt_LT1spell
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,1)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT20heal5
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,2)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal1
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,3)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */  + FHFlirt_LT1heal2
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,4)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal3
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,5)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT14heal4
IF ~Class(Player1,MONK) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race1a
IF ~Class(Player1,MONK) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT17race1b
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(3,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(3,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2b
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(3,3)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT17race2c
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(3,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3a
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(3,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3b
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(3,3)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT17race3c
IF ~!Global("FHSayLove","LOCALS",1)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20lovefirst
IF ~Global("FHSayLove","LOCALS",1) RandomNum(4,1)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20love1
IF ~Global("FHSayLove","LOCALS",1) RandomNum(4,2)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20love2
IF ~Global("FHSayLove","LOCALS",1) RandomNum(4,3)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20love3
IF ~Global("FHSayLove","LOCALS",1) RandomNum(4,4)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20love4
IF ~RandomNum(5,1)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire1
IF ~RandomNum(5,2)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire2
IF ~RandomNum(5,3)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire3
IF ~RandomNum(5,4)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT14admire4
IF ~RandomNum(5,5)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT17admire5
IF ~RandomNum(6,1)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug1
IF ~RandomNum(6,2)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug2
IF ~RandomNum(6,3)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug3
IF ~RandomNum(6,4)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug4
IF ~RandomNum(6,5)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT17hug5
IF ~RandomNum(6,6)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT17hug6
IF ~RandomNum(5,1) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2a
IF ~RandomNum(5,3) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~RandomNum(5,1) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2b
IF ~RandomNum(5,3) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,1)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,2)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch2
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,3)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT10watch3
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,4)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT17watch4
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,5)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT17watch5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL) RandomNum(2,1)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT3spar1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL) RandomNum(2,2)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT17spar2
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,1)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,2)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake2
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,3)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT14cake3
IF ~AreaType(FOREST) RandomNum(4,1)~ THEN REPLY @1314 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_LT19fflower1
IF ~AreaType(FOREST) RandomNum(4,2)~ THEN REPLY @1314 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_LT19fflower2
IF ~AreaType(FOREST) RandomNum(4,3)~ THEN REPLY @1314 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_LT19fflower3
IF ~AreaType(FOREST) RandomNum(4,4)~ THEN REPLY @1314 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_LT19fflower4
IF ~AreaType(CITY) RandomNum(4,1)~ THEN REPLY @1315 /* ~(Buy Nathaniel flowers.)~ */ + FHFlirt_LT19cflower1
IF ~AreaType(CITY) RandomNum(4,2)~ THEN REPLY @1315 /* ~(Buy Nathaniel flowers.)~ */ + FHFlirt_LT19cflower2
IF ~AreaType(CITY) RandomNum(4,3)~ THEN REPLY @1315 /* ~(Buy Nathaniel flowers.)~ */ + FHFlirt_LT19cflower3
IF ~AreaType(CITY) RandomNum(4,4)~ THEN REPLY @1315 /* ~(Buy Nathaniel flowers.)~ */ + FHFlirt_LT19cflower4
IF ~Global("FHTickle","LOCALS",0)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7ticklefirst
IF ~Global("FHTickle","LOCALS",1) CheckStatGT(Player1,15,STR)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT17tickle1
IF ~Global("FHTickle","LOCALS",1) !CheckStatGT(Player1,15,STR)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT17tickle2
IF ~RandomNum(5,1)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle1
IF ~RandomNum(5,2)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle2
IF ~RandomNum(5,3)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle3
IF ~RandomNum(5,4)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle4
IF ~RandomNum(5,5)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT20whistle5
IF ~RandomNum(4,1)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link1
IF ~RandomNum(4,2)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link2
IF ~RandomNum(4,3)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link3
IF ~RandomNum(4,4)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT17link4
IF ~RandomNum(4,1)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket1
IF ~RandomNum(4,2)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket2
IF ~RandomNum(4,3)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket3
IF ~RandomNum(4,4)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT17blanket4
IF ~RandomNum(4,1)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face1
IF ~RandomNum(4,2)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face2
IF ~RandomNum(4,3)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face3
IF ~RandomNum(4,4)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT17face4
IF ~RandomNum(4,1)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair1
IF ~RandomNum(4,2)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair2
IF ~RandomNum(4,3)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair3
IF ~RandomNum(4,4)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT17hair4
IF ~RandomNum(5,1)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet1
IF ~RandomNum(5,2)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet2
IF ~RandomNum(5,3)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet3
IF ~RandomNum(5,4)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT14feet4
IF ~RandomNum(5,5)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT17feet5
IF ~RandomNum(3,1)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT17undress1
IF ~RandomNum(3,2)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT17undress2
IF ~RandomNum(3,3)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT17undress3
IF ~OR(4)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN)
Kit(Player1,CAVALIER)
Kit(Player1,UNDEADHUNTER)~ THEN REPLY @1300 /* ~(Cast Resist Fear on Nathaniel.)~ */ + FHFlirt_LT10fear1
IF ~Global("FHBiteNeck","LOCALS",0)~ THEN REPLY @1304 /* ~(Bite Nathaniel's neck.)~ */ + FHFlirt_LT17biteneck
IF ~RandomNum(4,1)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT17neck1
IF ~RandomNum(4,2)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT17neck2
IF ~RandomNum(4,3)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT20neck2
IF ~RandomNum(4,4)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT20neck4
IF ~RandomNum(4,1)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss1
IF ~RandomNum(4,2)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss2
IF ~RandomNum(4,3)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss3
IF ~RandomNum(4,4)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss4
IF ~RandomNum(3,1)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT17growl1
IF ~RandomNum(3,2)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT17growl2
IF ~RandomNum(3,3)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT17growl3
IF ~RandomNum(4,1)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest1
IF ~RandomNum(4,2)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest2
IF ~RandomNum(4,3)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest3
IF ~RandomNum(4,4)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest4
IF ~RandomNum(4,1)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT17ear1
IF ~RandomNum(4,2)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT17ear2
IF ~RandomNum(4,3)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT17ear3
IF ~RandomNum(4,4)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT20ear4
IF ~RandomNum(4,1)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake1
IF ~RandomNum(4,2)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake2
IF ~RandomNum(4,3)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake3
IF ~RandomNum(4,4)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake4
IF ~RandomNum(3,1)~ THEN REPLY @1316 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_LT19thigh1
IF ~RandomNum(3,2)~ THEN REPLY @1316 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_LT19thigh2
IF ~RandomNum(3,3)~ THEN REPLY @1316 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_LT19thigh3
++ @1311 /* ~I'm not sure this is working, Nathaniel. I don't think we should carry on this relationship.~ */ + FHDumpMean2
++ @1286 /* ~Nathaniel, stop chatting to me every few minutes. I need to concentrate.~ */ + FHDisableFlirts
++ @1287 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

//Romantic: after sex

IF ~IsGabber(Player1)
!Global("FHLT2Upset","GLOBAL",1)
!Global("FHFlirtsDisabled","GLOBAL",1)
!Global("FHSeeBregaComplain","GLOBAL",1)
!Global("FHUDUpset1","LOCALS",1)
!Global("FHUDUpset2","LOCALS",1)
!Global("FHUDUpset3","LOCALS",1)
!Global("FHBregaUpset","GLOBAL",2)
!Global("FHBryceHere","GLOBAL",2)
!Global("FHNoFlirtsPostAvery","GLOBAL",1)
!Global("FHVampEmotional","GLOBAL",1)
Global("NathMatch","GLOBAL",1)
Global("FHNathSleep","GLOBAL",3)
!Global("NathRomanceActive","GLOBAL",3)
!Global("FHNathStartFlirtSOA","GLOBAL",1)
CombatCounter(0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirt_postsex
SAY @1317 /* ~(Even when he is doing nothing, Nathaniel makes you tingle with love and warmth when he is near. You are close to him in mind, soul and body, and as you approach him you know that you wouldn't change that for the world.)~ */
IF ~RandomNum(4,1)~ THEN REPLY @1318 /* ~(Whisper in Nathaniel's ear) Tonight you're mine, Nathaniel.~ */ + FHFlirt_LT22mine1
IF ~RandomNum(4,2)~ THEN REPLY @1318 /* ~(Whisper in Nathaniel's ear) Tonight you're mine, Nathaniel.~ */ + FHFlirt_LT22mine2
IF ~RandomNum(4,3)~ THEN REPLY @1318 /* ~(Whisper in Nathaniel's ear) Tonight you're mine, Nathaniel.~ */ + FHFlirt_LT22mine3
IF ~RandomNum(4,4)~ THEN REPLY @1318 /* ~(Whisper in Nathaniel's ear) Tonight you're mine, Nathaniel.~ */ + FHFlirt_LT22mine4
IF ~RandomNum(4,1)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks1
IF ~RandomNum(4,2)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks2
IF ~RandomNum(4,3)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT8thanks3
IF ~RandomNum(4,4)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT17thanks4
IF ~HPLT("Nath",10)~ THEN REPLY @1278 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_LT1how1
IF ~RandomNum(4,1)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT19how5
IF ~RandomNum(4,2)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how2
IF ~RandomNum(4,3)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how3
IF ~RandomNum(4,4)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT14how4
IF ~RandomNum(4,1)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back1
IF ~RandomNum(4,2)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back2
IF ~RandomNum(4,3)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT10back3
IF ~RandomNum(4,4)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT17back4
IF ~OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Global("FHSpellFlirt","LOCALS",0)~ THEN REPLY @1280 /* ~Have you ever tried casting a spell, Nathaniel?~ */ + FHFlirt_LT1spell
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,1)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT20heal5
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,2)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal1
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,3)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal2
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,4)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal3
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(5,5)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT14heal4
IF ~Class(Player1,MONK) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race1a
IF ~Class(Player1,MONK) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT17race1b
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(3,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(3,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2b
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(3,3)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT17race2c
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(3,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3a
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(3,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3b
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) !CheckStatGT(Player1,12,CON) RandomNum(3,3)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT17race3c
IF ~!Global("FHSayLove","LOCALS",1)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20lovefirst
IF ~Global("FHSayLove","LOCALS",1) RandomNum(4,1)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20love1
IF ~Global("FHSayLove","LOCALS",1) RandomNum(4,2)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20love2
IF ~Global("FHSayLove","LOCALS",1) RandomNum(4,3)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20love3
IF ~Global("FHSayLove","LOCALS",1) RandomNum(4,4)~ THEN REPLY @1313 /* ~I love you, Nathaniel.~ */ + FHFlirt_LT20love4
IF ~RandomNum(5,1)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire1
IF ~RandomNum(5,2)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire2
IF ~RandomNum(5,3)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire3
IF ~RandomNum(5,4)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT14admire4
IF ~RandomNum(5,5)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT17admire5
IF ~RandomNum(6,1)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug1
IF ~RandomNum(6,2)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug2
IF ~RandomNum(6,3)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug3
IF ~RandomNum(6,4)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug4
IF ~RandomNum(6,5)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT17hug5
IF ~RandomNum(6,6)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT17hug6
IF ~RandomNum(5,1) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2a
IF ~RandomNum(5,3) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT22confuse3
IF ~RandomNum(5,4) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~RandomNum(5,1) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2b
IF ~RandomNum(5,3) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT22confuse3
IF ~RandomNum(5,4) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,1)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,2)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch2
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,3)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT10watch3
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,4)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT17watch4
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(5,5)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT17watch5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL) RandomNum(2,1)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT3spar1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL) RandomNum(2,2)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT17spar2
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(4,1)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(4,2)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake2
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(4,3)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT14cake3
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(4,4)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT22cake4
IF ~AreaType(FOREST) RandomNum(4,1)~ THEN REPLY @1314 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_LT19fflower1
IF ~AreaType(FOREST) RandomNum(4,2)~ THEN REPLY @1314 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_LT19fflower2
IF ~AreaType(FOREST) RandomNum(4,3)~ THEN REPLY @1314 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_LT19fflower3
IF ~AreaType(FOREST) RandomNum(4,4)~ THEN REPLY @1314 /* ~(Pick Nathaniel flowers.)~ */ + FHFlirt_LT19fflower4
IF ~AreaType(CITY) RandomNum(4,1)~ THEN REPLY @1315 /* ~(Buy Nathaniel flowers.)~ */ + FHFlirt_LT19cflower1
IF ~AreaType(CITY) RandomNum(4,2)~ THEN REPLY @1315 /* ~(Buy Nathaniel flowers.)~ */ + FHFlirt_LT19cflower2
IF ~AreaType(CITY) RandomNum(4,3)~ THEN REPLY @1315 /* ~(Buy Nathaniel flowers.)~ */ + FHFlirt_LT19cflower3
IF ~AreaType(CITY) RandomNum(4,4)~ THEN REPLY @1315 /* ~(Buy Nathaniel flowers.)~ */ + FHFlirt_LT19cflower4
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(4,1)~ THEN REPLY @1319 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_LT22cbath1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(4,2)~ THEN REPLY @1319 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_LT22cbath2
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(4,3)~ THEN REPLY @1319 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_LT22cbath3
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(4,4)~ THEN REPLY @1319 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_LT22cbath4
IF ~AreaType(FOREST) RandomNum(4,1)~ THEN REPLY @1319 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_LT22fbath1
IF ~AreaType(FOREST) RandomNum(4,2)~ THEN REPLY @1319 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_LT22fbath2
IF ~AreaType(FOREST) RandomNum(4,3)~ THEN REPLY @1319 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_LT22fbath3
IF ~AreaType(FOREST) RandomNum(4,4)~ THEN REPLY @1319 /* ~(Bathe with Nathaniel.)~ */ + FHFlirt_LT22fbath4
IF ~Global("FHTickle","LOCALS",0)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7ticklefirst
IF ~Global("FHTickle","LOCALS",1) CheckStatGT(Player1,15,STR)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT17tickle1
IF ~Global("FHTickle","LOCALS",1) !CheckStatGT(Player1,15,STR)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT17tickle2
IF ~RandomNum(5,1)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle1
IF ~RandomNum(5,2)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle2
IF ~RandomNum(5,3)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle3
IF ~RandomNum(5,4)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle4
IF ~RandomNum(5,5)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT20whistle5
IF ~RandomNum(4,1)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link1
IF ~RandomNum(4,2)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link2
IF ~RandomNum(4,3)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link3
IF ~RandomNum(4,4)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT17link4
IF ~RandomNum(4,1)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket1
IF ~RandomNum(4,2)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket2
IF ~RandomNum(4,3)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket3
IF ~RandomNum(4,4)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT17blanket4
IF ~RandomNum(4,1)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face1
IF ~RandomNum(4,2)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face2
IF ~RandomNum(4,3)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT10face3
IF ~RandomNum(4,4)~ THEN REPLY @1297 /* ~(Touch Nathaniel's face.)~ */ + FHFlirt_LT17face4
IF ~RandomNum(4,1)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair1
IF ~RandomNum(4,2)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair2
IF ~RandomNum(4,3)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT10hair3
IF ~RandomNum(4,4)~ THEN REPLY @1298 /* ~(Touch Nathaniel's hair.)~ */ + FHFlirt_LT17hair4
IF ~RandomNum(5,1)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet1
IF ~RandomNum(5,2)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet2
IF ~RandomNum(5,3)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet3
IF ~RandomNum(5,4)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT14feet4
IF ~RandomNum(5,5)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT17feet5
IF ~RandomNum(4,1)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT17undress1
IF ~RandomNum(4,2)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT17undress2
IF ~RandomNum(4,3)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT17undress3
IF ~RandomNum(4,4)~ THEN REPLY @1303 /* ~(Undress Nathaniel with your eyes.)~ */ + FHFlirt_LT22undress4
IF ~OR(4)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN)
Kit(Player1,CAVALIER)
Kit(Player1,UNDEADHUNTER)~ THEN REPLY @1300 /* ~(Cast Resist Fear on Nathaniel.)~ */ + FHFlirt_LT10fear1
IF ~Global("FHBiteNeck","LOCALS",0)~ THEN REPLY @1304 /* ~(Bite Nathaniel's neck.)~ */ + FHFlirt_LT17biteneck
IF ~RandomNum(4,1)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT17neck1
IF ~RandomNum(4,2)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT17neck2
IF ~RandomNum(4,3)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT20neck2
IF ~RandomNum(4,4)~ THEN REPLY @1305 /* ~(Kiss Nathaniel's neck.)~ */ + FHFlirt_LT20neck4
IF ~RandomNum(5,1)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss1
IF ~RandomNum(5,2)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss2
IF ~RandomNum(5,3)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT17kiss3
IF ~RandomNum(5,4)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT22kiss4
IF ~RandomNum(5,5)~ THEN REPLY @1306 /* ~(Kiss Nathaniel.)~ */ + FHFlirt_LT22kiss5
IF ~RandomNum(4,1)~ THEN REPLY @1320 /* ~(Kiss Nathaniel passionately.)~ */ + FHFlirt_LT22passion1
IF ~RandomNum(4,2)~ THEN REPLY @1320 /* ~(Kiss Nathaniel passionately.)~ */ + FHFlirt_LT22passion2
IF ~RandomNum(4,3)~ THEN REPLY @1320 /* ~(Kiss Nathaniel passionately.)~ */ + FHFlirt_LT22passion3
IF ~RandomNum(4,4)~ THEN REPLY @1320 /* ~(Kiss Nathaniel passionately.)~ */ + FHFlirt_LT22passion4
IF ~RandomNum(4,1)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT17growl1
IF ~RandomNum(4,2)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT17growl2
IF ~RandomNum(4,3)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT17growl3
IF ~RandomNum(4,4)~ THEN REPLY @1307 /* ~(Growl at Nathaniel.)~ */ + FHFlirt_LT22growl4
IF ~RandomNum(4,1)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest1
IF ~RandomNum(4,2)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest2
IF ~RandomNum(4,3)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest3
IF ~RandomNum(4,4)~ THEN REPLY @1308 /* ~(Trace Nathaniel's chest with your fingers.)~ */ + FHFlirt_LT17chest4
IF ~RandomNum(4,1)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT17ear1
IF ~RandomNum(4,2)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT17ear2
IF ~RandomNum(4,3)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT17ear3
IF ~RandomNum(4,4)~ THEN REPLY @1309 /* ~(Nibble Nathaniel's ear.)~ */ + FHFlirt_LT20ear4
IF ~RandomNum(4,1)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake1
IF ~RandomNum(4,2)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake2
IF ~RandomNum(4,3)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake3
IF ~RandomNum(4,4)~ THEN REPLY @1310 /* ~(Feed Nathaniel cake.)~ */ + FHFlirt_LT17feedcake4
IF ~RandomNum(4,1)~ THEN REPLY @1316 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_LT19thigh1
IF ~RandomNum(4,2)~ THEN REPLY @1316 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_LT19thigh2
IF ~RandomNum(4,3)~ THEN REPLY @1316 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_LT19thigh3
IF ~RandomNum(4,4)~ THEN REPLY @1316 /* ~(Stroke Nathaniel's thigh.)~ */ + FHFlirt_LT22thigh4
IF ~RandomNum(4,1)~ THEN REPLY @1321 /* ~(Slap Nathaniel's rear.)~ */ + FHFlirt_LT22slap1
IF ~RandomNum(4,2)~ THEN REPLY @1321 /* ~(Slap Nathaniel's rear.)~ */ + FHFlirt_LT22slap2
IF ~RandomNum(4,3)~ THEN REPLY @1321 /* ~(Slap Nathaniel's rear.)~ */ + FHFlirt_LT22slap3
IF ~RandomNum(4,4)~ THEN REPLY @1321 /* ~(Slap Nathaniel's rear.)~ */ + FHFlirt_LT22slap4
++ @1311 /* ~I'm not sure this is working, Nathaniel. I don't think we should carry on this relationship.~ */ + FHDumpMean3
++ @1286 /* ~Nathaniel, stop chatting to me every few minutes. I need to concentrate.~ */ + FHDisableFlirts
++ @1287 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

//Platonic: friendtalks 1-7

IF ~IsGabber(Player1)
!Global("FHLT2Upset","GLOBAL",1)
!Global("FHNoFlirtsPostAvery","GLOBAL",1)
Global("NathFriendMatch","GLOBAL",1)
Global("FHFlirtsDisabled","GLOBAL",1)
!Global("FHSeeBregaComplain","GLOBAL",1)
!Global("FHBregaUpset","GLOBAL",2)
!Global("FHBryceHere","GLOBAL",2)
!Global("NathFriend","GLOBAL",2)
GlobalGT("NathFriendTalk","LOCALS",1)
GlobalLT("NathFriendTalk","LOCALS",15)
CombatCounter(0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirt_FT1
SAY @1276 /* ~(You regard Nathaniel as he scans the surroundings around you. He doesn't notice you as you approach, too lost in his thoughts.)~ */
IF ~RandomNum(2,1)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks1
IF ~RandomNum(2,2)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks2
IF ~HPLT("Nath",10)~ THEN REPLY @1278 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_LT1how1
IF ~RandomNum(2,1)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how2
IF ~RandomNum(2,2)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how3
IF ~OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Global("FHSpellFlirt","LOCALS",0)~ THEN REPLY @1280 /* ~Have you ever tried casting a spell, Nathaniel?~ */ + FHFlirt_LT1spell
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,1)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal1
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,2)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal2
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,3)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal3
IF ~Class(Player1,MONK)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race1a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2b
IF ~!Class(Player1,MONK) CheckStatLT(Player1,14,DEX) CheckStatLT(Player1,13,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3a
IF ~!Class(Player1,MONK) CheckStatLT(Player1,14,DEX) CheckStatLT(Player1,13,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3b
IF ~RandomNum(2,1)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire1
IF ~RandomNum(2,2)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire3
IF ~RandomNum(5,1) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2a
IF ~RandomNum(5,3) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~RandomNum(5,1) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2b
IF ~RandomNum(5,3) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
++ @1286 /* ~Nathaniel, stop chatting to me every few minutes. I need to concentrate.~ */ + FHDisableFlirts
++ @1287 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

//Platonic: friendtalks 7-11

IF ~IsGabber(Player1)
!Global("FHLT2Upset","GLOBAL",1)
!Global("FHFlirtsDisabled","GLOBAL",1)
!Global("FHSeeBregaComplain","GLOBAL",1)
!Global("FHBregaUpset","GLOBAL",2)
!Global("FHBryceHere","GLOBAL",2)
!Global("FHNoFlirtsPostAvery","GLOBAL",1)
Global("NathFriendMatch","GLOBAL",1)
!Global("NathFriend","GLOBAL",2)
GlobalGT("NathFriendTalk","LOCALS",15)
GlobalLT("NathFriendTalk","LOCALS",21)
CombatCounter(0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirt_FT9
SAY @1276 /* ~(You regard Nathaniel as he scans the surroundings around you. He doesn't notice you as you approach, too lost in his thoughts.)~ */
IF ~RandomNum(3,1)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks1
IF ~RandomNum(3,2)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks2
IF ~RandomNum(3,3)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT8thanks3
IF ~HPLT("Nath",10)~ THEN REPLY @1278 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_LT1how1
IF ~RandomNum(2,1)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how2
IF ~RandomNum(2,2)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how3
IF ~RandomNum(3,1)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back1
IF ~RandomNum(3,2)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back2
IF ~RandomNum(3,3)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT10back3
IF ~OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Global("FHSpellFlirt","LOCALS",0)~ THEN REPLY @1280 /* ~Have you ever tried casting a spell, Nathaniel?~ */ + FHFlirt_LT1spell
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,1)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */  + FHFlirt_LT1heal1
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,2)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal2
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,3)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal3
IF ~Class(Player1,MONK)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race1a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2b
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) CheckStatLT(Player1,13,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3a
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) CheckStatLT(Player1,13,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3b
IF ~RandomNum(2,1)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire1
IF ~RandomNum(2,2)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire3
IF ~RandomNum(4,1)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug1
IF ~RandomNum(4,2)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug2
IF ~RandomNum(4,3)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug3
IF ~RandomNum(4,4)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug4
IF ~RandomNum(5,1) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2a
IF ~RandomNum(5,3) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~RandomNum(5,1) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2b
IF ~RandomNum(5,3) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,1)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,2)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch2
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,3)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT10watch3
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT3spar1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,1)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,2)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake2
IF ~Global("FHTickle","LOCALS",0)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7ticklefirst
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,1)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle1
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,2)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle2
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,3)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle3
IF ~RandomNum(3,1)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle1
IF ~RandomNum(3,2)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle2
IF ~RandomNum(3,3)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle3
IF ~RandomNum(3,1)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link1
IF ~RandomNum(3,2)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link2
IF ~RandomNum(3,3)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link3
IF ~RandomNum(3,1)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket1
IF ~RandomNum(3,2)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket2
IF ~RandomNum(3,3)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket3
IF ~RandomNum(3,1)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet1
IF ~RandomNum(3,2)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet2
IF ~RandomNum(3,3)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet3
IF ~OR(4)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN)
Kit(Player1,CAVALIER)
Kit(Player1,UNDEADHUNTER)~ THEN REPLY @1300 /* ~(Cast Resist Fear on Nathaniel.)~ */ + FHFlirt_LT10fear1
++ @1286 /* ~Nathaniel, stop chatting to me every few minutes. I need to concentrate.~ */ + FHDisableFlirts
++ @1287 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

//Platonic: friendtalk 11 onwards

IF ~IsGabber(Player1)
!Global("FHLT2Upset","GLOBAL",1)
!Global("FHFlirtsDisabled","GLOBAL",1)
!Global("FHSeeBregaComplain","GLOBAL",1)
!Global("FHBregaUpset","GLOBAL",2)
!Global("FHBryceHere","GLOBAL",2)
!Global("FHNoFlirtsPostAvery","GLOBAL",1)
Global("NathFriendMatch","GLOBAL",1)
!Global("NathFriend","GLOBAL",2)
GlobalGT("NathFriendTalk","LOCALS",21)
CombatCounter(0)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")~ THEN BEGIN FHFlirt_FT13
SAY @1276 /* ~(You regard Nathaniel as he scans the surroundings around you. He doesn't notice you as you approach, too lost in his thoughts.)~ */ 
IF ~RandomNum(3,1)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks1
IF ~RandomNum(3,2)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT1thanks2
IF ~RandomNum(3,3)~ THEN REPLY @1277 /* ~I'm glad you're here, Nathaniel. Thank you for all your help.~ */ + FHFlirt_LT8thanks3
IF ~HPLT("Nath",10)~ THEN REPLY @1278 /* ~Are you all right? You're looking battered.~ */ + FHFlirt_LT1how1
IF ~RandomNum(2,1)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how2
IF ~RandomNum(2,2)~ THEN REPLY @1279 /* ~How are you doing, Nathaniel?~ */ + FHFlirt_LT1how3
IF ~RandomNum(3,1)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back1
IF ~RandomNum(3,2)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT4back2
IF ~RandomNum(3,3)~ THEN REPLY @1288 /* ~Nathaniel, my back's so stiff. Could you help?~ */ + FHFlirt_LT10back3
IF ~OR(2)
Class(Player1,MAGE_ALL)
Class(Player1,BARD_ALL)
Global("FHSpellFlirt","LOCALS",0)~ THEN REPLY @1280 /* ~Have you ever tried casting a spell, Nathaniel?~ */ + FHFlirt_LT1spell
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,1)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal1
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,2)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal2
IF ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,CLERIC_ALL)
RandomNum(3,3)~ THEN REPLY @1281 /* ~Can I heal you, Nathaniel?~ */ + FHFlirt_LT1heal3
IF ~Class(Player1,MONK)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race1a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2a
IF ~!Class(Player1,MONK) CheckStatGT(Player1,14,DEX) CheckStatGT(Player1,12,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race2b
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) CheckStatLT(Player1,13,CON) RandomNum(2,1)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3a
IF ~!Class(Player1,MONK) CheckStatLT(Player1,15,DEX) CheckStatLT(Player1,13,CON) RandomNum(2,2)~ THEN REPLY @1282 /* ~Race you to that spot!~ */ + FHFlirt_LT1race3b
IF ~RandomNum(2,1)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire1
IF ~RandomNum(2,2)~ THEN REPLY @1283 /* ~(Admire Nathaniel.)~ */ + FHFlirt_LT1admire3
IF ~RandomNum(4,1)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug1
IF ~RandomNum(4,2)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug2
IF ~RandomNum(4,3)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug3
IF ~RandomNum(4,4)~ THEN REPLY @1289 /* ~(Hug Nathaniel.)~ */ + FHFlirt_LT3hug4
IF ~RandomNum(5,1) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2a
IF ~RandomNum(5,3) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) !CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~RandomNum(5,1) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse1
IF ~RandomNum(5,2) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse2b
IF ~RandomNum(5,3) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse3
IF ~RandomNum(5,4) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse4
IF ~RandomNum(5,5) CheckStatGT(Player1,11,DEX)~ THEN REPLY @1284 /* ~(Confuse Nathaniel.)~ */ + FHFlirt_LT1confuse5
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,1)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch1
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,2)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT3watch2
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)
RandomNum(3,3)~ THEN REPLY @1290 /* ~(Watch Nathaniel's sword practice.)~ */ + FHFlirt_LT10watch3
IF ~OR(3) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~
THEN REPLY @1291 /* ~(Spar with Nathaniel.)~ */ + FHFlirt_LT3spar1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,1)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake1
IF
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
RandomNum(3,2)~ THEN REPLY @1292 /* ~(Eat cake at Nathaniel.)~ */ + FHFlirt_LT5cake2
IF ~Global("FHTickle","LOCALS",0)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7ticklefirst
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,1)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle1
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,2)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle2
IF ~Global("FHTickle","LOCALS",1) RandomNum(3,3)~ THEN REPLY @1293 /* ~(Tickle Nathaniel.)~ */ + FHFlirt_LT7tickle3
IF ~RandomNum(3,1)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle1
IF ~RandomNum(3,2)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle2
IF ~RandomNum(3,3)~ THEN REPLY @1294 /* ~(Wolf whistle at Nathaniel.)~ */ + FHFlirt_LT7whistle3
IF ~RandomNum(3,1)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link1
IF ~RandomNum(3,2)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link2
IF ~RandomNum(3,3)~ THEN REPLY @1295 /* ~(Link arms with Nathaniel.)~ */ + FHFlirt_LT7link3
IF ~RandomNum(3,1)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket1
IF ~RandomNum(3,2)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket2
IF ~RandomNum(3,3)~ THEN REPLY @1296 /* ~(Wrap a blanket around Nathaniel.)~ */ + FHFlirt_LT10blanket3
IF ~RandomNum(3,1)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet1
IF ~RandomNum(3,2)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet2
IF ~RandomNum(3,3)~ THEN REPLY @1299 /* ~(Massage Nathaniel's feet.)~ */ + FHFlirt_LT10feet3
IF ~OR(4)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN)
Kit(Player1,CAVALIER)
Kit(Player1,UNDEADHUNTER)~ THEN REPLY @1300 /* ~(Cast Resist Fear on Nathaniel.)~ */ + FHFlirt_LT10fear1
++ @1286 /* ~Nathaniel, stop chatting to me every few minutes. I need to concentrate.~ */ + FHDisableFlirts
++ @1287 /* ~(Leave Nathaniel alone.)~ */ EXIT
END

IF ~Global("FHSoAMorningAfter","LOCALS",1)~ THEN BEGIN FHSoAMorningAfter
SAY @1322 /* ~Mmm, that was lovely, <CHARNAME>. Do we have time to lie for a while?~ */ 
++ @1323 /* ~No, it's time to go, I'm afraid.~ */ + NathLT22_timetogo
++ @1324 /* ~(Laugh and poke him) Come on, sleepy.~ */ + NathLT22_poke
++ @1325 /* ~Mmm. I think we have time to wait a while.~ */ + NathLT22_wait2
++ @1326 /* ~Of course we have time, Nathaniel. Being with you like this is worth anything.~ */ + NathLT22_wait2
++ @1327 /* ~Sorry for falling asleep. Shall we get going?~ */ + NathLT22_getgoing
++ @1328 /* ~Ugh. You messed up my blankets. Come on, let's go.~ */ + NathLT22_getgoing
++ @1329 /* ~Well, that's that. Shoo, I need to get dressed.~ */ + NathLT22_getgoing
END

IF ~~ THEN BEGIN NathLT22_timetogo
SAY @1330 /* ~(He groans but gives you a light kiss.)~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN NathLT22_poke
SAY @1331 /* ~(He groans and tries to hide under the blanket, but surfaces and gives you a light kiss.)~ */ 
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN NathLT22_wait
SAY @1332 /* ~Wonderful!~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2) RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT22_wait2
SAY @1333 /* ~Ooh, wonderful. Now, where were we before we fell asleep?~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2) RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT22_getgoing
SAY @1334 /* ~Wh-what? We've got a couple of minutes, surely?~ */
++ @1335 /* ~Yes, but I don't need all that romantic nonsense. Come on.~ */ + NathLT22_nonsense
++ @1336 /* ~Fine, fine. We'll stay a little.~ */ + NathLT22_staylittle
++ @1337 /* ~I need to go and wash, Nathaniel. What's wrong with that?~ */ + NathLT22_wash
END

IF ~~ THEN BEGIN NathLT22_nonsense
SAY @1338 /* ~Nonsense? But - but I like to care for you! It isn't just sleeping together, it's everything!~ */
++ @1339 /* ~Everything?~ */ + NathLT22_everything
++ @1340 /* ~You're wrong. It *is* just sleeping together.~ */ + NathLT22_justsex
++ @1341 /* ~Well, now I've got what I wanted out of you, what's the point in hanging about?~ */ + NathLT22_justsex2
END

IF ~~ THEN BEGIN NathLT22_staylittle
SAY @1342 /* ~If ... if you don't want to, that's fine, but I just thought it would be nice--~ */
++ @1343 /* ~Well, if you don't mind, come on. Let's be off.~ */ + NathLT22_beoff
++ @1344 /* ~Nathaniel, I just said we could! What's wrong with you?~ */ + NathLT22_wrong
END

IF ~~ THEN BEGIN NathLT22_wash
SAY @1345 /* ~Nothing, nothing. Sorry, <CHARNAME>, I'm just a little edgy.~ */
++ @1346 /* ~Forget the wash. You'll soon relax when I do *this*...~ */ + NathLT22_this
++ @1347 /* ~Edgy? Why?~ */ + NathLT22_edgy
++ @1348 /* ~Ssh. Don't be.~ */ + NathLT22_hush
END

IF ~~ THEN BEGIN NathLT22_everything
SAY @1349 /* ~I - I mean, like us caring about each other, and holding each other, and... You don't *understand*, do you? I thought you loved me ... but you don't understand what I want... I--~ */
++ @1350 /* ~Hush, please. I just ... I've never been with someone before! I don't know what you expect...~ */ + NathLT22_expect
++ @1351 /* ~No - look, I'm sorry. I thought ... I thought that was the way men did things, I didn't realise...~ */ + NathLT22_realise
++ @1352 /* ~I don't *want* to understand!~ */ + NathLT22_justsex2
END

IF ~~ THEN BEGIN NathLT22_justsex
SAY @1353 /* ~No! It's not! Look, I made a fool of myself, and I'll ... I need to go.~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)
SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathLT22_justsex2
SAY @1354 /* ~Oh ... look, I made a fool of myself, and I'll ... I need to go...~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)
SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathLT22_beoff
SAY @1355 /* ~I ... yes, all right. Sorry. For being edgy.~ */ 
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN NathLT22_wrong
SAY @1356 /* ~Nothing, nothing. I'm sorry. I'm just a little edgy.~ */
++ @1357 /* ~Edgy? Why? We've just had a really good time.~ */ + NathLT22_edgy2
++ @1358 /* ~Well, you'll relax when I do *this*...~ */ + NathLT22_this
++ @1359 /* ~Sssh. Don't be.~ */ + NathLT22_hush2
END

IF ~~ THEN BEGIN NathLT22_this
SAY @1360 /* ~Oh! Mmm, come here...~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2) RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT22_edgy
SAY @1361 /* ~I don't know. It was so nice, and then ... well ... you were quite abrupt just now. It made me wonder whether it was the right thing to do.~ */
++ @1362 /* ~Don't be silly. It was the perfect thing to do.~ */ + NathLT22_perfect
++ @1363 /* ~It's just I've never done this before. I wasn't sure what you expected.~ */ + NathLT22_expect
++ @1364 /* ~I'm sorry. I've never been with a man like this before, and I wasn't sure what you expected.~ */ + NathLT22_realise
++ @1365 /* ~Does it matter whether it was the right thing? We had a good time, didn't we?~ */ + NathLT22_justsex2
END

IF ~~ THEN BEGIN NathLT22_hush
SAY @1366 /* ~All right. Mmm, you really do smell nice...~ */
=
@1367 /* ~Oh, sorry, you wanted to wash, didn't you? Go on - I'll be waiting here for you.~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN NathLT22_expect
SAY @1368 /* ~All I expect is consideration, <CHARNAME>. I'm sorry for not making it clear to you, but ... next time, think about it, all right? Anyway, we should be getting on.~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN NathLT22_realise
SAY @1369 /* ~All I want is consideration, <CHARNAME>. I'm sorry for not making it clear to you, but ... next time, think about it, all right? Anyway, we should be getting on.~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN NathLT22_edgy2
SAY @1361 /* ~I don't know. It was so nice, and then ... well ... you were quite abrupt just now. It made me wonder whether it was the right thing to do.~ */
++ @1362 /* ~Don't be silly. It was the perfect thing to do.~ */ + NathLT22_perfect2
++ @1363 /* ~It's just I've never done this before. I wasn't sure what you expected.~ */ + NathLT22_expect
++ @1364 /* ~I'm sorry. I've never been with a man like this before, and I wasn't sure what you expected.~ */ + NathLT22_realise
++ @1365 /* ~Does it matter whether it was the right thing? We had a good time, didn't we?~ */ + NathLT22_justsex2
END

IF ~~ THEN BEGIN NathLT22_hush2
SAY @1370 /* ~All right. Mmm, you smell nice...~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN NathLT22_perfect
SAY @1371 /* ~It was. Thank you. Mmm, you smell nice...~ */
=
@1372 /* ~Oh sorry, you wanted to wash, didn't you? Go on - I'll be waiting here for you.~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN NathLT22_perfect2
SAY @1373 /* ~(He snuggles closer to you, stroking your hair.)~ */
=
@1374 /* ~It was. Thank you.~ */
IF ~~ THEN DO ~SetGlobal("FHSoAMorningAfter","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN FHDump
SAY @1375 /* ~I see.~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN FHDisableFlirts
SAY @1376 /* ~Of course! Sorry, I didn't mean to distract you.~ */
IF ~~ THEN DO
~SetGlobal("FHFlirtsDisabled","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1thanks1
SAY @1377 /* ~Oh! Well, you're welcome, though I think it's not me you should be patting on the back - it's *you*.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1thanks2
SAY @1378 /* ~Thank you - I'm glad that I'm here, helping you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1how1
SAY @1379 /* ~I ... feel a little ... could someone heal me?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1how2
SAY @1380 /* ~Hmm? I'm fine, thank you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1how3
SAY @1381 /* ~What? Sorry, I was thinking.~ */
++ @1382 /* ~Unfamiliar territory, I see.~ */ + FHFlirt_LT1how3a
++ @1383 /* ~As long as you're all right.~ */ + FHFlirt_LT1how3b
++ @1384 /* ~I don't know why I bother, with the attention you give me back!~ */ + FHFlirt_LT1how3c
END

IF ~~ THEN BEGIN FHFlirt_LT1how3a
SAY @1385 /* ~Hey!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1how3b
SAY @1386 /* ~(He smiles warmly.) Yes, I'm fine. Thank you, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1how3c
SAY @1387 /* ~Oh, <CHARNAME>, you know I pay attention to you!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1spell
SAY @1388 /* ~That's ... um ... I've never been any good at that sort of thing.~ */
=
@1389 /* ~(He is much less stubborn than you, however, and gives in when you insist upon it. You lead him away from the others and try to coach him into casting even the most simple of spells, but he really has no skill.)~ */
=
@1390 /* ~(It may be your presence or simply a good mood, that makes Nathaniel care little about his magical skill - or rather, lack of it. He watches your demonstrations with obvious admiration, and doesn't seem bothered when you give up on your first pupil.)~ */
IF ~~ THEN DO ~SetGlobal("FHSpellFlirt","LOCALS",1)~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1admire1
SAY @1391 /* ~(In a blessedly peaceful moment, you take the time to properly take stock of Nathaniel's appearance.)~ */
=
@1392 /* ~(Your gaze lingers on a few features - his muscled calves, his long fingers as he absent-mindedly flexes them - but rests finally on his face.)~ */
=
@1393 /* ~(His expression is pinched, somewhat troubled, with a crease settled between his eyebrows. Except for these lines his skin is smooth.)~ */
=
@1394 /* ~(When he sees you watching him the worry lines deepen further, then smooth out. He smiles at you briefly then turns away.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1admire2
SAY @1395 /* ~(Your eyes are drawn to Nathaniel's hair. You have noticed that he pays it little attention beyond keeping it clean and combing it with his fingers in the mornings, so it is a wonder that it is so soft and shiny; it practically begs to be touched.)~ */
=
@1396 /* ~(As if in response to your thoughts, Nathaniel runs his hand through the thick waves, mussing them. It is probably longer than how he kept it back in Baldur's Gate, and you offer a quick prayer of thanks that he hasn't had time to have it trimmed.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1admire3
SAY @1397 /* ~(You watch Nathaniel as he walks ahead of you, noting his confident stride that, you know, belies his uncertainties. His shoulders are a little drooped and you suspect that he is thinking of Latimer. He glances back at you.)~ */ 
=
@1398 /* ~What is it? Am I too far ahead?~ */ 
=
@1399 /* ~(He slows to a walk beside you and it is plain that he is pleased to do so.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1confuse1
SAY @1400 /* ~(You take your weapon and harmlessly but insistently poke Nathaniel's feet, while ordering him to "Dance, dance!".)~ */ 
=
@1401 /* ~(He yelps and the hopping movements he makes to try and avoid you do indeed look like a strange kind of jig.)~ */ 
=
@1402 /* ~<CHARNAME>, if you want me to do something, you could always ask normally!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1confuse2a
SAY @1403 /* ~(You come up to Nathaniel and fall into step on his left. He nods and smiles at you, then turns back to the road.)~ */
=
@1404 /* ~(Slowly, so as to not draw attention to yourself, you stretch out your arm so it hovers by his right shoulder. He notices none of this, so you tap him and withdraw your hand.)~ */
=
@1405 /* ~(Nathaniel immediately turns around to see who touched him, and you misjudge the amount he moves and hit him in the back of the head in your haste.)~ */
=
@1406 /* ~(He smiles humouringly.) I'm not *that* gullible!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1confuse2b
SAY @1403 /* ~(You come up to Nathaniel and fall into step on his left. He nods and smiles at you, then turns back to the road.)~ */
=
@1404 /* ~(Slowly, so as to not draw attention to yourself, you stretch out your arm so it hovers by his right shoulder. He notices none of this, so you tap him and withdraw your hand.)~ */
=
@1407 /* ~(He turns round to see who touched him, but obviously there is no one there. Your ploy has gone as planned, and he is none the wiser.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1confuse3
SAY @1408 /* ~(Adventuring is thirsty business and your mouth feels even dryer when you see Nathaniel take out his waterskin and swig from it heartily.)~ */
++ @1409 /* ~(point) Look, Elminster!~ */ + FHFlirt_LT1confuse3a
END

IF ~~ THEN BEGIN FHFlirt_LT1confuse3a
SAY @1410 /* ~(When Nathaniel turns to look, you pull the drink from his hands and hide it behind your back, giving an innocent look when he asks for it back. He sighs, laughing a little, and leaves you with his drink in your hands.)~ */
=
@1411 /* ~(Your plan having proved a success, you content yourself with flicking droplets of water at Nathaniel when he isn't looking.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1confuse4
SAY @1412 /* ~(You school your face into an expression of appropriate concern and approach Nathaniel. You touch his shirt gently, at his sternum, and tell him that there's something there.)~ */
=
@1413 /* ~(When he looks down to check, you flick him on the nose. There is a long pause, then Nathaniel breaks into a grin.) Ah, but what did I do to deserve such cruel treatment?~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1confuse5
SAY @1414 /* ~(Nathaniel is walking companionably by your side and all is calm. You can't resist the temptation to stick your foot out in his path.)~ */
=
@1415 /* ~(You catch him completely unawares, but he catches himself, regains his footing, and shoots you a wounded look.)~ */
=
@1416 /* ~(You are sure that your innocent expression is just that, but it doesn't fool Nathaniel and he watches your feet carefully as you carry on.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1heal1
SAY @1417 /* ~Thank you ... it's very kind of you.~ */
IF ~~ THEN DO ~ActionOverride(Player1,ForceSpell("Nath",CLERIC_CURE_LIGHT_WOUNDS))~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1heal2
SAY @1418 /* ~Yes, please ... it would be lovely.~ */ 
=
@1419 /* ~(He closes his eyes as you heal him, then smiles warmly, gripping your shoulder for a second in thanks.)~ */
IF ~~ THEN DO ~ActionOverride(Player1,ForceSpell("Nath",CLERIC_CURE_LIGHT_WOUNDS))~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1heal3
SAY @1420 /* ~<CHARNAME>, I don't need healing *all* the time - I'm fine right now. Ask me after the next battle.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1race1a
SAY @1421 /* ~(Nathaniel stares at you for a second then smiles.) All right, <CHARNAME>.~ */
=
@1422 /* ~(You pace out a hundred yards and lay your pack down, then jog back to him. He counts to three, and you start to sprint towards the pack.)~ */
=
@1423 /* ~(Your natural speed means that you gain more ground than him, and it is clear who the winner is. He is a good-natured loser and shakes your hand amiably when he reaches you.)~ */
=
@1424 /* ~I'm glad we didn't sort out any forfeits!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1race2a
SAY @1223 /* ~All right, then.~ */
=
@1425 /* ~(Though Nathaniel is fast he lacks stamina, and is out of breath by the time you reach the finishing spot.)~ */
=
@1426 /* ~(Nevertheless, the exercise has obviously done Nathaniel good: when he reaches you his eyes are bright and his face is healthily flushed.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1race2b
SAY @1421 /* ~(Nathaniel stares at you for a second then smiles.) All right, <CHARNAME>.~ */
=
@1422 /* ~(You pace out a hundred yards and lay your pack down, then jog back to him. He counts to three, and you start to sprint towards the pack.)~ */
=
@1427 /* ~(It's a close-run thing but you win by a hair, and Nathaniel congratulates you at the same time as trying to get his breath back. You turn back to the road, adrenaline ready to fuel you for a long while yet.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1race3a
SAY @1428 /* ~(Nathaniel stares at you for a second then smiles.) All right, <CHARNAME>...~ */
=
@1429 /* ~(You pace out a hundred yards and lay your pack down, then walk back to him. He counts to three, and you start to sprint towards the pack.)~ */ 
=
@1430 /* ~(Very soon, you know that he is going to be the winner. When he reaches the pack, he looks back at you and then down at the floor, chagrined. He smiles at you as you near him.)~ */
=
@1431 /* ~Don't worry. Maybe next time you'll do better!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT1race3b
SAY @1432 /* ~(Nathaniel stares at you for a second, then smiles.) All right, <CHARNAME>...~ */
=
@1433 /* ~(Your answer is to start running whilst he's still getting ready, and you only speed up when you hear his outraged cry and the crunch of his boots chasing you.)~ */
=
@1434 /* ~(He catches you up as you reach the target and laughs.) We'll *call* it a draw, but only because you're in charge!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT3watch1
SAY @1435 /* ~(When the party pauses for a minute, Nathaniel takes out his swords and checks them over, running his fingers over the blades carefully to make sure the metal is holding up.)~ */
=
@1436 /* ~(Even though he seems to enjoy looking over them, it seems that they only make his loved ones' absentia harder to bear, for he looks sad for a moment.)~ */
=
@1437 /* ~(You go and sit by him, and he smiles to himself as he finishes the equipment check.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT3watch2
SAY @1438 /* ~(Nathaniel takes advantage of a brief rest to go through some moves with his swords by himself. You settle down to watch him, but the way his eyes keep on flicking over at you suggests that your presence is more than a little distracting.)~ */
=
@1439 /* ~(Finally he gives in and sits down by you, not looking at your face.) Perhaps next time you can spar with me, instead of just putting me off?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT3spar1
SAY @1440 /* ~(Nathaniel seems somewhat edgy when you pause, so you shuck off your pack and coax him into sparring with you. He accepts a little nervously but once his mind is on the moves rather than you, he relaxes and gracefully blocks your attacks, not going on the offensive himself.)~ */
=
@1441 /* ~(You attack him harder, beating him back, and finally he unleashes at you, fighting for all he is worth. The two of you are well-matched and the sparring session goes on until you both have to stop to catch your breath.)~ */
=
@1442 /* ~That was fun, <CHARNAME>! I'd like to do it again.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT3hug1
SAY @1443 /* ~(Nathaniel seems surprised at your affection, but returns the hug nonetheless.)~ */
=
@1444 /* ~(When you release him, there is a smile on his face that takes a long while to fade.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT3hug2
SAY @1445 /* ~(There is an unusual ferocity in the way Nathaniel returns your hug; he seems unwilling to let go of you. After a moment he pulls away sharply.)~ */ 
=
@1446 /* ~I-- sorry about that. But thank you, it was nice.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT3hug3
SAY @1447 /* ~(His expression is pained as he tries to smile at you.) No, <CHARNAME>, I-- Not right now.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT3hug4
SAY @1448 /* ~(He affectionately but firmly pushes you away.) Come on, I don't need comforting *all* the time.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT4back1
SAY @1449 /* ~Surely someone else would be better? I'm not exactly ... trained. I wouldn't want to accidentally hurt you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT4back2
SAY @1450 /* ~(Nathaniel apprehensively puts his hands on your shoulders and rubs. Though the touch does little to soothe your back muscles, it is highly enjoyable.)~ */
++ @1451 /* ~Thank you, Nathaniel.~ */ + FHFlirt_LT4back2a
++ @1452 /* ~Mmmmmmm.~ */ + FHFlirt_LT4back2b
++ @1453 /* ~Lower! Higher! Left! Right! YES!~ */ + FHFlirt_LT4back2c
END

IF ~~ THEN BEGIN FHFlirt_LT4back2a
SAY @1454 /* ~You're welcome. Anytime you need me, I'll - I'll do what I can.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT4back2b
SAY @1455 /* ~(He laughs and returns to formation.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT4back2c
SAY @1456 /* ~(He pulls his hands away from you and stares at you quizzically before blushing and looking away.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT5cake1
SAY @1457 /* ~(You go to buy a slice of cake and sit at a table with Nathaniel. When you extravagantly break off a piece of the confection and devour it with many lip-smacking sound effects, he snorts with laughter.)~ */
=
@1458 /* ~Oh, <CHARNAME>, you're ridiculous!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT5cake2
SAY @1459 /* ~(You return from the innkeeper with a slice of cake and eat it with relish. Nathaniel watches you eagerly, practically hopping from one foot to the other.)~ */ 
=
@1460 /* ~<CHARNAME> ... could I have some of that?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7ticklefirst
SAY @1461 /* ~Aaaaaah!~ */
=
@1462 /* ~I warn you, I'm rather ticklish!~ */
++ @1463 /* ~*Rather* ticklish?~ */ DO ~SetGlobal("FHTickle","LOCALS",1)~ + FHFlirt_LT7ticklefirsta
++ @1464 /* ~You shouldn't have told me that ... I'll use it as a weapon!~ */ DO ~SetGlobal("FHTickle","LOCALS",1)~ + FHFlirt_LT7ticklefirstb
++ @1465 /* ~All right. I'll only do it when I really, really want to.~ */ DO ~SetGlobal("FHTickle","LOCALS",1)~ + FHFlirt_LT7ticklefirstc
END

IF ~~ THEN BEGIN FHFlirt_LT7ticklefirsta
SAY @1466 /* ~All right, *very* ticklish.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7ticklefirstb
SAY @1467 /* ~(He affects an overly concerned expression, then smiles at you.) I'll keep an eye out, then.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7ticklefirstc
SAY @1468 /* ~That's good to know ... I think.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7tickle1
SAY @1469 /* ~(Nathaniel is unsuspecting as you creep up behind him and lightly dig your fingers into his sides. He stiffens and slips away from your fingers, biting back a cry, and when he sees that you are the culprit, he stares at you in part-annoyance.)~ */ 
=
@1470 /* ~<CHARNAME> - don't do that!~ */
=
@1471 /* ~(He smiles to soften the rebuke but he is obviously serious.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7tickle2
SAY @1472 /* ~(You lightly tickle the back of Nathaniel's neck and he yelps, ducking away from your hand. You cannot help but laugh at him as he dances away from you, protecting his neck from further abuse with one hand.)~ */
=
@1473 /* ~<CHARNAME>! Don't you dare, or I'll - I'll come over there and ... well, I can assure you that whatever I do, you *won't* like it!~ */
=
@1474 /* ~(He presses his lips together to try and stop himself from laughing, shooting wary glances at you as you carry on.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7tickle3
SAY @1475 /* ~(When you approach Nathaniel with outstretched fingers, he jumps backwards and holds out his hands to ward you off.)~ */
=
@1476 /* ~I know what you're planning, <CHARNAME> ... and I'm having none of it!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7whistle1
SAY @1477 /* ~(You purse your lips and whistle at Nathaniel. The piercing sound draws his attention to you in a flash.)~ */ 
=
@1478 /* ~<CHARNAME>, what are you-- no, never mind.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7whistle2
SAY @1479 /* ~I ... I'm not sure what that was supposed to mean, <CHARNAME> ... you can really be strange sometimes.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7whistle3
SAY @1480 /* ~(Nathaniel's cheeks colour and his eyebrows pinch together.) You're making fun of me, aren't you? I know what that - that sound signifies.~ */ 
=
@1481 /* ~Still, it's-- it's flattering.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7link1
SAY @1482 /* ~(You slip an arm around Nathaniel's elbow. He stiffens but makes no move to get away from you.)~ */
=
@1483 /* ~(Gradually he relaxes, and you walk companionably side by side.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7link2
SAY @1484 /* ~(Nathaniel's face closes off and he pulls his arm away. His shoulders tremble for a moment, then he looks back at you.)~ */
=
@1485 /* ~Sorry, I ... don't worry. (He lays a hand on your arm and keeps it there for several minutes as you walk before withdrawing.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7link3
SAY @1486 /* ~(Nathaniel smiles a little nervously at you, and squeezes your arm with his.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT8thanks3
SAY @1487 /* ~I'm glad I'm of use - I want to help you do the things you're so famous for!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10watch3
SAY @1488 /* ~(As you watch Nathaniel go through a drill with his weapons you notice a persistent error, a subtle mishandling of his offhand weapon which irks you slightly. You go up to him and slowly take his hand in yours, correcting the position of his fingers.)~ */
=
@1489 /* ~(You realise that he is trembling, and that his fingers twitch when you touch them. Impulsively, you cover his hand with your palm and squeeze it gently, and his grip on his sword tightens. He smiles at you, drawing his hand away.)~ */
=
@1490 /* ~Thank you, <CHARNAME>. It's nice having someone look out for ... the little things.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10back3
SAY @1491 /* ~(Nathaniel rests his hands on your mid-back and rubs the offending muscles, his fingers trembling. His unsure touch relaxes after a few seconds and he gains confidence, the warmth of his hands seeping through the fabric of your clothes.)~ */ 
=
@1492 /* ~I hope that helped, <CHARNAME>. You deserve to at least have a good back!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10blanket1
SAY @1493 /* ~(Your situation demands a tiring schedule and you do not regret travelling whenever you can. Still, you feel a twinge of sympathy when you spot Nathaniel shivering and looking generally miserable.)~ */
=
@1494 /* ~(You pull a blanket from your pack and wrap it over Nathaniel's shoulders, ignoring his murmured protests.)~ */
=
@1495 /* ~Really, <CHARNAME>, you don't have to do that.~ */
++ @1496 /* ~No, but I wanted to.~ */ + FHFlirt_LT10blanket1a
++ @1497 /* ~I'll take it back if you really want me to!~ */ + FHFlirt_LT10blanket1b
++ @1498 /* ~Well, I can't have one of my best fighters dropping his swords because of cold fingers, can I?~ */ + FHFlirt_LT10blanket1c
END

IF ~~ THEN BEGIN FHFlirt_LT10blanket1a
SAY @1499 /* ~Mmm ... thank you, then. I'll give it back when it warms up.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10blanket1b
SAY @1500 /* ~That's not what I meant! Thank you, I do appreciate it. (He pulls the blanket tighter around himself and smiles at you.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10blanket1c
SAY @1501 /* ~(The flush on his cheeks is perhaps not only from the cold. He smiles, avoiding your eyes.) Then I'll warm up as quickly as I can.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10blanket2
SAY @1502 /* ~(Though you are sure that he has travelled in worse conditions that this, Nathaniel is shivering and stamping his feet to warm himself up.)~ */
=
@1503 /* ~(You fish a spare blanket from your pack and throw it at him. He catches it deftly, stares at it for a few seconds uncomprehendingly, then his face lights up and he smiles gratefully.)~ */ 
=
@1504 /* ~Thank you, <CHARNAME>. I needed this!~ */    
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10blanket3
SAY @1505 /* ~(Over the past hour or so you have become increasingly aware of Nathaniel's discomfort in the cool air. As you begin to become exasperated at his shivering and arm-rubbing, you realise that he'll never give in and get his blanket out from his pack: he wouldn't want to hold you up and attract attention.)~ */
=
@1506 /* ~(Deciding to take matters into your own hands, you get your own blanket out and throw it around his shoulders sternly. Nathaniel manages to look grateful and chagrined at the same time, and huddles in the thick cloth as you carry on.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10face1
SAY @1507 /* ~(You reach out and gently brush your finger across the smooth skin of Nathaniel's cheekbone, then trace a line down the side of his face. He watches your finger closely, straining his eyes to see it, and you can't resist touching the tip of his nose to make him go cross-eyed.)~ */
=
@1508 /* ~Very funny, <CHARNAME>.~ */    
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10face2
SAY @1509 /* ~(Nathaniel moves away from your touch, smiling quizzically.)~ */
=
@1510 /* ~If you want my attention, you could always just ask normally.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10face3
SAY @1511 /* ~(Nathaniel blinks rapidly when your fingers touch his cheek and leans forward into your hand.)~ */
=
@1512 /* ~(You watch a blush rise up his face and feel its warmth against your fingers. He shakes his head, quickly enough to throw your hand off.)~ */
=
@1513 /* ~Sorry, I ... you startled me.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10hair1
SAY @1514 /* ~(You reach out and touch Nathaniel's hair, which is even softer than it looks. He twitches his head away and looks at you curiously.)~ */
=
@1515 /* ~Do you think I should get it cut? It's a bit long, maybe...~ */ 
++ @1516 /* ~I love your hair the way it is, Nathaniel.~ */ + FHFlirt_LT10hair1a
++ @1517 /* ~As long as it doesn't interfere with battle, it's fine.~ */ + FHFlirt_LT10hair1b
++ @1518 /* ~I think it's fine right now.~ */ + FHFlirt_LT10hair1c
++ @1519 /* ~Do what *you* want, not what I think. It's your hair, after all.~ */ + FHFlirt_LT10hair1d
END

IF ~~ THEN BEGIN FHFlirt_LT10hair2
SAY @1520 /* ~(When you touch the hair at Nathaniel's temple his hand joins yours as if he thinks that there's something there that you're trying to remove.)~ */ 
=
@1521 /* ~(Your fingers twine around each other, and Nathaniel pulls your hand away from his head, blushing. However, he does not let go of your hand as you carry on walking.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10hair3
SAY @1522 /* ~Don't do that, <CHARNAME> ... it's a little distracting.~ */   
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10hair1a
SAY @1523 /* ~(He blushes and touches his hair nervously, smoothing it down against his head.) Thank you, I ... that's nice of you to say.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10hair1b
SAY @1524 /* ~Oh, it doesn't, I assure you, and I'll make sure it stays that way.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10hair1c
SAY @1525 /* ~(He touches his hair nervously, smoothing it down against his head.) If you're sure.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10hair1d
SAY @1526 /* ~(He smiles a little, then turns away, thoughtfully fiddling with a lock at the nape of his neck.) I think I'll keep it this way, then.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10feet1
SAY @1527 /* ~(You catch Nathaniel limping slightly and call for a quick stop, insisting on giving him a foot massage to ease his muscles. His confused expression remains even when you have him seated atop his blanket with his feet in your hands.)~ */
=
@1528 /* ~(He tries to twitch out of your grip; any ticklishness he suffers from is dwarfed by the sensitivity of his feet. Just with the gentle touch of your fingers, he is faintly flushed and is obviously trying to keep himself quiet. It looks more nerve-wracking for him than relaxing, so you stop.)~ */ 
=
@1529 /* ~(His expression is an equal mix of relief and disappointment, but he smiles genuinely at you.)~ */
=
@1530 /* ~Maybe when we're in private.~ */
=
@1531 /* ~Oh! I didn't mean ... er, never mind.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10feet2
SAY @1532 /* ~What - what are you doing? Stop that!~ */    
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10feet3
SAY @1533 /* ~(No matter your original intentions, once you are massaging Nathaniel's foot you cannot resist mercilessly tickling him.)~ */
=
@1534 /* ~Ah - no - you traitor!~ */ 
=
@1535 /* ~(He pulls his foot away from you and yanks his boot back on, his breathless giggles making his reprimand less than threatening.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT10fear1
SAY @1536 /* ~(You notice that Nathaniel seems pale and twitchy and is watching his surroundings with unusual nervousness. His breath hitches, and his grip on his swords is turning his knuckles white.)~ */ 
=
@1537 /* ~(You call upon your god to help ease his fear. He gains colour and visibly relaxes in a few seconds. He pauses, then turns to you, shocked.)~ */
=
@1538 /* ~I ... there aren't many people in the world who would do that for me, I-- thank you.~ */     
IF ~~ THEN DO ~ActionOverride(Player1,ApplySpell("Nath",WIZARD_RESIST_FEAR))~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT14how4
SAY @1539 /* ~I'm feeling ... worlds better, thanks to you.~ */    
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT14heal4
SAY @1540 /* ~(His cheeks redden, though the rest of his face stays pale.) Thank you, that would be ... yes, thank you.~ */
IF ~~ THEN DO ~ActionOverride(Player1,ForceSpell("Nath",CLERIC_CURE_LIGHT_WOUNDS))~ EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT14admire4
SAY @1541 /* ~(You lose yourself for a few moments looking at Nathaniel, admiring the way the light makes his eyes sparkle and picks reddish highlights in his hair.)~ */
=
@1542 /* ~(He squares his shoulders and a faint flush warms his cheeks: he has noticed your appraisal. He makes eye contact with you and smiles before looking away.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT14cake3
SAY @1543 /* ~(You take advantage of a short break to buy yourself a piece of light, fruity cake. You slowly nibble, purposely ending up smudging a little on the corner of your mouth and you can tell that Nathaniel is trying not to look at it. In fact, he is trying not to look interested at all but is failing entirely.)~ */
=
@1544 /* ~(Finally, you lick the crumbs from your fingers. When Nathaniel sees your tongue flick out to catch them, he flushes a brilliant red and turns away, clearing his throat.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT7whistle4
SAY @1545 /* ~(Nathaniel looks over at you out of the corner of his eye. He looks as if he did not hear, but you know better.)~ */  
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT14feet4
SAY @1546 /* ~(You are not causing Nathaniel any kind of pain with your ministrations but he becomes more and more tense as the massage continues. You look up at him; he seems pained, studiously looking everywhere but you. His foot is twitching somewhat, so you let him go.)~ */
=
@1547 /* ~(He pulls on his boots and offers you a tremulous smile.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHDumpMean
SAY @1548 /* ~But you-- How *dare* you lead me on and then go back on your--~ */
=
@1549 /* ~Look. If ... that's what you want, I can't argue with you ... just leave me alone.~ */ 
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17undress1
SAY @1550 /* ~(No Amnish scenery could compare to the sight before you. You study Nathaniel with intense scrupulousness, and in your mind's eye you remove the pieces of clothing that interfere with your view.)~ */
=
@1551 /* ~(Nathaniel cannot help but notice the predatory smile on your face and blushes feverishly, looking away from you.)~ */
=
@1552 /* ~<CHARNAME>, don't ... don't do that. It's a little strange.~ */   
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17undress2
SAY @1553 /* ~(You turn the full force of your attention to Nathaniel ... or more specifically, the fine specimen that is his body.)~ */
=
@1554 /* ~(Whilst giving you the occasional headache in battle, the absence of protective leathers certainly aids you when you admire his physique. Still, you decide that the clothes he *is* wearing are too decent for your tastes, and in your mind you fix that problem.)~ */
=
@1555 /* ~(Nathaniel looks over at you and smiles.) I'm not sure what you're thinking, but that look ... I think I like it.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17undress3
SAY @1556 /* ~(The thought of Nathaniel's body is decidedly pleasing and takes up your full attention for several minutes.)~ */
=
@1557 /* ~<CHARNAME>? <CHARNAME>! What is it? Is something wrong?~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17thanks4
SAY @1558 /* ~No, <CHARNAME>, thank *you*. There is nowhere I'd rather be than here.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17admire5
SAY @1559 /* ~(When you focus your attention on Nathaniel, you see that you are currently the subject of his tender, focused scrutiny, his gaze filled with admiration and attraction.)~ */
=
@1560 /* ~(He jumps, having not realized you had noticed him.)~ */
=
@1561 /* ~Oh! Sorry, I'll stop staring.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17watch4
SAY @1562 /* ~(You amuse yourself during a short breather by watching Nathaniel practice moves with his weapons. Your fighter's eye appreciates his excellent form and technique, whilst your lover's eye appreciates a different sort of form altogether. He moves fluidly, oblivious to your attention until he happens to look directly at you; then, he stumbles slightly and turns it into an impressive turning slash.)~ */
=
@1563 /* ~(He is obviously trying to show off to you but he stops after a moment and sits down by your side, his thigh pressing against yours. He rests his head on your shoulder and you can feel his racing pulse against your skin. Slowly he relaxes, smiling against your shoulder, and sighs deeply.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17watch5
SAY @1564 /* ~(When Nathaniel falls into his regular sword practice, his moves are, as ever, hard to criticise. However, this does not stop you from coming up behind him and wrapping your arms around his shoulders and taking his hands in yours, pretending to correct a minor fault in his technique.)~ */
=
@1565 /* ~(You feel him laugh, and he presses his back against your chest languidly. You kiss the side of his neck gently, and he shivers before pulling out of your embrace.)~ */
=
@1566 /* ~Now ... let's not get distracted, all right?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17spar2
SAY @1567 /* ~(When you suggest a sparring practice together, Nathaniel pauses and shrugs indecisively. However, when you press the issue and he gives in.)~ */
=
@1568 /* ~(His heart doesn't seem to be in the match and you can tell that he doesn't want to get you hurt. He ends up stopping and giving you a light kiss on the lips.)~ */
=
@1569 /* ~I'd rather just be with you. Can we ... not do this right now?~ */ 
=
@1570 /* ~(You slip an arm around his waist and he smiles brightly at you before turning his attention back to the road.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17race1b
SAY @1571 /* ~(At your challenge Nathaniel grins and nods, taking off his pack and shucking it to the ground. You decide on a target and after counting to three, you sprint the seventy paces or so as fast as you can.)~ */
=
@1572 /* ~(Your abilities give you an edge in the race, and despite Nathaniel's determination you win easily. When he catches up with you, you can't help but admire the way the brief exertion has livened him: his cheeks are flushed healthily and his whole body is moving more fluidly.)~ */
=
@1573 /* ~(He leans in and kisses you on the lips.) You needed a prize, of course.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17race2c
SAY @1574 /* ~(Nathaniel grins and nods, taking off his pack and shucking it to the ground. You decide on a target and after counting to three, you both sprint the seventy paces or so as fast as you can.)~ */
=
@1575 /* ~(At first you are in front, but Nathaniel puts on an extra burst of speed and overtakes you. You grit your teeth and by some strange occurrence when you reach the target, you find that Nathaniel is a half-second later than you. You have the strong suspicion that Nathaniel may have let you win but you can't be sure, and his expression - pleased for you and not begrudging at all - doesn't help you decide.)~ */ 
=
@1576 /* ~(He pecks your cheek gently and withdraws, his affection for you clear as daylight in his eyes, and you decide that you don't really mind either way.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17race3c
SAY @1577 /* ~(Nathaniel grins and nods, taking off his pack and shucking it to the ground. You decide on a target and after counting to three, you both sprint the hundred and fifty paces or so as fast as you can.)~ */
=
@1578 /* ~(You suspect that Nathaniel will win the short race, so when you see that he is a little behind you, panting with almost too-obvious effort, you shoot him a particularly *Bhaalspawn* look. He flushes and begins to run in earnest. You force yourself to try to keep up with him to no avail.)~ */
=
@1579 /* ~(When you reach the end, definitely the loser, Nathaniel hugs you tightly and kisses you; he is obviously embarrassed, but you let it go.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17hug5
SAY @1580 /* ~(Nathaniel sighs and relaxes against your chest. His fingers play on the back of your neck and you both pause for a moment, escaping the realities of your adventuring.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17hug6
SAY @1581 /* ~(Almost melting into your embrace, Nathaniel rests his face in the crook of your neck and sighs, his breath tickling against your skin.)~ */
=
@1582 /* ~(You get the impression that he may have been needing this more than he let on, and your suspicions are confirmed when he does not let you go for several long moments, holding you almost painfully tight.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17back4
SAY @1583 /* ~(His hands are, for once, confident as they trace the shape of your stiff muscles along your shoulders and back. He takes his time working downwards, reaching your lower back in firm strokes that make your skin tingle.)~ */
=
@1584 /* ~(He wraps his arms around your chest, pressing himself against you, resting his face in the crook of your neck.)~ */
=
@1585 /* ~Whenever you need me, I'll ... I love to help you, <CHARNAME>. It's the least I can do.~ */    
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17tickle1
SAY @1586 /* ~(When you sidle over to Nathaniel and go to tickle his armpits, he grabs your wrists: he must have been expecting this from you for a while.)~ */
=
@1587 /* ~(You pull away from him, breaking his grip, and tickle him mercilessly. He starts giggling and collapses into your arms, pressing his lips clumsily against yours.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17tickle2
SAY @1586 /* ~(When you sidle over to Nathaniel and go to tickle his armpits, he grabs your wrists: he must have been expecting this from you for a while.)~ */
=
@1588 /* ~(You pull against him but you can't break his grip, and he wraps his arms around you, pinning your hands in place. He kisses you slowly, smiling when he withdraws.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17link4
SAY @1589 /* ~(His arm loops around yours comfortably, and the warmth of his side pressed close to yours is reassuring to the both of you. You stay that way for quite some time.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17blanket4
SAY @1590 /* ~(It is hard to be sure whether it is just the cold that is making Nathaniel tremble in such a violent manner as he is now, but you hope it is so.)~ */
=
@1591 /* ~(You come up behind him and gently lay your sleeping-blanket atop his shoulders. He sinks back against you, holding your arms against him so they drape against his chest, until the shivers stop.)~ */ 
=
@1592 /* ~(He kisses you lightly, smiling.) Thank you.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17face4
SAY @1593 /* ~(Nathaniel smiles as your fingers gently caress his cheek, and closes his eyes, nuzzling against your palm.)~ */
=
@1594 /* ~(He kisses your wrist, then your hand, taking it and holding it against his face. The contented smile he wears sends a flush of warmth through you.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17hair4
SAY @1595 /* ~(Nathaniel closes his eyes and leans against your hand as you run your fingers through his hair. He reaches up slowly to your head and mimics your movements, tenderly running his hand through your hair.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17feet5
SAY @1596 /* ~(Sitting on his blanket, Nathaniel offers you his feet at your suggestion and you kneel in front of him with his feet in your lap. You massage them firmly, with no light touches that could be construed as tickling, and by some miracle the attention is actually relaxing him.)~ */
=
@1597 /* ~(He smiles sleepily at you when you finish, and crawls over to you, kissing you lightly on the lips.)~ */
=
@1598 /* ~Thank you so much ... that was lovely.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17biteneck
SAY @1599 /* ~(You pull Nathaniel against you and wrap your arms around him, nuzzling his neck. He sighs, melting against you.)~ */
=
@1600 /* ~(When you open your mouth and bite the soft skin of his neck, he gasps and pushes you back with all his strength.)~ */
=
@1601 /* ~<CHARNAME>! I-- never, *never* do that again!~ */ 
IF ~~ THEN DO ~SetGlobal("FHBiteNeck","LOCALS",1)~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17kiss1
SAY @1602 /* ~Oh! Why...?~ */ 
++ @1603 /* ~Why not?~ */ + FHFlirt_LT17kiss1a
++ @1604 /* ~Because I wanted to.~ */ + FHFlirt_LT17kiss1a
++ @1605 /* ~You be quiet!~ */ + FHFlirt_LT17kiss1b
END

IF ~~ THEN BEGIN FHFlirt_LT17kiss1a
SAY @1606 /* ~Mmmm... then by all means you can do it again!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17kiss1b
SAY @1607 /* ~Yes sir!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17kiss2
SAY @1608 /* ~Mmmm! We should do that more often.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17kiss3
SAY @1609 /* ~(Your quick kiss leaves him standing open-mouthed, watching you with bright eyes.)~ */
=
@1610 /* ~(Before you have a chance to go back to formation, he leans closer and returns the favour.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17kiss4
SAY @1611 /* ~You know, you're almost as good as cake!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17growl1
SAY @1612 /* ~(Nathaniel flinches in surprise, then looks back at you. His face flushes faintly, but he turns on you the full force of his smile.)~ */
=
@1613 /* ~You're wonderful, <CHARNAME>. Everything you do, I ... I'm so grateful I'm with you.~ */ 
=
@1614 /* ~(He bites his bottom lip and looks ahead again.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17growl2
SAY @1615 /* ~I suppose I'm flattered ... even though it's a little strange.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17growl3
SAY @1616 /* ~What was that for, <CHARNAME>?~ */      
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17chest1
SAY @1617 /* ~(You press your hands against Nathaniel's collarbone, and slowly run your fingers across his chest, pressing firmly against the fabric of his shirt.~ */
=
@1618 /* ~(Your hands trace the contours of his chest, feeling out his muscles one by one. He does not have the most defined chest in Amn but it is certainly strong and lean.)~ */
=
@1619 /* ~(Looking at his face, you see that he has almost stopped breathing, watching you with a mix of guardedness and excitement. His face is growing steadily more flushed the lower your hands go.)~ */
=
@1620 /* ~Ah ... was there anything you needed?~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17chest2
SAY @1621 /* ~(Nathaniel grabs your hand tightly, but instead of stopping you he pulls so your bodies are almost touching and leans his forehead on your shoulder. He gently wraps your arm around him so you are in a tight embrace.)~ */
=
@1622 /* ~(When he draws back from you he gives you a warm smile.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17chest3
SAY @1623 /* ~(Nathaniel leans slowly against you and draws you into a long kiss. His breathing quickens slightly as you traverse his abdomen, drifting lower, but he draws your hands away.)~ */
=
@1624 /* ~(He kisses you again, lightly this time, and straightens his clothing, his face flushed. He smiles at you, brushing his hand against your cheek.)~ */
=
@1625 /* ~As lovely as that was ... maybe we shouldn't. Not in public, anyway?~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17chest4
SAY @1626 /* ~(Nathaniel bites his lip and gives you an almost coquettish look.) I'm glad you approve, <CHARNAME>.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17ear1
SAY @1627 /* ~(You gently nuzzle Nathaniel's neck and he leans against you, closing his eyes and sighing. Your mouth finds its way up to his ear and you nip it, breathing against his neck.)~ */
=
@1628 /* ~(He shivers and growls at the back of his throat, then pushes you away, his hands lingering on your shoulders.)~ */
=
@1629 /* ~You're very ... distracting!~ */      
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17ear2
SAY @1630 /* ~I - I... <CHARNAME>, that's ... sto-stop it, I can't think when you're doing that!~ */ 
=
@1631 /* ~Do it later when I don't have to think ... all right?~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17ear3
SAY @1632 /* ~(Nathaniel shivers and sighs at the touch of your mouth, then gently pushes you away.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17neck1
SAY @1633 /* ~(Nathaniel sighs contentedly as your lips touch him and leans backwards into your arms, against your chest. His shoulders are unusually relaxed as he reaches up to touch your cheek.)~ */
=
@1634 /* ~(You stand pressed against each other for a few minutes, but the moment has to end. Nathaniel turns around and kisses you on the lips, his eyes sparkling.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17neck2
SAY @1635 /* ~No - no - stop it, that tickles!~ */      
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17feedcake1
SAY @1636 /* ~(As the group stops for a brief rest, Nathaniel rummages around in his pack for, you suspect, something sweet to eat. His crestfallen expression shows that his food is lacking.)~ */
=
@1637 /* ~(You bought a small cake from a street vendor the last chance you could, and you take it from your pack now and break off a bite-sized chunk. As you approach him, his delighted grin is definitely worth the subterfuge.)~ */
=
@1638 /* ~(You hold the chunk to his lips and he eagerly lets you feed it to him, closing his eyes briefly to better enjoy the taste. A satisfied smile grows across his face, and you kiss the crumbs from his lips.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17feedcake2
SAY @1639 /* ~(Nathaniel reaches into his pack and bring out a small, paper-wrapped parcel. He carefully unwraps it and plucks out a square of dark brown, moist cake that leaves residue on his fingers.)~ */
=
@1640 /* ~(You reach out, take a chunk and ease the square of cake past his lips. He swallows it quickly, eyes locked with yours. His tongue flicks out to caress chocolate crumbs from your fingers.)~ */
=
@1641 /* ~(When he is finished, Nathaniel smiles shyly and loops his arm loosely around yours, stuffing the rest of the cake back into his pack: he is much more interested in you now.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17feedcake3
SAY @1642 /* ~Nathaniel is searching through his bag for some cake with increased confusion, disappointment writ large on his face. You tap him on the shoulder and hold up the chunk with a grin on your face, and he lunges for it, laughing.)~ */ 
=
@1643 /* ~Give that back, <CHARNAME>!~ */ 
=
@1644 /* ~(You give in and hold it out to him, and he bites a mouthful off whilst you're still holding it. He smiles and kisses you with sweetened lips.)~ */ 
=
@1645 /* ~You can keep the rest for ... later ... if you want.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT17feedcake4
SAY @1646 /* ~(You watch Nathaniel as he nibbles on a slice of cake. He notices your interest and holds out a large chunk of it for you to take.)~ */
=
@1647 /* ~(You take it and have a bite, grinning at him. He laughs and kisses you, then bends down and nibbles at the cake still left on your fingers, taking every last remnant of crumb and icing. The scrape of his teeth on your skin sends little shivers up your arm.)~ */
=
@1648 /* ~(He wipes his mouth clean, blushing.) You're ... the *cake* was tasty.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHDumpMean2
SAY @1649 /* ~But - but I *asked* you, and you said you were happy--~ */
=
@1650 /* ~Look. Just leave me alone.~ */ 
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19fflower1
SAY @1651 /* ~(As you walk you absentmindedly gather a handful of wild flowers, gaining several strange looks from the rest of the party, but it's worth it to see the flattered expression on Nathaniel's face when you present him with them.)~ */ 
=
@1652 /* ~Thank you, <CHARNAME>, that's...~ */ 
=
@1653 /* ~(He smiles and kisses you in thanks. You note, later, that one of the flowers is tucked behind a weapon strap on his chest over his heart. He touches it occasionally and smiles whenever he does.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19fflower2
SAY @1654 /* ~(When you give Nathaniel a handful of small flowers, he smiles warmly for a second ... then sneezes violently.)~ */
=
@1655 /* ~(He sniffs and gives them back, his eyes watery.) Perhaps you should hold them instead?~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19fflower3
SAY @1656 /* ~(You pluck a large pink flower from a nearby bush and tuck it behind Nathaniel's ear so it rests by his hairline. He gives you a pained look and tries to seem stern.)~ */
=
@1657 /* ~<CHARNAME>, that's... pink doesn't suit me!~ */   
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19fflower4
SAY @1658 /* ~Thank you, <CHARNAME>! But ... where can I put them? (Nathaniel passes the bunch of flowers from hand to hand anxiously before placing them carefully in his pack.)~ */      
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN FHFlirt_LT19cflower1
SAY @1659 /* ~(You make the party wait for you whilst you buy a bunch of flowers from a street vendor, then present them to Nathaniel. He takes them, smiling, and kisses you.)~ */
=
@1660 /* ~Thank you, <CHARNAME>, that's--~ */
=
@1661 /* ~(He breaks off and sneezes three times.) That wasn't meant as a criticism, honestly!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19cflower2
SAY @1662 /* ~(You quickly buy a selection of bright yellow and orange flowers from a nearby stall, presenting Nathaniel with them.)~ */
=
@1663 /* ~Oh, <CHARNAME>. You're so...~ */
=
@1664 /* ~(He kisses you lightly, wrapping his free arm around you.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19cflower3
SAY @1665 /* ~(Nathaniel smiles as you hand him a bunch of brightly-coloured flowers, but his face falls almost immediately.)~ */
++ @1666 /* ~Well, if you don't like them...~ */ + FHFlirt_LT19cflower3a
++ @1667 /* ~What's wrong?~ */ + FHFlirt_LT19cflower3b
++ @1668 /* ~Sorry. Are they not a colour you like?~ */ + FHFlirt_LT19cflower3a
++ @1669 /* ~(Hug him.)~ */ + FHFlirt_LT19cflower3c
END

IF ~~ THEN BEGIN FHFlirt_LT19cflower3a
SAY @1670 /* ~No ... it's not that ... it's just that flower, the kingcup - Latimer used to...~ */ 
=
@1671 /* ~(Nathaniel squares his shoulders and fixes his gaze on you.) I'll be all right. I'll learn to let bad things go, I promise. You're already helping me to.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19cflower3b
SAY @1672 /* ~That flower, the kingcup - Latimer used to...~ */ 
=
@1671 /* ~(Nathaniel squares his shoulders and fixes his gaze on you.) I'll be all right. I'll learn to let bad things go, I promise. You're already helping me to.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19cflower3c
SAY @1673 /* ~(Nathaniel sinks against you, then draws back, his gaze fixed on you.) Latimer used to give me those kinds of flowers. But I'll be all right. I'll learn to let bad things go, I promise.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19cflower4
SAY @1674 /* ~(The only flowers that you can find for sale are yellow chrysanthemums, but you have set your heart on buying Nathaniel a present, so you buy a bunch. He looks at them cautiously as you present them to him, but it is clear that he would rather eat the flowers than offend you.)~ */ 
=
@1675 /* ~They're lovely, <CHARNAME>. Thank you.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19thigh1
SAY @1676 /* ~(Nathaniel jumps and looks up at you, excited and embarrassed and nervous at once.)~ */
=
@1677 /* ~(You squeeze the muscle gently, and he removes your hand. He is smiling but his eyes are serious.)~ */
=
@1678 /* ~Not ... not in public. I don't want to draw attention to ourselves like that.~ */      
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19thigh2
SAY @1679 /* ~<CHARNAME> ... what - what are you ... no, don't mind me.~ */
=
@1680 /* ~(Nathaniel's eyebrows pinch together and he flushes, but he does nothing to stop you.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19thigh3
SAY @1681 /* ~(Nathaniel's eyes widen and he pulls you into a tight hug, kissing the side of your neck.)~ */
=
@1682 /* ~Um, shall we get going? Sorry ... I got a little carried away.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT19how5
SAY @1683 /* ~Need you even ask? With you with me I feel safe and - and loved, and I can only hope that I do the same for you.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20heal5
SAY @1684 /* ~Thank you. You're ... you're almost *too* good to me.~ */ 
IF ~~ THEN DO ~ActionOverride(Player1,ForceSpell("Nath",CLERIC_CURE_LIGHT_WOUNDS))~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20whistle5
SAY @1685 /* ~(Nathaniel slips an arm around your waist gently and squeezes you for a second before letting go.)~ */
=
@1686 /* ~Know that I love you, <CHARNAME> ... even when you do that.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20neck2
SAY @1687 /* ~(Nathaniel purrs softly as you press your lips to the hollow of his neck. He shivers, and you can see goosebumps raise up on his arms.)~ */
=
@1688 /* ~I don't know what that was for, but I liked it. (He fondly strokes your neck and cheek with the backs of his fingers, then leans forwards and kisses you.)~ */
=
@1689 /* ~For being you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20neck4
SAY @1690 /* ~(Nathaniel gasps faintly. Not letting you continue, he grabs you and kisses you hard.)~ */
=
@1691 /* ~Mmmm. I love you, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20ear4
SAY @1692 /* ~(Nathaniel giggles.) Oh, <CHARNAME>, I love you!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20lovefirst
SAY @1693 /* ~<CHARNAME>, you *said* it! Oh, I love you, too!~ */ 
IF ~~ THEN DO ~SetGlobal("FHSayLove","LOCALS",1)~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20love1
SAY @1694 /* ~I love you, too. (He grabs your hand and holds it as you carry on.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20love2
SAY @1695 /* ~(He blushes slightly, then kisses you lightly on the cheek.) Thank you, <CHARNAME>. I love you, too.~ */      
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20love3
SAY @1696 /* ~I ... I don't think I'll ever tire of hearing that. You're absolutely amazing sometimes, and I love you, too.~ */   
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT20love4
SAY @1697 /* ~And I love you, <CHARNAME>, with everything that I am.~ */  
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHDumpMean3
SAY @1698 /* ~Um ... I - I don't know what to say ... I should go...~ */ 
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22mine1
SAY @1699 /* ~But I'm always yours, <CHARNAME>.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22mine2
SAY @1700 /* ~(Nathaniel gives you a faintly hungry grin.) I look forward to it.~ */     
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22mine3
SAY @1701 /* ~<CHARNAME> ... do you have to say things like that in public? It's ... distracting.~ */    
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22mine4
SAY @1702 /* ~Mmm. You've no idea how nice it is to hear you say that.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22confuse3
SAY @1408 /* ~(Adventuring is thirsty business and your mouth feels even dryer when you see Nathaniel take out his waterskin and swig from it heartily.)~ */
++ @1409 /* ~(point) Look, Elminster!~ */ + FHFlirt_LT22confuse3a
END

IF ~~ THEN BEGIN FHFlirt_LT22confuse3a
SAY @1703 /* ~(He stares at you, trying not to smile too broadly.) I'm not falling for that one again, <CHARNAME>. You'll have to get your drink some other way!~ */
=
@1704 /* ~(He sips from the bag as if to prove a point, and you lick the moisture from his lips before he has a chance to do so himself. You lean in and kiss him, parting his lips with your tongue, and cool water slips into your mouth; you swallow it greedily whilst kissing him senseless at the same time. A trickle escapes his mouth and you catch it with your tongue.)~ */
=
@1705 /* ~(As you step back, Nathaniel looks faintly dazed. He gives you a dreamy smile.)~ */
=
@1706 /* ~If that's what you do when I don't give you water, I'll have to refuse more often...~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22cake4
SAY @1707 /* ~(You barely get the cake to your mouth before Nathaniel descends upon you. He knocks the cake aside and kisses you deeply, cradling your face in his hands, inhaling through his nose to catch the smell of your skin.)~ */
=
@1708 /* ~(When he pulls back, he plucks the cake out of your hands and eats it himself.) If you're hungry for anything, just tell me, and we'll ... sort something out.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22kiss4
SAY @1709 /* ~(His eyes light up and he grins.)~ */
=
@1710 /* ~You know, you're even better than cake!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22kiss5
SAY @1711 /* ~(The touch of your lips brings a deep flush to his cheeks.)~ */
=
@1712 /* ~Per-perhaps ... you could give me warning next time...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22thigh4
SAY @1713 /* ~(Nathaniel's thigh tenses satisfyingly and he smiles at you, giving you a brief hug.)~ */
=
@1714 /* ~Tonight, all right?~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22passion1
SAY @1715 /* ~(Nathaniel stiffens and tries half-heartedly to draw back. With a moaning sigh, he surrenders to your onslaught.)~ */
=
@1716 /* ~(He is decidedly dazed when you finish, and grins sheepishly, his eyes bright.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22passion2
SAY @1717 /* ~(At the touch of your mouth Nathaniel melts into you, responding with a gentle passion equal to your ardour.)~ */
=
@1718 /* ~(Needless to say, you leave him struck dumb, smiling after you when you retreat back into formation.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22passion3
SAY @1719 /* ~(As you come close, Nathaniel grabs you and locks his lips against yours. This is a rare side of him and you revel in your privileged status in his heart as the kiss deepens further.)~ */
=
@1720 /* ~(Somewhere along the line his thigh finds its way between your legs and nestles there, and you can only do the same for him. You can tell that he is enjoying this as much as you.)~ */
=
@1721 /* ~(As all good things must, it comes to an end. Nathaniel is flushed when he pulls away, and you wonder briefly how much blood the man actually has for it to be diverted to so many places at once.)~ */ 
=
@1722 /* ~I ... I'm going to remember that for a long time.~ */      
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22passion4
SAY @1723 /* ~(You catch Nathaniel unawares when you start to kiss him but he responds to you quickly, taking your face in his hands and leaning against you.)~ */
=
@1724 /* ~(You feel warmth radiating out from his face, and when you open your eyes to take a peek, you see the familiar excited blush creeping up his cheeks.)~ */
=
@1725 /* ~(After another moment he breaks off, bringing a hand up against your lips.)~ */
=
@1726 /* ~Later. We finish this ... later.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22undress4
SAY @1727 /* ~(You mentally strip Nathaniel of his clothing, an image that keeps you amused for several minutes. As you focus your gaze on him, you see that he has been looking at you the whole time. He draws you into an embrace and breathes against your ear.)~ */
=
@1728 /* ~Tonight you'll get what you want, <CHARNAME>.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22cbath1
SAY @1729 /* ~(Nathaniel looks slightly uncomfortable but nods at your suggestion. You take his hand and lead him to the bathing rooms, and though they're rather busy you poke Nathaniel into fast-talking the pair of you a private bath.)~ */ 
=
@1730 /* ~(All manner of stares follow the pair of you and by the time you are behind closed doors, he is painfully self-conscious, dithering as you rip off your soiled clothes. In fact, by the time you turn your attention to him, he has only managed to take off his pack and equipment and lay it beside yours. You sigh humouringly and pull off his clothes.)~ */
=
@1731 /* ~(You manoeuvre both of you into the tub, facing each other, and you hiss slightly at the too-hot temperature. Nathaniel doesn't seem to notice; he is looking at a point on the far wall with far too much interest.)~ */
=
@1732 /* ~(You wash yourself, then take the softest washcloth you can find and tend to Nathaniel. He follows the movements of your hands with his eyes as you gently scrub away layers of dirt and sweat from his chest and legs, leaving smooth, wetly shining skin beneath your fingers. He stirs beneath your touch and runs his fingers through your hair.)~ */
=
@1733 /* ~(He brushes his lips to yours, then leans his head against you. Your hands and the heat combine to make him groggy but he sleepily washes your hair, planting wet, chaste kisses on your face as he does so. You return the favour, relishing in the warmth and the feeling of safety which is so lacking in your travels.) <CHARNAME>, I love you.~ */
=
@1734 /* ~(Finally, the cooling temperature drives Nathaniel out of the water and into the coarse towels waiting for you. The self-consciousness that had possessed him has faded, and he smiles when he sees you watch him dress.)~ */ 
=
@1735 /* ~Thank you for this, <CHARNAME>, it was wonderful.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22cbath2
SAY @1736 /* ~(Nathaniel looks a little pale and shaky, and you decide that the best cure would be a soak in a hot bath. You wordlessly take him up to the bathing rooms and pay for a bath to be drawn for the both of you.)~ */
=
@1737 /* ~(He has worsened by the time the bath is full and the two of you are alone. Minute tremors move through him as you undress the both of you, and his eyes are shut tight. He is stiff but allows you to push him into the water.)~ */
=
@1738 /* ~(You slip in opposite him and try to smooth water over his back but he brushes your hand off with a soft cry. He moves onto your lap insistently, wrapping his legs around your hips, and buries his face in the hollow of your neck. There is nothing to do but envelop him in the tightest hug you can muster. He gasps softly but the security of your embrace soothes him and he begins to quieten.)~ */
=
@1739 /* ~(The water is nearly tepid when he stirs, kissing your neck, rubbing up and down your back and shifting on your lap. You manage to wash the worst grime off each other before his position becomes uncomfortable.)~ */
=
@1740 /* ~(Soon the bath is too cold and you dry yourself off, leaving Nathaniel to do the same for himself. He looks over at you with weary pain in his expression.)~ */
++ @1741 /* ~Do you want to talk about it?~ */ + FHFlirt_LT22cbath2a
++ @1742 /* ~(Remain silent.)~ */ + FHFlirt_LT22cbath2b
END

IF ~~ THEN BEGIN FHFlirt_LT22cbath2a
SAY @1743 /* ~No, it was just - just the same, as always. Thank you, though, you make - you made me feel safe again.~ */
=
@1744 /* ~Uh ... come on, love. We should get back. (He kisses you on the cheek and leads the way out.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22cbath2b
SAY @1745 /* ~(Nathaniel goes to your side as you make ready to go back, and links arms with you.) Thank you, love. You always make me feel safe again.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22cbath3
SAY @1746 /* ~Yes, that would be lovely. Come on!~ */      
=
@1747 /* ~(Nathaniel leads the way to the bathing rooms, and when there are no attendants to be found, his excitement is barely dampened. You wander around for a few minutes until you locate the back rooms and go into the nearest one. There is indeed a bath there but a couple are inside it together, cuddling intimately. They move to cover themselves but Nathaniel has already pulled the door shut and you move to the next room together.)~ */
=
@1748 /* ~(This one is deserted and Nathaniel quickly fills the bath with steaming water, adding a splash of flower-scented oil as you undress. He pulls off his own clothes, throwing them into the corner with unusual abandon, and kisses you with a force that sends you back half a step. The bath beckons you both, so he breaks off and clambers in. The sigh that comes from the back of his throat sends a flush of warmth through you and you eagerly join him.)~ */
=
@1749 /* ~(You wash yourselves, and despite his earlier passion Nathaniel refrains from even touching you. From the look in his eyes, you suspect that this stems from a sense of delayed gratification rather than the absence of desire. When you are thoroughly clean, you lean back luxuriously, giving him an eyeful, and he launches himself at you with no restraint at all, pressing the length of his body against you and running his hands all over you like he is trying to memorise each square inch by touch.)~ */ 
=
@1750 /* ~<CHARNAME>, I - you're so - I *love* you so much!~ */ 
=
@1751 /* ~(He leans over you with his forearms resting on the sides of the tub, then laughs - you notice that your antics have spilt almost all the water onto the floor, and that you are lying in only a few inches of dirty, soapy stuff that you get out of immediately. He only laughs more as the two of you dress whilst trying not to slip on the wet tiled floor.)~ */ 
=
@1752 /* ~(You leave clean, happy and contented.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22cbath4
SAY @1753 /* ~<CHARNAME>, that's the best idea you've had all day - and that's saying a lot.~ */ 
=
@1754 /* ~(Nathaniel asks an attendant to draw up a bath for the two of you, and he scurries quickly away, leaving you and Nathaniel waiting. To keep yourself amused, you fiddle with the fastening of Nathaniel's tunic; he brushes your hand away good-naturedly. Finally the attendant reappears and ushers you to your own room with, to your irritation, *two* full baths. Still, Nathaniel is eager to get out of his soiled clothes and the look on his face when he relaxes into one bath is one of exquisite relief.)~ */ 
=
@1755 /* ~(Ignoring the second bath, you slip in behind Nathaniel, wrap your legs over his hips and rub the layers of dirt from your skin. He leans back into your chest and makes himself comfortable.)~ */ 
=
@1756 /* ~(You lie together for what seems a long time, the quiet atmosphere and the warmth making you sleepy. You look down to see that Nathaniel actually has dozed off, and you gently wake him by kissing the side of his forehead. His eyelashes flutter and he stretches again, joints clicking in protest, and steps out of the water. As he rubs dry his hair with a thick towel your gaze strays down his neck, over his chest, and down further still. You get out, but he dresses in clean clothes before you can touch him. Once you are dressed, he kisses you lightly on the cheek and leads you out.)~ */ 
=
@1757 /* ~(The attendant is standing by the door and looks into your bathing room. The shock on his face at seeing just one dirty bath, the other untouched, is so amusing that you slip an arm around Nathaniel's shoulders and kiss him possessively. Nathaniel laughs and pats you on the arm as you go back to the others, and you feel a warm satisfaction better than any bath.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22fbath1
SAY @1758 /* ~I'd rather not go in that water, with - with ... *things*. Ask me when we're in an inn.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22fbath2
SAY @1759 /* ~(Nathaniel stares warily at the nearby stream and shrugs, following you to the water's edge.)~ */
=
@1760 /* ~(He fusses over his clothes and his swords, trying to balance them on a chest-high branch. At your quizzical look, he scowls.) You never know who might be around, I don't want them stolen or anything.~ */
=
@1761 /* ~(You lose patience and pull him into the water, and he yelps at the cold. Whilst you wash yourself, he shivers waist deep in the water and half-heartedly splashes himself clean.)~ */
=
@1762 /* ~(You take pity on him and press your body against his in an effort to warm his skin. He sighs and rests against you for a moment, then climbs out of the water and pulls on a fresh set of clothes without even letting his skin dry. He looks at you a little balefully but smiles after a moment.)~ */ 
=
@1763 /* ~That wasn't the nicest experience, <CHARNAME> ... but it was much better with you around.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22fbath3
SAY @1764 /* ~(The temperature is warm when you suggest bathing in the nearby river, so Nathaniel nods and follows you quietly, setting his belongings out neatly beside yours. He needs no encouragement to slip into the cool water, and immediately goes about washing the grime from his skin and hair as you join him.)~ */ 
=
@1765 /* ~(You are minding your own business when a large splash of cold water plasters your hair down and blurs your vision momentarily. You rub your eyes and look over at Nathaniel, who is grinning.)~ */ 
++ @1766 /* ~(Splash water back at him.)~ */ + FHFlirt_LT22fbath3a
++ @1767 /* ~(Do nothing.)~ */ + FHFlirt_LT22fbath3b
END

IF ~~ THEN BEGIN FHFlirt_LT22fbath3a
SAY @1768 /* ~(Nathaniel laughs and flicks water back at you, and the encounter degenerates quickly into a full-blown water fight.)~ */
=
@1769 /* ~(He puts up his hands and grabs your shoulders, kissing you soundly then leaning back and laughing at the sky.) Enough - I - yield!~ */ 
=
@1770 /* ~(He hugs you then wades out of the water, smiling as he dresses. His unguarded mood is a sharp contrast to his usual seriousness and is regrettably rare. He notices you watching him, and when you come out of the water he whispers in your ear.)~ */
=
@1771 /* ~It's you, that's why. You make me feel safe.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22fbath3b
SAY @1772 /* ~(Nathaniel wades over to you. He apologetically wipes the water from your face, smoothes your hair back and kisses you. Even after the kiss ends, he stands in front of you, eyes closed, supremely relaxed. His unguarded mood is a sharp contrast to his usual seriousness and is regrettably rare. He opens his eyes and smiles at you.)~ */ 
=
@1771 /* ~It's you, that's why. You make me feel safe.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22fbath4
SAY @1773 /* ~(Nathaniel gives you a look at your suggestion of an open-air bath, but agrees all the same. He strokes your skin as you undress, perhaps trying to distract you from the impending cold water, but when you dive into the water he sighs and follows suit.)~ */
=
@1774 /* ~(He swims over to you, treading water, and pulls you into a hug, lightly kissing the side of your neck. He breaks off abruptly.)~ */
=
@1775 /* ~<CHARNAME>! Don't tickle me - I was trying to be romantic - aaaah!~ */
=
@1776 /* ~(His horrified realisation that you were not tickling him is a sight to behold, though less pleasing than the sight of him as he climbs out of the water at a lightning-quick pace. Unfortunately he dresses with equal speed and stands on the bank, shivering.)~ */
=
@1777 /* ~<CHARNAME>, there are things *living* in there! Come out!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22slap1
SAY @1778 /* ~(While Nathaniel walks in front you take the opportunity to admire his rear and cannot resist the temptation to heartily smack it. He jumps and yelps, then looks back at you with a pained but affectionate expression.)~ */
=
@1779 /* ~<CHARNAME>! You'll pay for that, I assure you!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22slap2
SAY @1780 /* ~(Nathaniel is focusing so much on the road ahead that he is oblivious as you approach behind him, but you definitely get his attention when you suddenly slap his rear.)~ */
=
@1781 /* ~(He scowls and rubs the smarting skin, but he can't help the grin on his face from growing.) I don't know what I did to offend you, <CHARNAME>...~ */ 
=
@1782 /* ~But I'll be sure to deserve more next time.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22slap3
SAY @1783 /* ~(Nathaniel turns and gives you an admonishing look.)~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22slap4
SAY @1784 /* ~<CHARNAME>, stop that! There's time enough--~ */ 
=
@1785 /* ~Um, that is, it's not good to be distracted.~ */     
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_LT22growl4
SAY @1786 /* ~(A small shiver passes through Nathaniel. He turns and gives you a reprimanding look.)~ */
=
@1787 /* ~Stop that ... you're making me think of things ... that aren't relevant to your quest.~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_sleep
SAY @1788 /* ~Well, that's a nice thing to be asked! I'd love it, <CHARNAME>. I've been thinking about it for a while too, and...~ */ 
=
@1789 /* ~And I love you with everything I am. It's only fitting that I should love you with my body too.~ */ 
=
@1790 /* ~But are *you* sure? I mean, there's all of these awful things going on. I don't think we should sleep together unless both of us know our minds.~ */ 
++ @1791 /* ~Of course I'm sure - that's why I asked!~ */ + FHFlirt_sleepsure
++ @1792 /* ~When you put it like that, Nathaniel ... I don't know. Maybe this isn't the best time.~ */ + FHFlirt_sleeptime
++ @1793 /* ~I'm not sure about it, but I don't want to keep you waiting.~ */ + FHFlirt_sleepwait
++ @1794 /* ~I want this, Nathaniel ... I want you.~ */ + FHFlirt_sleepsure
END

IF ~~ THEN BEGIN FHFlirt_sleepsure
SAY @1795 /* ~Wonderful, my love. Then we should get started.~ */ 
IF ~~ THEN DO
~SetGlobal("FHNathSleep","GLOBAL",3)
SetGlobal("FHSoAMorningAfter","LOCALS",1)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN FHFlirt_sleeptime
SAY @1796 /* ~Then we should wait. Don't worry about it - we have all the time in the world!~ */ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFlirt_sleepwait
SAY @1797 /* ~Oh, <CHARNAME>, you're not keeping me waiting. I promise - I don't want you to do anything you don't want to. Please, let's wait.~ */ 
IF ~~ THEN EXIT
END
END

CHAIN FHNATJ NathHug3
@1798 /* ~(He hugs you tightly and faintly possessively, holding you for long moments. He reaches to stroke your hair, murmuring affectionately.)~ */ 
== BIMOEN2 IF ~IsValidForPartyDialog("Imoen2")~ THEN
@1799 /* ~Guys, we *do* have other things to do, you know.~ */
== FHNATJ
@1800 /* ~I ... needed that, <CHARNAME>.~ */
EXIT
