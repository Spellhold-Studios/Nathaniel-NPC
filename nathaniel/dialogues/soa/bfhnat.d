//CONTENTS
//Lovetalks 1-25
//Friendtalks 1-15
//Romance conflicts
//Interparty banters

BEGIN BFHNAT

//Lovetalk 1//

IF ~Global("NathLoveTalk","LOCALS",2)~ THEN BEGIN NathLT1
SAY @0 /* ~I've not been completely honest with you. Latimer is ... was ... more than a friend.~ */
=
@1 /* ~I - we - fell in love when I was seventeen. He was twenty-seven and my superior officer - neither of us cared about that. We were happy, until ... until Angelo.~ */   
=
@2 /* ~When you killed him, things fell apart for a while. It felt wrong, and Latimer, me and some others left. I wanted to do something useful, like protecting tradesmen - anything that would do good. But Latimer started to become no better than a thief himself.~ */
=
@3 /* ~We were ... separated ... north of Athkatla, and I'd been following him. I lost track of him but this is the "City of Coin" so I thought I'd find him there. I suppose I was wrong.~ */
++ @4 /* ~If he was so horrible, why did you follow him?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT1_important
++ @5 /* ~Why are you telling me this?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT1_whytelling
++ @6 /* ~I'm so sorry, Nathaniel.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT1_awful
++ @7 /* ~I wish there was something I could have done. It's partly my responsibility.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT1_awful
++ @8 /* ~Oh, boo hoo. Suck it up, Nathaniel, none of us have had easy lives.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT1_harsh
++ @9 /* ~Thanks for telling me. Now I know your "inclinations" I know to be careful when going to sleep at night.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT1_homophobe
END

IF ~~ THEN BEGIN NathLT1_harsh
SAY @10 /* ~Excuse me? Forget I said anything. I know we've all been in pain, but-- Oh, never mind.~ */
++ @11 /* ~I'm sorry. I spoke wrongly.~ */ + NathLT1_apologyclub
++ @12 /* ~I didn't think. People have often told me to do that before I speak. Sorry.~ */ + NathLT1_apologyclub
++ @13 /* ~I've got too many problems of my own to pour my soul out to every person who comes along.~ */ + NathLT1_selfabsorbed
++ @14 /* ~Yeah, yeah. Just fall back in line, pretty-boy.~ */ + NathLT1_homophobe
END

IF ~~ THEN BEGIN NathLT1_important
SAY @15 /* ~He was so important to me! I couldn't let him disappear. He's the first person I've been like that with, you see, and he did a lot for me.~ */
=
@16 /* ~Oh, I'm sorry to go on, it's just that I wanted to tell someone. I haven't had anyone to talk to for these last months, and you seem - you seem nice.~ */
++ @17 /* ~Don't worry, I like to know if one of my companions is feeling bad.~ */ + NathLT1_therapist
++ @18 /* ~Fine, fine. I couldn't care less about your problems. I've got too many of my own.~ */ + NathLT1_selfabsorbed
++ @19 /* ~It doesn't surprise me that a man of your inclinations can't find someone to talk to.~ */ + NathLT1_homophobe
++ @20 /* ~You seem nice too.~ */ + NathLT1_nice
++ @21 /* ~Don't worry about it. Talking to you's good for me too.~ */ + NathLT1_nice
END

IF ~~ THEN BEGIN NathLT1_awful
SAY @22 /* ~Thank you ... but it's no worse than the things some of you have had to go through. I don't want to seem self-absorbed, but he's the first person I've been like that with, and he did a lot for me.~ */
=
@23 /* ~Oh, I'm sorry to go on, it's just that I wanted to tell someone. I haven't had anyone to talk to for these last months and you seem - you seem nice.~ */
++ @17 /* ~Don't worry, I like to know if one of my companions is feeling bad.~ */ + NathLT1_therapist
++ @18 /* ~Fine, fine. I couldn't care less about your problems. I've got too many of my own.~ */ + NathLT1_selfabsorbed
++ @19 /* ~It doesn't surprise me that a man of your inclinations can't find someone to talk to.~ */ + NathLT1_homophobe
++ @20 /* ~You seem nice too.~ */ + NathLT1_nice
END

IF ~~ THEN BEGIN NathLT1_whytelling
SAY @24 /* ~I don't know ... I don't know why I want to tell you in particular either. I think it's because I've been on my own for these last months and you seem - you seem nice.~ */
++ @17 /* ~Don't worry, I like to know if one of my companions is feeling bad.~ */ + NathLT1_therapist
++ @18 /* ~Fine, fine. I couldn't care less about your problems. I've got too many of my own.~ */ + NathLT1_selfabsorbed
++ @19 /* ~It doesn't surprise me that a man of your inclinations can't find someone to talk to.~ */ + NathLT1_homophobe
++ @20 /* ~You seem nice too.~ */ + NathLT1_nice
END

IF ~~ THEN BEGIN NathLT1_homophobe
SAY @25 /* ~If that's the way you feel, I'd prefer not to be in your company.~ */
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathLT1_nice
SAY @26 /* ~Thank you. I think that answers my next question, so I won't bother asking.~ */
++ @27 /* ~What was the question?~ */ + NathLT1_question
++ @28 /* ~Ahh, come on. I'll tickle you if you don't tell me!~ */ + NathLT1_tickle
++ @29 /* ~Umm, if you say so.~ */ + NathLT1_question
++ @30 /* ~I'm assuming it's something good from the way you're smiling, so I'll just leave it at that.~ */ + NathLT1_smile
END

IF ~~ THEN BEGIN NathLT1_question
SAY @31 /* ~Oh ... you know ... people often don't like that I prefer men. I wouldn't want to travel with someone who thought like that, so I was just going to check. But I'm all right on that score now.~ */
++ @32 /* ~Don't worry. It's not like it's blindingly obvious.~ */ + NathLT1_obvious
++ @33 /* ~Do you have doubts about whether it's a good thing, then?~ */ + NathLT1_good
++ @34 /* ~Well, if people want to be nasty to you about it, they'll have to come through me!~ */ + NathLT1_nasty
++ @35 /* ~Like I said, you seem nice. I'm not going to let what you do in your spare time affect what I think of you.~ */ + NathLT1_affect
END

IF ~~ THEN BEGIN NathLT1_tickle
SAY @36 /* ~Hmm, you can try. I'm not ticklish, though. Anyway, I was just ... people often don't like that I prefer men. I wouldn't want to travel with someone who thought like that, so I was just going to check.~ */
++ @32 /* ~Don't worry. It's not like it's blindingly obvious.~ */ + NathLT1_obvious
++ @33 /* ~Do you have doubts about whether it's a good thing, then?~ */ + NathLT1_good
++ @34 /* ~Well, if people want to be nasty to you about it, they'll have to come through me!~ */ + NathLT1_nasty
++ @35 /* ~Like I said, you seem nice. I'm not going to let what you do in your spare time affect what I think of you.~ */ + NathLT1_affect
END

IF ~~ THEN BEGIN NathLT1_smile
SAY @37 /* ~Now all these things have happened ... for me, smiling is quite a big thing. So thank you.~ */
++ @38 /* ~How can you get by without smiling?~ */ + NathLT1_howgetby
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathLT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathLT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathLT1_spirits
END

IF ~~ THEN BEGIN NathLT1_obvious
SAY @42 /* ~Oh, I'm not bothered about it being obvious or not. People can think whatever they want about me, but obviously I wouldn't want to be around someone who didn't like it.~ */
=
@43 /* ~Anyway, thank you for what you said. You ... made me smile. And, <CHARNAME>? Now all these things have happened, for me smiling is quite a big thing.~ */
++ @44 /* ~Well, I'm not that way about men, but I wouldn't want you to feel unwelcome in my company.~ */ DO ~SetGlobal("NathRomanceActive","GLOBAL",0) SetGlobal("NathMatch","GLOBAL",0) SetGlobal("NathFriendMatch","GLOBAL",1) SetGlobal("NathFriend","GLOBAL",1) SetGlobal("NathFriendTalk","LOCALS",3) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathLT1_notgay
++ @38 /* ~How can you get by without smiling?~ */ + NathLT1_howgetby
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathLT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathLT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathLT1_spirits
END

IF ~~ THEN BEGIN NathLT1_good
SAY @45 /* ~Oh, no. It's not a good or a bad thing. It just depends on who you're with and whether you're faithful and everything. For me, it's a good thing. Even though Latimer changed, he helped me so much. It was ... like being healed.~ */
=
@46 /* ~Oh, now here I am getting miserable again. I'm sorry, we should get on. But thank you for what you said. You made me smile, and after all these things have happened ... that's quite a big thing.~ */
++ @38 /* ~How can you get by without smiling?~ */ + NathLT1_howgetby
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathLT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathLT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathLT1_spirits
END

IF ~~ THEN BEGIN NathLT1_nasty
SAY @47 /* ~Ha! Oh, that was an interesting experience.~ */
++ @48 /* ~What was?~ */ + NathLT1_laugh
END

IF ~~ THEN BEGIN NathLT1_affect
SAY @49 /* ~That means a lot. Thank you. And ... you made me smile, with what you said. Thank you for that, too. Now all these things have happened, for me smiling is quite a big thing.~ */
++ @38 /* ~How can you get by without smiling?~ */ + NathLT1_howgetby
++ @50 /* ~It's not as if I'd want to make you unwelcome just because I don't feel the same way about men that you do.~ */ DO ~SetGlobal("NathRomanceActive","GLOBAL",0) SetGlobal("NathMatch","GLOBAL",0) SetGlobal("NathFriendMatch","GLOBAL",1) SetGlobal("NathFriend","GLOBAL",1) SetGlobal("NathFriendTalk","LOCALS",3) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathLT1_notgay
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathLT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathLT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathLT1_spirits
END

IF ~~ THEN BEGIN NathLT1_howgetby
SAY @51 /* ~I just haven't had a lot to smile about lately. But let's not think about that.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT1_today
SAY @52 /* ~You already have.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT1_know
SAY @53 /* ~I can tell, <CHARNAME>. When you're thinking, sometimes you seem so distant... Anyway, I don't want you to start thinking about that. We can keep each other's spirits up, all right?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT1_spirits
SAY @54 /* ~You're right. You seem good at that - to me, anyway.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT1_laugh
SAY @55 /* ~Laughing. I haven't done it in a while. Thank you.~ */
++ @56 /* ~Well, I don't feel that way about men, but I don't want you to feel unwelcome because of the way you are.~ */ DO ~SetGlobal("NathRomanceActive","GLOBAL",0) SetGlobal("NathMatch","GLOBAL",0) SetGlobal("NathFriendMatch","GLOBAL",1) SetGlobal("NathFriend","GLOBAL",1) SetGlobal("NathFriendTalk","LOCALS",3) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathLT1_notgay
++ @57 /* ~How can you get by without laughing?~ */ + NathLT1_howgetby
++ @58 /* ~That's ridiculous. I'm going to get you to laugh more, starting now!~ */ + NathLT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathLT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathLT1_spirits
END

IF ~~ THEN BEGIN NathLT1_apologyclub
SAY @59 /* ~Hmm. Well. As much as it's worth, I'm sorry too. I don't want to seem self-absorbed to you, especially since you've been through so much. He's the first person I've been like that with, and he's done so much for me.~ */
=
@60 /* ~Anyway, I wanted to tell someone. I haven't had anyone to talk to for these last months and you seem - you seem nice.~ */
++ @17 /* ~Don't worry, I like to know if one of my companions is feeling bad.~ */ + NathLT1_therapist
++ @18 /* ~Fine, fine. I couldn't care less about your problems. I've got too many of my own.~ */ + NathLT1_selfabsorbed
++ @19 /* ~It doesn't surprise me that a man of your inclinations can't find someone to talk to.~ */ + NathLT1_homophobe
++ @20 /* ~You seem nice too.~ */ + NathLT1_nice
END

IF ~~ THEN BEGIN NathLT1_therapist
SAY @61 /* ~Thank you. I was wondering though ... I ... some people have a problem with me preferring men, and I wouldn't want to be travelling with someone who did.~ */
++ @62 /* ~No, I don't mind. Don't worry about it.~ */ + NathLT1_tolerant
++ @63 /* ~I don't feel that way about men, but if you're happy about it, good luck to you.~ */ DO ~SetGlobal("NathRomanceActive","GLOBAL",0) SetGlobal("NathMatch","GLOBAL",0) SetGlobal("NathFriendMatch","GLOBAL",1) SetGlobal("NathFriend","GLOBAL",1) SetGlobal("NathFriendTalk","LOCALS",3) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathLT1_notgay
++ @64 /* ~Hmm, I don't know. It makes me feel a little odd, but thank you for telling me.~ */ + NathLT1_uncomfortable
++ @65 /* ~Hmm. I'd appreciate it if you walked ... over there.~ */ + NathLT1_homophobe
++ @66 /* ~It's not like it's blindingly obvious. I doubt you need worry about people trying to attack you about it.~ */ + NathLT1_obvious
++ @33 /* ~Do you have doubts about whether it's a good thing, then?~ */ + NathLT1_good2
++ @34 /* ~Well, if people want to be nasty to you about it, they'll have to come through me!~ */ + NathLT1_nasty
++ @67 /* ~You seem nice. I'm not going to let what you do in your spare time affect what I think of you.~ */ + NathLT1_affect
END

IF ~~ THEN BEGIN NathLT1_notgay
SAY @68 /* ~Thank you, <CHARNAME>, I appreciate that.~ */
IF ~~ THEN DO ~SetGlobal("CharNotGay","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN NathLT1_good2
SAY @45 /* ~Oh, no. It's not a good or a bad thing. It just depends on who you're with and whether you're faithful and everything. For me, it's a good thing. Even though Latimer changed, he helped me so much. It was ... like being healed.~ */
++ @63 /* ~I don't feel that way about men, but if you're happy about it, good luck to you.~ */ DO ~SetGlobal("NathRomanceActive","GLOBAL",0) SetGlobal("NathMatch","GLOBAL",0) SetGlobal("NathFriendMatch","GLOBAL",1) SetGlobal("NathFriend","GLOBAL",1) SetGlobal("NathFriendTalk","LOCALS",3) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathLT1_notgay
++ @69 /* ~Well, it makes me feel a little odd, to be honest. But thank you for telling me about it.~ */ + NathLT1_uncomfortable
++ @70 /* ~Hmmm. I'd appreciate it if you walked ... over there.~ */ + NathLT1_homophobe
++ @34 /* ~Well, if people want to be nasty to you about it, they'll have to come through me!~ */ + NathLT1_nasty
++ @67 /* ~You seem nice. I'm not going to let what you do in your spare time affect what I think of you.~ */ + NathLT1_affect
++ @71 /* ~Well, it's fine with me. Honestly, I don't know what you were worrying about.~ */ + NathLT1_tolerant
END

IF ~~ THEN BEGIN NathLT1_tolerant
SAY @72 /* ~I'm glad. Ah, thank you, <CHARNAME> ... and ... for me, after all of this, smiling is quite a big thing for me, so thank you for that too.~ */
++ @73 /* ~Well, I don't feel that way about men, but I wouldn't want you to feel unwelcome.~ */ DO ~SetGlobal("NathRomanceActive","GLOBAL",0) SetGlobal("NathMatch","GLOBAL",0) SetGlobal("NathFriendMatch","GLOBAL",1) SetGlobal("NathFriend","GLOBAL",1) SetGlobal("NathFriendTalk","LOCALS",3) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathLT1_notgay
++ @38 /* ~How can you get by without smiling?~ */ + NathLT1_howgetby
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathLT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathLT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathLT1_spirits
END

IF ~~ THEN BEGIN NathLT1_selfabsorbed
SAY @74 /* ~Fine, let's go, but don't expect me to listen to you when you need it.~ */
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT1_uncomfortable
SAY @75 /* ~Well, I shouldn't bother you with it if you feel that way, so let's carry on. I ... hope you'll feel better about it later.~ */
IF ~~ THEN EXIT
END

//2//

IF
~Global("NathMatch","GLOBAL",1)
Global("NathLoveTalk","LOCALS",4)~
THEN BEGIN NathLT2
SAY @76 /* ~Can I tell you about my family? I'm forgetting my manners - I've barely told you anything about myself.~ */   
++ @77 /* ~Yes, please. It's good to know if a companion has an insane aunt who'll try to kill us.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT2_aunt
++ @78 /* ~If that'll stop you looking so miserable, yes. Don't you ever smile?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT2_miserable
++ @79 /* ~I don't really have time to talk right now. Can it wait for another time?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT2_skiptalk
END

IF ~~ THEN BEGIN NathLT2_goon
SAY @80 /* ~Well, there's just my father and me. My mother died when I was very young, but I don't remember her. He's a good man for the most part, but he can be a bit of a tyrant.~ */
++ @81 /* ~What do you mean, he can be a bit of a tyrant?~ */ + NathLT2_tyrant
++ @82 /* ~I grew up in Candlekeep, northwest of Beregost. I never knew my parents - I was adopted when I was very young.~ */ + NathLT2_adopted
++ @83 /* ~I have no idea who my mother is, but my father is Bhaal, and Imoen is my foster sister.~ */ + NathLT2_bhaal
++ @84 /* ~Hah. Somehow I very much doubt that he could be worse than my father.~ */ + NathLT2_fatherworse
END

IF ~~ THEN BEGIN NathLT2_aunt
SAY @85 /* ~I don't have an insane aunt, so you're safe there! My mother died when I was very young, but I don't remember her. My father's a good man for the most part, but he can be a bit of a tyrant.~ */
++ @81 /* ~What do you mean, he can be a bit of a tyrant?~ */ + NathLT2_tyrant
++ @82 /* ~I grew up in Candlekeep, northwest of Beregost. I never knew my parents - I was adopted when I was very young.~ */ + NathLT2_adopted
++ @83 /* ~I have no idea who my mother is, but my father is Bhaal, and Imoen is my foster sister.~ */ + NathLT2_bhaal
++ @84 /* ~Hah. Somehow I very much doubt that he could be worse than my father.~ */ + NathLT2_fatherworse
END

IF ~~ THEN BEGIN NathLT2_miserable
SAY @86 /* ~Sorry, I didn't mean to be-- I was just thinking. Anyway, there's just my father and me. My mother died when I was very young, but I don't remember her. He's a good man for the most part, but he can be a bit of a tyrant.~ */
++ @81 /* ~What do you mean, he can be a bit of a tyrant?~ */ + NathLT2_tyrant
++ @82 /* ~I grew up in Candlekeep, northwest of Beregost. I never knew my parents - I was adopted when I was very young.~ */ + NathLT2_adopted
++ @83 /* ~I have no idea who my mother is, but my father is Bhaal, and Imoen is my foster sister.~ */ + NathLT2_bhaal
++ @84 /* ~Hah. Somehow I very much doubt that he could be worse than my father.~ */ + NathLT2_fatherworse
END

IF ~~ THEN BEGIN NathLT2_skiptalk
SAY @87 /* ~Fair enough. Maybe we can talk later.~ */
IF ~~ THEN DO ~SetGlobal("NathLoveTalk","LOCALS",5)
RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400)~
EXIT
END

IF ~~ THEN BEGIN NathLT2_tyrant
SAY @88 /* ~I mean, sometimes he was a controlling bastard! He had certain ideas about my development and made sure I followed them. I think my mother's death hit him worse than he liked to imagine.~ */   
++ @89 /* ~I'm sorry you had to put up with him. Parents who are too controlling can be ... tiresome.~ */ + NathLT2_outrage
++ @90 /* ~Hmm, no matter how controlling he was I'm sure he's not as bad as mine.~ */ + NathLT2_fatherworse
++ @91 /* ~At least you have a father you know! I was adopted, and then my foster father was killed!~ */ + NathLT2_adopted
++ @92 /* ~Quite right. Children should have discipline, otherwise they could run wild.~ */ + NathLT2_disc
END

IF ~~ THEN BEGIN NathLT2_adopted
SAY @93 /* ~Oh - I'm sorry! How stupid of me - there were rumours around that Sarevok was your half-brother but I wasn't sure whether they were true. Do you have any idea who your parents were?~ */
++ @94 /* ~Well, I do know that my father is Bhaal. I don't know about my mother, though. Gorion was always very secretive about her.~ */ + NathLT2_bhaal
++ @95 /* ~Trust me, you wouldn't believe it if I told you, Nathaniel.~ */ + NathLT2_disbelieve
++ @96 /* ~I don't know about my mother, but I do have some idea of who my father is.~ */ + NathLT2_evasive
++ @97 /* ~I'd rather not discuss it with someone I don't know well, Nathaniel.~ */ + NathLT2_skiptalk
END

IF ~~ THEN BEGIN NathLT2_disc
SAY @98 /* ~Yes, I agree - I'm sure I'm better off for it, too.~ */
=
@99 /* ~So what were your parents like?~ */
++ @100 /* ~I don't know them personally. I was adopted at an early age, so I don't recall them.~ */ + NathLT2_adopted
++ @95 /* ~Trust me, you wouldn't believe it if I told you, Nathaniel.~ */ + NathLT2_disbelieve
++ @101 /* ~I'd prefer not to discuss this with someone I don't know well. I'm sure you understand.~ */ + NathLT2_skiptalk
++ @102 /* ~Well, I don't know a lot about my mother, but my father's Bhaal.~ */ + NathLT2_bhaal
END

IF ~~ THEN BEGIN NathLT2_bhaal
SAY @103 /* ~WHAT? Bhaal - Lord of Murder? Bhaal, the - the god?~ */   
++ @104 /* ~Is it not clear enough? What other Bhaal is there?~ */ + NathLT2_panic
++ @105 /* ~Well, that's what I said, isn't it?~ */ + NathLT2_panic
++ @106 /* ~Calm down, Nathaniel. The taint of my father has no hold over me.~ */ + NathLT2_normal
END

IF ~~ THEN BEGIN NathLT2_fatherworse
SAY @107 /* ~Oh? Why is he so bad?~ */
++ @95 /* ~Trust me, you wouldn't believe it if I told you, Nathaniel.~ */ + NathLT2_disbelieve
++ @101 /* ~I'd prefer not to discuss this with someone I don't know well. I'm sure you understand.~ */ + NathLT2_skiptalk
++ @108 /* ~Well, for one thing, my father's Bhaal.~ */ + NathLT2_bhaal
END

IF ~~ THEN BEGIN NathLT2_outrage
SAY @109 /* ~You needn't get outraged about it. He may have had his moments, but I was happy at home. And though I can't see myself going back there now, I was happy in Baldur's Gate, too. It felt safe.~ */
++ @110 /* ~It's good that you felt that way. Home needs to be somewhere safe when you're growing up.~ */ + NathLT2_Candlekeep
++ @111 /* ~You were lucky, having somewhere like that for such a long time. I'm far from safe now.~ */ + NathLT2_safe
++ @112 /* ~Safety isn't everything - my adopted father kept me cloistered, and look what's happened now.~ */ + NathLT2_adopted
++ @113 /* ~Candlekeep was so different to my life now that I can't imagine going back to it.~ */ + NathLT2_Candlekeep
END

IF ~~ THEN BEGIN NathLT2_evasive
SAY @114 /* ~May I ask who they were?~ */
++ @115 /* ~I'd rather not tell you, Nathaniel, but if you insist, my father is Bhaal.~ */ + NathLT2_bhaal
++ @116 /* ~Well, I'm a Bhaalspawn. Is that what you wanted to know?~ */ + NathLT2_bhaal
++ @117 /* ~I'd prefer not to talk about it, especially when I don't know you very well.~ */ + NathLT2_skiptalk
END

IF ~~ THEN BEGIN NathLT2_panic
SAY @118 /* ~I - Gods! - give me a second, I--~ */
=
@119 /* ~I'm ... I'm sorry. It's just very, well, unexpected. How - how long have you known?~ */
++ @120 /* ~Long enough to get used to the idea, which is too long if you ask me.~ */ + NathLT2_since
++ @121 /* ~A while. It was almost a relief, actually. At least I knew I wasn't going insane.~ */ + NathLT2_since
++ @122 /* ~Since Baldur's Gate, and stopping Sarevok. He was a child of Bhaal, too.~ */ + NathLT2_since
++ @123 /* ~It all came to the surface with Sarevok. But I swear, I'm not like him.~ */ + NathLT2_since
END

IF ~~ THEN BEGIN NathLT2_normal
SAY @124 /* ~Really? I... How do you cope? How are you normal?~ */
++ @125 /* ~I'm not normal. Not many people are. It's hard, but I can't just give in to it.~ */ + NathLT2_strong
++ @126 /* ~Nathaniel, calm down. I'm not going to turn on you - or anyone, for that matter.~ */ + NathLT2_calm
END

IF ~~ THEN BEGIN NathLT2_disbelieve
SAY @127 /* ~Oh, I've believed a few things in my time. Go on, why are you being so evasive?~ */
++ @128 /* ~Well, my father's Bhaal. There - are you happy?~ */ + NathLT2_bhaal
++ @129 /* ~Bhaal's my father, Nathaniel.~ */ + NathLT2_bhaal
++ @130 /* ~I'd really prefer not to discuss this sort of thing, especially when I don't know you.~ */ + NathLT2_skiptalk
END

IF ~~ THEN BEGIN NathLT2_Candlekeep
SAY @131 /* ~You're right. I was safe in Baldur's Gate, and now-- Well, I think I can guess how you feel.~ */
++ @132 /* ~I doubt it - do you know how it feels to have your foster father killed because of you?~ */ + NathLT2_adopted
++ @133 /* ~I doubt it, you know. I'm a child of Bhaal.~ */ + NathLT2_bhaal
++ @134 /* ~I'd rather not talk any more about it, if you don't mind.~ */ + NathLT2_skiptalk
END

IF ~~ THEN BEGIN NathLT2_safe
SAY @135 /* ~That's true - I think I was lucky. But now, we're all in similar situations, aren't we? Living from day to day.~ */
++ @136 /* ~Similar's not a word I'd use. My foster father was killed by Sarevok.~ */ + NathLT2_adopted
++ @137 /* ~I don't think we have that much in common - unless you're a child of Bhaal, too?~ */ + NathLT2_bhaal
++ @138 /* ~I'd rather not talk about this any more.~ */ + NathLT2_skiptalk
END

IF ~~ THEN BEGIN NathLT2_strong
SAY @139 /* ~Of course, yes. You're - you're strong, I think, stronger than I am. I--~ */
=
@140 /* ~I'm babbling. Just give me a little while. I'll just - please, I'll talk to you later.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathLT2_calm
SAY @141 /* ~Thank - thank you. I'm sorry - here we are, here you are, coping fine and having to calm *me* down. Look, I'll stay out of your way. It's not you - well, it is, but it's just - I need to--~ */
=
@140 /* ~I'm babbling. Just give me a little while. I'll just - please, I'll talk to you later.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathLT2_since
SAY @142 /* ~I - see. You don't - *seem* evil.~ */
++ @143 /* ~Of course I'm not evil. I can fight the taint easily.~ */ + NathLT2_normal
++ @144 /* ~I have to fight it, but I'm not, I swear.~ */ + NathLT2_strong
++ @145 /* ~I'm the child of Bhaal, not him - the lack of claws gives that away, don't you think?~ */ + NathLT2_strong
++ @146 /* ~Part of me must be, but I try not to be. I don't want to be.~ */ + NathLT2_strong
END

//LT3//
IF
~Global("NathLoveTalk","LOCALS",6)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT3
SAY @147 /* ~<CHARNAME>. I want to apologise for earlier. It must have been terrible for you, and all I did was make it worse.~ */   
++ @148 /* ~I was shocked when I found out about it, myself - I can understand your reaction.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT3_cute
++ @149 /* ~Are you sure you want to stay in the group? You've been acting a little off, lately.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT3_ahem
++ @150 /* ~It struck me as rather self-indulgent, actually. How do you think it made me feel?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT3_nosorry
++ @151 /* ~I don't really want your apology. Just don't keep going on about it.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT3_nosorry
END

IF ~~ THEN BEGIN NathLT3_ahem
SAY @152 /* ~Of course I do! I've heard such great things of you, and even in this short time I know I want to be with you.~ */
=
@153 /* ~The group, that is.~ */
=
@154 /* ~So, I would like to stay. If that's all right.~ */
++ @155 /* ~Of course. I just wanted to make sure you were happy with being here.~ */ + NathLT3_cute
++ @156 /* ~If you'll go to pieces every time something unexpected comes up, there isn't room for you here.~ */ + NathLT3_mean
++ @157 /* ~Well, that's good. I don't want people around who aren't happy being where they are.~ */ + NathLT3_cute
END

IF ~~ THEN BEGIN NathLT3_mean
SAY @158 /* ~I was trying to apologise! Oh, forget it - if you want me to leave, I will.~ */
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathLT3_nosorry
SAY @159 /* ~I was just trying to-- Ahh, never mind.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN NathLT3_cute
SAY @160 /* ~That's good to hear. Well, I'm going to have to be a little less sceptical about the things I hear about you from now on! It seems anything's possible.~ */
++ @161 /* ~You should probably still be sceptical about the story that my mother's a kobold, though.~ */ + NathLT3_kobold
++ @162 /* ~In the situations I've been in lately, that's probably more true than you think.~ */ + NathLT3_true
++ @163 /* ~That's a bit of an exaggeration. But a lot of things are possible, it's true.~ */ + NathLT3_true
END

IF ~~ THEN BEGIN NathLT3_kobold
SAY @164 /* ~There's a story that says that...? Ah, don't tease, <CHARNAME>. Come on, let's get going.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN NathLT3_true
SAY @165 /* ~I can believe it. But come on, we should be going.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",2)~
EXIT
END

//LT4//
IF
~Global("NathLoveTalk","LOCALS",8)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT4
SAY @166 /* ~Sometimes the travelling life gets me down. You know, I hated it at first - at least now I've got used to it. But I still miss the cake in Baldur's Gate. I suppose there's that saleswoman in Waukeen's Promenade, but...~ */   
++ @167 /* ~You're saying these words, but somehow they have no meaning. What are you talking about?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT4_laugh
++ @168 /* ~Oh, dear. Is this some kind of euphemism for what you get up to in your spare time?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT4_euphemism
++ @169 /* ~Is this another of your strange tastes? I don't really have time for such frivolity.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT4_frivolity
END

IF ~~ THEN BEGIN NathLT4_laugh
SAY @170 /* ~Didn't I mention it before? Surely I must have done. It's my favourite food.~ */
++ @171 /* ~I can't say I'm against it, myself. I've had a bit of a sweet tooth ever since I was little.~ */ + NathLT4_metoo
++ @172 /* ~You know, Nathaniel, I think I know you, and then you come out with something like that.~ */ + NathLT4_strange
++ @173 /* ~But you're a warrior! You should gnaw drumsticks and throw the bones on the floor!~ */ + NathLT4_drumstick
++ @174 /* ~Really, Nathaniel, I think I've got more important things to do than discuss this.~ */ + NathLT4_frivolity
END

IF ~~ THEN BEGIN NathLT4_euphemism
SAY @175 /* ~Pardon? No, it isn't. Cake's my favourite food. I thought I'd mentioned it before - surely I must have done.~ */
++ @171 /* ~I can't say I'm against it, myself. I've had a bit of a sweet tooth ever since I was little.~ */ + NathLT4_metoo
++ @172 /* ~You know, Nathaniel, I think I know you, and then you come out with something like that.~ */ + NathLT4_strange
++ @176 /* ~But you're a warrior! You should enjoy gnawing drumsticks and throwing the bones on the floor!~ */ + NathLT4_drumstick
++ @174 /* ~Really, Nathaniel, I think I've got more important things to do than discuss this.~ */ + NathLT4_frivolity
END

IF ~~ THEN BEGIN NathLT4_frivolity
SAY @177 /* ~All right, all right, fair enough. I was just trying to make conversation.~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathLT4_metoo
SAY @178 /* ~Oh, there was this wonderful kind at the Elfsong in Baldur's Gate. It was flavoured with cocoa and coffee beans and it had raspberries...~ */   
++ @179 /* ~Mmm, that sounds delicious. Maybe we could go there sometime, when this is all over.~ */ + NathLT4_maybego
++ @180 /* ~How did they get such exotic ingredients in Baldur's Gate?~ */ + NathLT4_ingredients
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathLT4_maybebuy
END

IF ~~ THEN BEGIN NathLT4_strange
SAY @182 /* ~You wouldn't be saying that if you'd tried the cake at the Elfsong in Baldur's Gate.~ */   
=
@183 /* ~Besides, it's not that strange. You should have seen my friend Aurelia eating meat - it was like watching a predator!~ */
++ @184 /* ~Maybe we could go to the Elfsong, sometime, when this is all over.~ */ + NathLT4_maybego
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathLT4_maybebuy
++ @176 /* ~But you're a warrior! You should enjoy gnawing drumsticks and throwing the bones on the floor!~ */ + NathLT4_drumstick2
++ @185 /* ~What was this cake you had in the Elfsong like, anyway?~ */ + NathLT4_whatlike
END

IF ~~ THEN BEGIN NathLT4_drumstick
SAY @186 /* ~Ugh. Well, drumsticks are all right, but throwing the bones around? Too messy.~ */
=
@187 /* ~Anyway, trust me - you wouldn't be saying that if you'd tried the cake at the Elfsong in Baldur's Gate.~ */
++ @188 /* ~What was this cake you had in the Elfsong like?~ */ + NathLT4_whatlike
++ @184 /* ~Maybe we could go to the Elfsong, sometime, when this is all over.~ */ + NathLT4_maybego
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathLT4_maybebuy
END

IF ~~ THEN BEGIN NathLT4_mmm
SAY @189 /* ~Ha, you look how I feel when I have it!~ */
++ @184 /* ~Maybe we could go to the Elfsong, sometime, when this is all over.~ */ + NathLT4_maybego
++ @190 /* ~How did they get such exotic ingredients? I don't think I've ever eaten cocoa beans.~ */ + NathLT4_ingredients
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathLT4_maybebuy
END

IF ~~ THEN BEGIN NathLT4_maybego
SAY @191 /* ~I don't know about that, <CHARNAME>. There are so many memories that I don't think I'd feel comfortable there again. It would be nice to see Avery again, though.~ */
++ @192 /* ~Well, whatever you'd prefer. I can understand if you'd rather not return there.~ */ + NathLT4_prefer
++ @193 /* ~Who's Avery? I don't think you've mentioned him, before.~ */ + NathLT4_avery
++ @194 /* ~Still, one day you'll feel able to go back there, surely?~ */ + NathLT4_oneday
++ @195 /* ~Surely it would be a good idea to go there, to exorcise those memories, though?~ */ + NathLT4_oneday
END

IF ~~ THEN BEGIN NathLT4_ingredients
SAY @196 /* ~Oh, I don't know. It was quite expensive, and I think they might have imported them from Matzica or somewhere.~ */
++ @197 /* ~Maybe we could go to the Elfsong, sometime, after this is all over.~ */ + NathLT4_maybego
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathLT4_maybebuy
END

IF ~~ THEN BEGIN NathLT4_maybebuy
SAY @198 /* ~That would be nice. Thank you, <CHARNAME>.~ */
++ @199 /* ~No need for thanks. Anything for you, Nathaniel.~ */ + NathLT4_anything
++ @200 /* ~There would be one condition: you'd have to save me some.~ */ + NathLT4_save
++ @201 /* ~Or we could always go to the Elfsong itself and you could have the original?~ */ + NathLT4_maybego
END

IF ~~ THEN BEGIN NathLT4_whatlike
SAY @202 /* ~Ohh, it was lovely. It was flavoured with cocoa and coffee beans, and there were raspberries in it, too...~ */
++ @203 /* ~Mmm, that sounds delicious...~ */ + NathLT4_mmm
++ @184 /* ~Maybe we could go to the Elfsong, sometime, when this is all over.~ */ + NathLT4_maybego
++ @190 /* ~How did they get such exotic ingredients? I don't think I've ever eaten cocoa beans.~ */ + NathLT4_ingredients
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathLT4_maybebuy
END

IF ~~ THEN BEGIN NathLT4_drumstick2
SAY @204 /* ~Ugh. Well, drumsticks are all right, but throwing them around? Too messy.~ */
++ @205 /* ~So, what was this cake like from the Elfsong?~ */ + NathLT4_whatlike
END

IF ~~ THEN BEGIN NathLT4_prefer
SAY @206 /* ~Well, maybe one day it'll be possible.~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathLT4_avery
SAY @207 /* ~Oh, he's one of my best friends. I've known him since I first went into the Flaming Fist. He's so good to me.~ */
++ @208 /* ~Perhaps I could meet him, sometime. He sounds like a nice enough person.~ */ + NathLT4_oneday
++ @209 /* ~Well, you do deserve people being good to you.~ */ + NathLT4_anything
END

IF ~~ THEN BEGIN NathLT4_oneday
SAY @210 /* ~Maybe one day. I don't know.~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathLT4_anything
SAY @211 /* ~Oh! ... Thank you.~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathLT4_save
SAY @212 /* ~Ah, of course I'd save you some. What do you take me for?~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

//LT5//
IF
~Global("NathLoveTalk","LOCALS",10)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT5
SAY @213 /* ~I know it was the thing with Gorion that made you travel, but are you happy on this path?~ */   
++ @214 /* ~Not entirely. I would have been happy just staying in Candlekeep.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT5_notravel
++ @215 /* ~It's good to be away from Candlekeep, actually. It wasn't the most exciting of places.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT5_Candlekeep
++ @216 /* ~Of course. I know that I wouldn't feel fulfilled without travelling around.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT5_liketravel
END

IF ~~ THEN BEGIN NathLT5_notravel
SAY @217 /* ~Neither do I, sometimes. Often I miss the way it was in the Fist. Taking orders makes things a lot simpler, even if you don't completely agree with them.~ */   
++ @218 /* ~Oh, so you like people who are domineering, Nathaniel?~ */ + NathLT5_dominating
++ @219 /* ~I think that I miss structure, too. Things were a lot less complicated when I had it.~ */ + NathLT5_help
++ @220 /* ~It isn't the fact that there's no structure, it's more that I could die at any moment.~ */ + NathLT5_help
++ @221 /* ~It's more life's luxuries that I miss when I'm on the road - travelling can be so uncomfortable.~ */ + NathLT5_homecomforts
END

IF ~~ THEN BEGIN NathLT5_Candlekeep
SAY @222 /* ~I got the impression that you had a nice time while you lived there. Wasn't it that good?~ */
++ @223 /* ~There are too many memories for me to go back there, at least anytime soon.~ */ + NathLT5_memories
++ @224 /* ~Too many books. Those things don't really interest me - I'd rather be out on the open road.~ */ + NathLT5_books
++ @225 /* ~Too many monks. They never had any fun, stuck in their libraries.~ */ + NathLT5_monks
END


IF ~~ THEN BEGIN NathLT5_liketravel
SAY @226 /* ~Ah, that's good. I wouldn't want-- that is, it would be unhealthy if you were spending all this time doing something you hated.~ */
=
@227 /* ~I think I'd just like you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_thanks
SAY @229 /* ~You're welcome.~ */
=
@227 /* ~I think I'd just like you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_homecomforts
SAY @230 /* ~I have to admit that I miss home comforts, too. Ugh, that Copper Coronet place! It's good to have a nice bed to sleep in.~ */
++ @231 /* ~And then there's always the matter of a nice someone for company in it...?~ */ + NathLT5_company
++ @232 /* ~I can recommend the Mithrest Inn. Wasn't that where you were staying, before?~ */ + NathLT5_mithrest
END

IF ~~ THEN BEGIN NathLT5_help
SAY @233 /* ~I wish that I could tell you some lie that would make you feel better. But don't worry. I'm here to help you out.~ */
++ @234 /* ~Hmm. Somehow that doesn't inspire me with confidence.~ */ + NathLT5_notnice
++ @235 /* ~Thank you. I appreciate your well-wishes.~ */ + NathLT5_thanks
END

IF ~~ THEN BEGIN NathLT5_memories
SAY @236 /* ~I know what you mean. I think I'd just like you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_books
SAY @237 /* ~Being out in the open is more real somehow, isn't it?~ */
=
@227 /* ~I think I'd just like you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_monks
SAY @238 /* ~Nothing wrong with monks! But I can imagine you feeling stifled. I think I would have, too.~ */
=
@227 /* ~I think I'd just like you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_dominating
SAY @239 /* ~Ha! Not like *that*, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_miserable
SAY @240 /* ~I didn't mean to-- Sorry.~ */
=
@241 /* ~I think I want you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_reasonable
SAY @242 /* ~Well, that's all right. Some people just aren't cut out for staying in one place.~ */
++ @243 /* ~Some days I really wish I could, though.~ */ + NathLT5_help
++ @244 /* ~What about you?~ */ + NathLT5_maybe
END

IF ~~ THEN BEGIN NathLT5_maybe
SAY @245 /* ~Me? Maybe I will. All I know is I've got used to this kind of life and I'm not sure how well I'd settle down now.~ */
=
@227 /* ~I think I'd just like you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_company
SAY @246 /* ~I-- yes, I miss Latimer.~ */
++ @247 /* ~I was just trying to lighten you up.~ */ + NathLT5_miserable
++ @248 /* ~Oh, Nathaniel, when am I going to be able to get you to relax?~ */ + NathLT5_miserable
++ @249 /* ~Don't worry, we'll find him.~ */ + NathLT5_optimism
END

IF ~~ THEN BEGIN NathLT5_mithrest
SAY @250 /* ~Yes, I was staying there before I started travelling with you. It's nice, isn't it? Anyway, I think I'd just like you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_notnice
SAY @251 /* ~That's not nice, <CHARNAME>.~ */
++ @252 /* ~I just don't believe in mincing my words when it comes to things like that.~ */ + NathLT5_harsh
++ @253 /* ~I was just joking, Nathaniel - lighten up a little, won't you?~ */ + NathLT5_miserable
END

IF ~~ THEN BEGIN NathLT5_optimism
SAY @254 /* ~I'm sure we will. I think I'd just like you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_harsh
SAY @255 /* ~In other words, you don't care about hurting people's feelings? In that case I'd rather not talk to you right now.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT5_see
SAY @227 /* ~I think I'd just like you to be happy in what you're doing. Because even though all these things are happening, I am, and that's something I couldn't have foreseen. And it's because of you.~ */
=
@228 /* ~Shall we, um, get going, then?~ */
IF ~~ THEN EXIT
END

//LT6:druid//
IF
~Global("NathLoveTalk","LOCALS",12)
Global("NathMatch","GLOBAL",1)
Class(Player1,DRUID_ALL)~
THEN BEGIN NathLT6_druid
SAY @256 /* ~There's something I've been meaning to ask you about. You're very interested in nature, aren't you?~ */   
++ @257 /* ~Well, it goes beyond "interested", Nathaniel. It's an important part of my life.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6e_interested
++ @258 /* ~If you're going to be patronising, then I don't want to discuss this with you.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6e_patronising
++ @259 /* ~Yes. I share a bond with the natural world, it's true.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6e_bond
++ @260 /* ~Yes, and I would slay anyone who tried to disrupt nature's balance.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6e_kill
END

IF ~~ THEN BEGIN NathLT6e_interested
SAY @261 /* ~Yes, well, maybe I said it wrong, but I was wondering how you stand on other things. Would you kill someone if they threatened the balance of nature?~ */
++ @262 /* ~Not "kill", exactly. Maybe "incapacitate" would be a better word to describe it.~ */ + NathLT6e_kill
++ @263 /* ~Of course. They've done wrong, and they need to be punished.~ */ + NathLT6e_kill
++ @264 /* ~I think you've got the whole balance idea wrong, Nathaniel.~ */ + NathLT6e_balance
++ @265 /* ~No, of course I wouldn't just kill someone. What kind of man do you think I am?~ */ + NathLT6e_shadow
END

IF ~~ THEN BEGIN NathLT6e_patronising
SAY @266 /* ~No, I'm sorry. Please, I didn't mean to offend you. I was just curious--~ */
++ @267 /* ~If you must know, it goes beyond "interested". It's an important part of my life.~ */ + NathLT6e_interested
++ @268 /* ~Well, I share a bond with the natural world, if you can understand that.~ */ + NathLT6e_bond
++ @269 /* ~I'd kill anyone who tried to interfere in nature's balance. It's my duty.~ */ + NathLT6e_kill
END

IF ~~ THEN BEGIN NathLT6e_bond
SAY @270 /* ~Yes, I see the way you look so at home in the forest. It makes me feel a little more comfortable in such places. But where do you stand on other things? Would you kill someone if they threatened the balance of nature?~ */
++ @262 /* ~Not "kill", exactly. Maybe "incapacitate" would be a better word to describe it.~ */ + NathLT6e_kill
++ @263 /* ~Of course. They've done wrong, and they need to be punished.~ */ + NathLT6e_kill
++ @271 /* ~I think you've got this balance idea wrong, Nathaniel.~ */ + NathLT6e_balance
++ @265 /* ~No, of course I wouldn't just kill someone. What kind of man do you think I am?~ */ + NathLT6e_shadow
END

IF ~~ THEN BEGIN NathLT6e_kill
SAY @272 /* ~Ah. That's answered my question. Thank you.~ */   
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT6e_balance
SAY @273 /* ~How? To me it seems as if your belief is that civilisation is just an inconvenience, which I can't agree with. Ever.~ */
++ @274 /* ~Calm down, Nathaniel. People are impermanent, but they're not an inconvenience.~ */ + NathLT6e_inconvenient
++ @275 /* ~Killing someone because I think they threaten nature is as unbalanced as the original threat.~ */ + NathLT6e_between
++ @276 /* ~Look, you have your duty to the law, and I have duty to nature. We're not so very different.~ */ + NathLT6e_dutylaw
END

IF ~~ THEN BEGIN NathLT6e_shadow
SAY @277 /* ~I don't know. It's just that I remember hearing so many bad things about the Shadow Druids in the Cloakwood - they'd kill someone because they intruded, as if people were inconvenient. Which I can't agree with. Ever.~ */
++ @278 /* ~They had the right idea. Sometimes you have to do what you have to in order to preserve nature.~ */ + NathLT6e_kill
++ @274 /* ~Calm down, Nathaniel. People are impermanent, but they're not an inconvenience.~ */ + NathLT6e_inconvenient
++ @275 /* ~Killing someone because I think they threaten nature is as unbalanced as the original threat.~ */ + NathLT6e_between
++ @276 /* ~Look, you have your duty to the law, and I have duty to nature. We're not so very different.~ */ + NathLT6e_dutylaw
END

IF ~~ THEN BEGIN NathLT6e_inconvenient
SAY @279 /* ~Impermanent? That's the kind of thing I mean. You're very serene about things that bother me. Like I can see you doing something bad just because things are getting too righteous.~ */
++ @280 /* ~It isn't like that. I wouldn't hesitate to help my friends if something was hurting them.~ */ + NathLT6e_aid
++ @275 /* ~Killing someone because I think they threaten nature is as unbalanced as the original threat.~ */ + NathLT6e_between
++ @276 /* ~Look, you have your duty to the law, and I have duty to nature. We're not so very different.~ */ + NathLT6e_dutylaw
END

IF ~~ THEN BEGIN NathLT6e_between
SAY @281 /* ~I see. Well, I'm not sure that I do. But I think what you're saying is that you wouldn't create chaos, and that's set my mind at rest. I've been wanting to prevent it ever since I was young, and that was why I joined the Flaming Fist.~ */
++ @282 /* ~Was that the only reason why you joined, or was there something else, too?~ */ + NathLT6e_only
++ @283 /* ~It's nice to know a little more about you, Nathaniel.~ */ + NathLT6e_katana
++ @284 /* ~Well, it's good to talk, but I think we should be getting along.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6e_only
SAY @285 /* ~Well, not really. My father's family's been in the Flaming Fist for generations - see, he gave me this katana when I joined.~ */
++ @286 /* ~So, you just went along with your father's wishes?~ */ + NathLT6_papasboy
++ @287 /* ~Well, it's nice to talk to you but I think we should be getting along.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6e_geton
SAY @288 /* ~You're right - let's get going.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT6e_katana
SAY @289 /* ~Oh? Thank you. Ah, I should mention Shigure if we're getting into family history. He was my combat tutor - he's ridiculously good, he really is. He gave me Kajikamu as a going-away present.~ */
++ @290 /* ~Going away present? Did he leave after he stopped teaching you?~ */ + NathLT6_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathLT6_generous
++ @292 /* ~Well, it's nice to talk to you, but I think we should be getting along.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6e_dutylaw
SAY @293 /* ~Maybe not, but I can't help feeling that you're sidestepping the question.~ */
++ @294 /* ~There's just no point in discussing this. We'll just have to agree to disagree.~ */ + NathLT6e_kill
++ @275 /* ~Killing someone because I think they threaten nature is as unbalanced as the original threat.~ */ + NathLT6e_between
++ @295 /* ~There must be balance between civilisation and nature, so killing someone for nature is wrong.~ */ + NathLT6e_between
END

IF ~~ THEN BEGIN NathLT6e_aid
SAY @296 /* ~Good! Ah, I'm sorry. I think experiencing Shadow Druids has made me a little wary of druids in general. I know that's wrong. And the process of joining the Flaming Fist was so different to whatever you did you become a druid.~ */
=
@297 /* ~My father was in the Flaming Fist too, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathLT6_papasboy
END

//LT6 - cleric//
IF
~Global("NathLoveTalk","LOCALS",12)
Global("NathMatch","GLOBAL",1)
Class(Player1,CLERIC_ALL)~
THEN BEGIN NathLT6_cleric
SAY @300 /* ~<CHARNAME>, if you don't mind me asking what was it that brought you to your god?~ */   
++ @301 /* ~I wanted to protect and heal others, I think, and this was the best way to go about it.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6d_protect
IF ~Alignment(Player1,MASK_GOOD)~ THEN REPLY @302 /* ~I wanted to be able to spread joy through the world. Lathander helps me to do that.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6d_lathander
IF ~Alignment(Player1,MASK_GOOD)~ THEN REPLY @303 /* ~I wanted to be able to spread joy through the world, I think. I'm thinking of joining Lathander's church.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6d_lathander
IF ~Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @304 /* ~Helm's a god who cherishes duty and order. I've always respected that, and he helps me preserve order.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6d_helm
IF ~Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @305 /* ~I wanted to be able to promote the importance of order and duty. I'm thinking of joining Helm's church.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6d_helm
END

IF ~~ THEN BEGIN NathLT6d_protect
SAY @306 /* ~Well, I feel protected when you're around, it's true. I admit I didn't really think about things like that when I wanted to be in the Flaming Fist. I admired them - they seemed like heroes.~ */
=
@307 /* ~My father was in the Fist too, and his father before him. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathLT6_papasboy
END

IF ~~ THEN BEGIN NathLT6d_lathander
SAY @309 /* ~Yes. You're always smiling, aren't you? I don't know, I'm all for joy, but it can fall down. Not that I'm meaning to insult your religion, I just--~ */
++ @310 /* ~I know. Not everyone can understand Lathander's tenets.~ */ + NathLT6d_tenet
++ @311 /* ~Don't worry about it.~ */ + NathLT6d_tenet
++ @312 /* ~You're not insulting, Nathaniel. And if you were to be, I'd forgive you.~ */ + NathLT6d_tenet
END

IF ~~ THEN BEGIN NathLT6d_helm
SAY @313 /* ~I respect it, too. If I had more of a religious inclination, I think I would have joined the worship of Helm. The reason I joined the Fist was kind of about duty, too - my father was in it, and his father before him.~ */
=
@314 /* ~He gave me this katana when I joined - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @315 /* ~Ah. It was right to follow your father's wishes, Nathaniel.~ */ + NathLT6d_papasboyhelm
END

IF ~~ THEN BEGIN NathLT6d_papasboyhelm
SAY @316 /* ~It wasn't just that. I wanted to be part of it when I was little, too. They seemed like heroes to me. And I was already being taught to fight.~ */
++ @317 /* ~That's a little young, isn't it?~ */ + NathLT6_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathLT6_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathLT6_sweet
END

IF ~~ THEN BEGIN NathLT6d_tenet
SAY @320 /* ~There you are - you're so forgiving. I'm sure Lathander's proud of you. I don't think he'd like me - for one thing, I'm not producing children and for another I, well, I'm not as forgiving as Lathander wants us to be.~ */
=
@321 /* ~And the reason why I joined the Fist wasn't to promote joy, either. It was more duty - my father was in it, and his father before him.~ */
=
@314 /* ~He gave me this katana when I joined - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathLT6_papasboy
END

//LT6 - sorcerer//
IF
~Global("NathLoveTalk","LOCALS",12)
Global("NathMatch","GLOBAL",1)
Class(Player1,SORCERER)~
THEN BEGIN NathLT6_sorcerer
SAY @322 /* ~<CHARNAME>, in that last battle you were really impressive! All those words and gestures - it's amazing how you manage to do it. But, how does it work?~ */   
++ @323 /* ~I'm afraid I couldn't say.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6h_dontknow
++ @324 /* ~I don't know.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6h_dontknow
++ @325 /* ~Periodically I just find myself learning new spells.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6h_dontknow
++ @326 /* ~It could be something to do with my divine heritage, but aside from that I don't know.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6h_aside
END

IF ~~ THEN BEGIN NathLT6h_dontknow
SAY @327 /* ~Oh. I was thinking that there would be something about your memory, but now I think about it I never see you with books like other mages use.~ */
=
@328 /* ~I don't understand, but I suppose I should just think of it like a skill in combat like mine. But then it wasn't just my decision. My father was in the Fist, and his father as well. He gave me this katana when I joined.~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathLT6_papasboy
++ @329 /* ~Well, it's nice to talk to you, but I think we should be getting on.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6h_aside
SAY @330 /* ~Oh. I was thinking that there might be something do to with your memory, but now I think about it I never see you with books like other mages use.~ */
=
@331 /* ~I don't understand, but I suppose it's a little like me - you could say I was born to be a guard. My father was in the Fist, and his father as well. He gave me this katana when I joined.~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathLT6_papasboy
++ @329 /* ~Well, it's nice to talk to you, but I think we should be getting on.~ */ + NathLT6e_geton
END

//LT6: mage//
IF
~Global("NathLoveTalk","LOCALS",12)
Global("NathMatch","GLOBAL",1)
Class(Player1,MAGE_ALL)~
THEN BEGIN NathLT6_mage
SAY @332 /* ~That last battle, you were pretty impressive! All those words and gestures - it's amazing. How did you start being able to do it?~ */   
++ @333 /* ~Oh, I just read lots of books. It's surprising how quickly you can pick things up.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6f_pick
++ @334 /* ~I had a few magic skills when I left Candlekeep.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6f_few
IF ~CheckStatGT(Player1,12,INT)~ THEN REPLY @335 /* ~I've got a pretty good memory, and there are always scrolls that I can read to memorise.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6f_few
IF ~CheckStatGT(Player1,17,INT)~ THEN REPLY @336 /* ~I've always been able to remember almost everything I read.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6f_few
++ @337 /* ~I wanted to have the power to manipulate energies that other people couldn't.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6f_manipulate
++ @338 /* ~Well, I thought I could use magical power to make the world a better place.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6c_injustice
++ @339 /* ~I admired all those wizards in the stories, to be honest. And then I realised that I could be like them.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6b_admire
END

IF ~~ THEN BEGIN NathLT6f_pick
SAY @340 /* ~You mean it's surprising how quickly *you* can pick things up. I mean, I was good at fighting for my age but I'd been in the Flaming Fist since I was sixteen anyway. I always wanted to be in it, because of my father.~ */
++ @341 /* ~Sixteen? That's a little young, isn't it?~ */ + NathLT6_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathLT6_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathLT6_sweet
++ @342 /* ~So you just went along with what your father wanted?~ */ + NathLT6_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6f_few
SAY @344 /* ~My goodness. And now you're the way you are - if that isn't impressive I don't know what is. I mean, I was good at fighting for my age but I'd been in the Flaming Fist since I was sixteen anyway. I always wanted to be in it, because of my father.~ */
++ @341 /* ~Sixteen? That's a little young, isn't it?~ */ + NathLT6_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathLT6_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathLT6_sweet
++ @342 /* ~So you just went along with what your father wanted?~ */ + NathLT6_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6f_manipulate
SAY @345 /* ~Well, just don't manipulate me, all right? I'm sure you wouldn't, but-- Ah, it's stupid to be in awe of something you don't understand, I know. I'm sure some people are worried that I'll use my kensai skills on them.~ */
=
@346 /* ~I should say about how I grew up, shouldn't I? I always wanted to be in the Flaming Fist, because of my father being involved in it, and I joined when I was sixteen. He gave me this katana when I joined - do you see the engraving?~ */
++ @341 /* ~Sixteen? That's a little young, isn't it?~ */ + NathLT6_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathLT6_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathLT6_sweet
++ @342 /* ~So you just went along with what your father wanted?~ */ + NathLT6_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

//LT6 - ranger//
IF
~Global("NathLoveTalk","LOCALS",12)
Global("NathMatch","GLOBAL",1)
Class(Player1,RANGER_ALL)~
THEN BEGIN NathLT6_ranger
SAY @347 /* ~You're very kind, you know. It's something you should be proud of.~ */   
++ @348 /* ~Why, thank you, Nathaniel.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6b_thanks
++ @349 /* ~You're not exactly the black-hearted villain yourself, you know.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6b_villain
++ @350 /* ~It's my duty. I couldn't live with myself if I did anything else.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6b_duty
++ @351 /* ~Why all this flattery, Nathaniel?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6_flattery
++ @352 /* ~How I act is none of your business.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6_notalk
END

IF ~~ THEN BEGIN NathLT6b_thanks
SAY @353 /* ~You're welcome. I can't exactly see myself being as at home as you are in the forest, but it's - I don't know, it's comforting when you're there, so sure of yourself. How did you learn?~ */
++ @354 /* ~I've always felt a bond with the forest.~ */ + NathLT6b_bond
++ @355 /* ~I read stories about people who helped others when they were lost, and it seemed an admirable thing to do.~ */ + NathLT6b_admire
++ @356 /* ~For a long time when I was younger, I wanted to help people.~ */ + NathLT6b_admire
++ @357 /* ~I loved animals when I was little, and after a while they got so they would be tame around me. That's where it started, I suppose.~ */ + NathLT6b_bond
IF ~Race(Player1,ELF)~ THEN REPLY @358 /* ~Because of my race, I've felt a kind of connection to the natural world.~ */ + NathLT6b_bond
END

IF ~~ THEN BEGIN NathLT6b_villain
SAY @359 /* ~Thank you, I think. I don't think I'd make a very good villain anyway, with all that demonic laughing. I can't exactly see myself being as at home as you are in the forest, but it's - I don't know, it's comforting when you're there, so sure of yourself. How did you learn?~ */
++ @354 /* ~I've always felt a bond with the forest.~ */ + NathLT6b_bond
++ @355 /* ~I read stories about people who helped others when they were lost, and it seemed an admirable thing to do.~ */ + NathLT6b_admire
++ @356 /* ~For a long time when I was younger, I wanted to help people.~ */ + NathLT6b_admire
++ @357 /* ~I loved animals when I was little, and after a while they got so they would be tame around me. That's where it started, I suppose.~ */ + NathLT6b_bond
IF ~Race(Player1,ELF)~ THEN REPLY @358 /* ~Because of my race, I've felt a kind of connection to the natural world.~ */ + NathLT6b_bond
END

IF ~~ THEN BEGIN NathLT6b_duty
SAY @360 /* ~Of course. You seem so at home in the forest that I can't see you doing anything other than what you do. It's - I don't know, it's comforting when you're in a forest, so sure of yourself. How did you learn?~ */
++ @354 /* ~I've always felt a bond with the forest.~ */ + NathLT6b_bond
++ @355 /* ~I read stories about people who helped others when they were lost, and it seemed an admirable thing to do.~ */ + NathLT6b_admire
++ @356 /* ~For a long time when I was younger, I wanted to help people.~ */ + NathLT6b_admire
++ @357 /* ~I loved animals when I was little, and after a while they got so they would be tame around me. That's where it started, I suppose.~ */ + NathLT6b_bond
IF ~Race(Player1,ELF)~ THEN REPLY @358 /* ~Because of my race, I've felt a kind of connection to the natural world.~ */ + NathLT6b_bond
END

IF ~~ THEN BEGIN NathLT6b_bond
SAY @361 /* ~That's amazing. I can't get my head around being connected that way. Mind you, I was always sure that I wanted to be in the Flaming Fist. My father was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathLT6_papasboy
++ @362 /* ~Sometimes I wish I could have got my skills in such an ordinary way.~ */ + NathLT6_training
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6b_admire
SAY @363 /* ~That sounds a little like me! My father was in the Flaming Fist, and the guards all seemed so heroic. There wasn't anything else I wanted to do and I was already being taught to fight.~ */
++ @317 /* ~That's a little young, isn't it?~ */ + NathLT6_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathLT6_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathLT6_sweet
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

//LT6: fighter//
IF
~Global("NathLoveTalk","LOCALS",12)
Global("NathMatch","GLOBAL",1)
!Class(Player1,CLERIC_ALL)
!Class(Player1,PALADIN_ALL)
!Class(Player1,DRUID_ALL)
!Class(Player1,MAGE_ALL)
!Class(Player1,SORCERER)
!Class(Player1,BARD_ALL)
!Class(Player1,RANGER_ALL)~
THEN BEGIN NathLT6_fighter
SAY @364 /* ~I have to say, <CHARNAME>, your skills are amazing. Where did you learn? I know it can't all be because of your ... your heritage.~ */   
++ @365 /* ~You're right, it isn't. My heritage only gives me some small magical abilities.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6_wherelearn
++ @366 /* ~I had some skill when I grew up. The rest I pretty much picked up as I went along.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6_impressive
++ @367 /* ~Why the flattery, Nathaniel?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6_flattery
++ @368 /* ~This is none of your business.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6_notalk
END

IF ~~ THEN BEGIN NathLT6_wherelearn
SAY @369 /* ~Ah yes, I've seen you using them. Like the healing using your life force? It rather goes over my head. But where did you learn to fight?~ */
++ @370 /* ~I developed my skills in Candlekeep, but mostly I learned when I was travelling the Sword Coast.~ */ + NathLT6_impressive
++ @351 /* ~Why all this flattery, Nathaniel?~ */ + NathLT6_flattery
++ @371 /* ~None of your business.~ */ + NathLT6_notalk
END

IF ~~ THEN BEGIN NathLT6_impressive
SAY @372 /* ~I could never have picked up the things you can do just like that. People said I was good for my age, but I've been training since I was thirteen. That's incredible.~ */
=
@373 /* ~I got into the Flaming Fist because of my father. He was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathLT6_papasboy
++ @374 /* ~There's nothing wrong with being good at something from training.~ */ + NathLT6_training
++ @362 /* ~Sometimes I wish I could have got my skills in such an ordinary way.~ */ + NathLT6_training
END

IF ~~ THEN BEGIN NathLT6_flattery
SAY @375 /* ~It isn't flattery. I just like people to feel appreciated. I like you to feel appreciated - you've got so much to cope with, and, well... yes. I like you to feel appreciated.~ */   
++ @376 /* ~Thank you, Nathaniel.~ */ + NathLT6_welcome
++ @377 /* ~You know, you're appreciated, too.~ */ + NathLT6_thanks
++ @378 /* ~So where did you learn your skills?~ */ + NathLT6_father
++ @379 /* ~That's what they all say. Come on, what do you want?~ */ + NathLT6_whatwant
END

IF ~~ THEN BEGIN NathLT6_notalk
SAY @380 /* ~Excuse me? Have I offended you?~ */
++ @381 /* ~No, I just don't feel like talking at the moment.~ */ + NathLT6_mood
++ @382 /* ~Never mind. I'll be all right later.~ */ + NathLT6_mood
END

IF ~~ THEN BEGIN NathLT6_father
SAY @383 /* ~Well, I mentioned my father. He was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @384 /* ~You went along with your father's wishes?~ */ + NathLT6_papasboy
END

IF ~~ THEN BEGIN NathLT6_papasboy
SAY @385 /* ~No. Well, yes, I suppose, but that makes me sound like some kind of father's boy. The thing is, I wanted to be part of it when I was little, too. They seemed like heroes to me. And I was already being taught to fight.~ */
++ @317 /* ~That's a little young, isn't it?~ */ + NathLT6_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathLT6_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathLT6_sweet
END

IF ~~ THEN BEGIN NathLT6_training
SAY @386 /* ~Oh, I should mention Shigure, though.~ */
++ @387 /* ~Who's Shigure?~ */ + NathLT6_shigure
++ @388 /* ~Is this some sweetheart of yours?~ */ + NathLT6_sweetheart
++ @389 /* ~Why?~ */ + NathLT6_shigure
END

IF ~~ THEN BEGIN NathLT6_sweetheart
SAY @390 /* ~What? No! For one thing, he's very fond of women. For another, he was my tutor. He's about ten or so years older than me, and he really is ridiculously good. He could beat me in about a minute if he was trying. He gave me Kajikamu as a going away present.~ */
++ @391 /* ~Going away present?~ */ + NathLT6_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathLT6_generous
END

IF ~~ THEN BEGIN NathLT6_sixteen
SAY @392 /* ~Maybe, yes - I was thirteen when I started to learn. But my father wanted me to be able to defend myself. He was trained in some kensai manoeuvres by a man called Masao. When I was born, he wanted Masao to teach me, too, but he was too old. But he had a son, Shigure, and he taught me.~ */
=
@393 /* ~He's about ten or so years older than me, and he really is ridiculously good. He could beat me in about a minute if he was trying. He gave me Kajikamu as a kind of going away present.~ */
++ @391 /* ~Going away present?~ */ + NathLT6_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathLT6_generous
END

IF ~~ THEN BEGIN NathLT6_shigure
SAY @394 /* ~Shigure-- Wait, I should tell this from the start. My father was trained in some of the kensai skills by a man named Masao. When I was born, my father wanted Masao to teach me, too, but he was too old. But he had a son, Shigure, and he taught me.~ */
=
@393 /* ~He's about ten or so years older than me, and he really is ridiculously good. He could beat me in about a minute if he was trying. He gave me Kajikamu as a kind of going away present.~ */
++ @391 /* ~Going away present?~ */ + NathLT6_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathLT6_generous
END

IF ~~ THEN BEGIN NathLT6_sweet
SAY @395 /* ~Actually, I was a bit of a brat until Shigure took me in hand. My father was trained in some of the kensai skills by a man called Masao. When I was born, my father wanted Masao to teach me, too, but he was too old. But he had a son, Shigure, and he taught me.~ */
=
@393 /* ~He's about ten or so years older than me, and he really is ridiculously good. He could beat me in about a minute if he was trying. He gave me Kajikamu as a kind of going away present.~ */
++ @391 /* ~Going away present?~ */ + NathLT6_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathLT6_generous
END

IF ~~ THEN BEGIN NathLT6_whatwant
SAY @396 /* ~Nothing! That is, I just wanted to have a talk with you, that's all--~ */
++ @397 /* ~So how did you become a kensai?~ */ + NathLT6_shigure
++ @398 /* ~So how did you get into the Flaming Fist?~ */ + NathLT6_father
++ @399 /* ~Well, I don't. I'm not in the mood for small talk right now.~ */ + NathLT6_mood
END

IF ~~ THEN BEGIN NathLT6_welcome
SAY @400 /* ~You're welcome. So, er...~ */
++ @397 /* ~So how did you become a kensai?~ */ + NathLT6_shigure
++ @398 /* ~So how did you get into the Flaming Fist?~ */ + NathLT6_father
++ @401 /* ~Are you blushing?~ */ + NathLT6_blush
END

IF ~~ THEN BEGIN NathLT6_thanks
SAY @402 /* ~Oh! Thank you. So, er...~ */
++ @397 /* ~So how did you become a kensai?~ */ + NathLT6_shigure
++ @398 /* ~So how did you get into the Flaming Fist?~ */ + NathLT6_father
++ @401 /* ~Are you blushing?~ */ + NathLT6_blush
END

IF ~~ THEN BEGIN NathLT6_rude
SAY @403 /* ~I was only making conversation.~ */
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT6_mood
SAY @404 /* ~Of course. I don't mean to intrude. I hope you feel better later.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT6_goaway
SAY @405 /* ~Yes. Latimer and Shigure didn't exactly see eye to eye. Latimer thought that Shigure, well, was trying to steal me from him. In the end, Shigure went back to take care of Masao in his old age.~ */
=
@406 /* ~But here I am holding you up again! There are things to do.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT6_generous
SAY @407 /* ~Yes, he's a good friend. I wish I could see him again - it's been a long time now.~ */
=
@406 /* ~But here I am holding you up again! There are things to do.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT6_blush
SAY @408 /* ~No! Not at all! Why would I be blushing? So, anyway, I learned from a man called Shigure.~ */
=
@409 /* ~My father was trained in some of the kensai skills by a man named Masao. When I was born, my father wanted Masao to teach me, too, but by that time he was too old. But he had a son, Shigure.~ */
=
@410 /* ~Shigure's only ten or so years older than me, but he's amazing. I'm so honoured to have been taught by him! He gave me this katana as a kind of going away present.~ */
++ @391 /* ~Going away present?~ */ + NathLT6_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathLT6_generous
END

//LT6 - paladin//
IF
~Global("NathLoveTalk","LOCALS",12)
Global("NathMatch","GLOBAL",1)
Class(Player1,PALADIN_ALL)~
THEN BEGIN NathLT6_paladin
SAY @411 /* ~<CHARNAME>? I just ... I wanted you to know that, well, you're someone to be admired. And, and when you're around I feel safer, because I know that you're doing good things. Um ... that's all.~ */   
++ @412 /* ~Nathaniel, what's brought this on?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6c_brought
++ @413 /* ~Why the sudden flattery?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6c_flattery
++ @414 /* ~What's this about?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6c_brought
++ @415 /* ~I'm not the only one to do the right thing: you're someone to be admired, too.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6c_admire
END

IF ~~ THEN BEGIN NathLT6c_brought
SAY @416 /* ~Nothing, I just thought I should say it. You're so - you're such - you're so righteous!~ */   
++ @417 /* ~Thank you for your words.~ */ + NathLT6c_sorry
++ @418 /* ~I see. Well, thank you for the compliment, I suppose.~ */ + NathLT6c_sorry
++ @419 /* ~It isn't for flattery that I do the things I do. It's for justice.~ */ + NathLT6c_sorry
END

IF ~~ THEN BEGIN NathLT6c_flattery
SAY @420 /* ~Oh, no, it isn't flattery. I just thought I should say before you're a hero of the realm and everyone wants to say it. You are a hero, <CHARNAME>.~ */
++ @421 /* ~Thank you for your words, Nathaniel.~ */ + NathLT6c_sorry
++ @422 /* ~Well, thank you for the compliment, I suppose.~ */ + NathLT6c_sorry
++ @419 /* ~It isn't for flattery that I do the things I do. It's for justice.~ */ + NathLT6c_sorry
END

IF ~~ THEN BEGIN NathLT6c_admire
SAY @423 /* ~Really? Thank you. If you don't mind me asking, how did you become a paladin?~ */
++ @424 /* ~I'd read about paladins in books, and they always seemed like the kind of person I wanted to be.~ */ + NathLT6b_admire
++ @425 /* ~I knew that the monsters in the stories I read threatened everything that's good.~ */ + NathLT6c_monster
++ @426 /* ~There's so much chaos in this world, and I thought that if I worked to preserve order it would make a difference.~ */ + NathLT6c_order
++ @427 /* ~Innocents have problems that they don't deserve, and I can do things to help them.~ */ + NathLT6c_injustice
END

IF ~~ THEN BEGIN NathLT6c_sorry
SAY @428 /* ~I'm sorry if I seem all starry-eyed. It's just I suddenly thought about it and it blew me away, thinking what a hero you are. If you don't mind me asking, how did you become one?~ */
++ @424 /* ~I'd read about paladins in books, and they always seemed like the kind of person I wanted to be.~ */ + NathLT6b_admire
++ @429 /* ~I knew the monsters in the stories I read they threatened everything that's good.~ */ + NathLT6c_monster
++ @430 /* ~There's so much chaos in this world. I thought that if I worked to preserve order it would make a difference.~ */ + NathLT6c_order
++ @427 /* ~Innocents have problems that they don't deserve, and I can do things to help them.~ */ + NathLT6c_injustice
END

IF ~~ THEN BEGIN NathLT6c_injustice
SAY @431 /* ~Of course. I think I wanted some of that too when I was little. Mind you, I was sure that I wanted to be in the Flaming Fist back then.~ */
=
@432 /* ~My father was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathLT6_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6c_monster
SAY @433 /* ~Yes. Of course. I ... felt that about vampires, when I read about them.~ */
=
@434 /* ~Anyway, I wanted to be in the Flaming Fist when I was little, so that's something we have in common. My father was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathLT6_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6c_order
SAY @435 /* ~Oh, of course. I agree. I wanted that, too - and of course I still want it. Maybe that's something we have in common. Mind you, my father was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathLT6_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

//LT6 - bard//
IF
~Global("NathLoveTalk","LOCALS",12)
Global("NathMatch","GLOBAL",1)
Class(Player1,BARD_ALL)~
THEN BEGIN NathLT6_bard
SAY @436 /* ~Ah, I don't know how you have the confidence to do what you do. It's very impressive.~ */   
++ @437 /* ~What do you mean?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6g_what
++ @438 /* ~Do what I do? What is it that I do?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6g_what
++ @439 /* ~Impressive? What do I do that's impressive?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6g_what
++ @440 /* ~Confidence? I think you've got the wrong person. I'm terrified whenever we go into battle.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT6g_fear
END

IF ~~ THEN BEGIN NathLT6g_what
SAY @441 /* ~You know. Being able to sing while we're in battle - well, being able to sing at all is pretty impressive, but you always seem so brave, helping us along.~ */
++ @442 /* ~Brave? That's a laugh. I became a bard because I was scared stiff of fighting.~ */ + NathLT6g_fear
++ @443 /* ~Ha! There's a reason why I stay at the back of the group, Nathaniel.~ */ + NathLT6g_fear
++ @444 /* ~Thanks, Nathaniel. I'll make sure I sing extra for you next time we fight.~ */ + NathLT6g_sing
++ @445 /* ~It isn't just battles. I want spread tales of heroism so people will be inspired.~ */ + NathLT6g_inspire
END

IF ~~ THEN BEGIN NathLT6g_fear
SAY @446 /* ~Maybe you are scared, but you make me feel safer. Does that make sense?~ */
=
@447 /* ~Ah, never mind. Maybe it was strange of me to become part of the Flaming Fist when I got, well, anxious about things. Mind you, it was my father who got me into it, really. He was in it, and his father before him, and he gave me this katana - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathLT6_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6g_sing
SAY @448 /* ~Thanks. And I'll do my best to fight for you so you don't get interrupted. You make me feel safer.~ */
=
@447 /* ~Ah, never mind. Maybe it was strange of me to become part of the Flaming Fist when I got, well, anxious about things. Mind you, it was my father who got me into it, really. He was in it, and his father before him, and he gave me this katana - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathLT6_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathLT6g_inspire
SAY @449 /* ~We're not so different, then. I admired the guards - they were like heroes to me. My father was in the Flaming Fist, and his father before him. He gave me this katana when I joined - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathLT6_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathLT6_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathLT6e_geton
END

//LT7//
IF
~Global("NathLoveTalk","LOCALS",14)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT7
SAY @450 /* ~It's strange. I heard so much about you in Baldur's Gate. I thought most of it was rumours, but travelling with you makes me more inclined to believe them.~ */   
++ @451 /* ~You shouldn't believe everything you hear, Nathaniel. Rumours can quickly get out of hand.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT7_believe
++ @452 /* ~More than likely, most of what you've heard about me is true. I live an interesting life.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT7_true
++ @453 /* ~Tell me what sort of things you've heard, and then I can say how true they are.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT7_whatheard
++ @454 /* ~I'm not in the mood for talking, at the moment. Let's carry on.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT7_notmood
END

IF ~~ THEN BEGIN NathLT7_whatheard
SAY @455 /* ~Ah, the usual sort of thing - the child of Bhaal twelve feet tall. Before I knew you, I thought the Bhaal part was a rumour, too. It's hard to know what's true and what isn't.~ */
++ @456 /* ~Well, the twelve feet tall part is a little exaggerated. Most of the rest is true, though.~ */ + NathLT7_true2
++ @457 /* ~It was a strange time in my life. I travelled around aimlessly most of the time.~ */ + NathLT7_confused
++ @458 /* ~Are you still worrying about the Bhaal thing?~ */ + NathLT7_bhaal
END

IF ~~ THEN BEGIN NathLT7_believe
SAY @459 /* ~Ah, don't worry, I was pretty sceptical about you. Especially the twelve feet tall part.~ */
=
@460 /* ~They said such contradicting things. Some people said you were a paragon of virtue, and others...~ */
++ @461 /* ~I suppose the others said I ate small children for breakfast, that sort of thing?~ */ + NathLT7_virtue
++ @462 /* ~So, now that you've seen the real thing, which people did you believe?~ */ + NathLT7_dontknow
++ @463 /* ~Well, I wouldn't call myself a "paragon", for a start. I'm not that sort of <PRO_MANWOMAN>.~ */ + NathLT7_paragon
END

IF ~~ THEN BEGIN NathLT7_true
SAY @464 /* ~Even the part about you being twelve feet tall?~ */
++ @465 /* ~Well, I may look shorter, but it's an magical illusion, you see.~ */ + NathLT7_optical
++ @466 /* ~Well, that part might be exaggerated - just a little.~ */ + NathLT7_exaggerated
++ @467 /* ~Curses, you found out my secret: I'm no taller than the average <PRO_RACE>.~ */ + NathLT7_curses
END

IF ~~ THEN BEGIN NathLT7_notmood
SAY @468 /* ~Of course. I didn't mean to bother you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_true2
SAY @469 /* ~I see. They said such contradicting things. Some people said you were a paragon of virtue, and others...~ */
++ @461 /* ~I suppose the others said I ate small children for breakfast, that sort of thing?~ */ + NathLT7_virtue
++ @462 /* ~So, now that you've seen the real thing, which people did you believe?~ */ + NathLT7_dontknow
++ @463 /* ~Well, I wouldn't call myself a "paragon", for a start. I'm not that sort of <PRO_MANWOMAN>.~ */ + NathLT7_paragon
END

IF ~~ THEN BEGIN NathLT7_confused
SAY @470 /* ~Really? I was led to believe, that is, people said that you were so sure of everything.~ */
++ @471 /* ~Yes, I try to stay focused on what matters, but I wouldn't say I'm sure of everything.~ */ + NathLT7_focus
++ @472 /* ~I wasn't, back then. I am much more able to focus on things now, though.~ */ + NathLT7_focus
++ @473 /* ~No, that's just another rumour. I don't really know where I'm going in life.~ */ + NathLT7_wrong
++ @474 /* ~I'm not in control of my destiny and with my blood it's doubtful I ever will be.~ */ + NathLT7_wrong
END

IF ~~ THEN BEGIN NathLT7_bhaal
SAY @475 /* ~No, I don't think so. Well, if I think about it, it makes me nervous. But I don't think you're bad. The thing is, I've seen the way you behave, and then there's the evidence of what you did in Baldur's Gate.~ */
=
@476 /* ~I know lots of people think me liking men would be proof of me being evil. So how can I say that your blood is proof? Does that make sense?~ */
++ @477 /* ~It's good to hear someone sticking up for the Bhaalspawn once in a while.~ */ + NathLT7_nice
++ @478 /* ~If it's any consolation, I don't think that your liking men is evil.~ */ + NathLT7_consolation
++ @479 /* ~Who says that your liking men isn't evil?~ */ + NathLT7_evil
END

IF ~~ THEN BEGIN NathLT7_virtue
SAY @480 /* ~Others said you were tainted and - and evil.~ */
++ @481 /* ~Are you still worried about me because I'm a Bhaalspawn?~ */ + NathLT7_bhaal
++ @482 /* ~And you're still concerned? I'd have thought better of you, to be honest.~ */ + NathLT7_bhaal
END

IF ~~ THEN BEGIN NathLT7_dontknow
SAY @483 /* ~I don't know - If I think about what you are, it makes me a little nervous. But I don't think you're *bad*. I've seen the way you behave, and then there's what you did in Baldur's Gate.~ */
=
@484 /* ~I know lots of people think me liking men is proof of my evil. And I'm not. So how can I say that your blood is proof of yours? Does that make sense?~ */
++ @477 /* ~It's good to hear someone sticking up for the Bhaalspawn once in a while.~ */ + NathLT7_nice
++ @478 /* ~If it's any consolation, I don't think that your liking men is evil.~ */ + NathLT7_consolation
++ @479 /* ~Who says that your liking men isn't evil?~ */ + NathLT7_evil
END

IF ~~ THEN BEGIN NathLT7_paragon
SAY @485 /* ~It's the wrong word for you, I know. But you seem that way, sometimes.~ */
++ @486 /* ~I'm not sure that I do, but I suppose I'll take that as a compliment.~ */ + NathLT7_pardon
++ @487 /* ~What? You mean I seem overly-righteous? I think not.~ */ + NathLT7_pardon
END

IF ~~ THEN BEGIN NathLT7_optical
SAY @488 /* ~Mmm-hmmm. It must be a very intricate illusion because you know, for the life of me I could have sworn you were shorter.~ */
++ @489 /* ~Oh, it is. The finest in Faerun!~ */ + NathLT7_smile
++ @490 /* ~Are you humouring me, Nathaniel?~ */ + NathLT7_humour
++ @491 /* ~It is indeed - and everything else is in proportion, too.~ */ + NathLT7_blush
END

IF ~~ THEN BEGIN NathLT7_exaggerated
SAY @492 /* ~So which bits aren't? People said such contradicting things. Some said you were a paragon of virtue, and others...~ */
++ @493 /* ~Yes?~ */ + NathLT7_virtue
++ @494 /* ~So who did you believe?~ */ + NathLT7_dontknow
++ @463 /* ~Well, I wouldn't call myself a "paragon", for a start. I'm not that sort of <PRO_MANWOMAN>.~ */ + NathLT7_paragon
END

IF ~~ THEN BEGIN NathLT7_curses
SAY @495 /* ~Don't worry - I won't tell anyone if you don't.~ */
=
@496 /* ~So then which bits aren't exaggerated? People said such contradicting things. Some said you were a paragon of virtue. But then others...~ */
++ @461 /* ~I suppose the others said I ate small children for breakfast, that sort of thing?~ */ + NathLT7_virtue
++ @462 /* ~So, now that you've seen the real thing, which people did you believe?~ */ + NathLT7_dontknow
++ @463 /* ~Well, I wouldn't call myself a "paragon", for a start. I'm not that sort of <PRO_MANWOMAN>.~ */ + NathLT7_paragon
END

IF ~~ THEN BEGIN NathLT7_focus
SAY @497 /* ~Well, I hope I can help you keep things in perspective.~ */
++ @498 /* ~It's always good to have someone around to do that, I've found.~ */ + NathLT7_nice
++ @499 /* ~And I'll do the same for you. It sometimes seems as though you need it.~ */ + NathLT7_cute
++ @500 /* ~I doubt I'll need your help, but thank you all the same.~ */ + NathLT7_nice
END

IF ~~ THEN BEGIN NathLT7_wrong
SAY @501 /* ~Forgive me, but I don't think that's right. I've seen the way you've been behaving, then there's what you did for Baldur's Gate...~ */
=
@502 /* ~I know lots of people think that I'm a slave to my desires. But I'm not. You're not at the mercy of your blood.~ */
++ @503 /* ~How can you know that? You didn't seem so sure when I told you about it.~ */ + NathLT7_before
++ @504 /* ~There's nothing wrong with some desires here and there, surely?~ */ + NathLT7_desires
++ @505 /* ~And what's wrong with being a slave to desires?~ */ + NathLT7_desires
END

IF ~~ THEN BEGIN NathLT7_nice
SAY @506 /* ~Well, whatever helps, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_consolation
SAY @507 /* ~Thank you. I've never had a problem about liking men, but I know lots of people have to hide it, or are ashamed of it. It's a shame. Ah, but this isn't the kind of talk for travelling. Let's talk about something lighter?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_evil
SAY @508 /* ~I do, and many others, too! I won't take your insults!~ */
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT7_pardon
SAY @509 /* ~Oh, you know - you just seem to care a lot. And it's good to be around that sort of kindness.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_blush
SAY @510 /* ~Um, yes, all right, er...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_cute
SAY @511 /* ~That's what I mean. About you being a paragon - even if that's the wrong word.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_before
SAY @512 /* ~I was upset, before. Don't worry about it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_desires
SAY @513 /* ~Oh, I'm not saying desires are wrong. Of course they're not. It's just being a slave to them that's wrong. Otherwise how would you fall in love?~ */
=
@514 /* ~Ah, this isn't talk for travelling. Let's talk about a lighter topic?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_humour
SAY @515 /* ~Would I do that?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_smile
SAY @516 /* ~It's good to see you smiling. I'm glad you still feel able to do that.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT7_like
SAY @517 /* ~Oh! I like having you around, too. Thank you.~ */
IF ~~ THEN EXIT
END

//LT8//
IF
~Global("NathLoveTalk","LOCALS",16)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT8
SAY @518 /* ~(As Nathaniel makes ready to sleep, you catch a glimpse of a half-healed scar on his collarbone. He absently rubs it, wincing at the pain.)~ */
++ @519 /* ~Nathaniel! How did that happen? I didn't notice you getting hurt like that.~ */ DO ~IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT8_curious
++ @520 /* ~Nathaniel, have you been picking up servingmen again?~ */ DO ~IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT8_waiters
++ @521 /* ~(Leave him alone.)~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",21) RestParty()~ EXIT
IF ~Class(Player1,CLERIC_ALL)~ THEN REPLY @522 /* ~You should have let me take a look at that wound, Nathaniel.~ */ DO ~IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT8_curious
IF ~Class(Player1,DRUID_ALL)~ THEN REPLY @522 /* ~You should have let me take a look at that wound, Nathaniel.~ */ DO ~IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT8_curious
END

IF ~~ THEN BEGIN NathLT8_curious
SAY @523 /* ~What - what are you talking about?~ */   
++ @524 /* ~That scar - the one on your collarbone. What happened?~ */ + NathLT8_scar
++ @525 /* ~Don't play games with me, Nathaniel. You and I both know what I'm talking about.~ */ + NathLT8_vampire
++ @526 /* ~Very well. If you don't want to tell me, that's fine.~ */ + NathLT8_scar
END

IF ~~ THEN BEGIN NathLT8_waiters
SAY @527 /* ~What? No! What are you talking about?~ */   
++ @528 /* ~Relax, I was just joking What's wrong? You look like a ghost.~ */ + NathLT8_joke
++ @529 /* ~Please, calm down, Nathaniel. You needn't get so worked up.~ */ + NathLT8_relax
END

IF ~~ THEN BEGIN NathLT8_scar
SAY @530 /* ~Oh ... oh. That scar. It was a fight.~ */   
++ @531 /* ~Obviously. What fight, and when did it happen?~ */ + NathLT8_vampire
++ @532 /* ~Nathaniel, am I going to have to drag this out of you?~ */ + NathLT8_vampire
END

IF ~~ THEN BEGIN NathLT8_vampire
SAY @533 /* ~I ... there was a vampire. He bit me, and, and that's where the scar's from, all right?~ */
++ @534 /* ~Nathaniel, please. Relax - you don't need to get so worked up.~ */ + NathLT8_relax
++ @535 /* ~What's up, Nathaniel? There's nothing wrong with getting hurt.~ */ + NathLT8_relax
++ @536 /* ~(Give Nathaniel a hug.)~ */ + NathLT8_hug1
++ @537 /* ~It doesn't surprise me that a weakling like you would get so wounded.~ */ + NathLT8_guilttrip
END

IF ~~ THEN BEGIN NathLT8_joke
SAY @538 /* ~Oh. Right.~ */
++ @539 /* ~So what is it from?~ */ + NathLT8_vampire
++ @540 /* ~Nathaniel, tell me what that scar is!~ */ + NathLT8_vampire
END

IF ~~ THEN BEGIN NathLT8_guilttrip
SAY @541 /* ~You're right, I, goodnight...~ */   
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT8_relax
SAY @542 /* ~Um, I, I'll try...~ */
++ @543 /* ~What's wrong, Nathaniel? I mean it - don't get so agitated.~ */ + NathLT8_nothingwrong
++ @536 /* ~(Give Nathaniel a hug.)~ */ + NathLT8_hug1
++ @544 /* ~Just get over yourself, Nathaniel. You're being ridiculously self-indulgent.~ */ + NathLT8_guilttrip
++ @545 /* ~Nathaniel? Pull yourself together, it's all right.~ */ + NathLT8_calmdown
END

IF ~~ THEN BEGIN NathLT8_hug1
SAY @546 /* ~(As you wrap your arms around him, Nathaniel flinches and you feel his body shaking. You sit silently until his shivers subside and his breathing deepens. What seems like a long while passes until your foot begins to go numb.)~ */
++ @547 /* ~Nathaniel?~ */ + NathLT8_whisper
++ @548 /* ~(Poke him gently.)~ */ + NathLT8_poke
++ @549 /* ~(Gently shake him.)~ */ + NathLT8_shake
END

IF ~~ THEN BEGIN NathLT8_nothingwrong
SAY @550 /* ~I - I - nothing--~ */   
++ @551 /* ~Please, Nathaniel, I mean it - calm down.~ */ + NathLT8_calmdown
++ @552 /* ~Get over yourself, Nathaniel. Others have been hurt far more badly.~ */ + NathLT8_guilttrip
++ @536 /* ~(Give Nathaniel a hug.)~ */ + NathLT8_hug2
END

IF ~~ THEN BEGIN NathLT8_calmdown
SAY @553 /* ~I - yes - I'll try - thank you.~ */   
IF ~~ THEN DO ~SetGlobal("NathLoveTalk","LOCALS",17)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT8_whisper
SAY @554 /* ~(There is no answer from Nathaniel except his breathing.)~ */
++ @555 /* ~(Shake him gently.)~ */ + NathLT8_shake
++ @556 /* ~(Move him under his blankets.)~ */ + NathLT8_move
++ @557 /* ~(Make yourself as comfortable as possible and sleep as you are.)~ */ + NathLT8_sleep
END

IF ~~ THEN BEGIN NathLT8_poke
SAY @558 /* ~Mmmmrnng...~ */
++ @549 /* ~(Gently shake him.)~ */ + NathLT8_shake
++ @556 /* ~(Move him under his blankets.)~ */ + NathLT8_move
++ @557 /* ~(Make yourself as comfortable as possible and sleep as you are.)~ */ + NathLT8_sleep
END

IF ~~ THEN BEGIN NathLT8_shake
SAY @559 /* ~Mmmng ... sorry, just dropped off ... I'll go to bed now ... goodnight...~ */
IF ~~ THEN DO ~SetGlobal("NathLoveTalk","LOCALS",17)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT8_hug2
SAY @560 /* ~(As soon as you touch him he flinches violently, then slumps against you, shivering. It takes a long while for his breathing to deepen. What seems like a long while passes until your foot begins to go numb.)~ */
++ @547 /* ~Nathaniel?~ */ + NathLT8_whisper
++ @548 /* ~(Poke him gently.)~ */ + NathLT8_poke
++ @549 /* ~(Gently shake him.)~ */ + NathLT8_shake
END

IF ~~ THEN BEGIN NathLT8_better
SAY @561 /* ~Yes, I know. Thanks, though.~ */
IF ~~ THEN DO ~SetGlobal("NathLoveTalk","LOCALS",17)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT8_talk
SAY @562 /* ~No, no, not at the moment, thank you.~ */
IF ~~ THEN DO ~SetGlobal("NathLoveTalk","LOCALS",17)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT8_move
SAY @563 /* ~Mmmmng? Thankyou...~ */
IF ~~ THEN DO ~SetGlobal("NathLoveTalk","LOCALS",17)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT8_sleep
SAY @564 /* ~(Despite his earlier agitation, Nathaniel does not wake.)~ */
IF ~~ THEN DO ~SetGlobal("NathLoveTalk","LOCALS",17)
RestParty()~
EXIT
END

//LT9//
IF
~Global("NathLoveTalk","LOCALS",18)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT9
SAY @565 /* ~Sorry about earlier. I - was tired. But thank you.~ */   
++ @566 /* ~It's not a problem. I just wanted to find out what was wrong.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT9_ok
++ @567 /* ~Anything to help, Nathaniel. I hope that you're feeling all right now.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT9_anything
++ @568 /* ~"Tired"? It seemed a bit more than being tired, if you ask me.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT9_suspicious
END

IF ~~ THEN BEGIN NathLT9_ok
SAY @569 /* ~Even so, that doesn't stop me thanking you.~ */
++ @570 /* ~Anytime - I don't like having people in the group upset.~ */ + NathLT9_sweet
++ @571 /* ~Well, I don't like to be distracted by people being upset.~ */ + NathLT9_sweet
++ @572 /* ~What was wrong, anyway? It seemed like there was more wrong than just a wound.~ */ + NathLT9_suspicious
END

IF ~~ THEN BEGIN NathLT9_anything
SAY @573 /* ~It's nice to hear that. I'm glad that you're around.~ */
++ @570 /* ~Anytime - I don't like having people in the group upset.~ */ + NathLT9_sweet
++ @571 /* ~Well, I don't like to be distracted by people being upset.~ */ + NathLT9_sweet
++ @572 /* ~What was wrong, anyway? It seemed like there was more wrong than just a wound.~ */ + NathLT9_suspicious
END

IF ~~ THEN BEGIN NathLT9_suspicious
SAY @574 /* ~I'd rather not talk about it, thank you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT9_sweet
SAY @575 /* ~Well, we should be getting going.~ */
IF ~~ THEN EXIT
END

//LT10//

IF
~Global("NathLoveTalk","LOCALS",20)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT10
SAY @576 /* ~<CHARNAME>, may I speak to you for a moment?~ */   
++ @577 /* ~Yes, of course, I saw that you were looking a little pensive. What is it?~ */ DO ~SetGlobalTimer("FHTerlArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT10_talk
++ @578 /* ~If you must. What's up?~ */ DO ~SetGlobalTimer("FHTerlArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT10_talk
++ @579 /* ~I'm afraid this isn't really the time, Nathaniel - can it wait?~ */ DO ~SetGlobalTimer("FHTerlArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT10_notalk
END

IF ~~ THEN BEGIN NathLT10_talk
SAY @580 /* ~Well, it's about Latimer. We ... well, we haven't seen anything.~ */
=
@581 /* ~What I was thinking was, maybe I should let him go. I don't know, it's just that I think that after all this time maybe he doesn't want me to find him. At first I didn't want to accept it.~ */
++ @582 /* ~Until now?~ */ + NathLT10_untilnow
++ @583 /* ~So have things changed while you've been apart? You've changed your tune since I met you.~ */ + NathLT10_changed
++ @584 /* ~This sounds as though you're giving up on him. You seemed so determined to find him.~ */ + NathLT10_giveup
END

IF ~~ THEN BEGIN NathLT10_notalk
SAY @585 /* ~All right, sorry to have bothered you. Maybe we can speak later.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT10_noBrega
SAY @586 /* ~And if we were to see him, it would be my duty to turn him in, wouldn't it?~ */
=
@587 /* ~What I was thinking was maybe I should let him go. I don't know, it's just that I think that after all this time maybe he doesn't want me to find him. At first I didn't want to accept it.~ */
++ @582 /* ~Until now?~ */ + NathLT10_untilnow
++ @583 /* ~So have things changed while you've been apart? You've changed your tune since I met you.~ */ + NathLT10_changed
++ @584 /* ~This sounds as though you're giving up on him. You seemed so determined to find him.~ */ + NathLT10_giveup
END

IF ~~ THEN BEGIN NathLT10_sorry
SAY @588 /* ~No, no, I didn't mean to insult you - you've been so good to me. I'm just not sure that any amount of trying would help. I'm not sure that he wants me to find him. Maybe I should just move on? I didn't want to accept it.~ */
++ @582 /* ~Until now?~ */ + NathLT10_untilnow
++ @583 /* ~So have things changed while you've been apart? You've changed your tune since I met you.~ */ + NathLT10_changed
++ @584 /* ~This sounds as though you're giving up on him. You seemed so determined to find him.~ */ + NathLT10_giveup
END

IF ~~ THEN BEGIN NathLT10_sorryBrega
SAY @589 /* ~No, no, I didn't mean to insult you. It's just that it would be my duty to turn him in, wouldn't it?~ */
=
@590 /* ~What I was thinking was maybe I should let him go. I'm not sure that he wants me to find him. Maybe I should just move on? I didn't want to accept it, but...~ */
++ @582 /* ~Until now?~ */ + NathLT10_untilnow
++ @583 /* ~So have things changed while you've been apart? You've changed your tune since I met you.~ */ + NathLT10_changed
++ @584 /* ~This sounds as though you're giving up on him. You seemed so determined to find him.~ */ + NathLT10_giveup
END

IF ~~ THEN BEGIN NathLT10_untilnow
SAY @591 /* ~No, until recently. I feel different to before. Less dependent on him... I don't know.~ */
++ @592 /* ~If you don't mind me asking, why were you dependent on him in the first place?~ */ + NathLT10_dependent
++ @593 /* ~You don't seem especially different to me.~ */ + NathLT10_nodifferent
++ @594 /* ~Well, if you've become more sure of yourself, that's a credit to you, surely?~ */ + NathLT10_dependent
END

IF ~~ THEN BEGIN NathLT10_changed
SAY @595 /* ~Yes, they have. I feel different to before. Less dependent on him. I don't know.~ */
++ @592 /* ~If you don't mind me asking, why were you dependent on him in the first place?~ */ + NathLT10_dependent
++ @593 /* ~You don't seem especially different to me.~ */ + NathLT10_nodifferent
++ @594 /* ~Well, if you've become more sure of yourself, that's a credit to you, surely?~ */ + NathLT10_dependent
END

IF ~~ THEN BEGIN NathLT10_giveup
SAY @596 /* ~No, it isn't that. Things have changed and I've changed. I feel different to before, less dependent on him. I don't know.~ */
++ @592 /* ~If you don't mind me asking, why were you dependent on him in the first place?~ */ + NathLT10_dependent
++ @593 /* ~You don't seem especially different to me.~ */ + NathLT10_nodifferent
++ @594 /* ~Well, if you've become more sure of yourself, that's a credit to you, surely?~ */ + NathLT10_dependent
END

IF ~~ THEN BEGIN NathLT10_dependent
SAY @597 /* ~I told you that when I was young, Latimer saved me. What specifically happened was ... when I was young and I'd just joined the Flaming Fist, there were some people who decided they didn't like me.~ */
=
@598 /* ~They would corner me and - and beat me. They made me believe speaking out would only make things worse. It went on for, oh, about nine or ten months, in my sixteenth year.~ */
=
@599 /* ~I was friends with Avery since before that, but he couldn't help me. Shigure might have done, but he couldn't be around at the Fist barracks - he was still living in my father's house. Then Latimer came along.~ */
=
@600 /* ~He stopped them, had them expelled, and - and protected me. I needed protecting. I felt like everyone was out to get me.~ */
++ @601 /* ~It sounds as though they were.~ */ + NathLT10_paranoia
++ @602 /* ~Nathaniel, that's terrible. You should have told someone about it before it got so bad.~ */ + NathLT10_love
++ @603 /* ~What happened with Latimer after that?~ */ + NathLT10_love
END

IF ~~ THEN BEGIN NathLT10_nodifferent
SAY @604 /* ~<CHARNAME>, this is difficult enough without you interrupting!~ */
++ @605 /* ~Then be quiet! I need some peace and quiet around here!~ */ + NathLT10_shout
++ @606 /* ~I'm sorry. Please, carry on with what you were saying.~ */ + NathLT10_dependent
END

IF ~~ THEN BEGIN NathLT10_paranoia
SAY @607 /* ~Excuse me? Shall I just shut up?~ */
++ @608 /* ~Yes, please! I need some peace and quiet around here!~ */ + NathLT10_shout
++ @609 /* ~No, carry on. I'm sorry for interrupting.~ */ + NathLT10_love
END

IF ~~ THEN BEGIN NathLT10_love
SAY @610 /* ~Well, Latimer may have been ... abrupt ... with everyone, but he was nice to me.~ */
=
@611 /* ~I fell in love with him. I don't think I even realised it was happening, but it was. After a couple of months, well, things got a bit more serious between us.~ */
++ @612 /* ~A couple of months? That was quite a fast courtship, wasn't it?~ */ + NathLT10_fast
++ @613 /* ~A couple of months? What were you doing for all that time, playing chess?~ */ + NathLT10_slow
++ @614 /* ~Thank you for telling me about all of this. It's good to know important things.~ */ + NathLT10_thanks
END

IF ~~ THEN BEGIN NathLT10_shout
SAY @615 /* ~Fine! I won't bother you with this again.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT10_fast
SAY @616 /* ~What do you-- Hey! I'm not that sort of man!~ */
IF ~~ THEN + NathLT10_letgo
END

IF ~~ THEN BEGIN NathLT10_slow
SAY @617 /* ~Yes, act-- Hey! Do you think I'd rush into something like that? Who do you take me for?~ */
IF ~~ THEN + NathLT10_letgo
END

IF ~~ THEN BEGIN NathLT10_thanks
SAY @618 /* ~Thank *you*, <CHARNAME>. For listening to me rambling on about things.~ */
++ @619 /* ~What are you going to do, now? Are you just going to stop looking for him?~ */ + NathLT10_letgo
++ @620 /* ~Don't mention it. As I said, it's interesting to find out things that have happened to you.~ */ + NathLT10_dontmention
++ @621 /* ~(yawn) Sorry, what was that? Just dropped off for a second, there.~ */ + NathLT10_tease
END

IF ~~ THEN BEGIN NathLT10_letgo
SAY @622 /* ~I'll try to let it go, I suppose. Latimer and I had something so important but now, well, he's not the same person. And neither am I. I just wish I could speak to him again. But he doesn't want anything to do with me, and that's that.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT10_dontmention
SAY @623 /* ~All right, I won't go on about it. But it helped, talking to you.~ */
IF ~~ THEN + NathLT10_letgo
END

IF ~~ THEN BEGIN NathLT10_tease
SAY @624 /* ~That's my cue to stop the thank-yous, I suppose? All right, I won't go on about it. But it helped, talking to you.~ */
IF ~~ THEN + NathLT10_letgo
END

//LT11//
IF
~Global("NathLoveTalk","LOCALS",22)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT11
SAY @625 /* ~I'm sorry. I'm so sorry.~ */   
++ @626 /* ~You don't have to apologise about it. You'd had bad news, for heaven's sake.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT11_news
++ @627 /* ~So you should be! I'm not the kind of person who'll take being shouted at lying down!~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT11_righteous
++ @628 /* ~Thanks for the apology, but what's done is done now. I'd rather not dwell on it.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT11_should
END

IF ~~ THEN BEGIN NathLT11_news
SAY @629 /* ~It ... wasn't just the news.~ */
++ @630 /* ~What was it, then, if it wasn't hearing that from Avery?~ */ + NathLT11_virgil
++ @631 /* ~It doesn't matter. What's important to me is that you're all right.~ */ + NathLT11_forgive
++ @632 /* ~Look, just don't keep going on about it, all right? What's in the past is in the past.~ */ + NathLT11_dwell
END

IF ~~ THEN BEGIN NathLT11_righteous
SAY @633 /* ~No, no, I don't. I just wanted to say sorry.~ */
++ @634 /* ~Well, thank you, I suppose. I just wanted you to know that it hurt my feelings.~ */ + NathLT11_friend
++ @635 /* ~That isn't enough. It hurt a great deal when you said those things to me.~ */ + NathLT11_should
++ @636 /* ~All right. Just think more before you say something like that that next time.~ */ + NathLT11_think
END

IF ~~ THEN BEGIN NathLT11_should
SAY @637 /* ~I ... I know. But I am sorry.~ */
++ @638 /* ~Thank you, I appreciate your apology.~ */ + NathLT11_forgive
++ @639 /* ~Just don't dwell on it, all right? It's all in the past, now.~ */ + NathLT11_dwell
++ @640 /* ~So was it the news, or was there something else as well?~ */ + NathLT11_news
END

IF ~~ THEN BEGIN NathLT11_think
SAY @641 /* ~I always try to consider before getting angry, that's something I--~ */
=
@642 /* ~All right. I will, I promise.~ */
++ @643 /* ~Thank you.~ */ + NathLT11_thanks
++ @644 /* ~Thank you. I forgive you, Nathaniel.~ */ + NathLT11_forgive
++ @645 /* ~You'd had bad news. It's fine.~ */ + NathLT11_news
END

IF ~~ THEN BEGIN NathLT11_friend
SAY @646 /* ~I know, that's why I don't want to-- Never mind.~ */
++ @638 /* ~Thank you, I appreciate your apology.~ */ + NathLT11_forgive
++ @639 /* ~Just don't dwell on it, all right? It's all in the past, now.~ */ + NathLT11_dwell
++ @640 /* ~So was it the news, or was there something else as well?~ */ + NathLT11_news
END

IF ~~ THEN BEGIN NathLT11_thanks
SAY @647 /* ~That means a lot to me. I-- Never mind.~ */
IF ~~ THEN DO ~SetGlobal("FHNoFlirtsPostAvery","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN NathLT11_forgive
SAY @648 /* ~Thank you. I-- Never mind.~ */
IF ~~ THEN DO ~SetGlobal("FHNoFlirtsPostAvery","GLOBAL",0)~
EXIT
END

IF ~~ THEN BEGIN NathLT11_virgil
SAY @649 /* ~I'm sorry, but I don't want to talk about it. Let's just keep moving?~ */
IF ~~ THEN DO ~SetGlobal("FHNoFlirtsPostAvery","GLOBAL",0)~
EXIT
END

IF ~~ THEN BEGIN NathLT11_dwell
SAY @650 /* ~You're right. Let's just keep moving?~ */
IF ~~ THEN DO ~SetGlobal("FHNoFlirtsPostAvery","GLOBAL",0)~
EXIT
END

//LT12//
IF
~Global("NathLoveTalk","LOCALS",24)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT12
SAY @651 /* ~How are you doing at the moment, <CHARNAME>?~ */   
++ @652 /* ~I'm doing fine, thank you. A little tired, but that's usual. Why do you ask?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT12_fine
++ @653 /* ~Not too well, actually. I feel about ready to keel over quite a lot of the time.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT12_bad
++ @654 /* ~I'd prefer not to talk about it, thank you. It's bad enough as it is without discussing it.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT12_notalk
++ @655 /* ~Oh, I'm fine, apart from the confusion and the torture and everything.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT12_tease
END

IF ~~ THEN BEGIN NathLT12_fine
SAY @656 /* ~Anything I can do to keep you feeling that way, you will tell me, won't you?~ */
++ @657 /* ~Keep your hand on my shoulder, for a start. I like it.~ */ + NathLT12_hand
++ @658 /* ~You can stop the touching, for a start. I'm not really in the mood for being touchy-feely.~ */ + NathLT12_burned
++ @659 /* ~It's good to talk to you, no matter how stressful these past times have been.~ */ + NathLT12_nicetalk
++ @660 /* ~Having you around does make me feel a little more relaxed about things.~ */ + NathLT12_niceround
END

IF ~~ THEN BEGIN NathLT12_tease
SAY @661 /* ~Oh! I'm sorry to have brought it up, it's just that I was concerned, and--~ */
++ @662 /* ~I was just joking - you should loosen up a little. I'm fine, really.~ */ + NathLT12_fine
++ @663 /* ~I'm fine, Nathaniel. There's this thing sarcasm that you need to grasp.~ */ + NathLT12_laugh
++ @664 /* ~Yes, but isn't it obvious that I'm going to be unhappy with all these things going on?~ */ + NathLT12_bad
++ @665 /* ~I know that you were concerned, but what I really don't need is your pity.~ */ + NathLT12_pity
END

IF ~~ THEN BEGIN NathLT12_bad
SAY @666 /* ~Ah... Is there anything I can do? I could get you something, if you'd like, or maybe--~ */
=
@667 /* ~I know, I could--~ */
++ @668 /* ~Go and kill Irenicus, and then destroy the essence of Bhaal so I can have a normal life.~ */ + NathLT12_cake
++ @669 /* ~Being around you makes me feel a little more relaxed about things.~ */ + NathLT12_niceround
++ @670 /* ~I don't think there is anything you could do, even if I wanted you to.~ */ + NathLT12_therapist
END

IF ~~ THEN BEGIN NathLT12_notalk
SAY @671 /* ~Of course. If there's anything I can do, then please let me know.~ */
++ @672 /* ~Sure. Kill Irenicus, resurrect Gorion and destroy Bhaal, all in time for tea.~ */ + NathLT12_cake
++ @670 /* ~I don't think there is anything you could do, even if I wanted you to.~ */ + NathLT12_therapist
++ @673 /* ~To be honest, what I don't need from you is your pity.~ */ + NathLT12_pity
END

IF ~~ THEN BEGIN NathLT12_hand
SAY @674 /* ~Anytime, <CHARNAME>.~ */
=
@675 /* ~(Nathaniel gives your shoulder a light squeeze, then lets go.)~ */
=
@676 /* ~If you ever need to talk, you know where I am.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT12_nicetalk
SAY @677 /* ~I'm glad you feel that way, <CHARNAME>. I've found talking to you good, too.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT12_niceround
SAY @678 /* ~I might have thought differently, but-- Ahh, never mind, you'll think I'm fishing for compliments. So, thank you. Being around you's made me feel relaxed, too.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT12_burned
SAY @679 /* ~Sorry. Shall I leave you alone?~ */
++ @680 /* ~It's just the touching that bothers me a little - but it's nice to talk to you.~ */ + NathLT12_nicetalk
++ @681 /* ~It's just that touching makes me uncomfortable, sometimes.~ */ + NathLT12_therapist
++ @682 /* ~I'm not in the mood to talk to you, and I think I'll just say something I'll regret.~ */ + NathLT12_therapist
END

IF ~~ THEN BEGIN NathLT12_laugh
SAY @683 /* ~I suppose you're trying to tell me I should relax...?~ */
=
@684 /* ~So, how do you suggest I learn? Can you give me some pointers?~ */
++ @685 /* ~Here, let me give you a shoulder massage. That'll loosen you up nicely, I'm sure.~ */ + NathLT12_flirtatious
++ @686 /* ~Just don't take everything so seriously. You have to laugh sometimes.~ */ + NathLT12_try
END

IF ~~ THEN BEGIN NathLT12_pity
SAY @687 /* ~I wasn't being pitying, <CHARNAME>, I was just interested. If you'd rather, I won't ask after you.~ */
++ @688 /* ~I spoke wrongly, Nathaniel - I didn't mean it that way.~ */ + NathLT12_think
++ @689 /* ~I'd just prefer not to discuss this - especially when I'm not in the mood for talking.~ */ + NathLT12_therapist
++ @690 /* ~You're obviously trying to make up for being unpleasant earlier. Save it for when you mean it.~ */ + NathLT12_petty
END

IF ~~ THEN BEGIN NathLT12_cake
SAY @691 /* ~I'm not entirely sure I can do *that*, but I can give it a go. In the meantime, I can buy you some cake at the next inn!~ */
++ @692 /* ~That's your answer for everything, isn't it? Sometimes I think you're a little too obsessed.~ */ + NathLT12_answer
++ @693 /* ~Hmm, that's not the decisive action I was hoping for, but I appreciate the thought.~ */ + NathLT12_savoury
++ @694 /* ~(Smile weakly.)~ */ + NathLT12_smiley
END

IF ~~ THEN BEGIN NathLT12_therapist
SAY @695 /* ~Well, if you do need to talk, you know where I am...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT12_think
SAY @696 /* ~It's all right. I know I can't lecture about thinking before speaking, but I was only trying to help.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT12_petty
SAY @697 /* ~If you think I'm the sort of person who'd be that petty, I'd prefer not to talk to you.~ */
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT12_answer
SAY @698 /* ~Cake makes everything seem better. Haven't you realised that, yet?~ */
++ @699 /* ~I appreciate the kind thought, but I'm more of a savouries <MANWOMAN>.~ */ + NathLT12_savoury
++ @700 /* ~That's true enough. I'll definitely hold you to that promise.~ */ + NathLT12_promise
++ @701 /* ~I'm afraid the mere thought of cake makes me feel ill. I prefer my food plain and simple.~ */ + NathLT12_savoury
END

IF ~~ THEN BEGIN NathLT12_smiley
SAY @702 /* ~Ah, I was hoping that'd get a smile out of you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT12_flirtatious
SAY @703 /* ~That sounds nice. Maybe later.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT12_try
SAY @704 /* ~Ahh, I'll try. I'm sure you'll be able to help me in that regard.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT12_savoury
SAY @705 /* ~Trust me, <CHARNAME>, you don't know what you're missing.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT12_promise
SAY @706 /* ~I look forward to it!~ */
IF ~~ THEN EXIT
END

//LT13//
IF
~Global("NathLoveTalk","LOCALS",26)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT13
SAY @707 /* ~<CHARNAME>, do you have a minute?~ */   
++ @708 /* ~You're making me dizzy with all that pacing, Nathaniel.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT13_smile
++ @709 /* ~What did I tell you? Anytime you want to talk, I'm here? Now talk.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT13_smile
++ @710 /* ~I'm afraid not, Nathaniel. I've got other things to do, at the moment.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT13_notalk
END

IF ~~ THEN BEGIN NathLT13_smile
SAY @711 /* ~Sorry, I didn't realise I was being so transparent! All right, I've been thinking. About Latimer.~ */
=
@712 /* ~I was thinking about how little I have-- Only memories-- it's just that...~ */
IF ~~ THEN + NathLT13_ring
END

IF ~~ THEN BEGIN NathLT13_notalk
SAY @713 /* ~Maybe we could talk later, then.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT13_ring
SAY @714 /* ~The point is, Latimer gave me this ring. He always said green matched my eyes.~ */
++ @715 /* ~So he did have some goodness. I wonder if he could have been redeemed.~ */ + NathLT13_latredeem
++ @716 /* ~So what? He still left you for Black Lotus and ale - he was still a bastard.~ */ + NathLT13_insensitive
++ @717 /* ~It does look good with your eyes, yes. It's a rather nice ring.~ */ + NathLT13_nicering
++ @718 /* ~What's on your mind, then? I don't see what the ring has to do with anything.~ */ + NathLT13_trinket
END

IF ~~ THEN BEGIN NathLT13_latredeem
SAY @719 /* ~I just don't know. The way he was when I left, I'd say no. But there's endless possibilities. I'm sure we could discuss it all day, but I don't like those kinds of discussions.~ */
IF ~~ THEN + NathLT13_trinket
END

IF ~~ THEN BEGIN NathLT13_insensitive
SAY @720 /* ~I don't feel like talking if you're going to be that insensitive. Excuse me.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT13_nicering
SAY @721 /* ~It is. It's the only thing of his that I have, and I'm not sure what I should do. I mean, the last I remember of him was - well, you know from Avery. But I love him. Loved him. I know it's just a trinket, but...~ */   
++ @722 /* ~I don't see that you should throw it away. You have good memories as well as bad.~ */ + NathLT13_keep2
++ @723 /* ~If you're not sure about it, keep it. At least then if you decide otherwise you'll have it.~ */ + NathLT13_keep4
++ @724 /* ~Don't let his memory have such a hold on you. Don't deceive yourself about what he was like.~ */ + NathLT13_throw1
++ @725 /* ~Let him go, Nathaniel, along with the ring. Holding onto these things can be harmful.~ */ + NathLT13_throw2
END

IF ~~ THEN BEGIN NathLT13_trinket
SAY @726 /* ~It's the only thing of his I have, and I'm not sure what I should do. I mean, the last I remember of him was - well, you know from Avery. But I love him. Loved him. I know it's just a trinket, but...~ */   
++ @722 /* ~I don't see that you should throw it away. You have good memories as well as bad.~ */ + NathLT13_keep2
++ @723 /* ~If you're not sure about it, keep it. At least then if you decide otherwise you'll have it.~ */ + NathLT13_keep4
++ @724 /* ~Don't let his memory have such a hold on you. Don't deceive yourself about what he was like.~ */ + NathLT13_throw1
++ @725 /* ~Let him go, Nathaniel, along with the ring. Holding onto these things can be harmful.~ */ + NathLT13_throw2
END

IF ~~ THEN BEGIN NathLT13_keep2
SAY @727 /* ~I think you're right. Come on, let's go.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT13_keep4
SAY @728 /* ~You're right - being cautious is best, I think. Thank you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT13_throw1
SAY @729 /* ~You're right, <CHARNAME>. I suppose ... I still have the memories.~ */
IF ~~ THEN DO ~DestroyItem("FHRING")~
EXIT
END

IF ~~ THEN BEGIN NathLT13_throw2
SAY @730 /* ~I think you might be right, <CHARNAME>. Thank you.~ */
IF ~~ THEN DO ~DestroyItem("FHRING")~
EXIT
END

//LT14//
IF
~Global("NathLoveTalk","LOCALS",28)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT14
SAY @731 /* ~NO! Don't, PLEASE! I--~ */   
=
@732 /* ~Oh - oh. Sorry, <CHARNAME>... Nightmare. I used to get them a lot. I thought they'd stopped happening, but I suppose...~ */
++ @733 /* ~Don't worry about whatever it was, it wasn't real. You're with friends, here.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT14_friends
++ @734 /* ~It'll be all right, Nathaniel. Just try to breathe deeply and it'll pass.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT14_relax
++ @735 /* ~Many people get nightmares, including me, and they can cope. You can, too.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT14_getover
END

IF ~~ THEN BEGIN NathLT14_friends
SAY @736 /* ~Yes. Yes, I know. Thank you. I ... I think I'm all right now.~ */
++ @737 /* ~What was the nightmare about? Perhaps if you talk about it, it'll seem less frightening.~ */ + NathLT14_what
++ @738 /* ~That's good to hear. Are you all right to get going, or would you prefer to wait a while?~ */ + NathLT14_go
END

IF ~~ THEN BEGIN NathLT14_what
SAY @739 /* ~I can't really remember it now.~ */   
=
@740 /* ~That's not true. There was me and Latimer, and you, and a girl who could change into a panther. And vampires. And we'd all been captured by them. The vampires said to the girl, you have to choose who dies. And ... and she said Latimer, and, and that's when I woke up.~ */   
=
@741 /* ~Let's get on. I need something to take my mind off it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT14_relax
SAY @742 /* ~All - all right. Thank you. I ... I think I'm all right now.~ */
++ @737 /* ~What was the nightmare about? Perhaps if you talk about it, it'll seem less frightening.~ */ + NathLT14_what
++ @738 /* ~That's good to hear. Are you all right to get going, or would you prefer to wait a while?~ */ + NathLT14_go
END

IF ~~ THEN BEGIN NathLT14_getover
SAY @743 /* ~Thank you, I'll try ... I don't like to be weak.~ */
++ @744 /* ~It was just a dream: don't let dreams have power over you.~ */ + NathLT14_friends
++ @745 /* ~I have nightmares, too. It doesn't mean that I'm weak, so you'll be fine.~ */ + NathLT14_relax
++ @746 /* ~You must have an unhappy life, then, because you *are* weak.~ */ + NathLT14_weak
END

IF ~~ THEN BEGIN NathLT14_go
SAY @741 /* ~Let's get on. I need something to take my mind off it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT14_weak
SAY @747 /* ~At least I don't delight in taunting others for things they can't help.~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

//LT15//
IF
~Global("NathLoveTalk","LOCALS",30)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT15
SAY @748 /* ~NO! NO, I DON'T!~ */   
=
@749 /* ~(Nathaniel grabs hold of you and desperately kisses you. Before you have time to react he lets go of you, staring at you in horror.)~ */
=
@750 /* ~I - oh Gods--~ */   
++ @751 /* ~Mmm, that was lovely - though maybe you could be a little gentler next time.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT15_nexttime
++ @752 /* ~I don't know what to say - I had no idea you felt that way, Nathaniel!~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT15_noidea
++ @753 /* ~Well. That's one awakening I won't forget in anytime soon.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT15_awakening
++ @754 /* ~NATHANIEL! Get off me NOW!~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT15_getoff
END

IF ~~ THEN BEGIN NathLT15_nexttime
SAY @755 /* ~What? Next time? I ... I wasn't myself. <CHARNAME>, don't mess around.~ */
++ @756 /* ~Please, trust me when I say that I'm not messing around. I mean it.~ */ + NathLT15_nice
++ @757 /* ~You didn't exactly seem unwilling, Nathaniel. If I recall, it was you who went for me.~ */ + NathLT15_unwilling
++ @758 /* ~Fair enough. I'm sorry for misinterpreting what you did.~ */ + NathLT15_misinterpret
END

IF ~~ THEN BEGIN NathLT15_noidea
SAY @759 /* ~I don't! That is, I-- I was so scared, and you were there, all warm ... I just instinctively ... and even now I can't help thinking that...~ */
IF ~~ THEN + NathLT15_like
END

IF ~~ THEN BEGIN NathLT15_awakening
SAY @760 /* ~I didn't know what I was doing... I was so scared, and then you were there, so warm ... I just instinctively ... and even now I can't help thinking that...~ */
IF ~~ THEN + NathLT15_like
END

IF ~~ THEN BEGIN NathLT15_like
SAY @761 /* ~...that I'd like it to happen again. I'm sorry. I understand if ... if you'd like me to leave.~ */
++ @762 /* ~You're forgetting my feelings about this. What if I'd like it to happen again?~ */ + NathLT15_nice
++ @763 /* ~Leave? I don't want you to leave just because of something as small as this.~ */ + NathLT15_noleave
++ @764 /* ~I don't want you to leave, but I think it's best if we remain friends.~ */ + NathLT15_stayfriends
++ @765 /* ~Yes. I think it's best if you do. I don't want any awkwardness in the group because of this.~ */ + NathLT15_leave
END

IF ~~ THEN BEGIN NathLT15_getoff
SAY @766 /* ~I'm sorry, I'm so sorry, I didn't know what was going on--~ */
++ @767 /* ~Stop gabbling - I'm sorry for shouting at you, I was just shocked, you know?~ */ + NathLT15_awakening
++ @768 /* ~I think it's best if we forget that this happened. I don't want to go into the hows and whys.~ */ + NathLT15_stayfriends
++ @769 /* ~Look, Nathaniel, I can promise you I don't feel whatever you might feel for me.~ */ + NathLT15_harsh
++ @770 /* ~That's all very well, but I want you out of this group. Now.~ */ + NathLT15_nastyleave
END

IF ~~ THEN BEGIN NathLT15_nice
SAY @771 /* ~What? Oh. I - I see. You mean...?~ */
++ @772 /* ~If by "you mean" you mean what I think you mean, then yes.~ */ + NathLT15_yes
++ @773 /* ~Yes. You kissing me was nice, and I'd like for it to happen again.~ */ + NathLT15_yes
++ @774 /* ~(Lean towards Nathaniel and kiss him.)~ */ + NathLT15_kiss2
END

IF ~~ THEN BEGIN NathLT15_unwilling
SAY @775 /* ~I was scared, and you were so warm and I ... I just instinctively ... and even now I can't help thinking that...~ */
=
@776 /* ~...that I'd like it to happen again.~ */
++ @777 /* ~Ah! So you're not unwilling, then? You wouldn't mind there being a next time?~ */ + NathLT15_nice
++ @778 /* ~It looks like we're of the same mind, then, unless I'm grossly misinterpreting things.~ */ + NathLT15_nice
++ @774 /* ~(Lean towards Nathaniel and kiss him.)~ */ + NathLT15_kiss2
END

IF ~~ THEN BEGIN NathLT15_misinterpret
SAY @779 /* ~No, wait.~ */
=
@780 /* ~You're not misinterpreting. I ... it was nice.~ */
++ @777 /* ~Ah! So you're not unwilling, then? You wouldn't mind there being a next time?~ */ + NathLT15_nice
++ @778 /* ~It looks like we're of the same mind, then, unless I'm grossly misinterpreting things.~ */ + NathLT15_nice
++ @774 /* ~(Lean towards Nathaniel and kiss him.)~ */ + NathLT15_kiss2
END

IF ~~ THEN BEGIN NathLT15_noleave
SAY @781 /* ~I ... that's good. Thank you. So, um. What do you want to do? About, you know...~ */
++ @782 /* ~Do it again? That seems as good a course of action as any.~ */ + NathLT15_nice
++ @783 /* ~I don't know. This is all very sudden, and I'm feeling a little dazed about the whole thing.~ */ + NathLT15_sudden
++ @784 /* ~I don't know. I think we should just stay friends - I'm not ready for anything serious.~ */ + NathLT15_stayfriends
END

IF ~~ THEN BEGIN NathLT15_stayfriends
SAY @785 /* ~Of course. I'm sorry about all this. But ... it doesn't mean I value you any less, I swear.~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",0)
SetGlobal("NathMatch","GLOBAL",0)
SetGlobal("NathFriendMatch","GLOBAL",1)
SetGlobal("NathFriend","GLOBAL",1)
SetGlobal("NathFriendTalk","LOCALS",29)~ EXIT
END

IF ~~ THEN BEGIN NathLT15_nastyleave
SAY @786 /* ~But I'd like to stay here with you! We've gone through so much, and--~ */
++ @787 /* ~Didn't you hear what I just said? Get out, now!~ */ + NathLT15_horrible
++ @788 /* ~Don't argue with me, please. Just - just go. I'd rather not make a scene.~ */ + NathLT15_leave
++ @789 /* ~Fine, you can stay. But I want to be friends with you, and nothing more.~ */ + NathLT15_stayfriends
END

IF ~~ THEN BEGIN NathLT15_horrible
SAY @790 /* ~Yes, I'll-- goodbye.~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathLT15_leave
SAY @791 /* ~Yes. Well, goodbye. It's been interesting travelling with you.~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathLT15_yes
SAY @792 /* ~(He smiles and gently touches your hair with his fingertip, then presses his lips against your cheek.)~ */
IF ~~ THEN + NathLT15_postkiss
END

IF ~~ THEN BEGIN NathLT15_postkiss
SAY @793 /* ~This is ... odd, but, well, it's nice. No, it's more than nice. I'd never expected something like this. But ... I should say what set it off, I suppose.~ */
=
@794 /* ~I was dreaming, again. I was following Latimer along this road, and I was shouting out to him to stop, and he-- he couldn't hear me, or he was ignoring me.~ */   
=
@795 /* ~Avery was pulling me back but I got free of him and ran after Latimer, and everything was dark, and cold, and I was alone. I was weak, I was a failure, I was alone.~ */   
++ @796 /* ~Well, luckily that dream is completely untrue. You're nothing of the sort.~ */ + NathLT15_untrue
++ @797 /* ~It was just a dream, Nathaniel - you need to deal with real life, not with imaginary fears.~ */ + NathLT15_untrue
++ @798 /* ~I swear, if I ever meet those people who hurt you, I'm going to beat them to a pulp!~ */ + NathLT15_pulp
END

IF ~~ THEN BEGIN NathLT15_kiss2
SAY @799 /* ~(He responds in kind, but carefully this time, and when he withdraws he smiles at you.)~ */
IF ~~ THEN + NathLT15_postkiss
END

IF ~~ THEN BEGIN NathLT15_sudden
SAY @800 /* ~It is for me too! I - I know now that I like you a great deal. You've been so good to me about things. And maybe being more than friends ... could work.~ */
++ @801 /* ~When you put it like that I suppose all this was inevitable, in a way.~ */ + NathLT15_nice
++ @802 /* ~I like you as well, Nathaniel, but I'm not sure this is the right thing for us.~ */ + NathLT15_stayfriends
++ @803 /* ~That's all very well, but I didn't mean to give the impression that I was interested in you in that way.~ */ + NathLT15_stayfriends
++ @804 /* ~You may like me, but after to<DAYNIGHT> I don't feel the same way.~ */ + NathLT15_harsh
END

IF ~~ THEN BEGIN NathLT15_harsh
SAY @805 /* ~All right. I didn't mean for any of this to happen, so you needn't treat me as if it's all my fault.~ */
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",0) SetGlobal("NathMatch","GLOBAL",0) SetGlobal("NathFriendMatch","GLOBAL",1) SetGlobal("NathFriend","GLOBAL",1) SetGlobal("NathFriendTalk","LOCALS",29)~ EXIT
END

IF ~~ THEN BEGIN NathLT15_untrue
SAY @806 /* ~When I'm here, with you, I can-- I more than believe you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT15_pulp
SAY @807 /* ~I think you'll find that Latimer already did. But thank you.~ */
IF ~~ THEN EXIT
END

//LT16//
IF ~Global("NathLoveTalk","LOCALS",32)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT16
SAY @808 /* ~Would you mind if I asked you something?~ */   
=
@809 /* ~It's personal, I know, but I was wondering whether you'd been with a man before. Did you always know that you went that way?~ */
++ @810 /* ~It's fine to ask me, Nathaniel, and yes, I have. I've known that I like men for a long time.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT16_yesman
++ @811 /* ~I've been with both men and women. Does that bother you?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT16_bisexual
++ @812 /* ~I was with a woman for a while, but I haven't been with a man before.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT16_innocent
++ @813 /* ~I haven't been with anyone before. There's never been time for such things.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT16_innocent
++ @814 /* ~I've never needed anyone that way. I always thought it was a weakness.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT16_need
END

IF ~~ THEN BEGIN NathLT16_innocent
SAY @815 /* ~Oh, I see. That is to say, I was just curious.~ */
IF ~~ THEN + NathLT16_pry
END

IF ~~ THEN BEGIN NathLT16_pry
SAY @816 /* ~Sorry, I didn't mean to pry into your past. I don't want to make you feel uncomfortable.~ */
++ @817 /* ~You didn't make me feel uncomfortable, don't worry.~ */ + NathLT16_dontworry
++ @818 /* ~Well, I know all about your past. It's fair that you should know about mine.~ */ + NathLT16_dontworry
++ @819 /* ~I do feel uncomfortable talking to you about this, so can we just leave it now?~ */ + NathLT16_discomfort
END

IF ~~ THEN BEGIN NathLT16_need
SAY @820 /* ~But everyone needs support, even you - especially you - and as for support from me, I'll give it to you whenever you need it. All right?~ */
++ @821 /* ~Thank you. That means a lot to me.~ */ + NathLT16_dontworry
++ @822 /* ~How sickening. Did you get that from a book, or something?~ */ + NathLT16_sickening
++ @823 /* ~And I'll support you back, Nathaniel.~ */ + NathLT16_dontworry
++ @824 /* ~No thanks, I don't need it. I'd prefer just to enjoy spending time together.~ */ + NathLT16_nosupport
END

IF ~~ THEN BEGIN NathLT16_yesman
SAY @825 /* ~Ah, I see. It's interesting, isn't it? I suppose it was quite early that I knew - I was about sixteen or so.~ */
IF ~~ THEN + NathLT16_pry
END

IF ~~ THEN BEGIN NathLT16_bisexual
SAY @826 /* ~Not at all - I don't see why it would.~ */
IF ~~ THEN + NathLT16_pry
END

IF ~~ THEN BEGIN NathLT16_dontworry
SAY @827 /* ~Good. I like the idea of us, you know. I'm glad I had that nightmare - I don't know if I would have realised anything otherwise.~ */
++ @828 /* ~Nathaniel, I don't scare you that much, do I?~ */ + NathLT16_scaretwo
++ @829 /* ~I'm not glad you had the nightmare, but I'm certainly glad that you kissed me.~ */ + NathLT16_nightkiss
++ @830 /* ~I would have mentioned something to you sooner or later, I'm sure.~ */ + NathLT16_comeon
END

IF ~~ THEN BEGIN NathLT16_discomfort
SAY @831 /* ~Yes, whatever you want. I'm sorry for making you feel that way. Now let's get going, shall we? I don't want to keep you from other things.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT16_kill
SAY @832 /* ~All right. I'm sorry to have bothered you with this.~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT16_sickening
SAY @833 /* ~I didn't say it to be sickening, I was just being honest!~ */
++ @834 /* ~And I was only joking. I liked what you said.~ */ + NathLT16_dontworry
++ @835 /* ~So was I. Sickening is sickening, Nathaniel.~ */ + NathLT16_kill
END

IF ~~ THEN BEGIN NathLT16_nosupport
SAY @836 /* ~Ah, well, that's good as well.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT16_scaretwo
SAY @837 /* ~Of course you don't-- it's not that I'm scared, it's just that, well, I didn't know what you would have said. I didn't even know exactly what I thought.~ */
++ @838 /* ~You could have asked me.~ */ + NathLT16_ask
++ @839 /* ~It's better to be cautious, rather than rushing into it. I understand what you were thinking.~ */ + NathLT16_rush
++ @840 /* ~Have you ever considered that I felt the same way about asking you?~ */ + NathLT16_poorchar
++ @841 /* ~Well, it's happened now, despite everything, and that's what matters.~ */ + NathLT16_matters
END

IF ~~ THEN BEGIN NathLT16_nightkiss
SAY @842 /* ~Me too. Now, come on. I don't want to be a distraction.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT16_comeon
SAY @843 /* ~That's good to know. Thank you. You make me feel-- well, don't worry about that. Let's just get going, shall we? I don't want people to stare.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT16_ask
SAY @844 /* ~I'm sorry that I didn't, now. But here we are anyway and that's good!~ */
=
@845 /* ~Ahem. Come on, I think I'm starting to draw attention to us.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT16_rush
SAY @846 /* ~I'm glad that we think alike, I really am. Now let's-- we should probably carry on, don't you think? I don't want to distract you from more important things.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT16_poorchar
SAY @847 /* ~Oh, I'm sorry if I kept you away. I promise you I won't anymore.~ */
=
@848 /* ~Now let's just enjoy being together, shall we?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT16_matters
SAY @849 /* ~Yes, you're right, as ever. You amaze me sometimes.~ */
IF ~~ THEN EXIT
END

//LT17//
IF
~Global("NathLoveTalk","LOCALS",34)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT17
SAY @850 /* ~It's been a while, now. How are you feeling about this?~ */   
++ @437 /* ~What do you mean?~ */ DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT17_us
++ @851 /* ~What are you worrying about, now?~ */ DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT17_us
++ @852 /* ~Well, I could use a foot massage, if you're offering.~ */ DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT17_poke
END

IF ~~ THEN BEGIN NathLT17_us
SAY @853 /* ~You know, us.~ */
++ @854 /* ~Us? Oh, you mean us being together. It's wonderful.~ */ + NathLT17_fine
++ @855 /* ~You sound like a tongue-tied adolescent. Get on with it.~ */ + NathLT17_explain
++ @856 /* ~I'm having second thoughts about it, actually.~ */ + NathLT17_second
++ @857 /* ~Look, I just want to have fun, not all these questions.~ */ + NathLT17_fun
END

IF ~~ THEN BEGIN NathLT17_poke
SAY @858 /* ~I'd love to, but that wasn't exactly what I was asking. I was just wondering about, you know, us.~ */
++ @854 /* ~Us? Oh, you mean us being together. It's wonderful.~ */ + NathLT17_fine
++ @856 /* ~I'm having second thoughts about it, actually.~ */ + NathLT17_second
++ @859 /* ~Look, I just want to have fun with you, not all these questions.~ */ + NathLT17_fun
END

IF ~~ THEN BEGIN NathLT17_explain
SAY @860 /* ~I don't know, just-- I mean, are you having second thoughts, or anything?~ */
++ @861 /* ~Why, are you not sure about this?~ */ + NathLT17_sure
++ @862 /* ~I like you even more than before we were together.~ */ + NathLT17_fine
++ @863 /* ~I didn't want to say, but I'm not completely comfortable with being with you.~ */ + NathLT17_second
++ @864 /* ~Stop these questions about how much I like you! It's spoiling my fun.~ */ + NathLT17_fun
END

IF ~~ THEN BEGIN NathLT17_fine
SAY @865 /* ~Oh, that's a relief. I mean, not that I was suspicious of you or anything-- It's just that what I really want is to be sure that things will last.~ */
++ @866 /* ~It's a bit early to judge, I think, but I like it so far.~ */ + NathLT17_impatient
++ @867 /* ~I'm happy with things as they are, and I can't imagine leaving you anytime soon.~ */ + NathLT17_impatient
++ @868 /* ~I like you a great deal, Nathaniel, and I love being with you.~ */ + NathLT17_love
++ @869 /* ~Being with you is great fun, Nathaniel.~ */ + NathLT17_fun
END

IF ~~ THEN BEGIN NathLT17_second
SAY @870 /* ~Ah. Well. I've been happy with it. Do you think it's worth trying?~ */
++ @871 /* ~It is, I think. I like you a lot; it's just that you're a man and it feels a little strange.~ */ + NathLT17_man
++ @872 /* ~It's just that I've never been as close to someone as I have to you and it's going a little fast.~ */ + NathLT17_fast
++ @873 /* ~I'm just not sure this is the time and place for such things.~ */ + NathLT17_place
++ @874 /* ~I don't think I'm the right one for you. You seem to want balance: all I can offer is chaos.~ */ + NathLT17_chaos
++ @875 /* ~Hmph. When I got into this, I thought it was going to be more fun than discussions.~ */ + NathLT17_fun
END

IF ~~ THEN BEGIN NathLT17_fun
SAY @876 /* ~I see. So that's what I am to you? Fun?~ */
++ @877 /* ~No, I didn't mean it like that--~ */ + NathLT17_no
++ @878 /* ~What else is there?~ */ + NathLT17_whatelse
++ @879 /* ~Of course! I don't need all this navel-gazing.~ */ + NathLT17_yes
++ @880 /* ~Why do fun and commitment have to be mutually exclusive?~ */ + NathLT17_exclusive
END

IF ~~ THEN BEGIN NathLT17_sure
SAY @881 /* ~Not at all, I like you a great deal. I just, well, I want to be sure of you.~ */
++ @882 /* ~There's no reason why you shouldn't be.~ */ + NathLT17_fine
++ @883 /* ~I like you too, Nathaniel. A lot.~ */ + NathLT17_fine
++ @884 /* ~Well, I didn't want to say before, but I'm not sure I'm comfortable with this.~ */ + NathLT17_second
++ @885 /* ~You want to be sure of me? I just wanted fun out of this!~ */ + NathLT17_yes
END

IF ~~ THEN BEGIN NathLT17_impatient
SAY @886 /* ~Thank you. I'm sorry for being impatient, <CHARNAME>, but it's important to me.~ */
++ @887 /* ~It's all right. I think I quite like you being protective.~ */ + NathLT17_possessive
++ @888 /* ~It's all right, Nathaniel. I can understand you wanting to be sure.~ */ + NathLT17_thanks
++ @889 /* ~Well, don't worry so much about it.~ */ + NathLT17_relax
++ @890 /* ~What have I told you about learning to relax?~ */ + NathLT17_relax
END

IF ~~ THEN BEGIN NathLT17_love
SAY @891 /* ~Thank you, <CHARNAME>. I love being with you, too. Sorry for worrying about this.~ */
++ @892 /* ~You know, I think I quite like you being possessive.~ */ + NathLT17_possessive
++ @893 /* ~It's all right. I can understand you wanting to be sure.~ */ + NathLT17_thanks
++ @894 /* ~Don't worry so much about it, then. That way we're all happy.~ */ + NathLT17_relax
++ @890 /* ~What have I told you about learning to relax?~ */ + NathLT17_relax
END

IF ~~ THEN BEGIN NathLT17_man
SAY @895 /* ~Surely you can get used to it?~ */
++ @896 /* ~We'll see how it goes. I do like you a great deal.~ */ + NathLT17_impatient
++ @897 /* ~It just feels too strange, Nathaniel.~ */ + NathLT17_break
++ @898 /* ~I don't think I can.~ */ + NathLT17_break
END

IF ~~ THEN BEGIN NathLT17_fast
SAY @899 /* ~I am sorry for being impatient, if it seems that way. It's just that, well, I don't want to be hurt again.~ */
++ @900 /* ~You won't be, don't worry.~ */ + NathLT17_thanks
++ @901 /* ~Anyone who wants to hurt you has to come through my friends and me!~ */ + NathLT17_thanks
++ @902 /* ~I don't want to hurt you. That's why we should break it off now rather than later.~ */ + NathLT17_break
++ @903 /* ~Relax, Nathaniel. I'm enjoying being with you. All I said was that it was fast.~ */ + NathLT17_relax
END

IF ~~ THEN BEGIN NathLT17_place
SAY @904 /* ~Then when is the time and place? What if we were to die, and never knew what we could have had? If my time with Latimer taught me anything it was to go for something if it's going to do you good.~ */
++ @905 /* ~I see what you mean, Nathaniel.~ */ + NathLT17_fine
++ @906 /* ~But I'm not sure it will do good.~ */ + NathLT17_break
++ @907 /* ~Forming such attachments leads to weakness. I shouldn't have let it happen.~ */ + NathLT17_weakness
++ @908 /* ~Look, I just don't feel the same way about you that you do about me.~ */ + NathLT17_break
END

IF ~~ THEN BEGIN NathLT17_chaos
SAY @909 /* ~That's why I'm so sure, <CHARNAME>. I know that you being what you are means a disrupted life. And usually that'd scare me, but with you, it doesn't.~ */
++ @910 /* ~Thank you. That's put my mind at rest.~ */ + NathLT17_fine
++ @911 /* ~I'm just not sure that this is the right time and place for these kinds of things.~ */ + NathLT17_place
++ @912 /* ~I'm sorry, I just don't feel the same.~ */ + NathLT17_break
++ @913 /* ~Look, I just wanted some fun, and now you've got to bring commitment into it!~ */ + NathLT17_yes
END

IF ~~ THEN BEGIN NathLT17_break
SAY @914 /* ~I suppose it was unwise of me to have gone too far without ... without checking. I won't bother you with it again.~ */
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT17_no
SAY @915 /* ~So how *do* you mean it? And it had better be good!~ */
++ @916 /* ~It's just that I want us to make each other happy.~ */ + NathLT17_happy
++ @917 /* ~Conversations like this just distract me from being happy.~ */ + NathLT17_happy
++ @918 /* ~Why are "fun" and "commitment" mutually exclusive?~ */ + NathLT17_exclusive
END

IF ~~ THEN BEGIN NathLT17_whatelse
SAY @919 /* ~What else? There's comfort, and love, and--~ */
=
@920 /* ~Look, we're obviously not looking for the same things. I won't bother you with this again. It might spoil your *fun*.~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT17_yes
SAY @921 /* ~But there's comfort, and love, and--~ */
=
@922 /* ~Look, we're obviously not looking for the same things. I won't bother you with this again.~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT17_exclusive
SAY @923 /* ~You're right. I didn't mean to take it so personally. I'm sorry.~ */
++ @890 /* ~What have I told you about learning to relax?~ */ + NathLT17_relax
++ @924 /* ~Just don't start going possessive on me. We can relax and enjoy ourselves.~ */ + NathLT17_possessive
END

IF ~~ THEN BEGIN NathLT17_possessive
SAY @925 /* ~I'm not possessive, am I? I don't want to be jealous--~ */
++ @926 /* ~You're not jealous - or at least, you don't seem it.~ */ + NathLT17_thanks
++ @927 /* ~There's a difference between protectiveness and jealousy.~ */ + NathLT17_thanks
++ @928 /* ~You're a little possessive, sometimes, but you're not jealous.~ */ + NathLT17_thanks
END

IF ~~ THEN BEGIN NathLT17_thanks
SAY @929 /* ~Thank you, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT17_relax
SAY @930 /* ~Of course. I'm sure you'll be able to help me in that respect.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT17_weakness
SAY @931 /* ~It's not weakness, <CHARNAME>, it's strength. You've given me the strength to get better at dealing with things.~ */
++ @932 /* ~You may have found strength, but I don't think it's wise for me to let my guard down.~ */ + NathLT17_break
++ @933 /* ~Nevertheless, I don't want either of us to get hurt.~ */ + NathLT17_break
++ @934 /* ~You've given me strength too, Nathaniel. I suppose that must mean something.~ */ + NathLT17_fine
END

IF ~~ THEN BEGIN NathLT17_happy
SAY @935 /* ~It's just that for me, knowing that things are certain is necessary for being happy.~ */
++ @936 /* ~Well, that's not what I want. I like the unexpected: that's all that matters.~ */ + NathLT17_yes
++ @937 /* ~I see what you mean, but it still doesn't mean that I like your worrying.~ */ + NathLT17_relax
++ @938 /* ~Maybe you should relax about it.~ */ + NathLT17_relax
++ @939 /* ~All you need to know is that I want to be with you.~ */ + NathLT17_thanks
END

//LT18//
IF
~Global("NathLoveTalk","LOCALS",36)
Global("NathMatch","GLOBAL",1)~
THEN BEGIN NathLT18
SAY @940 /* ~I love you, <CHARNAME>.~ */   
++ @941 /* ~I love you too, Nathaniel.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1) RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ GOTO NathLT18_love
++ @942 /* ~Mmm, it's lovely to hear you say it at last.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT18_hear
++ @943 /* ~Nathaniel, we need to talk about this. I don't want to be a replacement for Latimer.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT18_replace
END

IF ~~ THEN BEGIN NathLT18_love
SAY @944 /* ~Ohhh, it's so wonderful to hear you say it. You're so... Oh, I can't even find the words.~ */
++ @945 /* ~Ah, I didn't realise I'd get such a nice reaction.~ */ + NathLT18_react
++ @946 /* ~You look a little starry-eyed! I wish I'd said it before, now.~ */ + NathLT18_before
++ @947 /* ~Hmmm. I can't help wondering, were you like this with Latimer, too?~ */ + NathLT18_latimer
END

IF ~~ THEN BEGIN NathLT18_react
SAY @948 /* ~Of course you'd get a good reaction! It's what I think I wanted to hear, ever since I kissed you.~ */
=
@949 /* ~You're wonderful, you know that?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT18_hear
SAY @950 /* ~I'm glad. You're so... Oh, I can't even find the words.~ */
++ @941 /* ~I love you too, Nathaniel.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ GOTO NathLT18_love
++ @951 /* ~I can't help wondering, were you like this with Latimer, too?~ */ + NathLT18_latimer
END

IF ~~ THEN BEGIN NathLT18_before
SAY @952 /* ~Don't worry about it! I didn't say before because, well, seeing him again shook me up, and you're so much better than him. In every way.~ */
=
@949 /* ~You're wonderful, you know that?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT18_latimer
SAY @953 /* ~Well, I, yes, but you're diff-- Please, <CHARNAME>, don't think that I'm using you to make myself feel better. I'm not that kind of man, I swear!~ */
++ @954 /* ~Still, I don't like that straight after seeing how bad he is you come to me.~ */ + NathLT18_still
++ @955 /* ~Thank you. I think that that's set my mind at rest about it.~ */ + NathLT18_hear2
END

IF ~~ THEN BEGIN NathLT18_still
SAY @956 /* ~No, no, it's not like that at-- I don't know what to say to convince you. When we saw Latimer, it made me see how lucky I am to have you, and-- Ah, never mind.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT18_hear2
SAY @957 /* ~I'm - I'm glad. I think telling you that set my mind at rest, too.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT18_replace
SAY @958 /* ~You're not. Seeing him again shook me up, but I know that you're better than him in your own right. Please believe me, <CHARNAME>.~ */
++ @954 /* ~Still, I don't like that straight after seeing how bad he is you come to me.~ */ + NathLT18_still
++ @955 /* ~Thank you. I think that that's set my mind at rest about it.~ */ + NathLT18_hear2
++ @959 /* ~And believe me when I say that I love you too.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ GOTO NathLT18_love
++ @960 /* ~I'm just not sure that I can reciprocate this.~ */ + NathLT18_nolove
END

IF ~~ THEN BEGIN NathLT18_nolove
SAY @961 /* ~But you - you said those things-- You led me on. You had opportunity to tell me no and you didn't! I was - so careful not to misinterpret how you felt and now you do this!~ */
IF ~~ THEN DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

//LT 19//
IF ~Global("NathLoveTalk","LOCALS",38)
Global("NathMatch","GLOBAL",1)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN BEGIN NathLT19b
SAY @962 /* ~(Nathaniel comes to sit beside you as you are preparing to sleep. He drapes his arm around your shoulders and drops a kiss on the top of your head.)~ */
IF ~Race(Player1,HUMAN)~ THEN REPLY @963 /* ~Well, hello to you, too.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_hello
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @963 /* ~Well, hello to you, too.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_hellohalfelf
IF ~Race(Player1,ELF)~ THEN REPLY @963 /* ~Well, hello to you, too.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_helloelf
IF ~Race(Player1,HUMAN)~ THEN REPLY @964 /* ~(Indicate the bedroll) Care to join me?~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_join
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @964 /* ~(Indicate the bedroll) Care to join me?~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_joinelf
IF ~Race(Player1,ELF)~ THEN REPLY @964 /* ~(Indicate the bedroll) Care to join me?~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_joinelf
IF ~Race(Player1,HUMAN)~ THEN REPLY @965 /* ~Mmm, I love you, Nathaniel.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1) SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_love
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @965 /* ~Mmm, I love you, Nathaniel.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1) SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_loveelf
IF ~Race(Player1,ELF)~ THEN REPLY @965 /* ~Mmm, I love you, Nathaniel.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1) SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_loveelf
++ @966 /* ~Goodnight, Nathaniel.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_goodnight
END

IF
~Global("NathLoveTalk","LOCALS",38)
Global("NathMatch","GLOBAL",1) AreaType(OUTDOOR)~
THEN BEGIN NathLT19
SAY @967 /* ~(Nathaniel comes to sit beside you as you prepare your bedroll. He drapes his arm around your shoulders and drops a kiss on the top of your head.)~ */
IF ~Race(Player1,HUMAN)~ THEN REPLY @963 /* ~Well, hello to you, too.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_hello
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @963 /* ~Well, hello to you, too.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_hellohalfelf
IF ~Race(Player1,ELF)~ THEN REPLY @963 /* ~Well, hello to you, too.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_helloelf
IF ~Race(Player1,HUMAN)~ THEN REPLY @964 /* ~(Indicate the bedroll) Care to join me?~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_join
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @964 /* ~(Indicate the bedroll) Care to join me?~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_joinelf
IF ~Race(Player1,ELF)~ THEN REPLY @964 /* ~(Indicate the bedroll) Care to join me?~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_joinelf
IF ~Race(Player1,HUMAN)~ THEN REPLY @965 /* ~Mmm, I love you, Nathaniel.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39) SetGlobal("FHSayLove","LOCALS",1)~ + NathLT19_love
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @965 /* ~Mmm, I love you, Nathaniel.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39) SetGlobal("FHSayLove","LOCALS",1)~ + NathLT19_loveelf
IF ~Race(Player1,ELF)~ THEN REPLY @965 /* ~Mmm, I love you, Nathaniel.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39) SetGlobal("FHSayLove","LOCALS",1)~ + NathLT19_loveelf
++ @966 /* ~Goodnight, Nathaniel.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",39)~ + NathLT19_goodnight
END

IF ~~ THEN BEGIN NathLT19_hello
SAY @968 /* ~(He smiles and hugs you more tightly.)~ */
++ @969 /* ~Are you dropping a hint? Come under the covers.~ */ + NathLT19_join
++ @970 /* ~Mmm, I love you.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ + NathLT19_love
++ @971 /* ~I'm not in the mood for kisses at the moment - I need to sleep.~ */ + NathLT19_goodnight
END

IF ~~ THEN BEGIN NathLT19_hellohalfelf
SAY @972 /* ~You know, I never thought I'd end up spending my life with a half-elf. But you, you're exquisite - so exotic - your ears...~ */   
++ @973 /* ~You're not so bad for a human yourself.~ */ + NathLT19_human
++ @969 /* ~Are you dropping a hint? Come under the covers.~ */ + NathLT19_join
++ @974 /* ~I'm not in the mood for kisses at the moment, Nathaniel - I need to sleep.~ */ + NathLT19_goodnight
END

IF ~~ THEN BEGIN NathLT19_helloelf
SAY @975 /* ~You know, I never thought I'd end up spending my life with an elf. But you, you're exquisite - so exotic - your ears...~ */   
++ @973 /* ~You're not so bad for a human yourself.~ */ + NathLT19_human
++ @969 /* ~Are you dropping a hint? Come under the covers.~ */ + NathLT19_join
++ @974 /* ~I'm not in the mood for kisses at the moment, Nathaniel - I need to sleep.~ */ + NathLT19_goodnight
END

IF ~~ THEN BEGIN NathLT19_join
SAY @976 /* ~Mmm, thank you. Hey, don't steal the blanket!~ */   
++ @977 /* ~Are you planning to just lie there, or do you want to do other things?~ */ + NathLT19_shock
++ @978 /* ~Mmm, this is nice. Goodnight, Nathaniel.~ */ + NathLT19_goodnight2
END

IF ~~ THEN BEGIN NathLT19_joinelf
SAY @976 /* ~Mmm, thank you. Hey, don't steal the blanket!~ */   
=
@979 /* ~This is nice. I never thought I'd be with anyone who wasn't human, but you're so, oh, I don't know ... exotic. You're amazing.~ */
++ @977 /* ~Are you planning to just lie there, or do you want to do other things?~ */ + NathLT19_shock
++ @978 /* ~Mmm, this is nice. Goodnight, Nathaniel.~ */ + NathLT19_goodnight2
END

IF ~~ THEN BEGIN NathLT19_love
SAY @980 /* ~I love you, too. May I join you?~ */   
++ @981 /* ~Of course.~ */ + NathLT19_join2
++ @982 /* ~"May" you join me? I order you to join me!~ */ + NathLT19_join3
++ @983 /* ~All right, but I don't want any funny business.~ */ + NathLT19_funny
++ @984 /* ~I'd prefer not tonight. I want the first time to be special.~ */ + NathLT19_funny
END

IF ~~ THEN BEGIN NathLT19_loveelf
SAY @985 /* ~I love you, too. Sometimes I forget how exotic you are - you're amazing - your ears...~ */
++ @973 /* ~You're not so bad for a human yourself.~ */ + NathLT19_human
++ @969 /* ~Are you dropping a hint? Come under the covers.~ */ + NathLT19_join
++ @974 /* ~I'm not in the mood for kisses at the moment, Nathaniel - I need to sleep.~ */ + NathLT19_goodnight
END

IF ~~ THEN BEGIN NathLT19_goodnight
SAY @986 /* ~I was wondering, could we sleep close tonight? I wouldn't disturb you or anything - I'd just like to feel you next to me.~ */
++ @987 /* ~Of course, Nathaniel. It would be lovely.~ */ + NathLT19_yessleep
++ @988 /* ~I'm afraid not. There are enemies about and I don't want distractions.~ */ + NathLT19_nosleep
END

IF ~~ THEN BEGIN NathLT19_human
SAY @989 /* ~Ha, thank you!~ */
++ @990 /* ~You know, you're very attractive when you blush.~ */ + NathLT19_blush
++ @991 /* ~Are you dropping a hint with all these compliments? Come under the covers.~ */ + NathLT19_join
++ @966 /* ~Goodnight, Nathaniel.~ */ + NathLT19_goodnight
END

IF ~~ THEN BEGIN NathLT19_shock
SAY @992 /* ~What - you mean - here?~ */
++ @993 /* ~Why not?~ */ + NathLT19_whynot
++ @994 /* ~Come on, honeycakes, don't play hard to get.~ */ + NathLT19_whynot
++ @995 /* ~You're right. Let's just sleep here.~ */ + NathLT19_goodnight2
END

IF ~~ THEN BEGIN NathLT19_goodnight2
SAY @996 /* ~Mmm, goodnight, my darling.~ */
IF ~~ THEN DO ~SetGlobal("FHNathSleep","GLOBAL",2)
SetGlobal("NathRomanceActive","GLOBAL",2)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT19_goodnight3
SAY @997 /* ~No, no, I was just wanting to make sure you're sure. You know...?~ */
IF ~~ THEN DO ~SetGlobal("FHNathSleep","GLOBAL",3)
SetGlobal("NathRomanceActive","GLOBAL",2)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT19_join2
SAY @976 /* ~Mmm, thank you. Hey, don't steal the blanket!~ */   
++ @977 /* ~Are you planning to just lie there, or do you want to do other things?~ */ + NathLT19_shock
++ @978 /* ~Mmm, this is nice. Goodnight, Nathaniel.~ */ + NathLT19_goodnight2
END

IF ~~ THEN BEGIN NathLT19_join3
SAY @998 /* ~Mmm, yes sir.~ */
++ @977 /* ~Are you planning to just lie there, or do you want to do other things?~ */ + NathLT19_shock
++ @978 /* ~Mmm, this is nice. Goodnight, Nathaniel.~ */ + NathLT19_goodnight2
END

IF ~~ THEN BEGIN NathLT19_funny
SAY @999 /* ~I didn't mean anything like that, I just thought it would be nice for us to sleep close tonight. I'm sorry--~ */
++ @1000 /* ~Don't worry about it, Nathaniel. But I'd rather we didn't - there are enemies about.~ */ + NathLT19_nosleep
++ @1001 /* ~Don't worry about it, Nathaniel. I'd like for us to do that.~ */ + NathLT19_yessleep
++ @1002 /* ~Sorry for presuming - I'd like for us to be together tonight.~ */ + NathLT19_yessleep
++ @1003 /* ~I'm sorry, I didn't mean to make you uncomfortable, but I'd rather we didn't.~ */ + NathLT19_nosleep
END

IF ~~ THEN BEGIN NathLT19_yessleep
SAY @1004 /* ~Goodnight, my darling.~ */
IF ~~ THEN DO ~SetGlobal("FHNathSleep","GLOBAL",2)
SetGlobal("NathRomanceActive","GLOBAL",2)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT19_nosleep
SAY @1005 /* ~Of course. Goodnight, my darling.~ */
IF ~~ THEN DO
~SetGlobal("FHNathSleep","GLOBAL",1)
SetGlobal("NathRomanceActive","GLOBAL",2)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT19_blush
SAY @1006 /* ~Stop it, <CHARNAME>, you're making it worse!~ */
++ @1007 /* ~Absolutely not! I'll compliment you as much as I want! Speaking of which, come under the covers.~ */ + NathLT19_join3
++ @1008 /* ~Why should I? Anyway, come here and join me.~ */ + NathLT19_join
++ @1009 /* ~All right, all right. Goodnight, Nathaniel.~ */ + NathLT19_goodnight
END

IF ~~ THEN BEGIN NathLT19_whynot
SAY @1010 /* ~Well ... mmm, I think you definitely have a point.~ */
IF ~~ THEN DO
~SetGlobal("FHNathSleep","GLOBAL",3)
SetGlobal("NathRomanceActive","GLOBAL",2)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT19_impossible
SAY @1011 /* ~Oh! I'll take that as a "yes, I'm sure about this", then...~ */
IF ~~ THEN DO ~SetGlobal("FHNathSleep","GLOBAL",3)
SetGlobal("NathRomanceActive","GLOBAL",2)
RestParty()~
EXIT
END

//LT20//
IF
~Global("NathLoveTalk","LOCALS",40)
Global("NathMatch","GLOBAL",1)
Global("FHNathSleep","GLOBAL",1)~
THEN BEGIN NathLT20_nosleep
SAY @1012 /* ~I hope you slept well?~ */   
++ @1013 /* ~Yes, thank you.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_nosleep1
++ @1014 /* ~It could have been better, but I'm fine at the moment.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_nosleep1
++ @1015 /* ~I've been having some problems sleeping at the moment. Thanks for asking, though.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_nosleep2
END

IF ~~ THEN BEGIN NathLT20_nosleep1
SAY @1016 /* ~Good. I don't want you wasting away.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT20_nosleep2
SAY @1017 /* ~Anytime. Tell you what - next time, wake me up if you can't sleep. I hate to think of you lying there without anyone to talk to.~ */
IF ~~ THEN EXIT
END

IF
~Global("NathLoveTalk","LOCALS",40)
Global("NathMatch","GLOBAL",1)
Global("FHNathSleep","GLOBAL",2)~
THEN BEGIN NathLT20_nosex
SAY @1018 /* ~Mmm, thank you, <CHARNAME>. It's been a long time since I've slept like-- Anyway, it was nice to have you with me. Do we have time to lie for a while?~ */   
++ @1019 /* ~No, it's time to go, I'm afraid.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_timetogo
++ @1020 /* ~(Poke him.) Come on, don't be lazy!~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_poke
++ @1021 /* ~Mmm. I think we have time to wait a while.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_wait
++ @1022 /* ~Of course we have time, Nathaniel. Being with you like this is worth anything.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_wait
END

IF
~Global("NathLoveTalk","LOCALS",40)
Global("NathMatch","GLOBAL",1)
Global("FHNathSleep","GLOBAL",3)~
THEN BEGIN NathLT20_sex
SAY @1023 /* ~Mmm, that was lovely, <CHARNAME>. Do we have time to lie for a while?~ */   
++ @1019 /* ~No, it's time to go, I'm afraid.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_timetogo
++ @1020 /* ~(Poke him.) Come on, don't be lazy!~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_poke
++ @1021 /* ~Mmm. I think we have time to wait a while.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_wait2
++ @1024 /* ~Well, that's that. Shoo, I need to get dressed.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT20_getgoing
END

IF ~~ THEN BEGIN NathLT20_timetogo
SAY @1025 /* ~(He groans but gives you a light kiss.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT20_poke
SAY @1026 /* ~(He groans and tries to hide under the blanket to protect himself, but surfaces and gives you a light kiss.)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT20_wait
SAY @1027 /* ~Wonderful!~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT20_wait2
SAY @1028 /* ~Ooh, wonderful. Now, where were we before we fell asleep?~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT20_getgoing
SAY @1029 /* ~Wh-what? We've got a couple of minutes, surely?~ */
++ @1030 /* ~Yes, but I don't need all that romantic nonsense. Come on.~ */ + NathLT20_nonsense
++ @1031 /* ~Fine, fine. We can stay a little while if that's what you want.~ */ + NathLT20_staylittle
++ @1032 /* ~I need to go and wash, Nathaniel. What's wrong with that?~ */ + NathLT20_wash
END

IF ~~ THEN BEGIN NathLT20_nonsense
SAY @1033 /* ~Nonsense? But - but I like to care for you! It isn't just sleeping together, it's everything!~ */
++ @1034 /* ~I don't understand. What do you mean by everything?~ */ + NathLT20_everything
++ @1035 /* ~You're wrong. It is just sleeping together: it doesn't have to mean something more.~ */ + NathLT20_justsex
++ @1036 /* ~Well, now I've got what I wanted out of you, what's the point in hanging about?~ */ + NathLT20_justsex2
END

IF ~~ THEN BEGIN NathLT20_staylittle
SAY @1037 /* ~If you don't want to, that's fine, but I just thought it would be nice--~ */
++ @1038 /* ~Well, if you don't mind, come on. Let's be off.~ */ + NathLT20_beoff
++ @1039 /* ~Nathaniel, I just said we could stay! What's wrong with you?~ */ + NathLT20_wrong
END

IF ~~ THEN BEGIN NathLT20_wash
SAY @1040 /* ~Nothing, nothing. Sorry, I'm just a little edgy.~ */
++ @1041 /* ~Forget the wash. You'll soon relax when I do *this*.~ */ + NathLT20_this
++ @1042 /* ~Edgy? Why?~ */ + NathLT20_edgy
++ @1043 /* ~Ssh. Don't be.~ */ + NathLT20_hush
END

IF ~~ THEN BEGIN NathLT20_everything
SAY @1044 /* ~I - I mean, like us caring about each other, and holding each other, and-- You don't understand, do you?~ */
++ @1045 /* ~I've never been with someone before and I don't know what you expect.~ */ + NathLT20_expect
++ @1046 /* ~No - look, I'm sorry. I thought this was the way men did things.~ */ + NathLT20_realise
++ @1047 /* ~I don't want to understand. I don't see that it has to mean something more.~ */ + NathLT20_justsex2
END

IF ~~ THEN BEGIN NathLT20_justsex
SAY @1048 /* ~No! It's not! Look, I made a fool of myself. Let's just ... not talk about this again.~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT20_justsex2
SAY @1049 /* ~Oh, gods ... look, I made a fool of myself - I'll - I need to go...~ */
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN NathLT20_beoff
SAY @1050 /* ~I - yes, all right. Sorry. For being edgy.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT20_wrong
SAY @1051 /* ~Nothing, nothing. I'm sorry. I'm just feeling a little edgy.~ */
++ @1052 /* ~Edgy? Why? We've just had a really good time - you seemed to enjoy it, anyway.~ */ + NathLT20_edgy2
++ @1053 /* ~Well, you'll soon relax when I do *this*.~ */ + NathLT20_this
++ @1054 /* ~Sssh. Don't be edgy. There's nothing to worry about.~ */ + NathLT20_hush2
END

IF ~~ THEN BEGIN NathLT20_this
SAY @1055 /* ~Oh! Mmm, come here...~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT20_edgy
SAY @1056 /* ~I don't know. It was so nice, and then, well, you were quite abrupt just now. It made me wonder whether it was the right thing to do.~ */
++ @1057 /* ~Don't be silly. It was the perfect thing to do.~ */ + NathLT20_perfect
++ @1058 /* ~It's just I've never done this before. I wasn't sure what you expected.~ */ + NathLT20_expect
++ @1059 /* ~I'm sorry. I've never been with a man like this before, and I wasn't sure what you expected.~ */ + NathLT20_realise
++ @1060 /* ~Does it matter whether it was the right thing? We had a good time, didn't we?~ */ + NathLT20_justsex2
END

IF ~~ THEN BEGIN NathLT20_hush
SAY @1061 /* ~All right. Mmm, you really do smell nice.~ */
=
@1062 /* ~Oh, sorry, you wanted to wash, didn't you? Go on - I'll be waiting here for you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT20_expect
SAY @1063 /* ~All I expect is consideration. I'm sorry for not making it clear to you, but next time, think about it, all right? Anyway, we should be getting on.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT20_realise
SAY @1064 /* ~All I want is consideration. I'm sorry for not making it clear to you, but next time, think about it, all right? Anyway, we should be getting on.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT20_edgy2
SAY @1056 /* ~I don't know. It was so nice, and then, well, you were quite abrupt just now. It made me wonder whether it was the right thing to do.~ */
++ @1057 /* ~Don't be silly. It was the perfect thing to do.~ */ + NathLT20_perfect2
++ @1058 /* ~It's just I've never done this before. I wasn't sure what you expected.~ */ + NathLT20_expect
++ @1059 /* ~I'm sorry. I've never been with a man like this before, and I wasn't sure what you expected.~ */ + NathLT20_realise
++ @1060 /* ~Does it matter whether it was the right thing? We had a good time, didn't we?~ */ + NathLT20_justsex2
END

IF ~~ THEN BEGIN NathLT20_hush2
SAY @1065 /* ~All right. Mmm, you smell nice.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT20_perfect
SAY @1066 /* ~It was. Thank you. Mmm, you smell nice.~ */
=
@1067 /* ~Oh sorry, you wanted to wash, didn't you? Go on - I'll be waiting here for you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT20_perfect2
SAY @1068 /* ~It was. Thank you.~ */
IF ~~ THEN EXIT
END

//LT21//

IF ~Global("NathLoveTalk","LOCALS",42)~ THEN BEGIN NathLT21
SAY @1069 /* ~Can we ... can we stop for a little? I'm feeling...~ */
++ @1070 /* ~What's up, Nathaniel?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT21_whatsup
++ @1071 /* ~Don't worry. We can stop for however long you need.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT21_stop
++ @1072 /* ~(Put your arms around Nathaniel.)~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT21_arms
++ @1073 /* ~Sorry, Nathaniel. There's too much that we have to do.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT21_nostop
END

IF ~~ THEN BEGIN NathLT21_whatsup
SAY @1074 /* ~Nothing, nothing. I'm just a bit tired.~ */
++ @1075 /* ~You look worse than tired, Nathaniel. Please, tell me what it is.~ */ + NathLT21_tell
++ @1071 /* ~Don't worry. We can stop for however long you need.~ */ + NathLT21_stop
++ @1072 /* ~(Put your arms around Nathaniel.)~ */ + NathLT21_arms
++ @1073 /* ~Sorry, Nathaniel. There's too much that we have to do.~ */ + NathLT21_nostop
END

IF ~~ THEN BEGIN NathLT21_stop
SAY @643 /* ~Thank you.~ */
++ @1076 /* ~Are you sure there's not something else wrong?~ */ + NathLT21_wrong
++ @1077 /* ~Nathaniel? You would tell me if something was troubling you, wouldn't you?~ */ + NathLT21_wrong
++ @1078 /* ~That's fine. As long as you feel all right.~ */ + NathLT21_rest
END

IF ~~ THEN BEGIN NathLT21_arms
SAY @1079 /* ~Stop it! Look, I don't want to--~ */
++ @1080 /* ~That's fine. Don't worry about it.~ */ + NathLT21_stop
++ @1081 /* ~I just thought it might make you feel better, Nathaniel.~ */ + NathLT21_better
++ @1082 /* ~All right, all right. We can rest here, if that's what you want.~ */ + NathLT21_stop
++ @1083 /* ~Fine! I was only trying to help!~ */ + NathLT21_shout
END

IF ~~ THEN BEGIN NathLT21_nostop
SAY @1084 /* ~Of course. Don't worry, I'll be fine.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT21_tell
SAY @1085 /* ~I, I just feel a little woozy. It's nothing to worry about, nothing some rest won't fix.~ */
++ @1086 /* ~Look, I love you. I'm not about to let you feel bad.~ */ DO ~SetGlobal("FHSayLove","LOCALS",1)~ + NathLT21_loveshout
++ @1071 /* ~Don't worry. We can stop for however long you need.~ */ + NathLT21_stop
++ @1072 /* ~(Put your arms around Nathaniel.)~ */ + NathLT21_arms
++ @1073 /* ~Sorry, Nathaniel. There's too much that we have to do.~ */ + NathLT21_nostop
END

IF ~~ THEN BEGIN NathLT21_wrong
SAY @1087 /* ~Yes! Can't you leave it? All I wanted to do was rest!~ */
++ @1088 /* ~Don't snap at me, Nathaniel. I'm just trying to help.~ */ + NathLT21_better
++ @1089 /* ~All right, all right. I'm sorry I asked - we can rest here.~ */ + NathLT21_restshout
++ @1090 /* ~Of course. I'm sorry - we'll rest for however long you need.~ */ + NathLT21_rest
END

IF ~~ THEN BEGIN NathLT21_rest
SAY @1091 /* ~Thanks. I-- Never mind.~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT21_better
SAY @1092 /* ~I know. I'm sorry. Look, can we just rest? Please?~ */
++ @1093 /* ~Yes, of course we can.~ */ + NathLT21_rest
++ @1089 /* ~All right, all right. I'm sorry I asked - we can rest here.~ */ + NathLT21_rest
++ @1094 /* ~I'm afraid not, Nathaniel. There's too much we need to do.~ */ + NathLT21_nostop
END

IF ~~ THEN BEGIN NathLT21_shout
SAY @1095 /* ~Can't you leave it? I just want to get some sleep - I was just asking a simple question!~ */
++ @1096 /* ~All right, all right. I'm sorry. We can rest.~ */ + NathLT21_restshout
++ @1097 /* ~You obviously need it!~ */ + NathLT21_restshout
++ @1098 /* ~We don't have time to rest, Nathaniel.~ */ + NathLT21_dead
END

IF ~~ THEN BEGIN NathLT21_arms2
SAY @1099 /* ~Stop it! Look, I - I don't want to--~ */
++ @1080 /* ~That's fine. Don't worry about it.~ */ + NathLT21_rest
++ @1100 /* ~All right, of course, that's fine. Let's just stop and rest.~ */ + NathLT21_rest
++ @1081 /* ~I just thought it might make you feel better, Nathaniel.~ */ + NathLT21_better
++ @1101 /* ~All right, all right. We can rest.~ */ + NathLT21_stop
END

IF ~~ THEN BEGIN NathLT21_restshout
SAY @1102 /* ~Thank you! That was all I wanted to know!~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathLT21_dead
SAY @1103 /* ~Fine, fine. I'll try not to inconvenience you too much if I pass out.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT21_loveshout
SAY @1104 /* ~I love you too, but can't you just leave it? All I want is to rest!~ */
++ @1096 /* ~All right, all right. I'm sorry. We can rest.~ */ + NathLT21_restshout
++ @1097 /* ~You obviously need it!~ */ + NathLT21_restshout
++ @1098 /* ~We don't have time to rest, Nathaniel.~ */ + NathLT21_dead
END

//LT22

IF ~Global("NathLoveTalk","LOCALS",44)~ THEN BEGIN NathLT22
SAY @1148 /* ~<CHARNAME>, thank you.~ */
++ @1149 /* ~Where did that come from?~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",45)~ + NathLT22_where
++ @1150 /* ~You're welcome. Now, what am I supposed to have done?~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",45)~ + NathLT22_where
++ @1151 /* ~Are you feeling better than before? You're looking a bit healthier.~ */ DO ~SetGlobal("NathLoveTalk","LOCALS",45)~ + NathLT22_better
END

IF ~~ THEN BEGIN NathLT22_where
SAY @1152 /* ~Ah, maybe I should have said before, but...~ */
IF ~~ THEN + NathLT22_avery
END

IF ~~ THEN BEGIN NathLT22_avery
SAY @1153 /* ~Last night I had a dream about ... about Avery. He was hurt, and I couldn't do anything to help him because I'd been chained up by someone. When I woke up, I felt - well, not as bad as when I kissed you the first time, but almost.~ */
=
@1154 /* ~I felt you there, and it calmed me down so quickly.~ */
++ @1155 /* ~Next time, please wake me up. I don't want you feeling bad.~ */ + NathLT22_next
++ @1156 /* ~I hope that doesn't mean I've become obsolete for you.~ */ + NathLT22_obsolete
++ @1157 /* ~Anytime, Nathaniel. I hope that I can carry on helping you.~ */ + NathLT22_hope
++ @1158 /* ~I hope you'll be able to help me if I'm feeling like that.~ */ + NathLT22_feel
END

IF ~~ THEN BEGIN NathLT22_better
SAY @1159 /* ~Definitely. Maybe I should have said before, but...~ */
IF ~~ THEN + NathLT22_avery
END

IF ~~ THEN BEGIN NathLT22_next
SAY @1160 /* ~If being next to you hadn't made me feel better, I would have woken you - and I will if it happens again, I promise.~ */
IF ~~ THEN + NathLT22_hurt
END

IF ~~ THEN BEGIN NathLT22_hurt
SAY @1161 /* ~I don't seem to get hurt so often now, and I can fight better, and I laugh more - since being around you ... being with you.~ */
=
@1162 /* ~That was why I was saying thank you.~ */
++ @1163 /* ~Nathaniel, you're a treasure, you know that?~ */ + NathLT22_treasure
++ @1164 /* ~I feel better for having you to talk to - and look after, too.~ */ + NathLT22_look
++ @1165 /* ~What can I say but "you're welcome"!~ */ + NathLT22_welcome
END

IF ~~ THEN BEGIN NathLT22_obsolete
SAY @1166 /* ~You'll never be obsolete, I promise.~ */
IF ~~ THEN GOTO NathLT22_next
END

IF ~~ THEN BEGIN NathLT22_hope
SAY @1167 /* ~You'll always be able to help me. You've done so much already.~ */
IF ~~ THEN + NathLT22_hurt
END

IF ~~ THEN BEGIN NathLT22_feel
SAY @1168 /* ~I'll do my best, I promise.~ */
IF ~~ THEN + NathLT22_hurt
END

IF ~~ THEN BEGIN NathLT22_treasure
SAY @1169 /* ~Ha! Thank you.~ */
=
@1170 /* ~(Nathaniel puts his arm around your shoulders and squeezes you gently.)~ */
=
@1171 /* ~I love you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT22_look
SAY @1172 /* ~I'm glad, <CHARNAME>.~ */
=
@1173 /* ~(Nathaniel leans towards you and lightly kisses your cheek.)~ */
=
@1171 /* ~I love you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathLT22_welcome
SAY @1174 /* ~I like to say it, <CHARNAME>. I like you to feel appreciated.~ */
=
@1175 /* ~(Nathaniel lifts his hand and gently runs his fingertips down your face.)~ */
=
@1171 /* ~I love you.~ */
IF ~~ THEN EXIT
END

//FRIENDTALKS//

//FT1//

IF ~Global("NathFriendTalk","LOCALS",2)~ THEN BEGIN NathFT1
SAY @0 /* ~I've not been completely honest with you. Latimer is ... was ... more than a friend.~ */
=
@1 /* ~I - we - fell in love when I was seventeen. He was twenty-seven and my superior officer - neither of us cared about that. We were happy, until ... until Angelo.~ */   
=
@2 /* ~When you killed him, things fell apart for a while. It felt wrong, and Latimer, me and some others left. I wanted to do something useful, like protecting tradesmen - anything that would do good. But Latimer started to become no better than a thief himself.~ */
=
@3 /* ~We were ... separated ... north of Athkatla, and I'd been following him. I lost track of him but this is the "City of Coin" so I thought I'd find him there. I suppose I was wrong.~ */
++ @4 /* ~If he was so horrible, why did you follow him?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT1_important
++ @5 /* ~Why are you telling me this?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT1_whytelling
++ @6 /* ~I'm so sorry, Nathaniel.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT1_awful
++ @7 /* ~I wish there was something I could have done. It's partly my responsibility.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT1_awful
++ @8 /* ~Oh, boo hoo. Suck it up, Nathaniel, none of us have had easy lives.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT1_harsh
++ @9 /* ~Thanks for telling me. Now I know your "inclinations" I know to be careful when going to sleep at night.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT1_homophobe
END

IF ~~ THEN BEGIN NathFT1_harsh
SAY @10 /* ~Excuse me? Forget I said anything. I know we've all been in pain, but-- Oh, never mind.~ */
++ @11 /* ~I'm sorry. I spoke wrongly.~ */ + NathFT1_apologyclub
++ @12 /* ~I didn't think. People have often told me to do that before I speak. Sorry.~ */ + NathFT1_apologyclub
++ @13 /* ~I've got too many problems of my own to pour my soul out to every person who comes along.~ */ + NathFT1_selfabsorbed
++ @14 /* ~Yeah, yeah. Just fall back in line, pretty-boy.~ */ + NathFT1_homophobe
END

IF ~~ THEN BEGIN NathFT1_important
SAY @15 /* ~He was so important to me! I couldn't let him disappear. He's the first person I've been like that with, you see, and he did a lot for me.~ */
=
@16 /* ~Oh, I'm sorry to go on, it's just that I wanted to tell someone. I haven't had anyone to talk to for these last months, and you seem - you seem nice.~ */ 
++ @17 /* ~Don't worry, I like to know if one of my companions is feeling bad.~ */ + NathFT1_therapist
++ @18 /* ~Fine, fine. I couldn't care less about your problems. I've got too many of my own.~ */ + NathFT1_selfabsorbed
++ @19 /* ~It doesn't surprise me that a man of your inclinations can't find someone to talk to.~ */ + NathFT1_homophobe
++ @20 /* ~You seem nice too.~ */ + NathFT1_nice
++ @21 /* ~Don't worry about it. Talking to you's good for me too.~ */ + NathFT1_nice
END

IF ~~ THEN BEGIN NathFT1_awful
SAY @22 /* ~Thank you ... but it's no worse than the things some of you have had to go through. I don't want to seem self-absorbed, but he's the first person I've been like that with, and he did a lot for me.~ */
=
@1176 /* ~Anyway, I'm sorry to go on, it's just that I wanted to tell someone. I haven't had anyone to talk to for these last months and you seem - you seem nice.~ */
++ @17 /* ~Don't worry, I like to know if one of my companions is feeling bad.~ */ + NathFT1_therapist
++ @18 /* ~Fine, fine. I couldn't care less about your problems. I've got too many of my own.~ */ + NathFT1_selfabsorbed
++ @19 /* ~It doesn't surprise me that a man of your inclinations can't find someone to talk to.~ */ + NathFT1_homophobe
++ @20 /* ~You seem nice too.~ */ + NathFT1_nice
END

IF ~~ THEN BEGIN NathFT1_whytelling
SAY @24 /* ~I don't know ... I don't know why I want to tell you in particular either. I think it's because I've been on my own for these last months and you seem - you seem nice.~ */
++ @17 /* ~Don't worry, I like to know if one of my companions is feeling bad.~ */ + NathFT1_therapist
++ @18 /* ~Fine, fine. I couldn't care less about your problems. I've got too many of my own.~ */ + NathFT1_selfabsorbed
++ @19 /* ~It doesn't surprise me that a man of your inclinations can't find someone to talk to.~ */ + NathFT1_homophobe
++ @20 /* ~You seem nice too.~ */ + NathFT1_nice
END

IF ~~ THEN BEGIN NathFT1_homophobe
SAY @25 /* ~If that's the way you feel, I'd prefer not to be in your company.~ */ 
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathFT1_nice
SAY @26 /* ~Thank you. I think that answers my next question, so I won't bother asking.~ */
++ @27 /* ~What was the question?~ */ + NathFT1_question
++ @28 /* ~Ahh, come on. I'll tickle you if you don't tell me!~ */ + NathFT1_tickle
++ @29 /* ~Umm, if you say so.~ */ + NathFT1_question
++ @30 /* ~I'm assuming it's something good from the way you're smiling, so I'll just leave it at that.~ */ + NathFT1_smile
END

IF ~~ THEN BEGIN NathFT1_question
SAY @31 /* ~Oh ... you know ... people often don't like that I prefer men. I wouldn't want to travel with someone who thought like that, so I was just going to check. But I'm all right on that score now.~ */
IF ~Gender(Player1,MALE)~ THEN REPLY @1177 /* ~I'm not that way myself, but good luck to you.~ */ + NathFT1_notgay
++ @32 /* ~Don't worry. It's not like it's blindingly obvious.~ */ + NathFT1_obvious
++ @33 /* ~Do you have doubts about whether it's a good thing, then?~ */ + NathFT1_good
++ @34 /* ~Well, if people want to be nasty to you about it, they'll have to come through me!~ */ + NathFT1_nasty
++ @35 /* ~Like I said, you seem nice. I'm not going to let what you do in your spare time affect what I think of you.~ */ + NathFT1_affect
END

IF ~~ THEN BEGIN NathFT1_notgay
SAY @1178 /* ~Thank you, <CHARNAME>. I appreciate that.~ */
IF ~~ THEN DO ~SetGlobal("CharNotGay","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN NathFT1_tickle
SAY @36 /* ~Hmm, you can try. I'm not ticklish, though. Anyway, I was just ... people often don't like that I prefer men. I wouldn't want to travel with someone who thought like that, so I was just going to check.~ */
IF ~Gender(Player1,MALE)~ THEN REPLY @1177 /* ~I'm not that way myself, but good luck to you.~ */ + NathFT1_notgay
++ @32 /* ~Don't worry. It's not like it's blindingly obvious.~ */ + NathFT1_obvious
++ @33 /* ~Do you have doubts about whether it's a good thing, then?~ */ + NathFT1_good
++ @34 /* ~Well, if people want to be nasty to you about it, they'll have to come through me!~ */ + NathFT1_nasty
++ @35 /* ~Like I said, you seem nice. I'm not going to let what you do in your spare time affect what I think of you.~ */ + NathFT1_affect
END

IF ~~ THEN BEGIN NathFT1_smile
SAY @37 /* ~Now all these things have happened ... for me, smiling is quite a big thing. So thank you.~ */
++ @38 /* ~How can you get by without smiling?~ */ + NathFT1_howgetby
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathFT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathFT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathFT1_spirits
END

IF ~~ THEN BEGIN NathFT1_obvious
SAY @42 /* ~Oh, I'm not bothered about it being obvious or not. People can think whatever they want about me, but obviously I wouldn't want to be around someone who didn't like it.~ */
=
@43 /* ~Anyway, thank you for what you said. You ... made me smile. And, <CHARNAME>? Now all these things have happened, for me smiling is quite a big thing.~ */
++ @38 /* ~How can you get by without smiling?~ */ + NathFT1_howgetby
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathFT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathFT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathFT1_spirits
END

IF ~~ THEN BEGIN NathFT1_good
SAY @45 /* ~Oh, no. It's not a good or a bad thing. It just depends on who you're with and whether you're faithful and everything. For me, it's a good thing. Even though Latimer changed, he helped me so much. It was ... like being healed.~ */
=
@46 /* ~Oh, now here I am getting miserable again. I'm sorry, we should get on. But thank you for what you said. You made me smile, and after all these things have happened ... that's quite a big thing.~ */
++ @38 /* ~How can you get by without smiling?~ */ + NathFT1_howgetby
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathFT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathFT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathFT1_spirits
END

IF ~~ THEN BEGIN NathFT1_nasty
SAY @47 /* ~Ha! Oh, that was an interesting experience.~ */
++ @48 /* ~What was?~ */ + NathFT1_laugh
END

IF ~~ THEN BEGIN NathFT1_affect
SAY @49 /* ~That means a lot. Thank you. And ... you made me smile, with what you said. Thank you for that, too. Now all these things have happened, for me smiling is quite a big thing.~ */
++ @38 /* ~How can you get by without smiling?~ */ + NathFT1_howgetby
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathFT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathFT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathFT1_spirits
END

IF ~~ THEN BEGIN NathFT1_howgetby
SAY @51 /* ~I just haven't had a lot to smile about lately. But let's not think about that.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT1_today
SAY @52 /* ~You already have.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT1_know
SAY @1179 /* ~I can tell. When you're thinking, sometimes you seem so distant... Anyway, I don't want you to start thinking about that. We can keep each other's spirits up, all right?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT1_spirits
SAY @54 /* ~You're right. You seem good at that - to me, anyway.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT1_laugh
SAY @55 /* ~Laughing. I haven't done it in a while. Thank you.~ */
++ @57 /* ~How can you get by without laughing?~ */ + NathFT1_howgetby
++ @1180 /* ~That's ridiculous. I'm going to get you to laugh some more, starting now!~ */ + NathFT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathFT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathFT1_spirits
END

IF ~~ THEN BEGIN NathFT1_apologyclub
SAY @59 /* ~Hmm. Well. As much as it's worth, I'm sorry too. I don't want to seem self-absorbed to you, especially since you've been through so much. He's the first person I've been like that with, and he's done so much for me.~ */
=
@60 /* ~Anyway, I wanted to tell someone. I haven't had anyone to talk to for these last months and you seem - you seem nice.~ */
++ @17 /* ~Don't worry, I like to know if one of my companions is feeling bad.~ */ + NathFT1_therapist
++ @18 /* ~Fine, fine. I couldn't care less about your problems. I've got too many of my own.~ */ + NathFT1_selfabsorbed
++ @19 /* ~It doesn't surprise me that a man of your inclinations can't find someone to talk to.~ */ + NathFT1_homophobe
++ @20 /* ~You seem nice too.~ */ + NathFT1_nice
END

IF ~~ THEN BEGIN NathFT1_therapist
SAY @1181 /* ~Thank you, very much. I was wondering though ... I ... some people have a problem with me preferring men, and I wouldn't want to be travelling with someone who did.~ */
++ @1182 /* ~No, I don't mind at all. It doesn't bother me.~ */ + NathFT1_tolerant
++ @1183 /* ~It's fine, Nathaniel! Don't worry so much.~ */ + NathFT1_tolerant
++ @1184 /* ~Hmm. I don't know. It makes me feel a little odd, but thanks for telling me.~ */ + NathFT1_uncomfortable
++ @65 /* ~Hmm. I'd appreciate it if you walked ... over there.~ */ + NathFT1_homophobe
++ @1185 /* ~It's not like it's blindingly obvious. I doubt you need worry about people trying to attack you about it - and I certainly wouldn't.~ */ + NathFT1_obvious
++ @33 /* ~Do you have doubts about whether it's a good thing, then?~ */ + NathFT1_good2
++ @34 /* ~Well, if people want to be nasty to you about it, they'll have to come through me!~ */ + NathFT1_nasty
++ @67 /* ~You seem nice. I'm not going to let what you do in your spare time affect what I think of you.~ */ + NathFT1_affect
END

IF ~~ THEN BEGIN NathFT1_good2
SAY @45 /* ~Oh, no. It's not a good or a bad thing. It just depends on who you're with and whether you're faithful and everything. For me, it's a good thing. Even though Latimer changed, he helped me so much. It was ... like being healed.~ */
++ @69 /* ~Well, it makes me feel a little odd, to be honest. But thank you for telling me about it.~ */ + NathFT1_uncomfortable
++ @70 /* ~Hmmm. I'd appreciate it if you walked ... over there.~ */ + NathFT1_homophobe
++ @34 /* ~Well, if people want to be nasty to you about it, they'll have to come through me!~ */ + NathFT1_nasty
++ @67 /* ~You seem nice. I'm not going to let what you do in your spare time affect what I think of you.~ */ + NathFT1_affect
++ @71 /* ~Well, it's fine with me. Honestly, I don't know what you were worrying about.~ */ + NathFT1_tolerant
END

IF ~~ THEN BEGIN NathFT1_tolerant
SAY @1186 /* ~I'm glad. Thank you ... and ... for me, after all of this, smiling is quite a big thing for me, so thank you for that too.~ */
++ @38 /* ~How can you get by without smiling?~ */ + NathFT1_howgetby
++ @39 /* ~That's ridiculous. I'm going to get you to smile some more, starting today!~ */ + NathFT1_today
++ @40 /* ~I ... I know how you feel.~ */ + NathFT1_know
++ @41 /* ~Well, we have to keep our spirits up with all of this going on.~ */ + NathFT1_spirits
END

IF ~~ THEN BEGIN NathFT1_selfabsorbed
SAY @74 /* ~Fine, let's go, but don't expect me to listen to you when you need it.~ */
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN NathFT1_uncomfortable
SAY @75 /* ~Well, I shouldn't bother you with it if you feel that way, so let's carry on. I ... hope you'll feel better about it later.~ */
IF ~~ THEN EXIT
END

//FT2//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",4)
Global("NathFriendMatch","GLOBAL",1)~
THEN BEGIN NathFT2
SAY @1187 /* ~Can I tell you about my family? I'm forgetting my manners - you've told me about Imoen, but I haven't said anything about my time growing up.~ */   
++ @1188 /* ~Yes, please. I like to know if a companion has an insane aunt who'll come and try to kill us.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT2_aunt
++ @78 /* ~If that'll stop you looking so miserable, yes. Don't you ever smile?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT2_miserable
++ @79 /* ~I don't really have time to talk right now. Can it wait for another time?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT2_skiptalk
END

IF ~~ THEN BEGIN NathFT2_skiptalk
SAY @87 /* ~Fair enough. Maybe we can talk later.~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",5)
RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~
EXIT
END

IF ~~ THEN BEGIN NathFT2_goon
SAY @80 /* ~Well, there's just my father and me. My mother died when I was very young, but I don't remember her. He's a good man for the most part, but he can be a bit of a tyrant.~ */
++ @81 /* ~What do you mean, he can be a bit of a tyrant?~ */ + NathFT2_tyrant
++ @82 /* ~I grew up in Candlekeep, northwest of Beregost. I never knew my parents - I was adopted when I was very young.~ */ + NathFT2_adopted
++ @83 /* ~I have no idea who my mother is, but my father is Bhaal, and Imoen is my foster sister.~ */ + NathFT2_bhaal
++ @84 /* ~Hah. Somehow I very much doubt that he could be worse than my father.~ */ + NathFT2_fatherworse
END

IF ~~ THEN BEGIN NathFT2_aunt
SAY @1189 /* ~Sorry to disappoint you, but I don't have an insane aunt, I'm afraid. My mother died when I was very young, but I don't remember her. My father's a good man for the most part, but he can be a bit of a tyrant.~ */
++ @81 /* ~What do you mean, he can be a bit of a tyrant?~ */ + NathFT2_tyrant
++ @82 /* ~I grew up in Candlekeep, northwest of Beregost. I never knew my parents - I was adopted when I was very young.~ */ + NathFT2_adopted
++ @83 /* ~I have no idea who my mother is, but my father is Bhaal, and Imoen is my foster sister.~ */ + NathFT2_bhaal
++ @84 /* ~Hah. Somehow I very much doubt that he could be worse than my father.~ */ + NathFT2_fatherworse
END

IF ~~ THEN BEGIN NathFT2_miserable
SAY @1190 /* ~Sorry, I didn't mean to-- I was just thinking. Anyway, there's just my father and me. My mother died when I was very young, but I don't remember her. He's a good man for the most part, but he can be a bit of a tyrant.~ */
++ @81 /* ~What do you mean, he can be a bit of a tyrant?~ */ + NathFT2_tyrant
++ @82 /* ~I grew up in Candlekeep, northwest of Beregost. I never knew my parents - I was adopted when I was very young.~ */ + NathFT2_adopted
++ @83 /* ~I have no idea who my mother is, but my father is Bhaal, and Imoen is my foster sister.~ */ + NathFT2_bhaal
++ @84 /* ~Hah. Somehow I very much doubt that he could be worse than my father.~ */ + NathFT2_fatherworse
END

IF ~~ THEN BEGIN NathFT2_tyrant
SAY @88 /* ~I mean, sometimes he was a controlling bastard! He had certain ideas about my development and made sure I followed them. I think my mother's death hit him worse than he liked to imagine.~ */   
++ @89 /* ~I'm sorry you had to put up with him. Parents who are too controlling can be ... tiresome.~ */ + NathFT2_outrage
++ @90 /* ~Hmm, no matter how controlling he was I'm sure he's not as bad as mine.~ */ + NathFT2_fatherworse
++ @91 /* ~At least you have a father you know! I was adopted, and then my foster father was killed!~ */ + NathFT2_adopted
++ @92 /* ~Quite right. Children should have discipline, otherwise they could run wild.~ */ + NathFT2_disc
END

IF ~~ THEN BEGIN NathFT2_disc
SAY @98 /* ~Yes, I agree - I'm sure I'm better off for it, too.~ */
=
@99 /* ~So what were your parents like?~ */
++ @100 /* ~I don't know them personally. I was adopted at an early age, so I don't recall them.~ */ + NathFT2_adopted
++ @95 /* ~Trust me, you wouldn't believe it if I told you, Nathaniel.~ */ + NathFT2_disbelieve
++ @101 /* ~I'd prefer not to discuss this with someone I don't know well. I'm sure you understand.~ */ + NathFT2_skiptalk
++ @1191 /* ~Well, I don't know a lot about my mother, but my father is Bhaal.~ */ + NathFT2_bhaal
END

IF ~~ THEN BEGIN NathFT2_adopted
SAY @1192 /* ~Oh - I'm sorry! How stupid of me - there were rumours around that Sarevok was your half-brother but I wasn't sure how true they were. Do you have any idea who your parents were?~ */
++ @100 /* ~I don't know them personally. I was adopted at an early age, so I don't recall them.~ */ + NathFT2_adopted
++ @95 /* ~Trust me, you wouldn't believe it if I told you, Nathaniel.~ */ + NathFT2_disbelieve
++ @101 /* ~I'd prefer not to discuss this with someone I don't know well. I'm sure you understand.~ */ + NathFT2_skiptalk
++ @1191 /* ~Well, I don't know a lot about my mother, but my father is Bhaal.~ */ + NathFT2_bhaal
END

IF ~~ THEN BEGIN NathFT2_bhaal
SAY @103 /* ~WHAT? Bhaal - Lord of Murder? Bhaal, the - the god?~ */   
++ @104 /* ~Is it not clear enough? What other Bhaal is there?~ */ + NathFT2_panic
++ @105 /* ~Well, that's what I said, isn't it?~ */ + NathFT2_panic
END

IF ~~ THEN BEGIN NathFT2_fatherworse
SAY @107 /* ~Oh? Why is he so bad?~ */
++ @95 /* ~Trust me, you wouldn't believe it if I told you, Nathaniel.~ */ + NathFT2_disbelieve
++ @101 /* ~I'd prefer not to discuss this with someone I don't know well. I'm sure you understand.~ */ + NathFT2_skiptalk
++ @1193 /* ~Well, for one thing, my father is Bhaal.~ */ + NathFT2_bhaal
END

IF ~~ THEN BEGIN NathFT2_outrage
SAY @109 /* ~You needn't get outraged about it. He may have had his moments, but I was happy at home. And though I can't see myself going back there now, I was happy in Baldur's Gate, too. It felt safe.~ */
++ @110 /* ~It's good that you felt that way. Home needs to be somewhere safe when you're growing up.~ */ + NathFT2_Candlekeep
++ @111 /* ~You were lucky, having somewhere like that for such a long time. I'm far from safe now.~ */ + NathFT2_safe
++ @112 /* ~Safety isn't everything - my adopted father kept me cloistered, and look what's happened now.~ */ + NathFT2_adopted
++ @113 /* ~Candlekeep was so different to my life now that I can't imagine going back to it.~ */ + NathFT2_Candlekeep
END

IF ~~ THEN BEGIN NathFT2_evasive
SAY @114 /* ~May I ask who they were?~ */
++ @115 /* ~I'd rather not tell you, Nathaniel, but if you insist, my father is Bhaal.~ */ + NathFT2_bhaal
++ @116 /* ~Well, I'm a Bhaalspawn. Is that what you wanted to know?~ */ + NathFT2_bhaal
++ @117 /* ~I'd prefer not to talk about it, especially when I don't know you very well.~ */ + NathFT2_skiptalk
END

IF ~~ THEN BEGIN NathFT2_panic
SAY @118 /* ~I - Gods! - give me a second, I--~ */
=
@1194 /* ~I'm sorry. It's just very, well, unexpected. How - how long have you known?~ */
++ @120 /* ~Long enough to get used to the idea, which is too long if you ask me.~ */ + NathFT2_calm
++ @121 /* ~A while. It was almost a relief, actually. At least I knew I wasn't going insane.~ */ + NathFT2_calm
++ @122 /* ~Since Baldur's Gate, and stopping Sarevok. He was a child of Bhaal, too.~ */ + NathFT2_calm
++ @123 /* ~It all came to the surface with Sarevok. But I swear, I'm not like him.~ */ + NathFT2_calm
END

IF ~~ THEN BEGIN NathFT2_normal
SAY @1195 /* ~Really? How do you cope? How are you normal?~ */
++ @125 /* ~I'm not normal. Not many people are. It's hard, but I can't just give in to it.~ */ + NathFT2_strong
++ @126 /* ~Nathaniel, calm down. I'm not going to turn on you - or anyone, for that matter.~ */ + NathFT2_calm
END

IF ~~ THEN BEGIN NathFT2_disbelieve
SAY @127 /* ~Oh, I've believed a few things in my time. Go on, why are you being so evasive?~ */
++ @1196 /* ~Well, my father is Bhaal. There - are you happy?~ */ + NathFT2_bhaal
++ @129 /* ~Bhaal's my father, Nathaniel.~ */ + NathFT2_bhaal
++ @130 /* ~I'd really prefer not to discuss this sort of thing, especially when I don't know you.~ */ + NathFT2_skiptalk
END

IF ~~ THEN BEGIN NathFT2_Candlekeep
SAY @1197 /* ~You're right. I was safe in Baldur's Gate and now-- Well, I think I can guess how you feel.~ */
++ @132 /* ~I doubt it - do you know how it feels to have your foster father killed because of you?~ */ + NathFT2_adopted
++ @133 /* ~I doubt it, you know. I'm a child of Bhaal.~ */ + NathFT2_bhaal
++ @134 /* ~I'd rather not talk any more about it, if you don't mind.~ */ + NathFT2_skiptalk
END

IF ~~ THEN BEGIN NathFT2_safe
SAY @135 /* ~That's true - I think I was lucky. But now, we're all in similar situations, aren't we? Living from day to day.~ */
++ @136 /* ~Similar's not a word I'd use. My foster father was killed by Sarevok.~ */ + NathFT2_adopted
++ @137 /* ~I don't think we have that much in common - unless you're a child of Bhaal, too?~ */ + NathFT2_bhaal
++ @138 /* ~I'd rather not talk about this any more.~ */ + NathFT2_skiptalk
END

IF ~~ THEN BEGIN NathFT2_strong
SAY @1198 /* ~Of course, yes. You're ... you're strong, I think, stronger than I am. I--~ */
=
@140 /* ~I'm babbling. Just give me a little while. I'll just - please, I'll talk to you later.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathFT2_calm
SAY @1199 /* ~I'm sorry - here we are, here you are, coping fine and having to calm me down. Look, I'll stay out of your way. It's not you - well, it is, but it's just - I need to--~ */
=
@140 /* ~I'm babbling. Just give me a little while. I'll just - please, I'll talk to you later.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",1)~
EXIT
END

//FT3//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",6)
Global("NathFriendMatch","GLOBAL",1)~ THEN BEGIN NathFT3
SAY @147 /* ~<CHARNAME>. I want to apologise for earlier. It must have been terrible for you, and all I did was make it worse.~ */   
++ @148 /* ~I was shocked when I found out about it, myself - I can understand your reaction.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT3_cute
++ @149 /* ~Are you sure you want to stay in the group? You've been acting a little off, lately.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT3_ahem
++ @150 /* ~It struck me as rather self-indulgent, actually. How do you think it made me feel?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT3_nosorry
++ @151 /* ~I don't really want your apology. Just don't keep going on about it.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT3_nosorry
END

IF ~~ THEN BEGIN NathFT3_ahem
SAY @1200 /* ~Of course I do! I've heard such great things of you, and even in this short time I know I want to be with this group. So I'd like to stay, if that's all right.~ */
++ @155 /* ~Of course. I just wanted to make sure you were happy with being here.~ */ + NathFT3_cute
++ @1201 /* ~If you'll go to pieces every time something unexpected comes up there isn't room for you here.~ */ + NathFT3_mean
++ @157 /* ~Well, that's good. I don't want people around who aren't happy being where they are.~ */ + NathFT3_cute
END

IF ~~ THEN BEGIN NathFT3_mean
SAY @1202 /* ~I was trying to apologise! Oh, forget it - if you don't want me here, I'll leave.~ */
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathFT3_nosorry
SAY @1203 /* ~I was just trying to-- Ah, never mind.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN NathFT3_cute
SAY @160 /* ~That's good to hear. Well, I'm going to have to be a little less sceptical about the things I hear about you from now on! It seems anything's possible.~ */
++ @161 /* ~You should probably still be sceptical about the story that my mother's a kobold, though.~ */ + NathFT3_kobold
++ @162 /* ~In the situations I've been in lately, that's probably more true than you think.~ */ + NathFT3_true
++ @163 /* ~That's a bit of an exaggeration. But a lot of things are possible, it's true.~ */ + NathFT3_true
END

IF ~~ THEN BEGIN NathFT3_kobold
SAY @1204 /* ~There's a story that says that...? Ahh, don't tease. Come on, let's get going.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN NathFT3_true
SAY @165 /* ~I can believe it. But come on, we should be going.~ */
IF ~~ THEN DO ~SetGlobal("FHLT2Upset","GLOBAL",0)~ EXIT
END

//FT4//
IF
~Global("NathFriendTalk","LOCALS",8)
Global("NathFriendMatch","GLOBAL",1)~
THEN BEGIN NathFT4
SAY @1205 /* ~Sometimes the travelling life gets me down. You know, I hated it at first - at least now I've got used to it. But I still miss the cake in Baldur's Gate. I suppose there's that saleswoman in the Waukeen's Promenade, but...~ */   
++ @167 /* ~You're saying these words, but somehow they have no meaning. What are you talking about?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT4_laugh
++ @168 /* ~Oh, dear. Is this some kind of euphemism for what you get up to in your spare time?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT4_euphemism
++ @169 /* ~Is this another of your strange tastes? I don't really have time for such frivolity.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT4_frivolity
END

IF ~~ THEN BEGIN NathFT4_laugh
SAY @170 /* ~Didn't I mention it before? Surely I must have done. It's my favourite food.~ */
++ @171 /* ~I can't say I'm against it, myself. I've had a bit of a sweet tooth ever since I was little.~ */ + NathFT4_metoo
++ @172 /* ~You know, Nathaniel, I think I know you, and then you come out with something like that.~ */ + NathFT4_strange
++ @1206 /* ~But you're a warrior! You should wnjoy gnawing drumsticks and throwing the bones on the floor!~ */ + NathFT4_drumstick
++ @174 /* ~Really, Nathaniel, I think I've got more important things to do than discuss this.~ */ + NathFT4_frivolity
END

IF ~~ THEN BEGIN NathFT4_euphemism
SAY @1207 /* ~Pardon? No, it isn't. Cake's my favourite food. I thought I'd mentioned it before - surely I must have.~ */
++ @171 /* ~I can't say I'm against it, myself. I've had a bit of a sweet tooth ever since I was little.~ */ + NathFT4_metoo
++ @172 /* ~You know, Nathaniel, I think I know you, and then you come out with something like that.~ */ + NathFT4_strange
++ @176 /* ~But you're a warrior! You should enjoy gnawing drumsticks and throwing the bones on the floor!~ */ + NathFT4_drumstick
++ @174 /* ~Really, Nathaniel, I think I've got more important things to do than discuss this.~ */ + NathFT4_frivolity
END

IF ~~ THEN BEGIN NathFT4_frivolity
SAY @177 /* ~All right, all right, fair enough. I was just trying to make conversation.~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathFT4_metoo
SAY @178 /* ~Oh, there was this wonderful kind at the Elfsong in Baldur's Gate. It was flavoured with cocoa and coffee beans and it had raspberries...~ */   
++ @179 /* ~Mmm, that sounds delicious. Maybe we could go there sometime, when this is all over.~ */ + NathFT4_maybego
++ @180 /* ~How did they get such exotic ingredients in Baldur's Gate?~ */ + NathFT4_ingredients
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathFT4_maybebuy
END

IF ~~ THEN BEGIN NathFT4_strange
SAY @1208 /* ~You wouldn't be saying that if you'd tried the cake at the Elfsong in Baldur's Gate...~ */
=
@183 /* ~Besides, it's not that strange. You should have seen my friend Aurelia eating meat - it was like watching a predator!~ */
++ @184 /* ~Maybe we could go to the Elfsong, sometime, when this is all over.~ */ + NathFT4_maybego
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathFT4_maybebuy
++ @176 /* ~But you're a warrior! You should enjoy gnawing drumsticks and throwing the bones on the floor!~ */ + NathFT4_drumstick2
++ @185 /* ~What was this cake you had in the Elfsong like, anyway?~ */ + NathFT4_whatlike
END

IF ~~ THEN BEGIN NathFT4_drumstick
SAY @186 /* ~Ugh. Well, drumsticks are all right, but throwing the bones around? Too messy.~ */
=
@1209 /* ~Anyway, trust me - you wouldn't be saying that if you'd tried the cake at the Elfsong in Baldur's Gate...~ */
++ @188 /* ~What was this cake you had in the Elfsong like?~ */ + NathFT4_whatlike
++ @184 /* ~Maybe we could go to the Elfsong, sometime, when this is all over.~ */ + NathFT4_maybego
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathFT4_maybebuy
END

IF ~~ THEN BEGIN NathFT4_mmm
SAY @1210 /* ~You look how I feel when I have it!~ */
++ @184 /* ~Maybe we could go to the Elfsong, sometime, when this is all over.~ */ + NathFT4_maybego
++ @190 /* ~How did they get such exotic ingredients? I don't think I've ever eaten cocoa beans.~ */ + NathFT4_ingredients
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathFT4_maybebuy
END

IF ~~ THEN BEGIN NathFT4_maybego
SAY @1211 /* ~I don't know about that. There are so many memories that I don't think I'd feel comfortable there again. It would be nice to see Avery again, though.~ */
++ @192 /* ~Well, whatever you'd prefer. I can understand if you'd rather not return there.~ */ + NathFT4_prefer
++ @193 /* ~Who's Avery? I don't think you've mentioned him, before.~ */ + NathFT4_avery
++ @194 /* ~Still, one day you'll feel able to go back there, surely?~ */ + NathFT4_oneday
++ @195 /* ~Surely it would be a good idea to go there, to exorcise those memories, though?~ */ + NathFT4_oneday
END

IF ~~ THEN BEGIN NathFT4_ingredients
SAY @1212 /* ~Oh, I don't know. I think they might have imported them from Matzica or somewhere.~ */
++ @1213 /* ~Maybe we could go to the Elfsong sometime. After this is all over.~ */ + NathFT4_maybego
++ @1214 /* ~Maybe I could buy you some as a present.~ */ + NathFT4_maybebuy
END

IF ~~ THEN BEGIN NathFT4_maybebuy
SAY @198 /* ~That would be nice. Thank you, <CHARNAME>.~ */
++ @199 /* ~No need for thanks. Anything for you, Nathaniel.~ */ + NathFT4_anything
++ @200 /* ~There would be one condition: you'd have to save me some.~ */ + NathFT4_save
++ @201 /* ~Or we could always go to the Elfsong itself and you could have the original?~ */ + NathFT4_maybego
END

IF ~~ THEN BEGIN NathFT4_whatlike
SAY @1215 /* ~Oh, it was lovely. It was flavoured with cocoa and coffee beans, and there were raspberries in it, too...~ */
++ @203 /* ~Mmm, that sounds delicious...~ */ + NathFT4_mmm
++ @184 /* ~Maybe we could go to the Elfsong, sometime, when this is all over.~ */ + NathFT4_maybego
++ @190 /* ~How did they get such exotic ingredients? I don't think I've ever eaten cocoa beans.~ */ + NathFT4_ingredients
++ @181 /* ~Maybe I could buy you some, as a reward for fighting with me.~ */ + NathFT4_maybebuy
END

IF ~~ THEN BEGIN NathFT4_drumstick2
SAY @204 /* ~Ugh. Well, drumsticks are all right, but throwing them around? Too messy.~ */
++ @205 /* ~So, what was this cake like from the Elfsong?~ */ + NathFT4_whatlike
END

IF ~~ THEN BEGIN NathFT4_prefer
SAY @206 /* ~Well, maybe one day it'll be possible.~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathFT4_avery
SAY @1216 /* ~Oh, he's one of my best friends. I knew him since I first went into the Flaming Fist. He's so good to me.~ */
++ @208 /* ~Perhaps I could meet him, sometime. He sounds like a nice enough person.~ */ + NathFT4_oneday
++ @209 /* ~Well, you do deserve people being good to you.~ */ + NathFT4_anything
END

IF ~~ THEN BEGIN NathFT4_oneday
SAY @210 /* ~Maybe one day. I don't know.~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathFT4_anything
SAY @1217 /* ~Thanks.~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN NathFT4_save
SAY @1218 /* ~Ha, of course I'd save you some. What do you take me for?~ */
IF ~~ THEN DO ~SetGlobal("FHMayonEligible","GLOBAL",1)~
EXIT
END

//FT5: druid//
IF
~Global("NathFriendTalk","LOCALS",10)
Global("NathFriendMatch","GLOBAL",1)
Class(Player1,DRUID_ALL)~
THEN BEGIN NathFT5_druid
SAY @1219 /* ~<CHARNAME>, there's something I've been meaning to ask you about. You're very interested in nature, aren't you?~ */   
++ @257 /* ~Well, it goes beyond "interested", Nathaniel. It's an important part of my life.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5e_interested
++ @258 /* ~If you're going to be patronising, then I don't want to discuss this with you.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5e_patronising
++ @259 /* ~Yes. I share a bond with the natural world, it's true.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5e_bond
++ @1220 /* ~Yes, and I would slay anyone who tried to disrupt nature's balance!~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5e_kill
END

IF ~~ THEN BEGIN NathFT5e_interested
SAY @1221 /* ~Yes, well, maybe I said it wrong. I was just wondering how you stand on other things. Would you kill someone if they threatened the balance of nature?~ */
++ @262 /* ~Not "kill", exactly. Maybe "incapacitate" would be a better word to describe it.~ */ + NathFT5e_kill
++ @263 /* ~Of course. They've done wrong, and they need to be punished.~ */ + NathFT5e_kill
++ @264 /* ~I think you've got the whole balance idea wrong, Nathaniel.~ */ + NathFT5e_balance
++ @265 /* ~No, of course I wouldn't just kill someone. What kind of man do you think I am?~ */ + NathFT5e_shadow
END

IF ~~ THEN BEGIN NathFT5e_patronising
SAY @266 /* ~No, I'm sorry. Please, I didn't mean to offend you. I was just curious--~ */
++ @1222 /* ~If you must know, it goes beyond "interested".~ */ + NathFT5e_interested
++ @1223 /* ~Well, I share a bond with the natural world.~ */ + NathFT5e_bond
++ @269 /* ~I'd kill anyone who tried to interfere in nature's balance. It's my duty.~ */ + NathFT5e_kill
END

IF ~~ THEN BEGIN NathFT5e_bond
SAY @270 /* ~Yes, I see the way you look so at home in the forest. It makes me feel a little more comfortable in such places. But where do you stand on other things? Would you kill someone if they threatened the balance of nature?~ */
++ @1224 /* ~Not "kill", exactly. Maybe "incapacitate".~ */ + NathFT5e_kill
++ @1225 /* ~Of course. They've done wrong.~ */ + NathFT5e_kill
++ @271 /* ~I think you've got this balance idea wrong, Nathaniel.~ */ + NathFT5e_balance
++ @1226 /* ~No, of course I wouldn't just kill someone. Who do you think I am?~ */ + NathFT5e_shadow
END

IF ~~ THEN BEGIN NathFT5e_kill
SAY @272 /* ~Ah. That's answered my question. Thank you.~ */   
IF ~~ THEN DO
~SetGlobal("NathFriend","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN NathFT5e_balance
SAY @273 /* ~How? To me it seems as if your belief is that civilisation is just an inconvenience, which I can't agree with. Ever.~ */
++ @274 /* ~Calm down, Nathaniel. People are impermanent, but they're not an inconvenience.~ */ + NathFT5e_inconvenient
++ @275 /* ~Killing someone because I think they threaten nature is as unbalanced as the original threat.~ */ + NathFT5e_between
++ @276 /* ~Look, you have your duty to the law, and I have duty to nature. We're not so very different.~ */ + NathFT5e_dutylaw
END

IF ~~ THEN BEGIN NathFT5e_shadow
SAY @1227 /* ~I don't know, it's just that I remember hearing so many bad things about the Shadow Druids in the Cloakwood. They'd kill someone because they intruded, as if people were inconvenient. Which I can't agree with. Ever.~ */
++ @1228 /* ~They had the right idea.~ */ + NathFT5e_kill
++ @274 /* ~Calm down, Nathaniel. People are impermanent, but they're not an inconvenience.~ */ + NathFT5e_inconvenient
++ @275 /* ~Killing someone because I think they threaten nature is as unbalanced as the original threat.~ */ + NathFT5e_between
++ @276 /* ~Look, you have your duty to the law, and I have duty to nature. We're not so very different.~ */ + NathFT5e_dutylaw
END

IF ~~ THEN BEGIN NathFT5e_inconvenient
SAY @279 /* ~Impermanent? That's the kind of thing I mean. You're very serene about things that bother me. Like I can see you doing something bad just because things are getting too righteous.~ */
++ @280 /* ~It isn't like that. I wouldn't hesitate to help my friends if something was hurting them.~ */ + NathFT5e_aid
++ @275 /* ~Killing someone because I think they threaten nature is as unbalanced as the original threat.~ */ + NathFT5e_between
++ @276 /* ~Look, you have your duty to the law, and I have duty to nature. We're not so very different.~ */ + NathFT5e_dutylaw
END

IF ~~ THEN BEGIN NathFT5e_between
SAY @281 /* ~I see. Well, I'm not sure that I do. But I think what you're saying is that you wouldn't create chaos, and that's set my mind at rest. I've been wanting to prevent it ever since I was young, and that was why I joined the Flaming Fist.~ */
++ @282 /* ~Was that the only reason why you joined, or was there something else, too?~ */ + NathFT5e_only
++ @283 /* ~It's nice to know a little more about you, Nathaniel.~ */ + NathFT5e_katana
++ @284 /* ~Well, it's good to talk, but I think we should be getting along.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5e_only
SAY @285 /* ~Well, not really. My father's family's been in the Flaming Fist for generations - see, he gave me this katana when I joined.~ */
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathFT5_papasboy
++ @287 /* ~Well, it's nice to talk to you but I think we should be getting along.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5e_geton
SAY @288 /* ~You're right - let's get going.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT5e_katana
SAY @289 /* ~Oh? Thank you. Ah, I should mention Shigure if we're getting into family history. He was my combat tutor - he's ridiculously good, he really is. He gave me Kajikamu as a going-away present.~ */
++ @290 /* ~Going away present? Did he leave after he stopped teaching you?~ */ + NathLT6_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathLT6_generous
++ @292 /* ~Well, it's nice to talk to you, but I think we should be getting along.~ */ + NathLT6e_geton
END

IF ~~ THEN BEGIN NathFT5e_dutylaw
SAY @293 /* ~Maybe not, but I can't help feeling that you're sidestepping the question.~ */
++ @294 /* ~There's just no point in discussing this. We'll just have to agree to disagree.~ */ + NathFT5e_kill
++ @275 /* ~Killing someone because I think they threaten nature is as unbalanced as the original threat.~ */ + NathFT5e_between
++ @295 /* ~There must be balance between civilisation and nature, so killing someone for nature is wrong.~ */ + NathFT5e_between
END

IF ~~ THEN BEGIN NathFT5e_aid
SAY @1229 /* ~Good! Ah, sorry about all this. I think experiencing Shadow Druids has made me a little wary of druids in general. I know that's wrong. And the process of joining the Flaming Fist was so different to whatever you did you become a druid.~ */
=
@432 /* ~My father was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @1230 /* ~You just went along with your father's wishes?~ */ + NathFT5_papasboy
END

//FT5 - cleric//
IF
~Global("NathFriendTalk","LOCALS",10)
Global("NathFriendMatch","GLOBAL",1)
Class(Player1,CLERIC_ALL)~
THEN BEGIN NathFT5_cleric
SAY @300 /* ~<CHARNAME>, if you don't mind me asking what was it that brought you to your god?~ */   
++ @1231 /* ~I wanted to protect others, I think, and this was the best way to go about it.~ */ + NathFT5d_protect
IF ~Alignment(Player1,MASK_GOOD)~ THEN REPLY @302 /* ~I wanted to be able to spread joy through the world. Lathander helps me to do that.~ */ + NathFT5d_lathander
IF ~Alignment(Player1,MASK_GOOD)~ THEN REPLY @303 /* ~I wanted to be able to spread joy through the world, I think. I'm thinking of joining Lathander's church.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5d_lathander
IF ~Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @304 /* ~Helm's a god who cherishes duty and order. I've always respected that, and he helps me preserve order.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5d_helm
IF ~Alignment(Player1,MASK_GENEUTRAL)~ THEN REPLY @305 /* ~I wanted to be able to promote the importance of order and duty. I'm thinking of joining Helm's church.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5d_helm
END

IF ~~ THEN BEGIN NathFT5d_protect
SAY @306 /* ~Well, I feel protected when you're around, it's true. I admit I didn't really think about things like that when I wanted to be in the Flaming Fist. I admired them - they seemed like heroes.~ */
=
@1232 /* ~My father was in the Fist as well, and his father before him. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathFT5_papasboy
END

IF ~~ THEN BEGIN NathFT5d_lathander
SAY @309 /* ~Yes. You're always smiling, aren't you? I don't know, I'm all for joy, but it can fall down. Not that I'm meaning to insult your religion, I just--~ */
++ @310 /* ~I know. Not everyone can understand Lathander's tenets.~ */ + NathFT5d_tenet
++ @311 /* ~Don't worry about it.~ */ + NathFT5d_tenet
++ @312 /* ~You're not insulting, Nathaniel. And if you were to be, I'd forgive you.~ */ + NathFT5d_tenet
END

IF ~~ THEN BEGIN NathFT5d_helm
SAY @1233 /* ~I respect it, too - that's something we have in common. If I had more of a religious inclination, I think I would have joined the worship of Helm. The reason I joined the Fist was kind of about duty, too - my father was in it, and his father before him.~ */
=
@314 /* ~He gave me this katana when I joined - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @315 /* ~Ah. It was right to follow your father's wishes, Nathaniel.~ */ + NathFT5d_papasboyhelm
END

IF ~~ THEN BEGIN NathFT5d_papasboyhelm
SAY @316 /* ~It wasn't just that. I wanted to be part of it when I was little, too. They seemed like heroes to me. And I was already being taught to fight.~ */
++ @317 /* ~That's a little young, isn't it?~ */ + NathFT5_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathFT5_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathFT5_sweet
END

IF ~~ THEN BEGIN NathFT5d_tenet
SAY @1234 /* ~There you are, you're so forgiving. I'm sure Lathander's proud of you. I don't think he'd like me - for one thing, I'm not producing children and for another I, well, I'm not as forgiving as Lathander wants us to be.~ */
=
@321 /* ~And the reason why I joined the Fist wasn't to promote joy, either. It was more duty - my father was in it, and his father before him.~ */
=
@314 /* ~He gave me this katana when I joined - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathFT5_papasboy
END

//FT5 - sorcerer//
IF
~Global("NathFriendTalk","LOCALS",10)
Global("NathFriendMatch","GLOBAL",1)
Class(Player1,SORCERER)~
THEN BEGIN NathFT5_sorcerer
SAY @1235 /* ~<CHARNAME>, in that last battle you were really impressive! All those words and gestures - it's amazing how you manage to do it. How does it work?~ */   
++ @323 /* ~I'm afraid I couldn't say.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5h_dontknow
++ @324 /* ~I don't know.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5h_dontknow
++ @325 /* ~Periodically I just find myself learning new spells.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5h_dontknow
++ @1236 /* ~It could be something to do with my divine heritage but I don't really know.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5h_aside
END

IF ~~ THEN BEGIN NathFT5h_dontknow
SAY @327 /* ~Oh. I was thinking that there would be something about your memory, but now I think about it I never see you with books like other mages use.~ */
=
@1237 /* ~I don't understand, but I suppose I should just think of it like a preference for combat, like mine. But then it wasn't just my decision. My father was in the Fist, and his father as well. He gave me this katana when I joined.~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathFT5_papasboy
++ @329 /* ~Well, it's nice to talk to you, but I think we should be getting on.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5h_aside
SAY @330 /* ~Oh. I was thinking that there might be something do to with your memory, but now I think about it I never see you with books like other mages use.~ */
=
@1238 /* ~I don't understand, but I suppose I should just think of it like a preference for combat. Like me. But then it wasn't just my decision. My father was in the Fist, and his father as well. He gave me this katana when I joined.~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathFT5_papasboy
++ @329 /* ~Well, it's nice to talk to you, but I think we should be getting on.~ */ + NathFT5e_geton
END

//FT5: mage//
IF
~Global("NathFriendTalk","LOCALS",10)
Global("NathFriendMatch","GLOBAL",1)
Class(Player1,MAGE_ALL)~
THEN BEGIN NathFT5_mage
SAY @332 /* ~That last battle, you were pretty impressive! All those words and gestures - it's amazing. How did you start being able to do it?~ */   
++ @333 /* ~Oh, I just read lots of books. It's surprising how quickly you can pick things up.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5f_pick
++ @334 /* ~I had a few magic skills when I left Candlekeep.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5f_few
IF ~CheckStatGT(Player1,15,INT)~ THEN REPLY @335 /* ~I've got a pretty good memory, and there are always scrolls that I can read to memorise.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5f_few
IF ~CheckStatGT(Player1,17,INT)~ THEN REPLY @336 /* ~I've always been able to remember almost everything I read.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5f_few
++ @337 /* ~I wanted to have the power to manipulate energies that other people couldn't.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5f_manipulate
++ @338 /* ~Well, I thought I could use magical power to make the world a better place.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5c_injustice
++ @339 /* ~I admired all those wizards in the stories, to be honest. And then I realised that I could be like them.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5b_admire
END

IF ~~ THEN BEGIN NathFT5f_pick
SAY @1239 /* ~You mean it's surprising how quickly *you* can pick things up - I was good at fighting for my age but I'd been in the Flaming Fist since I was sixteen anyway. I always wanted to be in it, because of my father.~ */
++ @341 /* ~Sixteen? That's a little young, isn't it?~ */ + NathFT5_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathFT5_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathFT5_sweet
++ @342 /* ~So you just went along with what your father wanted?~ */ + NathFT5_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5f_few
SAY @344 /* ~My goodness. And now you're the way you are - if that isn't impressive I don't know what is. I mean, I was good at fighting for my age but I'd been in the Flaming Fist since I was sixteen anyway. I always wanted to be in it, because of my father.~ */
++ @341 /* ~Sixteen? That's a little young, isn't it?~ */ + NathFT5_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathFT5_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathFT5_sweet
++ @342 /* ~So you just went along with what your father wanted?~ */ + NathFT5_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5f_manipulate
SAY @345 /* ~Well, just don't manipulate me, all right? I'm sure you wouldn't, but-- Ah, it's stupid to be in awe of something you don't understand, I know. I'm sure some people are worried that I'll use my kensai skills on them.~ */
=
@346 /* ~I should say about how I grew up, shouldn't I? I always wanted to be in the Flaming Fist, because of my father being involved in it, and I joined when I was sixteen. He gave me this katana when I joined - do you see the engraving?~ */
++ @341 /* ~Sixteen? That's a little young, isn't it?~ */ + NathFT5_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathFT5_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathFT5_sweet
++ @342 /* ~So you just went along with what your father wanted?~ */ + NathFT5_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

//FT5: - ranger//
IF
~Global("NathFriendTalk","LOCALS",10)
Global("NathFriendMatch","GLOBAL",1)
Class(Player1,RANGER_ALL)~
THEN BEGIN NathFT5_ranger
SAY @1240 /* ~You're very kind, you know. It's something to be proud of.~ */   
++ @348 /* ~Why, thank you, Nathaniel.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5b_thanks
++ @349 /* ~You're not exactly the black-hearted villain yourself, you know.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5b_villain
++ @350 /* ~It's my duty. I couldn't live with myself if I did anything else.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5b_duty
++ @351 /* ~Why all this flattery, Nathaniel?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5_flattery
++ @352 /* ~How I act is none of your business.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5_notalk
END

IF ~~ THEN BEGIN NathFT5b_thanks
SAY @1241 /* ~You're welcome. I can't exactly see myself being at home as you are in the forest, but it's, I don't know, it's comforting when you're there, so sure of yourself. How did you learn?~ */
++ @354 /* ~I've always felt a bond with the forest.~ */ + NathFT5b_bond
++ @355 /* ~I read stories about people who helped others when they were lost, and it seemed an admirable thing to do.~ */ + NathFT5b_admire
++ @356 /* ~For a long time when I was younger, I wanted to help people.~ */ + NathFT5b_admire
++ @357 /* ~I loved animals when I was little, and after a while they got so they would be tame around me. That's where it started, I suppose.~ */ + NathFT5b_bond
IF ~Race(Player1,ELF)~ THEN REPLY @358 /* ~Because of my race, I've felt a kind of connection to the natural world.~ */ + NathFT5b_bond
END

IF ~~ THEN BEGIN NathFT5b_villain
SAY @1242 /* ~Thank you, I think. I don't think I'd make a very good villain anyway - all that demonic laughing. I can't exactly see myself being at home as you are in the forest, but it's, I don't know, it's comforting when you're there, so sure of yourself. How did you learn?~ */
++ @354 /* ~I've always felt a bond with the forest.~ */ + NathFT5b_bond
++ @355 /* ~I read stories about people who helped others when they were lost, and it seemed an admirable thing to do.~ */ + NathFT5b_admire
++ @356 /* ~For a long time when I was younger, I wanted to help people.~ */ + NathFT5b_admire
++ @357 /* ~I loved animals when I was little, and after a while they got so they would be tame around me. That's where it started, I suppose.~ */ + NathFT5b_bond
IF ~Race(Player1,ELF)~ THEN REPLY @358 /* ~Because of my race, I've felt a kind of connection to the natural world.~ */ + NathFT5b_bond
END

IF ~~ THEN BEGIN NathFT5b_duty
SAY @1243 /* ~Of course. You seem so at home in the forest that I can't see you doing anything other than what you do. It's, I don't know, it's comforting when you're in a forest, so sure of yourself. How did you learn?~ */
++ @354 /* ~I've always felt a bond with the forest.~ */ + NathFT5b_bond
++ @355 /* ~I read stories about people who helped others when they were lost, and it seemed an admirable thing to do.~ */ + NathFT5b_admire
++ @356 /* ~For a long time when I was younger, I wanted to help people.~ */ + NathFT5b_admire
++ @357 /* ~I loved animals when I was little, and after a while they got so they would be tame around me. That's where it started, I suppose.~ */ + NathFT5b_bond
IF ~Race(Player1,ELF)~ THEN REPLY @358 /* ~Because of my race, I've felt a kind of connection to the natural world.~ */ + NathFT5b_bond
END

IF ~~ THEN BEGIN NathFT5b_bond
SAY @1244 /* ~That's amazing - I can't get my head around it. Mind you, I was always sure that I wanted to be in the Flaming Fist. My father was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathFT5_papasboy
++ @362 /* ~Sometimes I wish I could have got my skills in such an ordinary way.~ */ + NathFT5_training
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5b_admire
SAY @363 /* ~That sounds a little like me! My father was in the Flaming Fist, and the guards all seemed so heroic. There wasn't anything else I wanted to do and I was already being taught to fight.~ */
++ @317 /* ~That's a little young, isn't it?~ */ + NathFT5_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathFT5_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathFT5_sweet
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

//FT5: fighter//
IF
~Global("NathFriendTalk","LOCALS",10)
Global("NathFriendMatch","GLOBAL",1)
!Class(Player1,CLERIC_ALL)
!Class(Player1,PALADIN_ALL)
!Class(Player1,DRUID_ALL)
!Class(Player1,MAGE_ALL)
!Class(Player1,SORCERER)
!Class(Player1,BARD_ALL)
!Class(Player1,RANGER_ALL)~
THEN BEGIN NathFT5_fighter
SAY @1245 /* ~I have to say, <CHARNAME>, your skills are amazing. Where did you learn? I know it can't all be because of your heritage.~ */   
++ @365 /* ~You're right, it isn't. My heritage only gives me some small magical abilities.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5_wherelearn
++ @366 /* ~I had some skill when I grew up. The rest I pretty much picked up as I went along.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5_impressive
++ @367 /* ~Why the flattery, Nathaniel?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5_flattery
++ @368 /* ~This is none of your business.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5_notalk
END

IF ~~ THEN BEGIN NathFT5_wherelearn
SAY @369 /* ~Ah yes, I've seen you using them. Like the healing using your life force? It rather goes over my head. But where did you learn to fight?~ */
++ @370 /* ~I developed my skills in Candlekeep, but mostly I learned when I was travelling the Sword Coast.~ */ + NathFT5_impressive
++ @351 /* ~Why all this flattery, Nathaniel?~ */ + NathFT5_flattery
++ @371 /* ~None of your business.~ */ + NathFT5_notalk
END

IF ~~ THEN BEGIN NathFT5_impressive
SAY @372 /* ~I could never have picked up the things you can do just like that. People said I was good for my age, but I've been training since I was thirteen. That's incredible.~ */
=
@373 /* ~I got into the Flaming Fist because of my father. He was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathFT5_papasboy
++ @374 /* ~There's nothing wrong with being good at something from training.~ */ + NathFT5_training
++ @362 /* ~Sometimes I wish I could have got my skills in such an ordinary way.~ */ + NathFT5_training
END

IF ~~ THEN BEGIN NathFT5_flattery
SAY @375 /* ~It isn't flattery. I just like people to feel appreciated. I like you to feel appreciated - you've got so much to cope with, and, well... yes. I like you to feel appreciated.~ */   
++ @376 /* ~Thank you, Nathaniel.~ */ + NathFT5_welcome
++ @377 /* ~You know, you're appreciated, too.~ */ + NathFT5_thanks
++ @378 /* ~So where did you learn your skills?~ */ + NathFT5_father
++ @379 /* ~That's what they all say. Come on, what do you want?~ */ + NathFT5_whatwant
END

IF ~~ THEN BEGIN NathFT5_notalk
SAY @380 /* ~Excuse me? Have I offended you?~ */
++ @381 /* ~No, I just don't feel like talking at the moment.~ */ + NathFT5_mood
++ @382 /* ~Never mind. I'll be all right later.~ */ + NathFT5_mood
END

IF ~~ THEN BEGIN NathFT5_father
SAY @383 /* ~Well, I mentioned my father. He was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @384 /* ~You went along with your father's wishes?~ */ + NathFT5_papasboy
END

IF ~~ THEN BEGIN NathFT5_papasboy
SAY @385 /* ~No. Well, yes, I suppose, but that makes me sound like some kind of father's boy. The thing is, I wanted to be part of it when I was little, too. They seemed like heroes to me. And I was already being taught to fight.~ */
++ @317 /* ~That's a little young, isn't it?~ */ + NathFT5_sixteen
++ @318 /* ~Who taught you? Kensai skills are hardly common.~ */ + NathFT5_shigure
++ @319 /* ~You sound like you were a sweet child.~ */ + NathFT5_sweet
END

IF ~~ THEN BEGIN NathFT5_training
SAY @386 /* ~Oh, I should mention Shigure, though.~ */
++ @387 /* ~Who's Shigure?~ */ + NathFT5_shigure
++ @388 /* ~Is this some sweetheart of yours?~ */ + NathFT5_sweetheart
++ @389 /* ~Why?~ */ + NathFT5_shigure
END

IF ~~ THEN BEGIN NathFT5_sweetheart
SAY @390 /* ~What? No! For one thing, he's very fond of women. For another, he was my tutor. He's about ten or so years older than me, and he really is ridiculously good. He could beat me in about a minute if he was trying. He gave me Kajikamu as a going away present.~ */
++ @391 /* ~Going away present?~ */ + NathFT5_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathFT5_generous
END

IF ~~ THEN BEGIN NathFT5_sixteen
SAY @392 /* ~Maybe, yes - I was thirteen when I started to learn. But my father wanted me to be able to defend myself. He was trained in some kensai manoeuvres by a man called Masao. When I was born, he wanted Masao to teach me, too, but he was too old. But he had a son, Shigure, and he taught me.~ */
=
@393 /* ~He's about ten or so years older than me, and he really is ridiculously good. He could beat me in about a minute if he was trying. He gave me Kajikamu as a kind of going away present.~ */
++ @391 /* ~Going away present?~ */ + NathFT5_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathFT5_generous
END

IF ~~ THEN BEGIN NathFT5_shigure
SAY @394 /* ~Shigure-- Wait, I should tell this from the start. My father was trained in some of the kensai skills by a man named Masao. When I was born, my father wanted Masao to teach me, too, but he was too old. But he had a son, Shigure, and he taught me.~ */
=
@393 /* ~He's about ten or so years older than me, and he really is ridiculously good. He could beat me in about a minute if he was trying. He gave me Kajikamu as a kind of going away present.~ */
++ @391 /* ~Going away present?~ */ + NathFT5_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathFT5_generous
END

IF ~~ THEN BEGIN NathFT5_sweet
SAY @395 /* ~Actually, I was a bit of a brat until Shigure took me in hand. My father was trained in some of the kensai skills by a man called Masao. When I was born, my father wanted Masao to teach me, too, but he was too old. But he had a son, Shigure, and he taught me.~ */
=
@393 /* ~He's about ten or so years older than me, and he really is ridiculously good. He could beat me in about a minute if he was trying. He gave me Kajikamu as a kind of going away present.~ */
++ @391 /* ~Going away present?~ */ + NathFT5_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathFT5_generous
END

IF ~~ THEN BEGIN NathFT5_whatwant
SAY @396 /* ~Nothing! That is, I just wanted to have a talk with you, that's all--~ */
++ @397 /* ~So how did you become a kensai?~ */ + NathFT5_shigure
++ @398 /* ~So how did you get into the Flaming Fist?~ */ + NathFT5_father
++ @399 /* ~Well, I don't. I'm not in the mood for small talk right now.~ */ + NathFT5_mood
END

IF ~~ THEN BEGIN NathFT5_welcome
SAY @400 /* ~You're welcome. So, er...~ */
++ @397 /* ~So how did you become a kensai?~ */ + NathFT5_shigure
++ @398 /* ~So how did you get into the Flaming Fist?~ */ + NathFT5_father
++ @401 /* ~Are you blushing?~ */ + NathFT5_blush
END

IF ~~ THEN BEGIN NathFT5_thanks
SAY @1246 /* ~Thank you. So, er...~ */
++ @397 /* ~So how did you become a kensai?~ */ + NathFT5_shigure
++ @398 /* ~So how did you get into the Flaming Fist?~ */ + NathFT5_father
++ @401 /* ~Are you blushing?~ */ + NathFT5_blush
END

IF ~~ THEN BEGIN NathFT5_mood
SAY @404 /* ~Of course. I don't mean to intrude. I hope you feel better later.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT5_goaway
SAY @1247 /* ~Yes. Latimer and Shigure didn't exactly see eye to eye. Latimer thought that Shigure was trying to steal me from him. In the end, Shigure went back to take care of Masao in his old age.~ */
=
@406 /* ~But here I am holding you up again! There are things to do.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT5_generous
SAY @407 /* ~Yes, he's a good friend. I wish I could see him again - it's been a long time now.~ */
=
@406 /* ~But here I am holding you up again! There are things to do.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT5_blush
SAY @1248 /* ~So, anyway, I learned from a man called Shigure.~ */
=
@1249 /* ~My father was trained in some of the kensai skills by Shigure's father, Masao. When I was born, my father wanted Masao to teach me, too, but by that time he was too old. But he had a son, Shigure.~ */
=
@410 /* ~Shigure's only ten or so years older than me, but he's amazing. I'm so honoured to have been taught by him! He gave me this katana as a kind of going away present.~ */
++ @391 /* ~Going away present?~ */ + NathFT5_goaway
++ @291 /* ~This Shigure sounds a generous man.~ */ + NathFT5_generous
END

//FT5 - paladin//
IF
~Global("NathFriendTalk","LOCALS",10)
Global("NathFriendMatch","GLOBAL",1)
Class(Player1,PALADIN_ALL)~
THEN BEGIN NathFT5_paladin
SAY @1250 /* ~<CHARNAME>? I just - I wanted you to know that, well, you're someone to be admired. And, and when you're around I feel safer, because I know that you're doing good things. Um ... that's all.~ */   
++ @412 /* ~Nathaniel, what's brought this on?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5c_brought
++ @413 /* ~Why the sudden flattery?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5c_flattery
++ @414 /* ~What's this about?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5c_brought
++ @1251 /* ~I'm not the only one who does the right thing: you're someone to be admired, too.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5c_admire
END

IF ~~ THEN BEGIN NathFT5c_brought
SAY @416 /* ~Nothing, I just thought I should say it. You're so - you're such - you're so righteous!~ */   
++ @417 /* ~Thank you for your words.~ */ + NathFT5c_sorry
++ @418 /* ~I see. Well, thank you for the compliment, I suppose.~ */ + NathFT5c_sorry
++ @419 /* ~It isn't for flattery that I do the things I do. It's for justice.~ */ + NathFT5c_sorry
END

IF ~~ THEN BEGIN NathFT5c_flattery
SAY @420 /* ~Oh, no, it isn't flattery. I just thought I should say before you're a hero of the realm and everyone wants to say it. You are a hero, <CHARNAME>.~ */
++ @421 /* ~Thank you for your words, Nathaniel.~ */ + NathFT5c_sorry
++ @422 /* ~Well, thank you for the compliment, I suppose.~ */ + NathFT5c_sorry
++ @419 /* ~It isn't for flattery that I do the things I do. It's for justice.~ */ + NathFT5c_sorry
END

IF ~~ THEN BEGIN NathFT5c_admire
SAY @423 /* ~Really? Thank you. If you don't mind me asking, how did you become a paladin?~ */
++ @424 /* ~I'd read about paladins in books, and they always seemed like the kind of person I wanted to be.~ */ + NathFT5b_admire
++ @425 /* ~I knew that the monsters in the stories I read threatened everything that's good.~ */ + NathFT5c_monster
++ @430 /* ~There's so much chaos in this world. I thought that if I worked to preserve order it would make a difference.~ */ + NathFT5c_order
++ @427 /* ~Innocents have problems that they don't deserve, and I can do things to help them.~ */ + NathFT5c_injustice
END

IF ~~ THEN BEGIN NathFT5c_sorry
SAY @428 /* ~I'm sorry if I seem all starry-eyed. It's just I suddenly thought about it and it blew me away, thinking what a hero you are. If you don't mind me asking, how did you become one?~ */
++ @424 /* ~I'd read about paladins in books, and they always seemed like the kind of person I wanted to be.~ */ + NathFT5b_admire
++ @425 /* ~I knew that the monsters in the stories I read threatened everything that's good.~ */ + NathFT5c_monster
++ @430 /* ~There's so much chaos in this world. I thought that if I worked to preserve order it would make a difference.~ */ + NathFT5c_order
++ @427 /* ~Innocents have problems that they don't deserve, and I can do things to help them.~ */ + NathFT5c_injustice
END

IF ~~ THEN BEGIN NathFT5c_injustice
SAY @1252 /* ~Of course. I think I wanted some of that when I was little, too. Mind you, I was sure that I wanted to be in the Flaming Fist back then. My father was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathFT5_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5c_monster
SAY @1253 /* ~Yes. Of course. I felt that about vampires, when I read about them.~ */
=
@434 /* ~Anyway, I wanted to be in the Flaming Fist when I was little, so that's something we have in common. My father was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathFT5_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5c_order
SAY @1254 /* ~Oh, of course. I agree. I wanted that, too - I still do want it. Maybe that's something we have in common.~ */
=
@1255 /* ~Mind you, my father was in the Flaming Fist as well, and his father before him - it's a tradition. He gave me this katana when I joined - you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @308 /* ~So you went into it just because your father said so?~ */ + NathFT5_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

//FT5 - bard//
IF
~Global("NathFriendTalk","LOCALS",10)
Global("NathFriendMatch","GLOBAL",1)
Class(Player1,BARD_ALL)~
THEN BEGIN NathFT5_bard
SAY @1256 /* ~Ah, <CHARNAME>. I don't know how you have the confidence to do what you do. It's very impressive.~ */   
++ @437 /* ~What do you mean?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5g_what
++ @438 /* ~Do what I do? What is it that I do?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5g_what
++ @439 /* ~Impressive? What do I do that's impressive?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5g_what
++ @440 /* ~Confidence? I think you've got the wrong person. I'm terrified whenever we go into battle.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT5g_fear
END

IF ~~ THEN BEGIN NathFT5g_what
SAY @1257 /* ~You know, being able to sing while we're in battle. Well, being able to sing at all is pretty impressive, but you always seem so brave, helping us along.~ */
++ @442 /* ~Brave? That's a laugh. I became a bard because I was scared stiff of fighting.~ */ + NathFT5g_fear
++ @443 /* ~Ha! There's a reason why I stay at the back of the group, Nathaniel.~ */ + NathFT5g_fear
++ @444 /* ~Thanks, Nathaniel. I'll make sure I sing extra for you next time we fight.~ */ + NathFT5g_sing
++ @445 /* ~It isn't just battles. I want spread tales of heroism so people will be inspired.~ */ + NathFT5g_inspire
END

IF ~~ THEN BEGIN NathFT5g_fear
SAY @446 /* ~Maybe you are scared, but you make me feel safer. Does that make sense?~ */
=
@447 /* ~Ah, never mind. Maybe it was strange of me to become part of the Flaming Fist when I got, well, anxious about things. Mind you, it was my father who got me into it, really. He was in it, and his father before him, and he gave me this katana - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathFT5_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5g_sing
SAY @448 /* ~Thanks. And I'll do my best to fight for you so you don't get interrupted. You make me feel safer.~ */
=
@1258 /* ~Ah, never mind. Maybe it was strange of me to become part of the Flaming Fist when I get, well, anxious about things. Mind you, it was my father who got me into it, really. He was in it, and his father before him, and he gave me this katana - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathFT5_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

IF ~~ THEN BEGIN NathFT5g_inspire
SAY @449 /* ~We're not so different, then. I admired the guards - they were like heroes to me. My father was in the Flaming Fist, and his father before him. He gave me this katana when I joined - do you see the engraving?~ */
++ @298 /* ~What about your other katana?~ */ + NathFT5_shigure
++ @299 /* ~So you just went along with your father's wishes?~ */ + NathFT5_papasboy
++ @343 /* ~This is interesting, but I think we should be getting on.~ */ + NathFT5e_geton
END

//FT6//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",12)
Global("NathFriendMatch","GLOBAL",1)~
THEN BEGIN NathFT6
SAY @1259 /* ~It's strange. I've heard so much about you in Baldur's Gate. I thought most of it was rumours, but travelling with you makes me more inclined to believe them.~ */   
++ @451 /* ~You shouldn't believe everything you hear, Nathaniel. Rumours can quickly get out of hand.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT6_believe
++ @452 /* ~More than likely, most of what you've heard about me is true. I live an interesting life.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT6_true
++ @1260 /* ~Tell me the sort of things you've heard, and then I can say how true they are.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT6_whatheard
++ @454 /* ~I'm not in the mood for talking, at the moment. Let's carry on.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT6_notmood
END

IF ~~ THEN BEGIN NathFT6_whatheard
SAY @455 /* ~Ah, the usual sort of thing - the child of Bhaal twelve feet tall. Before I knew you, I thought the Bhaal part was a rumour, too. It's hard to know what's true and what isn't.~ */
++ @456 /* ~Well, the twelve feet tall part is a little exaggerated. Most of the rest is true, though.~ */ + NathFT6_true2
++ @1261 /* ~It was a strange time in my life. We travelled around aimlessly most of the time.~ */ + NathFT6_confused
++ @458 /* ~Are you still worrying about the Bhaal thing?~ */ + NathFT6_bhaal
END

IF ~~ THEN BEGIN NathFT6_believe
SAY @459 /* ~Ah, don't worry, I was pretty sceptical about you. Especially the twelve feet tall part.~ */
=
@460 /* ~They said such contradicting things. Some people said you were a paragon of virtue, and others...~ */
++ @461 /* ~I suppose the others said I ate small children for breakfast, that sort of thing?~ */ + NathFT6_virtue
++ @462 /* ~So, now that you've seen the real thing, which people did you believe?~ */ + NathFT6_dontknow
END

IF ~~ THEN BEGIN NathFT6_true
SAY @464 /* ~Even the part about you being twelve feet tall?~ */
++ @465 /* ~Well, I may look shorter, but it's an magical illusion, you see.~ */ + NathFT6_optical
++ @466 /* ~Well, that part might be exaggerated - just a little.~ */ + NathFT6_exaggerated
++ @467 /* ~Curses, you found out my secret: I'm no taller than the average <PRO_RACE>.~ */ + NathFT6_curses
END

IF ~~ THEN BEGIN NathFT6_notmood
SAY @468 /* ~Of course. I didn't mean to bother you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT6_true2
SAY @1262 /* ~I see. People said such contradicting things. Some people said you were a paragon of virtue, and others...~ */
++ @456 /* ~Well, the twelve feet tall part is a little exaggerated. Most of the rest is true, though.~ */ + NathFT6_true2
++ @1261 /* ~It was a strange time in my life. We travelled around aimlessly most of the time.~ */ + NathFT6_confused
++ @458 /* ~Are you still worrying about the Bhaal thing?~ */ + NathFT6_bhaal
END

IF ~~ THEN BEGIN NathFT6_confused
SAY @1263 /* ~Really? I was led to believe - that is, people said that you were so sure of everything.~ */
++ @471 /* ~Yes, I try to stay focused on what matters, but I wouldn't say I'm sure of everything.~ */ + NathFT6_focus
++ @472 /* ~I wasn't, back then. I am much more able to focus on things now, though.~ */ + NathFT6_focus
++ @473 /* ~No, that's just another rumour. I don't really know where I'm going in life.~ */ + NathFT6_wrong
++ @474 /* ~I'm not in control of my destiny and with my blood it's doubtful I ever will be.~ */ + NathFT6_wrong
END

IF ~~ THEN BEGIN NathFT6_bhaal
SAY @1264 /* ~No. Well, if I think about it, it makes me nervous. But I don't think you're bad. The thing is, I've seen the way you behave, and then there's the evidence of what you did in Baldur's Gate.~ */
=
@476 /* ~I know lots of people think me liking men would be proof of me being evil. So how can I say that your blood is proof? Does that make sense?~ */
++ @477 /* ~It's good to hear someone sticking up for the Bhaalspawn once in a while.~ */ + NathFT6_nice
++ @478 /* ~If it's any consolation, I don't think that your liking men is evil.~ */ + NathFT6_consolation
++ @479 /* ~Who says that your liking men isn't evil?~ */ + NathFT6_evil
END

IF ~~ THEN BEGIN NathFT6_virtue
SAY @1265 /* ~Others said - well, that you were tainted.~ */
++ @481 /* ~Are you still worried about me because I'm a Bhaalspawn?~ */ + NathFT6_bhaal
++ @1266 /* ~And you're still concerned? I'd have thought you had more sense than that.~ */ + NathFT6_bhaal
END

IF ~~ THEN BEGIN NathFT6_dontknow
SAY @1267 /* ~I don't know. If I think about what you are, it makes me a little nervous.~ */
=
@484 /* ~I know lots of people think me liking men is proof of my evil. And I'm not. So how can I say that your blood is proof of yours? Does that make sense?~ */
++ @477 /* ~It's good to hear someone sticking up for the Bhaalspawn once in a while.~ */ + NathFT6_nice
++ @1268 /* ~If it's any consolation, I don't think you liking men is evil.~ */ + NathFT6_consolation
++ @1269 /* ~Who says that you liking men isn't evil?~ */ + NathFT6_evil
END

IF ~~ THEN BEGIN NathFT6_optical
SAY @1270 /* ~I see. It must be a very intricate illusion, then, because I could have sworn that you were shorter than that...~ */
++ @489 /* ~Oh, it is. The finest in Faerun!~ */ + NathFT6_smile
++ @490 /* ~Are you humouring me, Nathaniel?~ */ + NathFT6_humour
END

IF ~~ THEN BEGIN NathFT6_exaggerated
SAY @492 /* ~So which bits aren't? People said such contradicting things. Some said you were a paragon of virtue, and others...~ */
++ @461 /* ~I suppose the others said I ate small children for breakfast, that sort of thing?~ */ + NathFT6_virtue
++ @462 /* ~So, now that you've seen the real thing, which people did you believe?~ */ + NathFT6_dontknow
END

IF ~~ THEN BEGIN NathFT6_curses
SAY @495 /* ~Don't worry - I won't tell anyone if you don't.~ */
=
@1271 /* ~So then which bits aren't exaggerated? People said such contradicting things - some of them said you were a paragon of virtue but then others...~ */
++ @461 /* ~I suppose the others said I ate small children for breakfast, that sort of thing?~ */ + NathFT6_virtue
++ @462 /* ~So, now that you've seen the real thing, which people did you believe?~ */ + NathFT6_dontknow
END

IF ~~ THEN BEGIN NathFT6_focus
SAY @497 /* ~Well, I hope I can help you keep things in perspective.~ */
++ @498 /* ~It's always good to have someone around to do that, I've found.~ */ + NathFT6_nice
++ @499 /* ~And I'll do the same for you. It sometimes seems as though you need it.~ */ + NathFT6_cute
++ @500 /* ~I doubt I'll need your help, but thank you all the same.~ */ + NathFT6_nice
END

IF ~~ THEN BEGIN NathFT6_wrong
SAY @501 /* ~Forgive me, but I don't think that's right. I've seen the way you've been behaving, then there's what you did for Baldur's Gate...~ */
=
@502 /* ~I know lots of people think that I'm a slave to my desires. But I'm not. You're not at the mercy of your blood.~ */
++ @503 /* ~How can you know that? You didn't seem so sure when I told you about it.~ */ + NathFT6_before
++ @504 /* ~There's nothing wrong with some desires here and there, surely?~ */ + NathFT6_desires
++ @505 /* ~And what's wrong with being a slave to desires?~ */ + NathFT6_desires
END

IF ~~ THEN BEGIN NathFT6_nice
SAY @506 /* ~Well, whatever helps, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT6_consolation
SAY @507 /* ~Thank you. I've never had a problem about liking men, but I know lots of people have to hide it, or are ashamed of it. It's a shame. Ah, but this isn't the kind of talk for travelling. Let's talk about something lighter?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT6_evil
SAY @1272 /* ~I do, and many others, too! I'm not going to take your insults!~ */
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN NathFT6_pardon
SAY @509 /* ~Oh, you know - you just seem to care a lot. And it's good to be around that sort of kindness.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT6_cute
SAY @511 /* ~That's what I mean. About you being a paragon - even if that's the wrong word.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT6_before
SAY @1273 /* ~I was upset before. Don't worry about it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT6_desires
SAY @513 /* ~Oh, I'm not saying desires are wrong. Of course they're not. It's just being a slave to them that's wrong. Otherwise how would you fall in love?~ */
=
@514 /* ~Ah, this isn't talk for travelling. Let's talk about a lighter topic?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT6_humour
SAY @515 /* ~Would I do that?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT6_smile
SAY @516 /* ~It's good to see you smiling. I'm glad you still feel able to do that.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT6_like
SAY @1274 /* ~I like having you around, too.~ */
IF ~~ THEN EXIT
END

//FT7//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",14)
Global("NathFriendMatch","GLOBAL",1)~
THEN BEGIN NathFT7
SAY @1275 /* ~(As you make ready to rest, you catch sight of a half-healed wound on Nathaniel's collarbone.)~ */
++ @519 /* ~Nathaniel! How did that happen? I didn't notice you getting hurt like that.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT7_curious
++ @520 /* ~Nathaniel, have you been picking up servingmen again?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT7_waiters
IF ~Class(Player1,CLERIC_ALL)~ THEN REPLY @522 /* ~You should have let me take a look at that wound, Nathaniel.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT7_curious
IF ~Class(Player1,DRUID_ALL)~ THEN REPLY @522 /* ~You should have let me take a look at that wound, Nathaniel.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT7_curious
END

IF ~~ THEN BEGIN NathFT7_curious
SAY @523 /* ~What - what are you talking about?~ */   
++ @524 /* ~That scar - the one on your collarbone. What happened?~ */ + NathFT7_scar
++ @525 /* ~Don't play games with me, Nathaniel. You and I both know what I'm talking about.~ */ + NathFT7_vampire
++ @1276 /* ~Very well. If you don't want to tell me then don't.~ */ + NathFT7_scar
END

IF ~~ THEN BEGIN NathFT7_waiters
SAY @527 /* ~What? No! What are you talking about?~ */   
++ @528 /* ~Relax, I was just joking What's wrong? You look like a ghost.~ */ + NathFT7_joke
++ @529 /* ~Please, calm down, Nathaniel. You needn't get so worked up.~ */ + NathFT7_relax
END

IF ~~ THEN BEGIN NathFT7_scar
SAY @530 /* ~Oh ... oh. That scar. It was a fight.~ */   
++ @531 /* ~Obviously. What fight, and when did it happen?~ */ + NathFT7_vampire
++ @532 /* ~Nathaniel, am I going to have to drag this out of you?~ */ + NathFT7_vampire
END

IF ~~ THEN BEGIN NathFT7_vampire
SAY @533 /* ~I ... there was a vampire. He bit me, and, and that's where the scar's from, all right?~ */
++ @534 /* ~Nathaniel, please. Relax - you don't need to get so worked up.~ */ + NathFT7_relax
++ @535 /* ~What's up, Nathaniel? There's nothing wrong with getting hurt.~ */ + NathFT7_relax
++ @536 /* ~(Give Nathaniel a hug.)~ */ + NathFT7_hug1
++ @537 /* ~It doesn't surprise me that a weakling like you would get so wounded.~ */ + NathFT7_guilttrip
END

IF ~~ THEN BEGIN NathFT7_joke
SAY @538 /* ~Oh. Right.~ */
++ @539 /* ~So what is it from?~ */ + NathFT7_vampire
++ @540 /* ~Nathaniel, tell me what that scar is!~ */ + NathFT7_vampire
END

IF ~~ THEN BEGIN NathFT7_guilttrip
SAY @1277 /* ~You're right ... I ... goodnight...~ */   
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathFT7_relax
SAY @542 /* ~Um, I, I'll try...~ */
++ @1278 /* ~What's wrong, Nathaniel?~ */ + NathFT7_nothingwrong
++ @536 /* ~(Give Nathaniel a hug.)~ */ + NathFT7_hug1
++ @1279 /* ~Get over yourself, Nathaniel.~ */ + NathFT7_guilttrip
++ @545 /* ~Nathaniel? Pull yourself together, it's all right.~ */ + NathFT7_calmdown
END

IF ~~ THEN BEGIN NathFT7_hug1
SAY @1280 /* ~(As you wrap your arms around him, Nathaniel flinches and you feel him shaking. You sit silently until his shivers subside and his breathing deepens. What seems like a long while passes until your foot begins to go numb.)~ */
++ @547 /* ~Nathaniel?~ */ + NathFT7_whisper
++ @548 /* ~(Poke him gently.)~ */ + NathFT7_poke
++ @549 /* ~(Gently shake him.)~ */ + NathFT7_shake
END

IF ~~ THEN BEGIN NathFT7_nothingwrong
SAY @550 /* ~I - I - nothing--~ */   
++ @1281 /* ~Nathaniel? Calm down...~ */ + NathFT7_calmdown
++ @1279 /* ~Get over yourself, Nathaniel.~ */ + NathFT7_guilttrip
++ @536 /* ~(Give Nathaniel a hug.)~ */ + NathFT7_hug2
END

IF ~~ THEN BEGIN NathFT7_calmdown
SAY @553 /* ~I - yes - I'll try - thank you.~ */   
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",15)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathFT7_whisper
SAY @554 /* ~(There is no answer from Nathaniel except his breathing.)~ */
++ @555 /* ~(Shake him gently.)~ */ + NathFT7_shake
++ @556 /* ~(Move him under his blankets.)~ */ + NathFT7_move
++ @557 /* ~(Make yourself as comfortable as possible and sleep as you are.)~ */ + NathFT7_sleep
END

IF ~~ THEN BEGIN NathFT7_poke
SAY @558 /* ~Mmmmrnng...~ */
++ @549 /* ~(Gently shake him.)~ */ + NathFT7_shake
++ @556 /* ~(Move him under his blankets.)~ */ + NathFT7_move
++ @557 /* ~(Make yourself as comfortable as possible and sleep as you are.)~ */ + NathFT7_sleep
END

IF ~~ THEN BEGIN NathFT7_shake
SAY @1282 /* ~Mmmng ... sorry, just dropped off ... I'll go to bed now ... g'night...~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",15)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathFT7_hug2
SAY @560 /* ~(As soon as you touch him he flinches violently, then slumps against you, shivering. It takes a long while for his breathing to deepen. What seems like a long while passes until your foot begins to go numb.)~ */
++ @547 /* ~Nathaniel?~ */ + NathFT7_whisper
++ @548 /* ~(Poke him gently.)~ */ + NathFT7_poke
++ @549 /* ~(Gently shake him.)~ */ + NathFT7_shake
END

IF ~~ THEN BEGIN NathFT7_better
SAY @561 /* ~Yes, I know. Thanks, though.~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",15)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathFT7_talk
SAY @562 /* ~No, no, not at the moment, thank you.~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",15)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathFT7_move
SAY @563 /* ~Mmmmng? Thankyou...~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",15)
RestParty()~
EXIT
END

IF ~~ THEN BEGIN NathFT7_sleep
SAY @564 /* ~(Despite his earlier agitation, Nathaniel does not wake.)~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",15)
RestParty()~
EXIT
END

//FT8//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",16)
Global("NathFriendMatch","GLOBAL",1)~
THEN BEGIN NathFT8
SAY @1283 /* ~Sorry about earlier, <CHARNAME>. I - was tired. But thank you.~ */   
++ @566 /* ~It's not a problem. I just wanted to find out what was wrong.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT8_ok
++ @567 /* ~Anything to help, Nathaniel. I hope that you're feeling all right now.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT8_anything
++ @568 /* ~"Tired"? It seemed a bit more than being tired, if you ask me.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT8_suspicious
END

IF ~~ THEN BEGIN NathFT8_ok
SAY @569 /* ~Even so, that doesn't stop me thanking you.~ */
++ @1284 /* ~Anytime - I don't like having people upset.~ */ + NathFT8_sweet
++ @571 /* ~Well, I don't like to be distracted by people being upset.~ */ + NathFT8_sweet
++ @572 /* ~What was wrong, anyway? It seemed like there was more wrong than just a wound.~ */ + NathFT8_suspicious
END

IF ~~ THEN BEGIN NathFT8_anything
SAY @573 /* ~It's nice to hear that. I'm glad that you're around.~ */
++ @1284 /* ~Anytime - I don't like having people upset.~ */ + NathFT8_sweet
++ @571 /* ~Well, I don't like to be distracted by people being upset.~ */ + NathFT8_sweet
++ @572 /* ~What was wrong, anyway? It seemed like there was more wrong than just a wound.~ */ + NathFT8_suspicious
END

IF ~~ THEN BEGIN NathFT8_suspicious
SAY @1285 /* ~I - I'd rather not talk about it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT8_sweet
SAY @1286 /* ~Well ... we should be getting going.~ */
IF ~~ THEN EXIT
END

//FT9//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",18)
Global("NathFriendMatch","GLOBAL",1)~
THEN BEGIN NathFT9
SAY @1287 /* ~May I speak to you for a moment?~ */   
++ @577 /* ~Yes, of course, I saw that you were looking a little pensive. What is it?~ */ DO ~SetGlobalTimer("FHTerlArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1)~  + NathFT9_talk
++ @578 /* ~If you must. What's up?~ */ DO ~SetGlobalTimer("FHTerlArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT9_talk
++ @579 /* ~I'm afraid this isn't really the time, Nathaniel - can it wait?~ */ DO ~SetGlobalTimer("FHTerlArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT9_notalk
END

IF ~~ THEN BEGIN NathFT9_talk
SAY @580 /* ~Well, it's about Latimer. We ... well, we haven't seen anything.~ */
=
@581 /* ~What I was thinking was, maybe I should let him go. I don't know, it's just that I think that after all this time maybe he doesn't want me to find him. At first I didn't want to accept it.~ */
++ @582 /* ~Until now?~ */ + NathFT9_untilnow
++ @583 /* ~So have things changed while you've been apart? You've changed your tune since I met you.~ */ + NathFT9_changed
++ @584 /* ~This sounds as though you're giving up on him. You seemed so determined to find him.~ */ + NathFT9_giveup
END

IF ~~ THEN BEGIN NathFT9_notalk
SAY @585 /* ~All right, sorry to have bothered you. Maybe we can speak later.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT9_protective
SAY @1288 /* ~Oh, <CHARNAME>, you're sweet. But, really, I don't need protecting. Especially not from Latimer.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT9_callous
SAY @1289 /* ~You're going to have to learn something about altruism, otherwise you'll get into trouble.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT9_abandon
SAY @1290 /* ~Look, I'm sure you mean well, but I don't want to hear you insulting him.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT9_right
SAY @1291 /* ~What's that got to do with anything? Look, I don't want to hear you insulting him.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT9_insensitive
SAY @1292 /* ~But when we met you said-- Look, I should go. I'll obviously have more luck by myself.~ */
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathFT9_sorry
SAY @1293 /* ~No, no, I didn't mean to insult you. You've been so good to me. I'm just not sure that any amount of trying would help ... I'm not sure that he wants me to find him. Maybe I should just move on? I didn't want to accept it...~ */
++ @582 /* ~Until now?~ */ + NathFT9_untilnow
++ @583 /* ~So have things changed while you've been apart? You've changed your tune since I met you.~ */ + NathFT9_changed
++ @584 /* ~This sounds as though you're giving up on him. You seemed so determined to find him.~ */ + NathFT9_giveup
END

IF ~~ THEN BEGIN NathFT9_sorryBrega
SAY @589 /* ~No, no, I didn't mean to insult you. It's just that it would be my duty to turn him in, wouldn't it?~ */
=
@1294 /* ~What I was thinking was, maybe I should let him go. I'm not sure that he wants me to find him. Maybe I should just move on? At first I didn't want to accept it, but...~ */
++ @582 /* ~Until now?~ */ + NathFT9_untilnow
++ @583 /* ~So have things changed while you've been apart? You've changed your tune since I met you.~ */ + NathFT9_changed
++ @584 /* ~This sounds as though you're giving up on him. You seemed so determined to find him.~ */ + NathFT9_giveup
END

IF ~~ THEN BEGIN NathFT9_untilnow
SAY @1295 /* ~No, until recently. I feel different to before. Less dependent on him. I don't know.~ */
++ @592 /* ~If you don't mind me asking, why were you dependent on him in the first place?~ */ + NathFT9_dependent
++ @593 /* ~You don't seem especially different to me.~ */ + NathFT9_nodifferent
++ @594 /* ~Well, if you've become more sure of yourself, that's a credit to you, surely?~ */ + NathFT9_dependent
END

IF ~~ THEN BEGIN NathFT9_changed
SAY @595 /* ~Yes, they have. I feel different to before. Less dependent on him. I don't know.~ */
++ @592 /* ~If you don't mind me asking, why were you dependent on him in the first place?~ */ + NathFT9_dependent
++ @593 /* ~You don't seem especially different to me.~ */ + NathFT9_nodifferent
++ @594 /* ~Well, if you've become more sure of yourself, that's a credit to you, surely?~ */ + NathFT9_dependent
END

IF ~~ THEN BEGIN NathFT9_giveup
SAY @1296 /* ~No, it isn't that. Things have changed. I've changed. I feel different to before. Less dependent on him. I don't know.~ */
++ @592 /* ~If you don't mind me asking, why were you dependent on him in the first place?~ */ + NathFT9_dependent
++ @593 /* ~You don't seem especially different to me.~ */ + NathFT9_nodifferent
++ @594 /* ~Well, if you've become more sure of yourself, that's a credit to you, surely?~ */ + NathFT9_dependent
END

IF ~~ THEN BEGIN NathFT9_dependent
SAY @1297 /* ~I told you that when I was young, Latimer saved me. What specifically happened was, when I was young and I'd just joined the Flaming Fist, there were some people who decided they didn't like me.~ */
=
@598 /* ~They would corner me and - and beat me. They made me believe speaking out would only make things worse. It went on for, oh, about nine or ten months, in my sixteenth year.~ */
=
@599 /* ~I was friends with Avery since before that, but he couldn't help me. Shigure might have done, but he couldn't be around at the Fist barracks - he was still living in my father's house. Then Latimer came along.~ */
=
@1298 /* ~He stopped them, had them expelled, and - and protected me. I needed protecting - I felt like everyone was out to get me.~ */
++ @601 /* ~It sounds as though they were.~ */ + NathFT9_paranoia
++ @602 /* ~Nathaniel, that's terrible. You should have told someone about it before it got so bad.~ */ + NathFT9_love
++ @603 /* ~What happened with Latimer after that?~ */ + NathFT9_love
END

IF ~~ THEN BEGIN NathFT9_nodifferent
SAY @604 /* ~<CHARNAME>, this is difficult enough without you interrupting!~ */
++ @605 /* ~Then be quiet! I need some peace and quiet around here!~ */ + NathFT9_shout
++ @1299 /* ~I'm sorry. Pleae, carry on with what you were saying.~ */ + NathFT9_dependent
END

IF ~~ THEN BEGIN NathFT9_paranoia
SAY @607 /* ~Excuse me? Shall I just shut up?~ */
++ @608 /* ~Yes, please! I need some peace and quiet around here!~ */ + NathFT9_shout
++ @609 /* ~No, carry on. I'm sorry for interrupting.~ */ + NathFT9_love
END

IF ~~ THEN BEGIN NathFT9_love
SAY @610 /* ~Well, Latimer may have been ... abrupt ... with everyone, but he was nice to me.~ */
=
@611 /* ~I fell in love with him. I don't think I even realised it was happening, but it was. After a couple of months, well, things got a bit more serious between us.~ */
++ @612 /* ~A couple of months? That was quite a fast courtship, wasn't it?~ */ + NathFT9_fast
++ @613 /* ~A couple of months? What were you doing for all that time, playing chess?~ */ + NathFT9_slow
++ @614 /* ~Thank you for telling me about all of this. It's good to know important things.~ */ + NathFT9_thanks
END

IF ~~ THEN BEGIN NathFT9_shout
SAY @615 /* ~Fine! I won't bother you with this again.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT9_fast
SAY @616 /* ~What do you-- Hey! I'm not that sort of man!~ */
IF ~~ THEN + NathFT9_letgo
END

IF ~~ THEN BEGIN NathFT9_slow
SAY @617 /* ~Yes, act-- Hey! Do you think I'd rush into something like that? Who do you take me for?~ */
IF ~~ THEN + NathFT9_letgo
END

IF ~~ THEN BEGIN NathFT9_thanks
SAY @1300 /* ~Thank *you*, <CHARNAME>. For listening to me rambling about things.~ */
++ @619 /* ~What are you going to do, now? Are you just going to stop looking for him?~ */ + NathFT9_letgo
++ @620 /* ~Don't mention it. As I said, it's interesting to find out things that have happened to you.~ */ + NathFT9_dontmention
++ @621 /* ~(yawn) Sorry, what was that? Just dropped off for a second, there.~ */ + NathFT9_tease
END

IF ~~ THEN BEGIN NathFT9_letgo
SAY @622 /* ~I'll try to let it go, I suppose. Latimer and I had something so important but now, well, he's not the same person. And neither am I. I just wish I could speak to him again. But he doesn't want anything to do with me, and that's that.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT9_dontmention
SAY @623 /* ~All right, I won't go on about it. But it helped, talking to you.~ */
IF ~~ THEN + NathFT9_letgo
END

IF ~~ THEN BEGIN NathFT9_tease
SAY @624 /* ~That's my cue to stop the thank-yous, I suppose? All right, I won't go on about it. But it helped, talking to you.~ */
IF ~~ THEN + NathFT9_letgo
END

//FT10//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",20)
Global("NathFriendMatch","GLOBAL",1)~
THEN BEGIN NathFT10
SAY @625 /* ~I'm sorry. I'm so sorry.~ */   
++ @626 /* ~You don't have to apologise about it. You'd had bad news, for heaven's sake.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT10_news
++ @627 /* ~So you should be! I'm not the kind of person who'll take being shouted at lying down!~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT10_righteous
++ @628 /* ~Thanks for the apology, but what's done is done now. I'd rather not dwell on it.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT10_should
END

IF ~~ THEN BEGIN NathFT10_think
SAY @641 /* ~I always try to consider before getting angry, that's something I--~ */
=
@642 /* ~All right. I will, I promise.~ */
++ @643 /* ~Thank you.~ */ + NathFT10_thanks
++ @644 /* ~Thank you. I forgive you, Nathaniel.~ */ + NathFT10_forgive
++ @645 /* ~You'd had bad news. It's fine.~ */ + NathFT10_news
END

IF ~~ THEN BEGIN NathFT10_news
SAY @1301 /* ~It wasn't just the news.~ */
++ @630 /* ~What was it, then, if it wasn't hearing that from Avery?~ */ + NathFT10_virgil
++ @631 /* ~It doesn't matter. What's important to me is that you're all right.~ */ + NathFT10_forgive
++ @632 /* ~Look, just don't keep going on about it, all right? What's in the past is in the past.~ */ + NathFT10_dwell
END

IF ~~ THEN BEGIN NathFT10_righteous
SAY @633 /* ~No, no, I don't. I just wanted to say sorry.~ */
++ @634 /* ~Well, thank you, I suppose. I just wanted you to know that it hurt my feelings.~ */ + NathFT10_friend
++ @635 /* ~That isn't enough. It hurt a great deal when you said those things to me.~ */ + NathFT10_should
++ @636 /* ~All right. Just think more before you say something like that that next time.~ */ + NathFT10_think
END

IF ~~ THEN BEGIN NathFT10_should
SAY @1302 /* ~I know. But I am sorry.~ */
++ @638 /* ~Thank you, I appreciate your apology.~ */ + NathFT10_forgive
++ @639 /* ~Just don't dwell on it, all right? It's all in the past, now.~ */ + NathFT10_dwell
++ @640 /* ~So was it the news, or was there something else as well?~ */ + NathFT10_news
END

IF ~~ THEN BEGIN NathFT10_friend
SAY @646 /* ~I know, that's why I don't want to-- Never mind.~ */
++ @1303 /* ~Don't worry about it, Nathaniel.~ */ + NathFT10_forgive
++ @1304 /* ~Just don't dwell on it, all right? It's in the past now.~ */ + NathFT10_dwell
++ @1305 /* ~You'd had bad news, for goodness' sake!~ */ + NathFT10_news
END

IF ~~ THEN BEGIN NathFT10_thanks
SAY @647 /* ~That means a lot to me. I-- Never mind.~ */
IF ~~ THEN DO ~SetGlobal("FHNoFlirtsPostAvery","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN NathFT10_forgive
SAY @1091 /* ~Thanks. I-- Never mind.~ */
IF ~~ THEN DO ~SetGlobal("FHNoFlirtsPostAvery","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN NathFT10_virgil
SAY @649 /* ~I'm sorry, but I don't want to talk about it. Let's just keep moving?~ */
IF ~~ THEN DO ~SetGlobal("FHNoFlirtsPostAvery","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN NathFT10_dwell
SAY @650 /* ~You're right. Let's just keep moving?~ */
IF ~~ THEN DO ~SetGlobal("FHNoFlirtsPostAvery","GLOBAL",0)~ EXIT
END

//FT11//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",22)
Global("NathFriendMatch","GLOBAL",1)~
THEN BEGIN NathFT11
SAY @651 /* ~How are you doing at the moment, <CHARNAME>?~ */   
++ @652 /* ~I'm doing fine, thank you. A little tired, but that's usual. Why do you ask?~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT11_fine
++ @653 /* ~Not too well, actually. I feel about ready to keel over quite a lot of the time.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT11_bad
++ @654 /* ~I'd prefer not to talk about it, thank you. It's bad enough as it is without discussing it.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT11_notalk
++ @655 /* ~Oh, I'm fine, apart from the confusion and the torture and everything.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT11_tease
END

IF ~~ THEN BEGIN NathFT11_fine
SAY @1306 /* ~Anything I can do to keep you feeling that way, tell me, all right?~ */
++ @657 /* ~Keep your hand on my shoulder, for a start. I like it.~ */ + NathLT12_hand
++ @1307 /* ~You can stop the touching, for a start I'm not really in the mood.~ */ + NathLT12_burned
++ @659 /* ~It's good to talk to you, no matter how stressful these past times have been.~ */ + NathLT12_nicetalk
++ @660 /* ~Having you around does make me feel a little more relaxed about things.~ */ + NathLT12_niceround
END

IF ~~ THEN BEGIN NathFT11_tease
SAY @1308 /* ~Oh! I'm sorry to have brought it up, it's just I was concerned and--~ */
++ @662 /* ~I was just joking - you should loosen up a little. I'm fine, really.~ */ + NathFT11_fine
++ @663 /* ~I'm fine, Nathaniel. There's this thing sarcasm that you need to grasp.~ */ + NathFT11_laugh
++ @664 /* ~Yes, but isn't it obvious that I'm going to be unhappy with all these things going on?~ */ + NathFT11_bad
++ @665 /* ~I know that you were concerned, but what I really don't need is your pity.~ */ + NathFT11_pity
END

IF ~~ THEN BEGIN NathFT11_bad
SAY @666 /* ~Ah... Is there anything I can do? I could get you something, if you'd like, or maybe--~ */
=
@667 /* ~I know, I could--~ */
++ @668 /* ~Go and kill Irenicus, and then destroy the essence of Bhaal so I can have a normal life.~ */ + NathFT11_cake
++ @669 /* ~Being around you makes me feel a little more relaxed about things.~ */ + NathFT11_niceround
++ @1309 /* ~I don't think there is anything you could do, even if I wanted you to. I'd rather not talk about it.~ */ + NathFT11_therapist
END

IF ~~ THEN BEGIN NathFT11_notalk
SAY @1310 /* ~Of course. If there's anything I can do, you will let me know, won't you?~ */
++ @1311 /* ~Sure. Kill Irenicus, resurrect Gorion and destroy Bhaal. All in time for tea.~ */ + NathFT11_cake
++ @670 /* ~I don't think there is anything you could do, even if I wanted you to.~ */ + NathFT11_therapist
END

IF ~~ THEN BEGIN NathFT11_nicetalk
SAY @1312 /* ~I'm glad you feel that way. I've found talking to you good, too.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT11_niceround
SAY @678 /* ~I might have thought differently, but-- Ahh, never mind, you'll think I'm fishing for compliments. So, thank you. Being around you's made me feel relaxed, too.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT11_laugh
SAY @683 /* ~I suppose you're trying to tell me I should relax...?~ */
=
@684 /* ~So, how do you suggest I learn? Can you give me some pointers?~ */
++ @685 /* ~Here, let me give you a shoulder massage. That'll loosen you up nicely, I'm sure.~ */ + NathFT11_flirtatious
++ @686 /* ~Just don't take everything so seriously. You have to laugh sometimes.~ */ + NathFT11_try
END

IF ~~ THEN BEGIN NathFT11_pity
SAY @1313 /* ~I wasn't being pitying, I was just interested.~ */
++ @1314 /* ~I didn't mean--~ */ + NathFT11_think
++ @1315 /* ~You're obviously trying to make up for being unpleasant earlier.~ */ + NathFT11_petty
END

IF ~~ THEN BEGIN NathFT11_cake
SAY @691 /* ~I'm not entirely sure I can do *that*, but I can give it a go. In the meantime, I can buy you some cake at the next inn!~ */
++ @692 /* ~That's your answer for everything, isn't it? Sometimes I think you're a little too obsessed.~ */ + NathFT11_answer
++ @693 /* ~Hmm, that's not the decisive action I was hoping for, but I appreciate the thought.~ */ + NathFT11_savoury
++ @694 /* ~(Smile weakly.)~ */ + NathFT11_smiley
END

IF ~~ THEN BEGIN NathFT11_therapist
SAY @1316 /* ~Well, if you do ever need to talk, then remember you can just say.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT11_think
SAY @1317 /* ~It's all right. And I know I can't lecture about thinking before speaking. But I was only trying to help.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT11_petty
SAY @697 /* ~If you think I'm the sort of person who'd be that petty, I'd prefer not to talk to you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT11_answer
SAY @698 /* ~Cake makes everything seem better. Haven't you realised that, yet?~ */
++ @699 /* ~I appreciate the kind thought, but I'm more of a savouries <MANWOMAN>.~ */ + NathFT11_savoury
++ @700 /* ~That's true enough. I'll definitely hold you to that promise.~ */ + NathFT11_promise
++ @701 /* ~I'm afraid the mere thought of cake makes me feel ill. I prefer my food plain and simple.~ */ + NathFT11_savoury
END

IF ~~ THEN BEGIN NathFT11_smiley
SAY @702 /* ~Ah, I was hoping that'd get a smile out of you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT11_flirtatious
SAY @1318 /* ~Er, that sounds ... nice. Maybe another time would be better, though.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT11_try
SAY @1319 /* ~Ahh, I'll do my best.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT11_savoury
SAY @705 /* ~Trust me, <CHARNAME>, you don't know what you're missing.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT11_promise
SAY @706 /* ~I look forward to it!~ */
IF ~~ THEN EXIT
END

//FT12//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",24)
Global("NathFriendMatch","GLOBAL",1)~
THEN BEGIN NathFT12
SAY @707 /* ~<CHARNAME>, do you have a minute?~ */   
++ @708 /* ~You're making me dizzy with all that pacing, Nathaniel.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT12_smile
++ @709 /* ~What did I tell you? Anytime you want to talk, I'm here? Now talk.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT12_smile
++ @710 /* ~I'm afraid not, Nathaniel. I've got other things to do, at the moment.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT12_notalk
END

IF ~~ THEN BEGIN NathFT12_smile
SAY @711 /* ~Sorry, I didn't realise I was being so transparent! All right, I've been thinking. About Latimer.~ */
=
@712 /* ~I was thinking about how little I have-- Only memories-- it's just that...~ */
IF ~~ THEN + NathFT12_ring
END

IF ~~ THEN BEGIN NathFT12_notalk
SAY @713 /* ~Maybe we could talk later, then.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT12_ring
SAY @1320 /* ~Sorry. The point is, Latimer gave me this ring. He always said green matched my eyes.~ */
++ @715 /* ~So he did have some goodness. I wonder if he could have been redeemed.~ */ + NathFT12_latredeem
++ @716 /* ~So what? He still left you for Black Lotus and ale - he was still a bastard.~ */ + NathFT12_insensitive
++ @1321 /* ~It does look nice with your eyes, yes. It's a rather nice ring.~ */ + NathFT12_nicering
++ @718 /* ~What's on your mind, then? I don't see what the ring has to do with anything.~ */ + NathFT12_trinket
END

IF ~~ THEN BEGIN NathFT12_latredeem
SAY @719 /* ~I just don't know. The way he was when I left, I'd say no. But there's endless possibilities. I'm sure we could discuss it all day, but I don't like those kinds of discussions.~ */
IF ~~ THEN + NathFT12_trinket
END

IF ~~ THEN BEGIN NathFT12_insensitive
SAY @1322 /* ~I don't feel like talking if you're going to be that insensitive.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT12_nicering
SAY @1323 /* ~It is. It's the only thing of his I have, and I'm not sure what I should do. I mean, the last I remember of him was - well, you know from Avery. But I love him. Loved him. I know it's just a trinket, but...~ */   
++ @722 /* ~I don't see that you should throw it away. You have good memories as well as bad.~ */ + NathFT12_keep2
++ @723 /* ~If you're not sure about it, keep it. At least then if you decide otherwise you'll have it.~ */ + NathFT12_keep4
++ @724 /* ~Don't let his memory have such a hold on you. Don't deceive yourself about what he was like.~ */ + NathFT12_throw1
++ @725 /* ~Let him go, Nathaniel, along with the ring. Holding onto these things can be harmful.~ */ + NathFT12_throw2
END

IF ~~ THEN BEGIN NathFT12_trinket
SAY @726 /* ~It's the only thing of his I have, and I'm not sure what I should do. I mean, the last I remember of him was - well, you know from Avery. But I love him. Loved him. I know it's just a trinket, but...~ */   
++ @722 /* ~I don't see that you should throw it away. You have good memories as well as bad.~ */ + NathFT12_keep2
++ @723 /* ~If you're not sure about it, keep it. At least then if you decide otherwise you'll have it.~ */ + NathFT12_keep4
++ @724 /* ~Don't let his memory have such a hold on you. Don't deceive yourself about what he was like.~ */ + NathFT12_throw1
++ @725 /* ~Let him go, Nathaniel, along with the ring. Holding onto these things can be harmful.~ */ + NathFT12_throw2
END

IF ~~ THEN BEGIN NathFT12_keep2
SAY @727 /* ~I think you're right. Come on, let's go.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT12_keep4
SAY @728 /* ~You're right - being cautious is best, I think. Thank you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT12_throw1
SAY @1324 /* ~You're right, <CHARNAME>, I still have the memories...~ */
IF ~~ THEN DO ~DestroyItem("FHRING")~
EXIT
END

IF ~~ THEN BEGIN NathFT12_throw2
SAY @730 /* ~I think you might be right, <CHARNAME>. Thank you.~ */
IF ~~ THEN DO ~DestroyItem("FHRING")~
EXIT
END

//FT13//
IF ~Global("NathFriendTalk","LOCALS",26)~ THEN BEGIN NathFT13
SAY @1325 /* ~NO! Don't, PLEASE!~ */   
=
@1326 /* ~Oh - oh. Sorry... Nightmare. I used to get them a lot. I thought they'd stopped, but I suppose...~ */
++ @733 /* ~Don't worry about whatever it was, it wasn't real. You're with friends, here.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT13_friends
++ @734 /* ~It'll be all right, Nathaniel. Just try to breathe deeply and it'll pass.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT13_relax
++ @735 /* ~Many people get nightmares, including me, and they can cope. You can, too.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~ + NathFT13_getover
END

IF ~~ THEN BEGIN NathFT13_what
SAY @1327 /* ~I ... I can't really remember it, now.~ */   
=
@1328 /* ~That's not true. I ... there was me and Latimer, and you, and a girl who could change into a panther. And vampires. And we'd all been captured by them... The vampires said to the girl, you have to choose who dies. And ... and she said Latimer, and, and that's when I woke up.~ */   
=
@741 /* ~Let's get on. I need something to take my mind off it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT13_friends
SAY @736 /* ~Yes. Yes, I know. Thank you. I ... I think I'm all right now.~ */
++ @737 /* ~What was the nightmare about? Perhaps if you talk about it, it'll seem less frightening.~ */ + NathFT13_what
++ @1329 /* ~That's good to hear. Are you all right to get going?~ */ + NathFT13_go
END

IF ~~ THEN BEGIN NathFT13_relax
SAY @742 /* ~All - all right. Thank you. I ... I think I'm all right now.~ */
++ @737 /* ~What was the nightmare about? Perhaps if you talk about it, it'll seem less frightening.~ */ + NathFT13_what
++ @1329 /* ~That's good to hear. Are you all right to get going?~ */ + NathFT13_go
END

IF ~~ THEN BEGIN NathFT13_getover
SAY @1330 /* ~Thank you, I'll try ... I - don't like to be weak.~ */
++ @744 /* ~It was just a dream: don't let dreams have power over you.~ */ + NathFT13_friends
++ @745 /* ~I have nightmares, too. It doesn't mean that I'm weak, so you'll be fine.~ */ + NathFT13_relax
++ @746 /* ~You must have an unhappy life, then, because you *are* weak.~ */ + NathFT13_weak
END

IF ~~ THEN BEGIN NathFT13_go
SAY @741 /* ~Let's get on. I need something to take my mind off it.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT13_weak
SAY @747 /* ~At least I don't delight in taunting others for things they can't help.~ */
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)~
EXIT
END

//FT14//

IF
~Global("NathFriendTalk","LOCALS",28)
Global("NathFriendMatch","GLOBAL",1)~ THEN BEGIN NathFT14
SAY @1331 /* ~NO! NO, I DON'T! (Nathaniel grabs hold of you and kisses you desperately. Before you have time to react he lets go of you, staring at you in horror.)~ */   
++ @1332 /* ~Mmm, that was lovely - though maybe you could be a little gentler next time?~ */ DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT14_nexttime
++ @752 /* ~I don't know what to say - I had no idea you felt that way, Nathaniel!~ */ DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT14_noidea
IF ~Gender(Player1,FEMALE)~ THEN REPLY @1333 /* ~But I thought you didn't like women in that way, Nathaniel!~ */ DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT14_noidea
++ @753 /* ~Well. That's one awakening I won't forget in anytime soon.~ */ DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT14_awakening
++ @1334 /* ~NATHANIEL! Get off me, NOW!~ */ DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT14_getoff
END

IF ~~ THEN BEGIN NathFT14_nexttime
SAY @1335 /* ~What? No-- there isn't going to be a next time! I wasn't myself.~ */
IF ~~ THEN + NathFT14_spot
END

IF ~~ THEN BEGIN NathFT14_spot
SAY @1336 /* ~Gods, I can't believe that I-- I mean, it's not that I don't like you, but I never thought of you in that way.~ */
=
@1337 /* ~I was so scared, and you were there and I just instinctively - anyway, I'm sorry. I keep saying that. But I mean it.~ */
++ @1338 /* ~Well, let's just forget that it happened, all right? I'd rather not go on about it any more.~ */ + NathFT14_forget
++ @1339 /* ~(sigh) So you don't think of me in that way, then. That's a pity, I was hoping for something more.~ */ + NathFT14_nice
++ @1340 /* ~It was just a mistake, nothing to worry about. Everyone makes mistakes.~ */ + NathFT14_forgive
++ @1341 /* ~So I was just the nearest person. Nice to see how you view our friendship, Nathaniel.~ */ + NathFT14_eek
END

IF ~~ THEN BEGIN NathFT14_forget
SAY @1342 /* ~Yes - that's a good idea.~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",29)~
EXIT
END

IF ~~ THEN BEGIN NathFT14_better
SAY @1343 /* ~I am, a little. Having someone like you around makes me feel safer, I think.~ */
=
@1344 /* ~Anyway, we should be going. Thank you.~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",29)~
EXIT
END

IF ~~ THEN BEGIN NathFT14_go
SAY @1345 /* ~Yes, you're right.~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",29)~
EXIT
END

IF ~~ THEN BEGIN NathFT14_forgive
SAY @1346 /* ~Thank you. Not everyone would be as understanding as this - I appreciate it.~ */
++ @1347 /* ~So what was the nightmare about? It must have been fairly bad.~ */ + NathFT14_tell
++ @1348 /* ~I hope you're feeling better, anyway.~ */ + NathFT14_better
++ @1349 /* ~Well, the <DAYNIGHT>'s not getting any longer. We should get going.~ */ + NathFT14_go
END

IF ~~ THEN BEGIN NathFT14_friends
SAY @1350 /* ~Yes! I mean, not "one of those" - I really like being a friend of yours, but I've never-- Look, I don't want to offend you but I don't think of you in that way.~ */
=
@1351 /* ~I was so scared, and you were the nearest person ... I just instinctively ... and anyway, I'm sorry.~ */
++ @1338 /* ~Well, let's just forget that it happened, all right? I'd rather not go on about it any more.~ */ + NathFT14_forget
++ @1339 /* ~(sigh) So you don't think of me in that way, then. That's a pity, I was hoping for something more.~ */ + NathFT14_nice
++ @1340 /* ~It was just a mistake, nothing to worry about. Everyone makes mistakes.~ */ + NathFT14_forgive
++ @1341 /* ~So I was just the nearest person. Nice to see how you view our friendship, Nathaniel.~ */ + NathFT14_eek
END

IF ~~ THEN BEGIN NathFT14_eek
SAY @1352 /* ~I didn't mean that at all! Believe me when I say that you're an important person to me!~ */
++ @1353 /* ~Not important enough to have a real relationship with, evidently.~ */ + NathFT14_real
++ @1354 /* ~And you're important to me, Nathaniel. I just thought that I meant more to you than that.~ */ + NathFT14_important
++ @1355 /* ~All right, all right, calm down. I didn't mean it like that. You needn't apologise so much.~ */ + NathFT14_forgive
END

IF ~~ THEN BEGIN NathFT14_real
SAY @1356 /* ~For heavens' sake! A lot of friendships are a hell of a lot more meaningful than "relationships"! And if you think our friendship isn't "real" then obviously it isn't worth pursuing!~ */
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN NathFT14_important
SAY @1357 /* ~You *do* mean a lot to me. You can be good friends with someone without being romantic - can't you understand that?~ */
++ @1358 /* ~I suppose so. It's not important, anyway - it was just a thought I had.~ */ + NathFT14_suppose
++ @1359 /* ~Oh, well, let's forget it happened, all right? I'd rather not go on about this any more.~ */ + NathFT14_forget
++ @1360 /* ~Hmph. I think I just wanted a relationship, you know? Something more meaningful.~ */ + NathFT14_real
END

IF ~~ THEN BEGIN NathFT14_suppose
SAY @1361 /* ~Well, let's just forget it ever happened?~ */
IF ~~ THEN DO ~SetGlobal("NathFriendTalk","LOCALS",29)~
EXIT
END

IF ~~ THEN BEGIN NathFT14_noidea
SAY @1362 /* ~I don't! That is, I was so scared, and then you were there and I just instinctively ... anyway, I'm sorry. I keep saying that. But I mean it.~ */
++ @1338 /* ~Well, let's just forget that it happened, all right? I'd rather not go on about it any more.~ */ + NathFT14_forget
++ @1339 /* ~(sigh) So you don't think of me in that way, then. That's a pity, I was hoping for something more.~ */ + NathFT14_nice
++ @1340 /* ~It was just a mistake, nothing to worry about. Everyone makes mistakes.~ */ + NathFT14_forgive
++ @1341 /* ~So I was just the nearest person. Nice to see how you view our friendship, Nathaniel.~ */ + NathFT14_eek
END

IF ~~ THEN BEGIN NathFT14_awakening
SAY @1363 /* ~I didn't know what I was doing - I was so scared, and then you were there and I just instinctively ... anyway, I'm sorry. I keep saying that. But I mean it.~ */
++ @1338 /* ~Well, let's just forget that it happened, all right? I'd rather not go on about it any more.~ */ + NathFT14_forget
++ @1339 /* ~(sigh) So you don't think of me in that way, then. That's a pity, I was hoping for something more.~ */ + NathFT14_nice
++ @1340 /* ~It was just a mistake, nothing to worry about. Everyone makes mistakes.~ */ + NathFT14_forgive
++ @1341 /* ~So I was just the nearest person. Nice to see how you view our friendship, Nathaniel.~ */ + NathFT14_eek
END

IF ~~ THEN BEGIN NathFT14_getoff
SAY @1364 /* ~I'm sorry, <CHARNAME>, I'm so sorry, I didn't know what was going on--~ */
++ @1365 /* ~Stop gabbling - I'm sorry for shouting at you. I was just shocked, you know?~ */ + NathFT14_awakening
++ @768 /* ~I think it's best if we forget that this happened. I don't want to go into the hows and whys.~ */ + NathFT14_forget
++ @770 /* ~That's all very well, but I want you out of this group. Now.~ */ + NathFT14_nastyleave
END

IF ~~ THEN BEGIN NathFT14_nice
SAY @1366 /* ~What? Do you mean-- Oh.~ */
=
@1367 /* ~I didn't mean to do it, it's just that you were the nearest person-- I'm so sorry...~ */
++ @1368 /* ~Oh. Well, let's just forget it happened, all right? I'd rathe not go on about it any more.~ */ + NathFT14_forget
++ @1341 /* ~So I was just the nearest person. Nice to see how you view our friendship, Nathaniel.~ */ + NathFT14_eek
END

IF ~~ THEN BEGIN NathFT14_nastyleave
SAY @786 /* ~But I'd like to stay here with you! We've gone through so much, and--~ */
++ @787 /* ~Didn't you hear what I just said? Get out, now!~ */ + NathFT14_horrible
++ @1369 /* ~Don't argue with me, please. Just go. I don't want to make a scene.~ */ + NathFT14_leave
++ @1370 /* ~Fine, you can stay. But keep your hands off me in future, if you please.~ */ + NathFT14_nasty
END

IF ~~ THEN BEGIN NathFT14_nasty
SAY @1371 /* ~I wasn't planning to-- oh, never mind.~ */
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN NathFT14_horrible
SAY @790 /* ~Yes, I'll-- goodbye.~ */
IF ~~ THEN DO
~SetGlobal("NathFriend","GLOBAL",2)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathFT14_leave
SAY @1372 /* ~Yes. Well, goodbye, then. It's been interesting travelling with you.~ */
IF ~~ THEN DO
~SetGlobal("NathFriend","GLOBAL",2)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN NathFT14_tell
SAY @1373 /* ~It ... I was dreaming again. I was following Latimer along this road, and I was shouting out to him to stop, and he-- he couldn't hear me, or he was ignoring me.~ */   
=
@1374 /* ~Avery was pulling me back but I got free of him and ran after Latimer, and everything was dark, and cold, and ... I was alone. I was weak, I was a failure, I was alone.~ */   
++ @796 /* ~Well, luckily that dream is completely untrue. You're nothing of the sort.~ */ + NathFT14_untrue
++ @797 /* ~It was just a dream, Nathaniel - you need to deal with real life, not with imaginary fears.~ */ + NathFT14_untrue
++ @798 /* ~I swear, if I ever meet those people who hurt you, I'm going to beat them to a pulp!~ */ + NathFT14_pulp
END

IF ~~ THEN BEGIN NathFT14_untrue
SAY @1375 /* ~<CHARNAME>, being around you helps me believe it.~ */
IF ~~ THEN DO ~SetGlobal("FHFT14","GLOBAL",1)
SetGlobal("NathFriendTalk","LOCALS",29)~
EXIT
END

IF ~~ THEN BEGIN NathFT14_pulp
SAY @1376 /* ~I think you'll find that Latimer already did. But thank you. Having you around makes me feel a lot better.~ */
=
@1377 /* ~You're such a good friend, <CHARNAME>, and that doesn't even start to cover it. Thank you.~ */
IF ~~ THEN DO ~SetGlobal("FHFT14","GLOBAL",1)
SetGlobal("NathFriendTalk","LOCALS",29)~
EXIT
END

IF ~~ THEN BEGIN NathFT14_meanie
SAY @1378 /* ~I can't believe this. Do me a favour - if I have another nightmare, just stay away from me.~ */
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)~
EXIT
END

//FT15//
IF
~Global("NathFriend","GLOBAL",1)
Global("NathFriendTalk","LOCALS",30)~
THEN BEGIN NathFT15
SAY @1379 /* ~Thank you, <CHARNAME>. I don't know what I'd do without you. With him being dead, and then alive - there's been so much going on in my head and you-- You help me feel safer.~ */   
++ @1380 /* ~You've stuck by me, too - a lot of people wouldn't have.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT15_appreciate
++ @1381 /* ~I couldn't live with myself knowing that you were upset and I chose not to do something.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT15_job
++ @1382 /* ~Don't be so melodramatic. I like you. There's no need for thanks.~ */ DO ~IncrementGlobal("NathFriendTalk","LOCALS",1)~ + NathFT15_job
END

IF ~~ THEN BEGIN NathFT15_job
SAY @1383 /* ~That doesn't stop me saying thank you. I really appreciate what you've done for me, and I wanted you to know that you mean a lot to me.~ */
++ @1384 /* ~Well, it's good having you around, too. Not everyone would stay by me, I'm sure.~ */ + NathFT15_appreciate
++ @1385 /* ~You could always show your appreciation in a different way.~ */ + NathFT15_comeonmale
++ @1386 /* ~You mean a lot to me, too. You're a good person to have around.~ */ + NathFT15_done
++ @1387 /* ~I'm glad that you came up to me to ask about Latimer.~ */ + NathFT15_ask
END

IF ~~ THEN BEGIN NathFT15_appreciate
SAY @1388 /* ~Well, they're stupid, aren't they? Anyway, it's not as if I've been a pillar of strength. I just wanted you to know that you mean a lot to me.~ */
++ @1385 /* ~You could always show your appreciation in a different way.~ */ + NathFT15_comeonmale
++ @1386 /* ~You mean a lot to me, too. You're a good person to have around.~ */ + NathFT15_done
++ @1387 /* ~I'm glad that you came up to me to ask about Latimer.~ */ + NathFT15_ask
END

IF ~~ THEN BEGIN NathFT15_done
SAY @1389 /* ~I'm glad, I'm really glad. I'm sorry I can't put it into better words, but it's been really good to travel with you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT15_comeonmale
SAY @1390 /* ~Um ... I...~ */
++ @1391 /* ~Relax, Nathaniel. I was just joking!~ */ + NathFT15_joke
++ @1392 /* ~What? You mean you're not devastatingly attracted to me? Made you look!~ */ + NathFT15_joke
++ @1393 /* ~You mean you're not interested? I'd hoped after you had the nightmare...~ */ + NathFT15_mean
END

IF ~~ THEN BEGIN NathFT15_ask
SAY @1394 /* ~So am I. I almost think I'd go through this again, because I've found as good a friend as you. I'm sorry I can't put it into better words, but it's been really good travelling with you.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT15_joke
SAY @1395 /* ~Oh, thank goodness. Er - I mean, you're very nice, but there are so many reasons why-- I mean, no offence but...~ */
++ @1396 /* ~Relax, Nathaniel.~ */ + NathFT15_relax
++ @1397 /* ~Stop digging that hole to bury yourself in.~ */ + NathFT15_relax
++ @1398 /* ~Sssh. Just breathe, and everything will be all right.~ */ + NathFT15_relax
END

IF ~~ THEN BEGIN NathFT15_mean
SAY @1399 /* ~<CHARNAME>...? I didn't mean to - after the nightmare, I explained that I didn't...~ */
++ @1400 /* ~Ahhh, don't worry about it. It's always worth a try.~ */ + NathFT15_joke
++ @1401 /* ~I didn't mean it seriously, Nathaniel - don't get so anxious.~ */ + NathFT15_joke
++ @1402 /* ~Um ... so. This is one of the more embarrassing moments in my life...~ */ + NathFT15_moment
++ @1403 /* ~I thought your feelings had changed. That's all.~ */ + NathFT15_moment
END

IF ~~ THEN BEGIN NathFT15_impression
SAY @1404 /* ~No! No, I didn't mean-- I didn't mean to do that at all.~ */
++ @1405 /* ~Oh, well, don't worry about it. It's always worth a try.~ */ + NathFT15_joke
++ @1406 /* ~I didn't mean it seriously - it was just a throwaway comment.~ */ + NathFT15_joke
++ @1402 /* ~Um ... so. This is one of the more embarrassing moments in my life...~ */ + NathFT15_moment
++ @1407 /* ~You can say sorry, but you've hurt me, Nathaniel.~ */ + NathFT15_hurt
END

IF ~~ THEN BEGIN NathFT15_relax
SAY @1408 /* ~Ahh, sorry. Anyway, you mean a lot to me.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT15_moment
SAY @1409 /* ~Um, well, let's just pretend it didn't happen, all right? I still appreciate you a great deal as my friend.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NathFT15_hurt
SAY @1410 /* ~I swear, I never meant to-- I'm sorry. Oh, this isn't going to go anywhere. Never mind.~ */
IF ~~ THEN DO
~SetGlobal("NathFriend","GLOBAL",2)~
EXIT
END

//ROMANCE CONFLICTS//

//AERIE CONFLICT//
//Nathaniel interjects at Aerie's LT4//
INTERJECT BAERIE 130 FHNathvsAerie1
== BFHNAT
IF ~InParty("Nath")
OR(2)
!InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",1)
OR(2)
!InParty("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",3)~ THEN
@1411 /* ~Looks aren't everything, Aerie. You have to remember that.~ */   
== BAERIE
@1412 /* ~M-maybe it is silly of me to ask you about my scars, <CHARNAME>.  I ... I just respect your opinion.~ */
END
++ @1413 /* ~Of course you're not ugly, Aerie.  Far from it.~ */ EXTERN BAERIE 131
++ @1414 /* ~It would take far more than a couple of scars to hide all the other beauty you possess, Aerie.~ */ EXTERN BAERIE 131
++ @1415 /* ~I have no time for such foolish vanity.  Leave me be.~ */ EXTERN BAERIE 135
++ @1416 /* ~Nathaniel's right. You should try to move on from such ideas of beauty.~ */ EXTERN BAERIE 135

//Nathaniel interjects at Aerie's LT9//
INTERJECT BAERIE 201 FHNathvsAerie2
== BFHNAT
IF ~Global("NathRomanceActive","GLOBAL",1)
InParty("Nath")
OR(2)
!InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",1)~ THEN
@1417 /* ~Aerie, try to pull yourself together. You can't carry on like this. I know it's painful for now, but it will fade--~ */   
== BAERIE
@1418 /* ~No! It won't! And don't think I haven't noticed you trying to use <CHARNAME> to comfort yourself with!~ */
== BFHNAT
@1419 /* ~Aerie--~ */
== BAERIE
@1420 /* ~Oh yes! All those hugs, and those little looks you give him when he isn't looking!~ */
== BFHNAT
@1421 /* ~Aerie, all I was doing was trying to help!~ */
== BAERIE
@1422 /* ~Ha! As if I would want help from a man willing to abandon hope of seeing his lover! Admit it: isn't that what you're doing?~ */
== BFHNAT
@1423 /* ~That's uncalled for.~ */
== BAERIE
@1424 /* ~I don't care!  I don't care!  <CHARNAME>, I can't stand this!  I can't stand him, and I especially can't stand being stuck on the ground like some worm, oh Baervan, help me!~ */
DO ~SetGlobal("AerienolikeNath","GLOBAL",1)~
END
++ @1425 /* ~Life down here isn't so wretched, Aerie.~ */ EXTERN BAERIE 202
++ @1426 /* ~Well, you're going to have to accept it, Aerie.  You're going to have to find the strength to face up to it.~ */ EXTERN BAERIE 203
++ @1427 /* ~Don't say that ... we'll find some way to restore your wings, I promise!~ */ EXTERN BAERIE 206
++ @1428 /* ~If you continue to act so weak and maudlin, then I agree ... you'll never survive.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~ EXTERN BAERIE 210

//Nathaniel interjects at Aerie's LT13//
INTERJECT BAERIE 233 FHNathvsAerie3
== BFHNAT
IF ~Global("NathRomanceActive","GLOBAL",1)
InParty("Nath")
OR(2)
!InParty("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",1)
OR(2)
!InParty("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",1)~ THEN
@1429 /* ~Aerie, don't say such things! How can you wish death on yourself?~ */
== BAERIE
@1430 /* ~Oh, leave me alone, you ... you catamite! Do you think <CHARNAME> will be impressed at how "supportive" you're being to him? All you want is to get into his bed!~ */
== BFHNAT
@1431 /* ~That's enough.~ */
== BAERIE
@1432 /* ~I wonder how Latimer would feel if he knew that you were flirting with another man?~ */
== BFHNAT
@1433 /* ~Be quiet, Aerie.~ */
== BAERIE
@1434 /* ~Or maybe he wouldn't care? Maybe that's what you're afraid of, that he wouldn't care because he was too interested in ale and Black Lotus and thievery!~ */
== BFHNAT
@1435 /* ~AERIE! That's ENOUGH!~ */
== BAERIE
@1436 /* ~You see? He doesn't deny it, <CHARNAME>. Tell him that you hold me dear in your heart!~ */
END
++ @1437 /* ~Aerie, you should know that I think of you as a friend: no more and no less.~ */ EXTERN BAERIE 440
++ @1438 /* ~"Hold you dear in my heart"? I think not. Nathaniel is a far better friend than you ever could be.~ */ EXTERN BAERIE 436
++ @1439 /* ~I think you're right, Aerie. Nathaniel, Aerie and I are more than companions to each other.~ */ EXTERN BFHNAT FHNathAerieRejectNice
++ @1440 /* ~Without hesitation! I don't want anyone to think that I wanted someone like you, Nathaniel.~ */ EXTERN BFHNAT FHNathAerieRejectNasty

//Aerie interjects at Nathaniel's LT3//
INTERJECT BFHNAT NathLT3 FHAerievsNath1
== BAERIE
IF ~Global("AerieRomanceActive","GLOBAL",1)
InParty("Aerie")~ THEN
@1441 /* ~So you should, Nathaniel! How could you be so rude to <CHARNAME>?~ */
== BFHNAT
@1442 /* ~Aerie, I don't need you to make me feel worse about behaving badly, thank you.~ */
=
@1443 /* ~So, <CHARNAME> ... sorry.~ */
END
++ @148 /* ~I was shocked when I found out about it, myself - I can understand your reaction.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT3_cute
++ @149 /* ~Are you sure you want to stay in the group? You've been acting a little off, lately.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT3_ahem
++ @1444 /* ~Aerie's right: it struck me as rather self-indulgent, actually. How do you think it made me feel?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT3_nosorry
++ @151 /* ~I don't really want your apology. Just don't keep going on about it.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT3_nosorry

//Aerie interjects at Nathaniel's LT11//
INTERJECT BFHNAT NathLT11 FHAerievsNath2
== BAERIE
IF ~Global("AerieRomanceActive","GLOBAL",1)
InParty("Aerie")~ THEN
@1445 /* ~How could you? You shouted at him when he was only trying to help you feel better!~ */
== BFHNAT
@1446 /* ~That was why I was apologising, Aerie! Why do you keep sniping at me?~ */   
== BAERIE
@1447 /* ~B-because I know that <CHARNAME> deserves better than someone like you!~ */
== BFHNAT
@1448 /* ~Like you? I've seen the way you've been talking to him, getting comfort and then pushing him away. Maybe you should look at your own behaviour.~ */
== BAERIE
@1449 /* ~This is stupid! <CHARNAME>, tell Nathaniel that you hold me dear in your heart!~ */
END
++ @1437 /* ~Aerie, you should know that I think of you as a friend: no more and no less.~ */ EXTERN BAERIE FHAerieNath_nathnice
++ @1438 /* ~"Hold you dear in my heart"? I think not. Nathaniel is a far better friend than you ever could be.~ */ EXTERN BAERIE FHAerieNath_nathnasty
++ @1450 /* ~Nathaniel, I have strong feelings for Aerie, and I wouldn't want anyone to think otherwise.~ */ + FHAerieNathRejectNice
++ @1451 /* ~Without hesitation! I wouldn't want anyone to think I wanted someone like you, Nathaniel.~ */ + FHAerieNathRejectNasty

//Chains that occur when you have to decide between Aerie and Nathaniel//
CHAIN BAERIE FHAerieNath_nathnice
@1452 /* ~If... if that's what you want, <CHARNAME>, I'll stop bothering you with my - my foolishness.~ */
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
== BFHNAT
@1453 /* ~<CHARNAME>, I really am sorry about what I said before.~ */
END
++ @626 /* ~You don't have to apologise about it. You'd had bad news, for heaven's sake.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT11_news
++ @627 /* ~So you should be! I'm not the kind of person who'll take being shouted at lying down!~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT11_righteous
++ @628 /* ~Thanks for the apology, but what's done is done now. I'd rather not dwell on it.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT11_should

CHAIN BAERIE FHAerieNath_nathnasty
@1454 /* ~F-fine, then.  Obviously you are not the man I thought you to be.~ */
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
== BFHNAT
@1455 /* ~I didn't like the way you handled that, <CHARNAME>. You should have been nicer about it.~ */
=
@1456 /* ~But I really am sorry about what I said before.~ */
END
++ @626 /* ~You don't have to apologise about it. You'd had bad news, for heaven's sake.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT11_news
++ @627 /* ~So you should be! I'm not the kind of person who'll take being shouted at lying down!~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT11_righteous
++ @628 /* ~Thanks for the apology, but what's done is done now. I'd rather not dwell on it.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT11_should

CHAIN BFHNAT FHNathAerieRejectNice
@1457 /* ~It's only Aerie who seems to think that's a problem for me. My problem was her saying those things.~ */
=
@1458 /* ~Look, I'm just going to end up saying something I'll regret, so I'll just stay away from her for a while.~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXTERN BAERIE 434

CHAIN BFHNAT FHNathAerieRejectNasty
@1459 /* ~I never implied that I would have liked you to want me! You and her are getting as bad as each other.~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXTERN BAERIE 434

CHAIN BFHNAT FHAerieNathRejectNice
@1460 /* ~Of course! It was just that I couldn't bear hearing her say those things - I didn't mean to come between you or anything like that - I'd never dream of--~ */
=
@1458 /* ~Look, I'm just going to end up saying something I'll regret, so I'll just stay away from her for a while.~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",0) SetGlobal("NathMatch","GLOBAL",0) SetGlobal("NathFriendMatch","GLOBAL",1) SetGlobal("NathFriend","GLOBAL",1) SetGlobal("NathFriendTalk","LOCALS",21) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~
EXIT

CHAIN BFHNAT FHAerieNathRejectNasty
@1459 /* ~I never implied that I would have liked you to want me! You and her are getting as bad as each other.~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT

//JAHEIRA CONFLICT//
//Nathaniel interjects at Jaheira's LT 5//
INTERJECT BJAHEIR 130 FHNathvsJaheir1
== BFHNAT
IF ~Global("NathRomanceActive","GLOBAL",1)
InParty("Nath")~ THEN
@1461 /* ~Those kinds of questions are a little daunting, Jaheira. Why can't you give him a break?~ */
== BJAHEIR
@1462 /* ~If <CHARNAME> objects to my questions, he will say, I am sure. Well, <CHARNAME>? Are you experiencing doubts?~ */
END
++ @1463 /* ~Perhaps, though I have little choice in changing where I am bound.~ */ EXTERN BJAHEIR 132
++ @1464 /* ~None at all. I was not thinking, I just thought I smelled something. Pretension; that's what it was.~ */ EXTERN BJAHEIR 131
++ @1465 /* ~Nathaniel is right. Do you have so little faith in me?~ */ EXTERN BJAHEIR 136

//Nathaniel interjects at Jaheira's LT 12//
INTERJECT BJAHEIR 196 FHNathvsJaheir2
== BFHNAT
IF ~Global("NathRomanceActive","GLOBAL",1)
InParty("Nath")~ THEN
@1466 /* ~We all worry, Jaheira. It's nothing to be ashamed of.~ */
== BJAHEIR
@1467 /* ~In case you had not realised, Nathaniel, I was engaged in conversation with <CHARNAME>. I was not looking for your pity.~ */
END
++ @1468 /* ~Scars give character in the end. They define where we have been.~ */ EXTERN BJAHEIR 197
++ @1469 /* ~I do not need to be picking wounds either. There is little alternative to time, though.~ */ EXTERN BJAHEIR 199
++ @1470 /* ~I would not have thought you so weak. What are a few marks here and there?~ */ EXTERN BJAHEIR 201

//Jaheira interjects at Nathaniel's LT9//
INTERJECT BFHNAT NathLT9 FHJaheiravsNath1
== BJAHEIR
IF ~Global("JaheiraRomanceActive","GLOBAL",1)
InParty("Jaheira")~ THEN
@1471 /* ~Tiredness is no excuse, Nathaniel. You should pull yourself together.~ */
== BFHNAT
@1472 /* ~I ... I know that it's a sign of weakness, Jaheira. You don't have to rub it in. Anyway, thank you, <CHARNAME>.~ */
END
++ @1473 /* ~It doesn't matter.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT9_ok
++ @1474 /* ~Anything to help.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT9_anything
++ @1475 /* ~It wasn't exactly a chore.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT9_anything
++ @568 /* ~"Tired"? It seemed a bit more than being tired, if you ask me.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT9_suspicious

//Jaheira interjects at Nathaniel's LT11//
INTERJECT BFHNAT NathLT11 FHJaheiravsNath2
== BJAHEIR
IF ~Global("JaheiraRomanceActive","GLOBAL",1)
InParty("Jaheira")
OR(2)
!InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",1)~ THEN
@1476 /* ~And so you should be. The way that you are behaving to <CHARNAME> is abominable ... pushing him away and then wanting him back.~ */
== BFHNAT
@1477 /* ~Look, Jaheira, I'm feeling terrible as it is and I don't need your criticism! And, what's more, there's something I don't like about the way you've been acting with <CHARNAME>.~ */   
== BJAHEIR
@1478 /* ~Oh? What exactly is it that you do not like?~ */
== BFHNAT
@1479 /* ~You look at us disapprovingly whenever I speak to him. Why-- Unless-- Oh.~ */   
== BJAHEIR
@1480 /* ~I do nothing of the sort, boy, and I do not believe I own him. I merely wish the best for him.~ */
== BFHNAT
@1481 /* ~Then - please, allow me to apologise to him! <CHARNAME>, I'm sorry.~ */
END
++ @1482 /* ~You don't have to apologise. You'd had bad news.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT11_news
++ @627 /* ~So you should be! I'm not the kind of person who'll take being shouted at lying down!~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT11_righteous
++ @1483 /* ~Thanks for the apology, but it's done now.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT11_should

//Jaheira interjects at Nathaniel's LT12//
INTERJECT BFHNAT NathLT12 FHJaheiravsNath3
== BJAHEIR
IF ~Global("JaheiraRomanceActive","GLOBAL",1)
InParty("Jaheira")~ THEN
@1484 /* ~Enough.~ */
== BFHNAT
@1485 /* ~What are you talking about?~ */
== BJAHEIR
@1486 /* ~Nathaniel, kindly cease pressing your attentions on <CHARNAME>. It does no credit to either of you.~ */
== BFHNAT
@1487 /* ~And does you pressing your attentions on him do you any more credit? Honestly, your husband's only just dead and already here you are insinuating yourself into your ward's affections!~ */
== BJAHEIR
@1488 /* ~That is a cheap jibe, Nathaniel, and you are hardly the innocent yourself. While I know that Khalid would wish me to move on I doubt that your lover would be so understanding! And this Latimer ... your superior officer in the Flaming Fist, I believe?~ */
=
@1489 /* ~Enough of this foolishness. There are better things to do than stand about and bicker like children. <CHARNAME>, tell Nathaniel that his affections are not wanted.~ */
END
++ @1490 /* ~Jaheira, I don't think of you as any more or less than a friend. I'm sorry if I gave the wrong impression.~ */ EXTERN BJAHEIR FHJaheira_nathnice
++ @1491 /* ~I will do nothing of the sort! The only "foolishness" is that of you thinking that there was anything between us.~ */ EXTERN BJAHEIR FHJaheira_nathnasty
++ @1492 /* ~Nathaniel, I have strong feelings for Jaheira. Please don't talk to her in that way.~ */ EXTERN BFHNAT FHJaheira_rejectnathnice
++ @1493 /* ~With pleasure! I can't imagine how you could have thought you had a chance with me, Nathaniel!~ */ EXTERN BFHNAT FHJaheira_rejectnathnasty

//Chains//

CHAIN BJAHEIR FHJaheira_nathnice
@1494 /* ~I ... never thought differently. It is just that we had been through so much together. I shall leave you and he to do as you wish.~ */
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
== BFHNAT
@1495 /* ~<CHARNAME>, I'm so sorry about this. So ... how are you?~ */
END
++ @652 /* ~I'm doing fine, thank you. A little tired, but that's usual. Why do you ask?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT12_fine
++ @653 /* ~Not too well, actually. I feel about ready to keel over quite a lot of the time.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT12_bad
++ @654 /* ~I'd prefer not to talk about it, thank you. It's bad enough as it is without discussing it.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT12_notalk
++ @655 /* ~Oh, I'm fine, apart from the confusion and the torture and everything.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT12_tease

CHAIN BJAHEIR FHJaheira_nathnasty
@1496 /* ~In that case, I will stay away from you, <CHARNAME>. Evidently our friendship means little if you think nothing of being so insensitive.~ */
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
== BFHNAT
@1497 /* ~That wasn't a good way of handling that, <CHARNAME>. Well ... it's done now. So how are you?~ */
END
++ @652 /* ~I'm doing fine, thank you. A little tired, but that's usual. Why do you ask?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT12_fine
++ @653 /* ~Not too well, actually. I feel about ready to keel over quite a lot of the time.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT12_bad
++ @654 /* ~I'd prefer not to talk about it, thank you. It's bad enough as it is without discussing it.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT12_notalk
++ @655 /* ~Oh, I'm fine, apart from the confusion and the torture and everything.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ EXTERN BFHNAT NathLT12_tease

CHAIN BFHNAT FHJaheira_rejectnathnice
@1498 /* ~All right. I'll try to be respectful ... for your sake.~ */
== BJAHEIR
@1499 /* ~Thank you, <CHARNAME>. It is kinder to let him down gently now rather than to allow his feelings become stronger.~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",0) SetGlobal("NathMatch","GLOBAL",0) SetGlobal("NathFriendMatch","GLOBAL",1) SetGlobal("NathFriend","GLOBAL",1) SetGlobal("NathFriendTalk","LOCALS",25) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~
EXIT

CHAIN BFHNAT FHJaheira_rejectnathnasty
@1500 /* ~Did I say that I'd like you to want me? Obviously you and her are getting as bad as each other.~ */
== BJAHEIR
@1501 /* ~<CHARNAME>, that was not kind. Still, it is done, I suppose.~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT

//VICONIA CONFLICT//
//Nathaniel interjects at Viconia's LT4//
INTERJECT BVICONI 31 FHNathvsViconia1
== BFHNAT
IF ~InParty("Nath")~ THEN
@1502 /* ~Ugh.~ */   
== BVICONI
@1503 /* ~You look nauseated, male. Perhaps you wish to vomit in a nearby puddle and leave <CHARNAME> and I to our conversation.~ */
== BFHNAT
@1504 /* ~How can you be so brazen? It's disgusting!~ */
== BVICONI
@1505 /* ~Ah, <CHARNAME>, obviously your body makes the men swoon, too.~ */
END
++ @1506 /* ~You find me desirable, do you, Viconia?~ */ EXTERN BVICONI 172
++ @1507 /* ~Nathaniel is right. I don't feel comfortable with you eyeing me like that.~ */ EXTERN BVICONI 173
++ @1508 /* ~I don't have time for such talk, Viconia.  Keep your eyes to yourself.~ */ EXTERN BVICONI 173

//Nathaniel interjects at Viconia's LT5//
INTERJECT BVICONI 32 FHNathvsViconia2
== BFHNAT
IF ~InParty("Nath")
OR(2)
!InParty("Aerie")
Global("AerieRomanceActive","GLOBAL",1)
OR(2)
!InParty("Jaheira")
!Global("AerieRomanceActive","GLOBAL",1)~ THEN
@1509 /* ~Really? I haven't noticed much that's redeeming about you, so it seems you're ill-fitted to speak about humans that way.~ */
== BVICONI
@1510 /* ~If I wished to hear your opinion about this matter, I would grab the nearest young boy and have him strip for you to gain your attention.~ */
== BFHNAT
@1511 /* ~You - you--~ */
== BVICONI
@1512 /* ~As it is, my words are for <CHARNAME>'s ears alone.~ */
END
++ @1513 /* ~I agree with Nathaniel.  Your comments on the worthlessness of humans don't ring true when there's few enough qualities to redeem a drow.~ */ EXTERN BVICONI 178
++ @1514 /* ~You shouldn't judge the worth of humans based on the few you have had experience of.~ */ EXTERN BVICONI 179

//Nathaniel interjects at Viconia's LT8//
INTERJECT BVICONI 62 FHNathvsViconia3
== BFHNAT
IF ~Global("NathRomanceActive","GLOBAL",1)
InParty("Nath")
OR(2)
!InParty("Aerie")
!Global("AerieRomanceActive","GLOBAL",1)
OR(2)
!Global("JaheiraRomanceActive","GLOBAL",1)
!InParty("Jaheira")~ THEN
@1515 /* ~So what's new? <CHARNAME>, how can you let this witch treat you like this? As if her motives weren't obvious.~ */
== BVICONI
@1516 /* ~And what of your motives, male? I see you slavering at <CHARNAME>'s heels like a lowly mongrel when you think he is not watching. You smile and simper, but there is no hope for you.~ */
== BFHNAT
@1517 /* ~As if there was any for you. <CHARNAME> is a good man, and he won't fall prey to your lust.~ */
== BVICONI
@1518 /* ~But what if he wishes it, barbarian? Did you not consider that? And again I say: consider how "pure" your intentions to him are.~ */
== BFHNAT
@1519 /* ~You disgust me.~ */
== BVICONI
@1520 /* ~And you do the same. In any case, I was speaking to <CHARNAME>. There is the matter of ... my apology.~ */
END
++ @1521 /* ~You treat everyone else like dirt, why should I be any different?~ */ EXTERN BVICONI 209
++ @1522 /* ~Don't worry about it, Viconia.~ */ EXTERN BVICONI 209
++ @1523 /* ~Nathaniel's right: you're a bitch, plain and simple.  Now get lost.~ */ EXTERN BVICONI 211

//Nathaniel interjects at Viconia's LT10//
INTERJECT BVICONI 64 FHNathvsViconia4
== BFHNAT
IF ~Global("NathRomanceActive","GLOBAL",1)
InParty("Nath")~ THEN
@1524 /* ~<CHARNAME>, be careful. She's obviously about to get her claws into you.~ */
== BVICONI
@1525 /* ~Ah, the mouse decides to squeak once more. Leave us be.~ */
== BFHNAT
@1526 /* ~No, I won't leave you be. <CHARNAME>, please listen to me. This woman isn't right for you. She ... she reeks of evil, and she'll corrupt you.~ */
== BVICONI
@1527 /* ~But the process of corruption is so very enjoyable! In any case, anyone can tell that you have a very different sort of corruption in mind. Do you plan to have your way with him on the road, or will you wait for an inn?~ */
== BFHNAT
@1528 /* ~<CHARNAME>--~ */
== BVICONI
@1529 /* ~This grows dull. Tell this male that you have no desire for him and we can be on with our conversation.~ */
END
++ @1530 /* ~Leave him alone, Viconia. I enjoy Nathaniel's company more than I do yours.~ */ EXTERN BFHNAT FHNathVic_nath
++ @1531 /* ~Look, I like spending time with Nathaniel, and that's all I can say.~ */ EXTERN BFHNAT FHNathVic_nath
++ @1532 /* ~Can't we come to some ... arrangement about this? You're both very attractive people.~ */ EXTERN BFHNAT FHNathVic_threesome
++ @1533 /* ~I don't feel attracted to Nathaniel, certainly - not in that way.~ */ EXTERN BFHNAT FHNathVic_nathreject
++ @1534 /* ~He is rather annoying, isn't he?~ */ EXTERN BFHNAT FHNathVic_nathreject

//Viconia interjects at Nathaniel's LT9//
INTERJECT BFHNAT NathLT9_suspicious FHVicvsNath3
== BVICONI
IF ~Global("ViconiaRomanceActive","GLOBAL",1)
InParty("Viconia")~ THEN
@1535 /* ~More than likely, he was tired from excessive caresses from his hand when thinking of you.~ */
END

//Viconia interjects at Nathaniel's L10//
INTERJECT BFHNAT NathLT10 FHVicvsNath4
== BVICONI
IF ~Global("ViconiaRomanceActive","GLOBAL",1) InParty("Viconia")~ THEN
@1536 /* ~You wish to speak with him again? By Shar, you are insistent!~ */
== BFHNAT
@1537 /* ~Insistence has nothing to do with it! Please leave me alone!~ */   
== BVICONI
@1538 /* ~I will not leave you be, male. Your lust is transparent, and offends my gaze.~ */
== BFHNAT
@1539 /* ~My *lust*? You're so--~ */
== BVICONI
@1540 /* ~I speak merely of what I observe. This is becoming tiresome. <CHARNAME>, inform the toha'vithanna that you hold no desire for him.~ */
END
++ @1530 /* ~Leave him alone, Viconia. I enjoy Nathaniel's company more than I do yours.~ */ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~ EXTERN BFHNAT FHVicNath_nath
++ @1531 /* ~Look, I like spending time with Nathaniel, and that's all I can say.~ */ EXTERN BFHNAT FHVicNath_nath
++ @1532 /* ~Can't we come to some ... arrangement about this? You're both very attractive people.~ */ EXTERN BFHNAT FHNathVic_threesome
++ @1533 /* ~I don't feel attracted to Nathaniel, certainly - not in that way.~ */ EXTERN BFHNAT FHVicNath_nathreject
++ @1534 /* ~He is rather annoying, isn't he?~ */ EXTERN BFHNAT FHVicNath_nathreject

//chains for rejecting Viconia or Nathaniel//
CHAIN BFHNAT FHVicNath_nath
@1541 /* ~Thank you! Now I can get on with what I was saying!~ */
END
++ @1542 /* ~What's on your mind?~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT10_talk
++ @1543 /* ~If you must.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT10_talk
++ @1544 /* ~Look, we don't have time at the moment.~ */ DO ~RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",2400) IncrementGlobal("NathLoveTalk","LOCALS",1)~ + NathLT10_notalk

CHAIN BFHNAT FHVicNath_nathreject
@1545 /* ~Fine. Now I know not to expect any sort of friendship from you.~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
EXIT

CHAIN BFHNAT FHNathVic_nath
@929 /* ~Thank you, <CHARNAME>.~ */
== BVICONI
@1546 /* ~Ha! So you are a lover of males also. Well, when this male's charms begin to pale, do not seek me for better pleasures.~ */
DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~
EXIT

CHAIN BFHNAT FHNathVic_threesome
@1547 /* ~That's disgusting, <CHARNAME>. If you think I'd stoop to such things, you're wrong!~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
== BVICONI
@1548 /* ~And if you think that *I* would stoop to sharing my bed with two cavorting males, then you are grievously mistaken. Enjoy your time alone, <CHARNAME>, for you will have only your hand for company.~ */
DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3)~
== BAERIE IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",1)~ THEN
@1549 /* ~H-how could you suggest such a thing! You're not the man I thought you were, <CHARNAME>!~ */
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
== BJAHEIR IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",1)~ THEN
@1550 /* ~I do not know what you were thinking by that, but perhaps you are not as sensible as I thought you were.~ */
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
EXIT

CHAIN BFHNAT FHNathVic_nathreject
@1551 /* ~Did I even say that I liked you in that way? Now *you're* seeing things that aren't there.~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",3)~
== BVICONI
@1552 /* ~Excellent. That male was becoming tiresome. Now, I believe you were about to tell me whether you had been with anybody special.~ */
END
++ @1553 /* ~If there were I certainly wouldn't tell you, Viconia.~ */ EXTERN BVICONI 67
++ @1554 /* ~I don't know. So far there hasn't been.~ */ EXTERN BVICONI 65
++ @1555 /* ~We don't have time to discuss this now.~ */ EXTERN BVICONI 232

//INTERJECTIONS FOR FT14//

//Anomen

INTERJECT BFHNAT NathFT14 FHLGAnoFT14
== ANOMENJ
IF ~OR(2)
Alignment("Anomen",LAWFUL_NEUTRAL)
Alignment("Anomen",LAWFUL_GOOD)
InParty("Anomen")
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)~ THEN
@1556 /* ~Nathaniel?! What do you mean by touching <CHARNAME> in such a fashion? By Helm, I would be tempted to challenge you for her honour were we not in her company!~ */
== FHNATJ
@1557 /* ~No - no, Anomen, I--~ */
DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~
== ANOMENJ
@1558 /* ~Yes? I am waiting for an explanation, and it had better be satisfactory!~ */
== FHNATJ
@1559 /* ~Please - Anomen - it wasn't - I was dreaming and when I woke I felt I was - was going to panic, and she was there ... I didn't know what was going on!~ */
=
@1560 /* ~I'd never try to steal her from you, Anomen, I swear it by Helm! I know how important she is to you!~ */
== ANOMENJ
@1561 /* ~You would swear on Helm's name...? Then I must believe you, but it does not ease the rage I felt when I saw you - you--~ */
== FHNATJ
@1562 /* ~Don't-- I'm sorry. I'm sorry to both of you. It's just that I was - I was so terrified--~ */
== ANOMENJ
@1563 /* ~I ... I see.~ */
=
@1564 /* ~Sometimes our ... emotions are too much in control. Perhaps you should try to control yours - as will I.~ */
== FHNATJ
@1565 /* ~Thank you ... I'm sorry, so sorry.~ */
EXIT

INTERJECT BFHNAT NathFT14 FHCNAnoFT14
== ANOMENJ
IF ~Global("AnomenIsNotKnight","GLOBAL",1)
InParty("Anomen")
OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)~
@1566 /* ~Nathaniel! What did you mean by assaulting <CHARNAME> in such a fashion?!~ */
== FHNATJ
@1567 /* ~... No, Anomen ... it wasn't what you think--~ */
DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~
== ANOMENJ
@1568 /* ~A worthless explanation! I demand satisfaction for this slight!~ */
END
++ @1569 /* ~Boys will be boys, I suppose. Go on, have your fight.~ */ EXTERN FHNATJ FHNathAno_goon
++ @1570 /* ~Stop this, Anomen! Nathaniel meant nothing of the kind!~ */ EXTERN ANOMENJ FHAno_nothing
++ @1571 /* ~Nathaniel, get away from me. My affections are for Anomen, not for you.~ */ EXTERN FHNATJ FHAno_affection
++ @1572 /* ~Both of you, stop it. I'm not allowing stupidity like this in my group.~ */ EXTERN ANOMENJ FHAno_nothing

CHAIN FHNATJ FHNathAno_goon
@1573 /* ~No, I don't want this--~ */
== ANOMENJ
@1574 /* ~Silence. You have been fawning over my lady for far too long!~ */
DO ~SetGlobal("NathFriend","GLOBAL",2) SetGlobal("FHAnoFight","GLOBAL",1)~
EXIT

CHAIN ANOMENJ FHAno_nothing
@1575 /* ~Very well, I will stop at your word. But if this man approaches you again I cannot vouch for my actions!~ */
== BFHNAT
@1576 /* ~Of ... of course, I'll leave you alone. I'm so sorry, <CHARNAME>...~ */
DO ~SetGlobal("NathFriend","GLOBAL",2)
SetGlobal("FHAnoConflict","GLOBAL",1)~
EXIT

APPEND FHNATJ

IF ~~ THEN BEGIN FHAno_affection
SAY @1577 /* ~Of - of course. I know that, I'd never-- I'll leave you alone. I'm so sorry, <CHARNAME>...~ */
IF ~~ THEN DO ~SetGlobal("NathFriend","GLOBAL",2)
SetGlobal("FHAnoConflict","GLOBAL",1)~
EXIT
END
END

//Viconia

INTERJECT BFHNAT NathFT14 FHVicFT14
== VICONIJ
IF ~InParty("Viconia")
OR(2)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN
@1578 /* ~So, your lust is revealed. Wipe your saliva from <CHARNAME>'s face, weak one.~ */
== BFHNAT
@1579 /* ~It wasn't like that--~ */
DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~
== VICONIJ
@1580 /* ~Silence. Keep your hands to yourself in future lest I remove them, along with sundry other parts.~ */
EXIT

//Aerie
INTERJECT BFHNAT NathFT14 FHAerieFT14
== AERIEJ
IF ~InParty("Aerie")
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)~ THEN
@1581 /* ~N-Nathaniel! What were you doing?! I thought you were a good man, but you know that <CHARNAME> - <CHARNAME> means a great deal to me!~ */
DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~
== BFHNAT
@1582 /* ~Aerie, I swear I didn't mean--~ */
== AERIEJ
@1583 /* ~So what was going on?~ */
== BFHNAT
@1584 /* ~Aerie, I was dreaming, I didn't know what was going on and he was there, I swear I didn't mean - I would never approach a man who was with another person in that way!~ */
== AERIEJ
@1585 /* ~Hmmph. Well ... I am certainly not happy about it, but I do know that you would not try to hurt me like that. I s-suppose it was a mistake, but make sure that it does not happen again.~ */
EXIT

//Jaheira
INTERJECT BFHNAT NathFT14 FHJaheiraFT14
== JAHEIRAJ
IF ~InParty("Jaheira")
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@1586 /* ~Nathaniel, I can see that you are not in full possession of your senses, but it would be well for you to control yourself.~ */
== BFHNAT
@1587 /* ~I ... I know. And, and I would never try to steal any man from someone he cared about--~ */
DO ~SetGlobalTimer("FHBryceArrive","GLOBAL",ONE_DAY) IncrementGlobal("NathFriendTalk","LOCALS",1) RealSetGlobalTimer("NathFriendTalkTime","GLOBAL",3600)~
== JAHEIRAJ
@1588 /* ~Stop stammering, Nathaniel. However, as ... as attached as I am to <CHARNAME>, I must ask you whether you have such feelings for him. It would be ... unwise of us to continue like this without knowing.~ */
== BFHNAT
@1589 /* ~No, of course not! He's a friend! And I'd never dream of trying to approach-- I know that what the two of you have is very special--~ */
== JAHEIRAJ
@1590 /* ~Then let us not speak of it. There are far more important things to occupy ourselves with than what you happen to do in your nightmares.~ */
EXIT

//Interparty banters//

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!Global("AerienolikeNath","GLOBAL",1)
Global("FHAerieTalk1","GLOBAL",0)~ THEN BFHNAT FHAerie1
@1591 /* ~You seem very fond of Quayle.~ */
DO ~SetGlobal("FHAerieTalk1","GLOBAL",1)~
== BAERIE
@1592 /* ~Oh, yes, of course! He helped me so much when ... when things were bad.~ */
== BFHNAT
@1593 /* ~Why didn't you stay with him?~ */
== BAERIE
@1594 /* ~I would have, but... I sometimes miss the circus, but I have such h-horrible memories from it. I am glad to be with <CHARNAME> instead of there.~ */
== BFHNAT
@1595 /* ~I think I know what you mean.~ */
== BAERIE
@1596 /* ~What memories do you have, then, Nathaniel?~ */
== BFHNAT
@1597 /* ~Nothing so painful as yours. The corruption of someone who meant a lot to me.~ */
== BAERIE
@1598 /* ~Oh, b-but that's awful! I wish there was something I could do.~ */
== BFHNAT
@1599 /* ~I'm with <CHARNAME> now. It's in the past.~ */
== BAERIE
@1600 /* ~I didn't m-mean to offend you.~ */
== BFHNAT
@1601 /* ~No, you didn't at all. It's nice to talk to someone.~ */
== BAERIE
@1602 /* ~It is, isn't it?~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
!Global("AerienolikeNath","GLOBAL",1)
Global("FHAerieTalk2","GLOBAL",0)~ THEN BAERIE FHAerie2
@1603 /* ~Nathaniel, could you tell me of Baldur's Gate?~ */
DO ~SetGlobal("FHAerieTalk2","GLOBAL",1)~
== BFHNAT
@1604 /* ~Of course. What would you like to know?~ */   
== BAERIE
@1605 /* ~Oh ... anything. I haven't been to many cities.~ */
== BFHNAT
@1606 /* ~Well, it's more crowded than Athkatla--~ */
== BAERIE
@1607 /* ~R-really?~ */
== BFHNAT
@1608 /* ~Yes, it can be confusing. When I first started exploring I couldn't find my way. The buildings are taller and more squashed then Athkatla, and greyer.~ */
== BAERIE
@1609 /* ~It doesn't sound very nice.~ */
== BFHNAT
@1610 /* ~But when the sun shines the towers and palaces are so colourful, the light reflects off them and they're so beautiful.~ */
== BAERIE
@1611 /* ~Oh, Nathaniel, the way you talk makes me want to see it! But there must be - you know - bad places?~ */
== BFHNAT
@1612 /* ~Yes.~ */
== BAERIE
@1613 /* ~But couldn't you have done something? You were a member of the F-Flaming Fist - didn't you - couldn't you have done anything?~ */
== BFHNAT
@1614 /* ~Not without orders.~ */
== BAERIE
@1615 /* ~So you would leave a circus that t-tortures people, because you did not get orders?~ */
== BFHNAT
@1616 /* ~No! Well, yes. I don't know! I'll have to think about that.~ */
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!Global("AerienolikeNath","GLOBAL",1)
Global("FHAerieTalk3","GLOBAL",0)~ THEN BFHNAT FHAerie3
@1617 /* ~Aerie, I--~ */
DO ~SetGlobal("FHAerieTalk3","GLOBAL",1)~
== BAERIE
@1618 /* ~What is it? Are you hurt?~ */
== BFHNAT
@1619 /* ~No, I'm fine. I just - I'd like you to know that I admire you.~ */
== BAERIE
@1620 /* ~W-why? I don't understand.~ */
== BFHNAT
@1621 /* ~You've been through so much, and you're still standing. That's something to admire.~ */
== BAERIE
@1622 /* ~I ... thank you, but it's really Baervan who gives me strength. Do you worship a god, Nathaniel?~ */
== BFHNAT
@1623 /* ~No. I mean, not really - I respect quite a few of them.~ */
== BAERIE
@1624 /* ~Perhaps you should try.~ */
== BFHNAT
@1625 /* ~I'm not sure it would work, Aerie. I don't know - I'm more one for the ordinary.~ */
== BAERIE
@1626 /* ~Well, I shall say a prayer for you when we next sleep. Th-thank you for your kind words.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
!Global("AerienolikeNath","GLOBAL",1)
Global("FHAerieTalk4","GLOBAL",0)~ THEN BAERIE FHAerie4
@1627 /* ~N-Nathaniel?~ */
DO ~SetGlobal("FHAerieTalk4","GLOBAL",1)~
== BFHNAT
@493 /* ~Yes?~ */
== BAERIE
@1628 /* ~I - I'd noticed you looked a little pale in the last battle. Are - are you quite all right?~ */
== BFHNAT
@1629 /* ~I am now. I just - sometimes I get overwhelmed, and...~ */   
== BAERIE
@1630 /* ~And...?~ */
== BFHNAT
@1631 /* ~I panic.~ */
== BAERIE
@1632 /* ~Don't look so upset, Nathaniel! There's nothing wrong with being scared. I get s-scared a lot, but I know that our friends are here to help us.~ */
== BFHNAT
@1633 /* ~I know it, too. It's something I can't help, I'm afraid.~ */
== BAERIE
@1634 /* ~Well, I-I'd like you to know that I'll do anything I can to try to help you not to panic.~ */
== BFHNAT
@1635 /* ~I ... Thank you, Aerie. That's really-- Thank you.~ */
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("AerienolikeNath","GLOBAL",1)
Global("HaerDalisRomanceActive","GLOBAL",2)
Global("NathAerieReconcile","GLOBAL",0)~ THEN BFHNAT FHAerieReconcile
@1636 /* ~Aerie? I ... how are you?~ */   
DO ~SetGlobal("NathAerieReconcile","GLOBAL",1)
SetGlobal("AerienolikeNath","GLOBAL",0)~
== BAERIE
@1637 /* ~I am well, thank you.~ */
== BFHNAT
@1638 /* ~I ... I couldn't help noticing that you were spending a lot of time with Haer'Dalis. Does this ... I mean...~ */
== BAERIE
@1639 /* ~What?~ */
== BFHNAT
@1640 /* ~Sorry. What I meant was, does this mean we can be friends again? I know that you think I stole <CHARNAME>'s attention from you, and I'm sorry. But I didn't mean any malice, and I still think you're a very good person.~ */
== BAERIE
@1641 /* ~I ... I don't know, Nathaniel. But Haer'Dalis has made me very happy ... maybe more happy than <CHARNAME> could have. So ... so thank you for saying.~ */
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("AerienolikeNath","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("AerieNathReconcile","GLOBAL",0)~ THEN BFHNAT FHAerieReconcile2
@1642 /* ~Aerie? Um ... I wanted to apologise.~ */
DO ~SetGlobal("AerieNathReconcile","GLOBAL",1)
SetGlobal("AerienolikeNath","GLOBAL",0)~
== BAERIE
@1643 /* ~Wh-what for?~ */
== BFHNAT
@1644 /* ~For what I said to you. It wasn't fair, and I can see that you ... and <CHARNAME> ... are happy together. It was wrong of me to think that you wouldn't be.~ */
== BAERIE
@1645 /* ~That - that's a nice thing to say. I - I am sorry, too. I did not think what pain my words might cause.~ */
== BFHNAT
@1646 /* ~Then - we can be friends?~ */
== BAERIE
@1647 /* ~I would like that, Nathaniel.~ */
== BFHNAT
@1648 /* ~So would I.~ */
EXIT

//Anomen

CHAIN
IF ~Global("FHAHurt","GLOBAL",1) CombatCounter(0)~ THEN ANOMENJ FHNathHurt
@1649 /* ~Nathaniel, you are wounded!~ */
DO ~SetGlobal("FHAHurt","GLOBAL",2)~
== BFHNAT
@1650 /* ~Y-yes ... please could you help?~ */
= ANOMENJ
DO ~ForceSpell("Nath",CLERIC_CURE_MEDIUM_WOUNDS)~
EXIT

CHAIN
IF ~Global("FHAnomenSympathy","GLOBAL",1)~ THEN FHNATJ FHAnomenSympathy
@1652 /* ~I'm so sorry about Moira, Anomen--~ */
DO ~SetGlobal("FHAnomenSympathy","GLOBAL",2)~
== ANOMENJ
@1653 /* ~Sorry?! My sister is dead! I do not want to hear your incessant whining!~ */
== FHNATJ
@1654 /* ~I was not whining, I was just--~ */
== ANOMENJ
@1655 /* ~Bah! Leave me be!~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
GlobalTimerExpired("FHAnoSorry","GLOBAL")
Global("FHAnomenSympathy","GLOBAL",2)
GlobalGT("AnomenDecide","GLOBAL",1)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)~ THEN BANOMEN FHAnomenSympathy2
@1656 /* ~I wish to apologise for my behaviour before, Nathaniel. You were sympathetic and I was inexcusably rude.~ */
DO ~SetGlobal("FHAnomenSympathy","GLOBAL",3)~
== BFHNAT
@1657 /* ~It's understandable. Really, it's fine.~ */
== BANOMEN
@1658 /* ~If you are sure?~ */
== BFHNAT
@1659 /* ~I'm sure.~ */
== BANOMEN
@1660 /* ~Thank you, truly.~ */
== BFHNAT
@1661 /* ~Though ... you are very, uh, rather irritable sometimes.~ */
== BANOMEN
@1662 /* ~That - that I am, I admit. I have an angry soul that I cannot deny. It pains me to say so but it is the truth.~ */
== BFHNAT
@1663 /* ~You can deny it. You did with your father, didn't you? You know what is right, and you can do it!~ */
== BANOMEN
@1664 /* ~Perhaps it is so, my friend. But words cannot change what lurks within me.~ */
== BFHNAT
@1665 /* ~For your sake, I hope you see that you're wrong one day.~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("FHAnoTalkPreTest","GLOBAL",0)~ THEN BFHNAT FHAnomen1
@1666 /* ~I'm sorry if I've done something to offend you, but I really didn't mean to.~ */   
DO ~SetGlobal("FHAnoTalkPreTest","GLOBAL",1)~
== BANOMEN
@1667 /* ~You have done nothing to offend me.~ */
== BFHNAT
@1668 /* ~Then what is it? I'm not stupid - please, tell me what I've done wrong?~ */
== BANOMEN
@1669 /* ~It is just that my father ... always said that men lying with men is a heinous thing. The Order disapproves also, though of course it is less ... vocal than he.~ */
== BFHNAT
@1670 /* ~I see.~ */
== BANOMEN
@1671 /* ~The fool's teachings die hard.~ */
== BFHNAT
@1672 /* ~You ... don't have to be uncomfortable around me. We're probably ... probably more alike than you think.~ */
== BANOMEN
@1673 /* ~I doubt that very much.~ */
== BFHNAT
@1674 /* ~All right, don't worry about it.~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("FHAnoTalkPreTest","GLOBAL",1)~ THEN BFHNAT FHAnomen2
@1675 /* ~Look, you needn't keep giving me those sidelong looks. I'm not going to jump on you and drag you off to bed.~ */   
DO ~SetGlobal("FHAnoTalkPreTest","GLOBAL",2)~
== BANOMEN
@1676 /* ~I fear nothing of the sort. You puzzle me, that is all. I do not understand how one like yourself could have been a member of the guards.~ */
== BFHNAT
@1677 /* ~I didn't know I was "like myself" when I was posted, Anomen. And when it happened, no one really cared. I'd be grateful if you did me the same courtesy.~ */
== BANOMEN
@1678 /* ~I did not mean discourtesy. I was merely curious.~ */
== BFHNAT
@1679 /* ~And I'm sorry for being edgy about it. Sometimes people are ... unpleasant about it.~ */
== BANOMEN
@1680 /* ~Do not insult me by thinking that I am one of those people. I judge on righteous actions, not on blood or anything else.~ */
== BFHNAT
@643 /* ~Thank you.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("FHAnoTalkPreTest","GLOBAL",2)~ THEN BANOMEN FHAnomen3
@1681 /* ~When you lived in Baldur's Gate why did you not turn your skill to a higher service, such as serving Helm or Torm? You would have done more to fight evil there than hauling drunkards off the streets.~ */
DO ~SetGlobal("FHAnoTalkPreTest","GLOBAL",3)~
== BFHNAT
@1682 /* ~Maybe, but I don't think so. It's not just the evil I fight, it's the people I protect. That's what I should be doing.~ */   
=
@1683 /* ~My father's family were all in the Fist, too. It's a tradition, and it wouldn't have felt right going against it.~ */
== BANOMEN
@1684 /* ~Aye. My father wanted me to take over his business but I am not that manner of man. When I did not, he refused to help me enter the Order ... but my mother helped me enter Helm's graces.~ */
== BFHNAT IF ~Global("TalkedCor","GLOBAL",1)~ THEN
@1685 /* ~I'm so sorry, Anomen. It's shameful that you had to live with someone like him.~ */
== BANOMEN IF ~Global("TalkedCor","GLOBAL",1)~ THEN
@1686 /* ~It is in the past now.~ */
== BFHNAT IF ~Global("TalkedCor","GLOBAL",1)~ THEN
@1687 /* ~Still, it's nice to find out more about you. Maybe we can talk later?~ */
== BFHNAT IF ~Global("TalkedCor","GLOBAL",0)~ THEN
@1688 /* ~Does she still live with your father?~ */
== BANOMEN IF ~Global("TalkedCor","GLOBAL",0)~ THEN
@1689 /* ~Nay, she is dead.~ */
== BFHNAT IF ~Global("TalkedCor","GLOBAL",0)~ THEN
@1690 /* ~Oh, I'm sorry if I brought back bad memories ... I ... my mother died, too, but I hardly remember her. I was only a baby. It's ... it's nice to find out more about you, though. Maybe we can talk later?~ */
== BANOMEN
@1691 /* ~I would find that agreeable.~ */
EXIT

CHAIN
IF
~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHAnoTalkPreTest","GLOBAL",3)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("TalkAvery","GLOBAL",0)~ THEN BANOMEN FHAnomen4
@1692 /* ~Nathaniel, you look troubled.~ */
DO ~SetGlobal("FHAnoTalkPreTest","GLOBAL",4)~
== BFHNAT
@1693 /* ~It's ... nothing different. I - well, I'm worried that even here I'm not doing the right thing. I feel directionless sometimes, and it ... rather scares me.~ */   
== BANOMEN
@1694 /* ~You have always had direction in life, then?~ */
== BFHNAT IF ~Global("TalkAvery","GLOBAL",0)~ THEN
@1695 /* ~Well, yes. Growing up I knew where I was heading, and then in the Fist I had orders. Even afterwards I promised myself I'd find Latimer, and though that's still important to me I don't know if I'm doing what I should be doing.~ */
== BFHNAT IF ~Global("TalkAvery","GLOBAL",1)~ THEN
@1696 /* ~Well, yes. Growing up I knew where I was heading, and then in the Fist I had orders. I promised myself I'd find Latimer, but ... that's come to nothing. I don't know if I'm doing what I should be doing.~ */
== BANOMEN
@1697 /* ~With <CHARNAME> you have direction, surely. Alone, you are just one man. But as part of a larger scheme we can do much more.~ */
== BFHNAT
@1698 /* ~But do you think it's all the right thing?~ */
== BANOMEN
@1699 /* ~Worry less, Nathaniel ... you will do what is right.~ */
== BFHNAT
@1700 /* ~So will you! You're an honourable man and you will achieve what you want.~ */
== BANOMEN
@1701 /* ~Let us not speak of this, I pray. It leaves me agitated.~ */
== BFHNAT
@1702 /* ~Fine. But I believe in you even if you don't.~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("FHAnoTalkPreTest","GLOBAL",4)~ THEN BFHNAT FHAnomen5
@1703 /* ~Anomen, I've seen you worrying over getting into the Order. You really shouldn't.~ */   
DO ~SetGlobal("FHAnoTalkPreTest","GLOBAL",5)~
== BANOMEN
@1704 /* ~And what of you? Often you seem afraid to speak. Confidence is essential to gaining respect and being the best leader.~ */
== BFHNAT
@1705 /* ~I ... I know. And I know that if I'm pressed I'm fine. Ha, maybe I should take my own advice.~ */
== BANOMEN
@1706 /* ~Indeed. Still ... I thank you. I will try to remain vigilant.~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
Global("FHAnoKnight","GLOBAL",0)~ THEN BFHNAT FHAnoKnight1
@1707 /* ~Anomen, it's a wonder to see you so much happier. I'm so glad of it!~ */   
DO ~SetGlobal("FHAnoKnight","GLOBAL",1)~
== BANOMEN
@1708 /* ~So am I. Thanks to <CHARNAME>'s support I am where I should be.~ */
== BFHNAT IF ~Global("FHAnomenDecide","GLOBAL",0)~ THEN
@1709 /* ~Well, <PRO_HESHE> gives good advice. You deserve to get some reward after going through so much.~ */
== BANOMEN IF ~Global("FHAnomenDecide","GLOBAL",0)~ THEN
@1710 /* ~I thank you for your words.~ */
== BFHNAT IF ~!Global("FHAnomenDecide","GLOBAL",0)~ THEN
@1711 /* ~Hey! What about my support, hmm?~ */
== BANOMEN IF ~!Global("FHAnomenDecide","GLOBAL",0)~ THEN
@1712 /* ~I meant no slight, Nathaniel, and if you are going to take it in that fashion--~ */
== BFHNAT IF ~!Global("FHAnomenDecide","GLOBAL",0)~ THEN
@1713 /* ~Anomen, Anomen! I was just joking.~ */
== BANOMEN IF ~!Global("FHAnomenDecide","GLOBAL",0)~ THEN
@1714 /* ~Hmph. Well, do not make such jests in future.~ */
== BFHNAT IF ~!Global("FHAnomenDecide","GLOBAL",0)~ THEN
@1715 /* ~Fair enough.~ */
== BANOMEN IF ~!Global("FHAnomenDecide","GLOBAL",0)~ THEN
@1716 /* ~Thank you for your words, though.~ */
== BFHNAT
@1717 /* ~Anytime.~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
Global("FHAnoKnight","GLOBAL",1)~ THEN BFHNAT FHAnoKnight2
@1718 /* ~Anomen? I want you to know that I admire your devotion to Helm.~ */   
DO ~SetGlobal("FHAnoKnight","GLOBAL",2)~
== BANOMEN
@1719 /* ~And so it should be. Helm is my life and it is my duty to be devoted.~ */
== BFHNAT
@1720 /* ~No, I mean that I think it's admirable to give yourself to a cause like that.~ */
== BANOMEN
@1721 /* ~It is what keeps me going, certainly. And you? What cause do you give yourself to?~ */
== BFHNAT
@1722 /* ~(sigh) I wish I had one. It seems to make everything a lot easier.~ */
== BANOMEN
@1723 /* ~Doubt is a spectre in your life, Nathaniel. You must dispel it lest it wear you down.~ */
== BFHNAT
@1724 /* ~It seems that way. I don't know ... I want things to be secure, and the law to be upheld, but beyond that...~ */
== BANOMEN
@1725 /* ~Those are similar goals to the doctrine of Helm. I think that you have a cause, but you do not realise it.~ */
== BFHNAT
@1726 /* ~That makes me feel better, actually. Thank you.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
!Global("FHAnoConflict","GLOBAL",1)
Global("FHCNAnomen","GLOBAL",0)~ THEN BANOMEN FHCNAnomen1
@1727 /* ~Nathaniel, why do you look so anxious whenever I am near? Surely you must realise that I pose no danger to you?~ */
DO ~SetGlobal("FHCNAnomen","GLOBAL",1)~
== BFHNAT
@1728 /* ~Um ... no, it's nothing.~ */   
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!Global("FHAnoConflict","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",1)
Global("FHCNAnomen","GLOBAL",2)~ THEN BFHNAT FHCNAnomen2
@1729 /* ~Um ... Anomen, how are you doing?~ */   
DO ~SetGlobal("FHCNAnomen","GLOBAL",2)~
== BANOMEN
@1730 /* ~I am feeling much better for the loss of those pompous fools at the Order!~ */
== BFHNAT
@1731 /* ~But ... it was what you wanted...~ */
== BANOMEN
@1732 /* ~Yes, that is true. But one does not always want what is best. Now that I am free from their dictates, I am a new man.~ */
== BFHNAT
@1733 /* ~...yes...~ */
== BANOMEN
@1734 /* ~Why so downcast? Ah, I know something that will cheer you. At the next inn, I can introduce you to the wines of this country!~ */
== BFHNAT
@1735 /* ~...no, thank you. I don't drink.~ */
== BANOMEN
@1736 /* ~Then it is a grand time to start. With wine you will shed that dour expression of yours!~ */
== BFHNAT
@1737 /* ~Anomen - please. I don't like to drink.~ */
== BANOMEN
@1738 /* ~Fair enough, fair enough.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
OR(3)
Global("NathRomanceActive","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)
Global("NathFriend","GLOBAL",1)
!Global("FHAnoConflict","GLOBAL",1)
Global("FHCNAnomen","GLOBAL",2)~ THEN BANOMEN FHCNAnomen3
@1739 /* ~Nathaniel, tell me what I have done to offend you.~ */
DO ~SetGlobal("FHCNAnomen","GLOBAL",3)~
== BFHNAT
@1740 /* ~Look. After you didn't pass your test, you've been-- you've been different.~ */   
== BANOMEN
@1741 /* ~But that is a good thing. I am free of the Order and their absurd teachings of denying oneself the pleasures that one desires.~ */
== BFHNAT
@1742 /* ~No. It's not a good thing. And now that you're like this ... I just ... it makes me uncomfortable.~ */
== BANOMEN
@1743 /* ~But why? The way you spoke to me, it seemed as though you wished me to grow in confidence - and so I have, now that my life is unconfined.~ */
== BFHNAT
@1744 /* ~No! That's not what I meant at all!~ */
=
@1745 /* ~I'm sorry. I didn't mean to shout. You remind-- you remind me of Latimer, when he was-- That's all.~ */
== BANOMEN
@1746 /* ~How dare you compare me to that common thief!~ */
== BFHNAT
@1747 /* ~Oh. Look, just-- Excuse me.~ */
EXIT

//Cernd

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHCerndWifeTalk","GLOBAL",0)
Global("TalkedToCerndNanny","GLOBAL",1)~ THEN BFHNAT FHCerndWife
@1748 /* ~I'm ... I'm so sorry about your wife.~ */   
DO ~SetGlobal("FHCerndWifeTalk","GLOBAL",1)~
== BCERND
@1749 /* ~I thank you for your condolence, Nathaniel.~ */
== BFHNAT
@1750 /* ~If it's any consolation, I really don't think you did wrong.~ */
== BCERND
@437 /* ~What do you mean?~ */
== BFHNAT
@1751 /* ~She said she was all right with you leaving. How could you have known that all of this would happen?~ */
== BCERND
@1752 /* ~Well, that is what I thought, but those I have spoken with think otherwise. I should have been able to balance my duty to nature and my duty to my family. I thought I was serving nature, but in fact I was the one who was out of balance.~ */
== BFHNAT
@1753 /* ~Who cares about the balance? You didn't know!~ */
== BCERND
@1754 /* ~I know that your words are meant to allay my doubts, but I fear that there is little comfort in them.~ */
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHCerndTalk1","GLOBAL",0)
AreaType(FOREST)~ THEN BFHNAT FHCernd1
@1755 /* ~A...a...achoo!~ */
DO ~SetGlobal("FHCerndTalk1","GLOBAL",1)~
== BCERND
@1756 /* ~Are you quite well, Nathaniel?~ */
== BFHNAT
@1757 /* ~I...achoo!...I'm fine...~ */
== BCERND
@1758 /* ~Ah, I understand now. You are out of harmony with the natural world.~ */
== BFHNAT
@1759 /* ~Well, I spent most of my time in Baldur's Gate when I was young ... achoo! ... Maybe that has something to do with it.~ */
== BCERND
@1760 /* ~Hmm, this is a grievous affliction indeed. Do you suffer from other problems like it?~ */
== BFHNAT
@1761 /* ~If I'm around cats too much, I sneeze.~ */
== BCERND
@1762 /* ~Ah. Well, I can offer a remedy: eat honey made from the flowers that irritate your body. As poison strengthens the animal that eats of it in small quantities, so shall your body strengthen.~ */
== BFHNAT
@1763 /* ~That sounds good. Does honey cake count?~ */
== BCERND
@1764 /* ~Hmm. Perhaps you need to learn more of nature and her scheme.~ */
== BJAHEIR IF ~InParty("Jaheira")~ THEN
@1765 /* ~Certainly you do. Nature is not there to perform tricks for your benefit.~ */
== BFHNAT
@1766 /* ~But does it count?~ */
== BCERND
@1767 /* ~Yes, Nathaniel, it can be eaten in a cake form.~ */
== BFHNAT
@1768 /* ~Lovely. Thank you, Cernd.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHCerndTalk2","GLOBAL",0)
AreaType(FOREST)~ THEN BCERND FHCernd2
@1769 /* ~You look ill at ease, Nathaniel. Why are you not comfortable in the environment where you belong?~ */
DO ~SetGlobal("FHCerndTalk2","GLOBAL",1)~
== BFHNAT
@1770 /* ~I don't belong here, Cernd.~ */   
== BCERND
@1771 /* ~And why not? As the swallow returns to its birthplace, can you not return where nature intended you to be?~ */
== BFHNAT
@1772 /* ~I don't know what nature wants, but I know I'm more comfortable in the city.~ */
== BCERND
@1773 /* ~A sad thing, and one that is due to the fetters of civilisation.~ */
== BFHNAT
@1774 /* ~Cernd, I don't want your pity. It's not a sad thing, it's just that I prefer the city. In the forest you can't ever be sure what's going to happen.~ */
== BCERND
@1775 /* ~But do you not miss the cycle of the natural within the confines of the city?~ */
== BFHNAT
@1776 /* ~I don't think so. I've never had much connection with the natural world.~ */
== BCERND
@1777 /* ~Ah, you puzzle me, Nathaniel.~ */
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHCerndBabyTalk","GLOBAL",0)
Global("CerndBabyTalk","GLOBAL",1)~ THEN BFHNAT FHCernd3
@1778 /* ~I'm not sure you did the right thing to leave Ahsdale in the druid grove, Cernd.~ */
DO ~SetGlobal("FHCerndBabyTalk","GLOBAL",1)~
== BCERND
@1779 /* ~The druids will care for him better than I could were he with us on the road.~ */
== BFHNAT
@1780 /* ~But couldn't you have stayed with him?~ */
== BCERND
@1781 /* ~Are you growing tired of my company, Nathaniel?~ */
== BFHNAT
@1782 /* ~Oh, no, I didn't mean it like that! It's just that he'll miss you...~ */
== BCERND
@1783 /* ~But he will be safe, and that it what matters.~ */
== BFHNAT
@1784 /* ~I suppose...~ */
== BCERND
@1785 /* ~Nathaniel, it is my duty to nature to support her, and it is also my duty to help <CHARNAME> in <PRO_HISHER> endeavours. Surely you can understand that?~ */
== BFHNAT
@1786 /* ~Yes ... I know about duty ... but your son? It seems... I don't know...~ */
=
@1787 /* ~Well, I suppose you know best.~ */
EXIT

CHAIN
IF
~InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("FHEdwinaTalk1","GLOBAL",0)~ THEN BFHNAT FHEdwina1
@1788 /* ~You make a nice-looking woman, you know. Maybe you should consider staying that way.~ */   
DO ~SetGlobal("FHEdwinaTalk1","GLOBAL",1)~
== BEDWIN
@1789 /* ~You would know all about such abominations of gender, barbarian!~ */
== BFHNAT
@1790 /* ~Wh-- Oh, I see. (sigh) I think I preferred you when you were a man.~ */
== BEDWIN
@1791 /* ~And so you should! The true form of Edwin Odesseiron is a wonder to behold!~ */
== BFHNAT
@1792 /* ~You aren't my sort, I'm afraid, Edwin.~ */
== BEDWIN
@1793 /* ~What do you-- Bah! The jests of these apes claiming to be human cannot be borne!~ */
EXIT

CHAIN
IF
~InParty("Nath")
See("Nath")
Gender("Edwin",FEMALE)
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHEdwinaTalk2","GLOBAL",0)~ THEN BEDWIN FHEdwina2
@1794 /* ~Psst. Nathaniel!~ */
DO ~SetGlobal("FHEdwinaTalk2","GLOBAL",1)~
== BFHNAT
@1795 /* ~What's up, Edwin?~ */   
== BEDWIN
@1796 /* ~Tell me how this operates.~ */
== BFHNAT
@1797 /* ~Eye pencil? Why, Edwin, I never thought you were that kind of woman.~ */
== BEDWIN
@1798 /* ~Save your leers for those who will appreciate it! I know you would never be interested in me anyway! (What? What am I saying?) That is, shut up!~ */
== BFHNAT
@1799 /* ~Sorry. I shouldn't have joked ... so why do you need to know?~ */
== BEDWIN
@1800 /* ~If I am to suffer this abominable curse, I may as well suffer in a manner befitting my status.~ */
== BFHNAT
@1801 /* ~All right. Open your eyes wide--~ */
== BEDWIN
@1802 /* ~Do not impale my eye, you baboon!~ */
== BFHNAT
@1803 /* ~No, no, it's how it works. Stay still.~ */
=
@1804 /* ~There. Subtle but attractive.~ */
== BEDWIN
@1805 /* ~Subtle? Are you calling me a dowdy-- Ahem, that is to say, I will consider killing you second rather than first.~ */
== BFHNAT
@1806 /* ~(sigh) You could always say thank you.~ */
== BEDWIN
@1807 /* ~Why should I thank for something that is my due?~ */
END
++ @1808 /* ~Um, Nathaniel, dare I ask how you know how to apply that?~ */ EXTERN BFHNAT FHEdwinEye_apply
++ @1809 /* ~Edwina, it looks good! You should take more style tips from Nathaniel.~ */ EXTERN BEDWIN FHEdwinEye_style
IF ~Gender(Player1,FEMALE)~ THEN REPLY @1810 /* ~Hey, Nathaniel - teach me how to do that! I never learned.~ */ EXTERN BFHNAT FHEdwinEye_teach
IF ~Gender(Player1,MALE)~ THEN REPLY @1811 /* ~Can you teach me how to put it on so skilfully?~ */ EXTERN BFHNAT FHEdwinEye_teachmale
++ @1812 /* ~Why don't you put some on yourself, eh?~ */ EXTERN BFHNAT FHEdwinEye_eh

APPEND BEDWIN
IF ~~ THEN BEGIN FHEdwinEye_style
SAY @1813 /* ~As if I would need schooling in the ways of fashion!~ */
IF ~~ THEN EXIT
END
END

APPEND BFHNAT
IF ~~ THEN BEGIN FHEdwinEye_apply
SAY @1814 /* ~Oh, it's just something I picked up. Aurelia insisted I learn - she said it was a vital skill. Apparently I look nice with it on.~ */
=
@1815 /* ~Um, anyway, we should be getting on.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHEdwinEye_teach
SAY @1816 /* ~You never learned? Aurelia said it was a vital skill. All right ... you pull your eyelid like this...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHEdwinEye_teachmale
SAY @1817 /* ~All right. Aurelia always said it was a vital skill. So ... you pull your eyelid like this...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHEdwinEye_eh
SAY @1818 /* ~Me? Oh no, I grew out of that a while ago.~ */
IF ~~ THEN EXIT
END
END

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
!Gender("Edwin",FEMALE)
Global("FHEdwinTalk1","GLOBAL",0)~ THEN BEDWIN FHEdwin1
@1819 /* ~You look at me askance, boy. What is it that the sludge you call a mind has fixed itself upon now?~ */
DO ~SetGlobal("FHEdwinTalk1","GLOBAL",1)~
== BFHNAT
@1820 /* ~You worked for the thieves' guild. How could you do such a thing in clear conscience?~ */   
== BEDWIN
@1821 /* ~Conscience? Such an airy concept is for the weak.~ */
== BFHNAT
@1822 /* ~But--~ */
== BEDWIN
@1823 /* ~Your dull fears are unfounded. I am not an agent for the Shadow Thieves and now that I travel with <CHARNAME> my employ with them has ended. (And none too soon ... those ignorant fools were grating on my patience.)~ */
== BFHNAT
@1824 /* ~But you were among their number!~ */
== BEDWIN
@1825 /* ~Have you no wit or guile? I was seeking to bring them down from within!~ */
== BFHNAT
@1826 /* ~Oh. Well, that's an admirable goal.~ */
== BEDWIN
@1827 /* ~I did not do it for the approval of inane cattle like yourself. (These righteous fools try my patience ... it is time for a fireball, I think ... ah, yes...)~ */
== BFHNAT
@1828 /* ~I don't believe that you're as ruthless as you say. You've never broken the law.~ */
== BEDWIN
@1829 /* ~Heart-stopping and powerful evil comes in many guises, Fletcher. Remember that, for you will come to a nasty end if you do not.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
!Gender("Edwin",FEMALE)
Global("FHEdwinTalk2","GLOBAL",0)~ THEN BEDWIN FHEdwin2
@1830 /* ~Fletcher!~ */
DO ~SetGlobal("FHEdwinTalk2","GLOBAL",1)~
== BFHNAT
@1831 /* ~Are you speaking to me?~ */
== BEDWIN
@1832 /* ~Yes, you, boy! (What must one do to get someone's attention around here?)~ */
== BFHNAT
@1833 /* ~What is it?~ */
== BEDWIN
@1834 /* ~I am curious. How can you live with yourself, being what you are?~ */
== BFHNAT
@1835 /* ~Excuse me?~ */
== BEDWIN
@1836 /* ~Must I spell this out for you, maladjusted barbarian? Your predilections--~ */
== BFHNAT
@1837 /* ~Oh. I've never been any different. How do you cope with loving women? Does that need hours of guilt-ridden thought?~ */
== BEDWIN
@1838 /* ~I do not wish to divulge my activities to one such as you. Suffice to say, it involves hosts of succubi subject to my every whim! (And I mean every...)~ */
== BFHNAT
@1839 /* ~Ugh. I really don't think I need to know...~ */
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!Gender("Edwin",FEMALE)
Global("FHEdwinTalk3","GLOBAL",0)~ THEN BFHNAT FHEdwin3
@1840 /* ~Where did you get your robe, Edwin? It's nice.~ */   
DO ~SetGlobal("FHEdwinTalk3","GLOBAL",1)~
== BEDWIN
@1841 /* ~If you must know, it is from the land of Thay.~ */
== BFHNAT
@1842 /* ~Hmm. They must have good tailors there. I've never been there, actually.~ */
== BEDWIN
@1843 /* ~And it is unlikely that you will. Somebody like yourself would survive two minutes. Perhaps three, if you were lucky - which is unlikely.~ */
== BFHNAT
@1844 /* ~It sounds like your perfect place.~ */
== BEDWIN
@1845 /* ~Yes, well, my allies and myself had a ... disagreement. I thought it fitting to cease honouring them with my presence. (But they shall fear my return, ah yes...)~ */
== BFHNAT
@1846 /* ~But Amn's hardly the most friendly of places--~ */
== BEDWIN
@1847 /* ~Circumstances do not require me to hand over my dealings to one such as you.~ */
== BFHNAT
@1848 /* ~But I was just interested ... go on, you can tell me...~ */
== BEDWIN
@1849 /* ~You will learn of all things in due course. (Yes, perhaps telling him that will stop his incessant questioning.)~ */
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!Gender("Edwin",FEMALE)
Global("FHEdwinTalk4","GLOBAL",0)~ THEN BFHNAT FHEdwin4
@1850 /* ~Edwin? I want you to know that ... your magical skills are something to be admired.~ */
DO ~SetGlobal("FHEdwinTalk4","GLOBAL",1)~
== BEDWIN
@1851 /* ~What? (What?)~ */
== BFHNAT
@1852 /* ~I mean it. It's so useful to have you there in battle.~ */
== BEDWIN
@1853 /* ~Hah. My skills are not useful, they are supreme - just keep that in the walnut you call a mind.~ */
== BFHNAT
@1854 /* ~Fine, fine. I just wanted to say.~ */
== BEDWIN
@1855 /* ~Ah. I see this is some convoluted attempt to seduce Edwin Odesseiron, mighty wizard! Well, it will not work, ape! I can defend myself with magics a tadpole like yourself could not possibly imagine!~ */
== BFHNAT
@1856 /* ~That ... that wasn't what I meant.~ */
== BEDWIN
@1857 /* ~That is what they all say. Bah!~ */
EXIT

CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
Global("FHHaerTalk1","GLOBAL",0)~ THEN BFHNAT FHHaer1
@1858 /* ~So, Haer'Darlis--~ */   
DO ~SetGlobal("FHHaerTalk1","GLOBAL",1)~
== BHAERDA
@1859 /* ~How many times must I tell you, "Natharniel", it is Haer'Dalis!~ */
== BFHNAT
@1860 /* ~I'm sorry, Haer- Haer'Dalis. I saw your name on a poster for some play, and I assumed--~ */   
== BHAERDA
@1861 /* ~Hmph. Well, remember it in future. Did you come to see the play? Which was it?~ */
== BFHNAT
@1862 /* ~Hmm... "The Rivals", I think. I was too busy to see it.~ */
== BHAERDA
@1863 /* ~Busy! How could one be too busy to see me in action before they die?~ */
=
@1864 /* ~I played the handsome servant boy, who opened his mind to the philosophies of the soul but was ultimately condemned to a life of adversity!~ */
== BFHNAT
@1865 /* ~I think if I was to go to a playhouse I'd prefer something a bit less ... philosophical.~ */
== BHAERDA
@1866 /* ~I see that you are not a deep thinker, my swan.~ */
== BFHNAT
@1867 /* ~It's not that. I have so many thoughts ... I don't need to complicate them.~ */
== BHAERDA
@1868 /* ~Ah, you are missing so much.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHHaerTalk2","GLOBAL",0)~ THEN BHAERDA FHHaer2
@1869 /* ~My dear swan, what is amiss?~ */
DO ~SetGlobal("FHHaerTalk2","GLOBAL",1)~
== BFHNAT
@1870 /* ~It's nothing. I was just thinking.~ */   
== BHAERDA
@1871 /* ~Ah? A difficult activity for one like yourself, hmm?~ */
== BFHNAT
@1872 /* ~Stop it. I don't need your teasing.~ */
== BHAERDA
@1873 /* ~I only mean concern.~ */
== BFHNAT
@1874 /* ~(sigh) Why do you call me that, anyway?~ */
== BHAERDA
@1875 /* ~Because of your grace. You move as a panther stalking her prey through the forest.~ */
== BFHNAT
@1876 /* ~I'm not fond of big cats. Or forests, for that matter.~ */
== BHAERDA
@1877 /* ~I was only attempting to bring poetry to your life, Nathaniel. Evidently my wit is lost on you.~ */
EXIT

CHAIN
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
Global("FHHaerTalk3","GLOBAL",0)~ THEN BFHNAT FHHaer3
@1878 /* ~I don't see how you can be so pessimistic, and yet so ... so frivolous.~ */   
DO ~SetGlobal("FHHaerTalk3","GLOBAL",1)~
== BHAERDA
@1879 /* ~Frivolous?~ */
== BFHNAT
@1880 /* ~I don't mean to be insulting--~ */
== BHAERDA
@1881 /* ~My dear, if my skin were as thin as yours I would never have made headway on the stage. Perhaps it is your sheltered upbringing that leads you to look upon me with such confusion. Have you never seen a sparrow such as myself before?~ */
== BFHNAT
@1882 /* ~Well, no.~ */
== BHAERDA
@1883 /* ~We thrive on the ever-changing and decay. That is why <CHARNAME>'s company is so exhilarating. I have seen sights that you would never believe.~ */
== BFHNAT
@1884 /* ~But what about order?~ */
== BHAERDA
@1885 /* ~What about it?~ */
== BFHNAT
@1886 /* ~How can you live without it?~ */
== BHAERDA
@1887 /* ~The only "order" that exists, my swan, is the inevitability of death.~ */
== BFHNAT
@1888 /* ~No. That's not true.~ */
== BHAERDA
@1889 /* ~Think what you will.~ */
== BFHNAT
@1890 /* ~I will, don't worry.~ */
== BHAERDA
@1891 /* ~Ah, do not scowl so. Though your downcast expression leads me to hope that you will one day become a noble hound after all.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHHaerTalk4","GLOBAL",0)~ THEN BHAERDA FHHaer4
@1892 /* ~I am curious, my swan, and would question you.~ */
DO ~SetGlobal("FHHaerTalk","GLOBAL",1)~
== BFHNAT
@1893 /* ~I wish you wouldn't call me that, Haer'Dalis.~ */   
== BHAERDA
@1894 /* ~The tragedy of your lack of poetry rings deep in my soul, Nathaniel. But that is beside the point. How did you realise your affinity for the male?~ */
== BFHNAT
@1895 /* ~We became close friends and then-- Hey! What's that you're writing?~ */
=
@1896 /* ~"The Tale of Latimer Bryce and Nathaniel Aplin-Fletcher"? Haer'Dalis!~ */
== BHAERDA
@1897 /* ~It is a working title. Fear not, your names will be thinly disguised.~ */
== BFHNAT
@1898 /* ~Hmm, let's have a look...~ */
== BHAERDA
@1899 /* ~What do you think?~ */
== BFHNAT
@1900 /* ~I had no idea you'd been watching me so closely.~ */
== BHAERDA
@1901 /* ~The fact that someone's energies leave a great deal to be desired does not prevent simple observation of beauty.~ */
== BFHNAT
@211 /* ~Oh! ... Thank you.~ */
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("FHImoenTalk1","GLOBAL",0)~ THEN BFHNAT FHImoen1
@1902 /* ~Imoen, are you all right?~ */   
DO ~SetGlobal("FHImoenTalk1","GLOBAL",1)~
== BIMOEN2
@1903 /* ~Sure, sure, just got out of breath for a second. Nothing to worry about.~ */
== BFHNAT
@1904 /* ~If you need anything, you will say, won't you?~ */
== BIMOEN2
@1905 /* ~Yes, Nathaniel, I'll say. Sheesh.~ */
== BFHNAT
@1906 /* ~I'm sorry if I seem--~ */
== BIMOEN2
@1907 /* ~Aww, don't worry. I just don't like being fussed over, you know?~ */
== BFHNAT
@1908 /* ~I'll try not to. It's just ... well ... you're so young.~ */
== BIMOEN2
@1909 /* ~I'm stronger than I look. And I've been through just as much as <CHARNAME>. D'you fuss over <PRO_HIMHER>?~ */
== BFHNAT
@1910 /* ~Yes. I don't want people to feel bad.~ */
== BIMOEN2
@1911 /* ~Plus, I could fry you in a second if I felt like it. But I'm feeling nice today, so I'll save that.~ */
== BFHNAT
@1912 /* ~Er - thank you, Imoen. I really meant no offence.~ */
== BIMOEN2
@1913 /* ~I'm fine, don't you worry!~ */
== BFHNAT
@1914 /* ~Wait - is that my purse?~ */
== BIMOEN2
@1915 /* ~Uh...~ */
== BFHNAT
@1916 /* ~Give it back!~ */
== BIMOEN2
@1917 /* ~Relax, Nathaniel, I would've anyway.~ */
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
Global("FHImoenTalk2","GLOBAL",0)~ THEN BFHNAT FHImoen2
@1918 /* ~I've heard that you grew up in Candlekeep, too. So you were with <CHARNAME>?~ */   
DO ~SetGlobal("FHImoenTalk2","GLOBAL",1)~
== BIMOEN2
@1919 /* ~Yep. And I know all kinds of embarrassing stories about <PRO_HIMHER>, so if you want to know, come and ask!~ */
== BFHNAT
@1920 /* ~Er ... all right.~ */
== BIMOEN2
@1921 /* ~Thaniel ... if you try and lighten up, things - well, they don't seem so hard.~ */
== BFHNAT
@1922 /* ~How can I "lighten up" when such things are going on? <CHARNAME> has no soul!~ */
== BIMOEN2
@1923 /* ~Yeah, but <PRO_HESHE> isn't going to feel better with you standing around looking miserable. That's why <PRO_HESHE> needs me, right? To cheer <PRO_HIMHER> up.~ */
== BFHNAT
@1924 /* ~But how do you cheer yourself up?~ */
== BIMOEN2
@1925 /* ~If - if I cheer people up, I can make believe I'm happy. Anyway, don't be afraid to laugh at people for one thing.~ */
== BFHNAT
@1926 /* ~But ... laughing at people makes them feel bad.~ */
== BIMOEN2
@1927 /* ~Not always. And smile some.~ */
== BFHNAT
@1928 /* ~I do smile!~ */
== BIMOEN2
@1929 /* ~Yeah, but do it more. Your smile's very cute.~ */
== BFHNAT
@211 /* ~Oh! ... Thank you.~ */
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHImoenTalk3","GLOBAL",0)~ THEN BFHNAT FHImoen3
@1930 /* ~Imoen! What is it?~ */   
DO ~SetGlobal("FHImoenTalk3","GLOBAL",1)~
== BIMOEN2
@1931 /* ~N-nothing ... just got something in my eye...~ */
== BFHNAT
@1932 /* ~Oh, Imoen ... come here, let me give you a hug ... there, does it feel better?~ */
== BIMOEN2
@1933 /* ~...~ */
== BFHNAT
@1934 /* ~Sssh, it's all right. I promise, it'll be all right.~ */
== BIMOEN2 IF ~Dead("C6Bodhi")~ THEN
@1935 /* ~<CHARNAME>'s ... <CHARNAME>'s so hurt ... <PRO_HISHER> soul...~ */
== BIMOEN2 IF ~!Dead("C6Bodhi")~ THEN
@1936 /* ~There's ... there's so much death ... sometimes my head hurts and all I can do is ... is smile and hope it - it goes away...~ */
== BFHNAT
@1937 /* ~Sssh. Don't get worked up, Imoen, just try to relax. This'll all be all right in the end, I swear.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHImoenNoromTalk","GLOBAL",0)
!Global("NathRomanceActive","GLOBAL",2)
!Global("FHNathRomance","GLOBAL",1)
AreaType(CITY)~ THEN BIMOEN2 FHImoennorom1
@1938 /* ~Hey, Thaniel! What do you think of that guy there?~ */
DO ~SetGlobal("FHImoenNoromTalk","GLOBAL",1)~
== BFHNAT
@1939 /* ~Pardon?~ */   
== BIMOEN2
@1940 /* ~Would you ... you know ... go with him?~ */
== BFHNAT
@1941 /* ~Imoen!~ */
=
@1942 /* ~If you must know, no.~ */
== BIMOEN2
@1943 /* ~You're so picky. What about ... him?~ */
== BFHNAT
@1944 /* ~No!~ */
== BIMOEN2
@1945 /* ~Ah, so you don't like the blond look. How about ... him?~ */
== BFHNAT
@1946 /* ~The one with dark hair?~ */
== BIMOEN2
@1947 /* ~No, the one in blue.~ */
== BFHNAT
@1948 /* ~Hmm. Maybe.~ */
== BIMOEN2
@1949 /* ~Excellent. Shall I go ask him to come over?~ */
== BFHNAT
@1950 /* ~No! No. I can't believe I'm having this conversation.~ */
EXIT

CHAIN
IF ~InParty("IMOEN2")
See("IMOEN2")
!StateCheck("IMOEN2",CD_STATE_NOTVALID)
Global("FHImoenNoromTalk","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",2)
!Global("FHNathRomance","GLOBAL",1)
AreaType(CITY)~ THEN BFHNAT FHImoennorom2
@1951 /* ~All right, Imoen, what about him? The elf.~ */   
DO ~SetGlobal("FHImoenNoromTalk","GLOBAL",2)~
== BIMOEN2
@1639 /* ~What?~ */
== BFHNAT
@1952 /* ~Well? Would you?~ */
== BIMOEN2
@1953 /* ~Not if you paid me!~ */
== BFHNAT
@1954 /* ~Him?~ */
== BIMOEN2
@1955 /* ~Hmm... No. His legs are too skinny.~ */
== BFHNAT
@1956 /* ~I see what you mean. How about him?~ */
== BIMOEN2
@1957 /* ~Oooh! Now he's something!~ */
== BFHNAT
@1958 /* ~Really? I'd have thought the first one was better.~ */
== BIMOEN2
@1959 /* ~No way.~ */
=
@1960 /* ~Nice to see you smiling, Thaniel.~ */
== BFHNAT
@1961 /* ~Nice to see you smiling, too.~ */
EXIT

APPEND BIMOEN2
IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
OR(2)
Global("FHNathRomance","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)
Global("FHImNath","GLOBAL",0)
InParty("Nath")~ THEN BEGIN FHImmy
SAY @1962 /* ~Hey, <CHARNAME>, can I talk with you a second?~ */
++ @1963 /* ~Of course. What's on your mind?~ */ + FHImmy_mind
++ @1964 /* ~Can't you see there are more important things to do?~ */ + FHImmy_important
++ @1965 /* ~Sorry, Imoen. Can it wait?~ */ + FHImmy_sorry
++ @1966 /* ~Imoen, if you carry on bothering me...~ */ + FHImmy_important
++ @1967 /* ~What is it? Is something wrong?~ */ + FHImmy_wrong
END

IF ~~ THEN BEGIN FHImmy_mind
SAY @1968 /* ~We-ell, it's about Nathaniel. You and him seem pretty cosy these days, and I just wanted to have a talk with you about it.~ */
++ @1969 /* ~Why? Do you have a problem with it?~ */ + FHImmy_problem
++ @1970 /* ~Considering we spent all that time discussing boys, I hardly think it's a surprise.~ */ + FHImmy_boys
++ @1971 /* ~Yes. It's great, isn't it?~ */ + FHImmy_great
++ @1972 /* ~And?~ */ + FHImmy_and
END

IF ~~ THEN BEGIN FHImmy_important
SAY @1973 /* ~Okay, okay. I was just asking, that's all. Sheesh.~ */
IF ~~ THEN DO ~SetGlobal("FHImNath","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN FHImmy_sorry
SAY @1974 /* ~Well, it's kind of important, considering it's about you, and you're my little brother and all.~ */
++ @1975 /* ~Go on, then.~ */ + FHImmy_mind
++ @1976 /* ~Look, there are other things we have to do.~ */ + FHImmy_important
++ @1977 /* ~Imoen, stop bothering me, or...~ */ + FHImmy_important
END

IF ~~ THEN BEGIN FHImmy_wrong
SAY @1978 /* ~No, not at all. I'd just noticed, you and Nathaniel seem pretty cosy these days, and I wanted to have a talk with you about it.~ */
++ @1969 /* ~Why? Do you have a problem with it?~ */ + FHImmy_problem
++ @1971 /* ~Yes. It's great, isn't it?~ */ + FHImmy_great
++ @1972 /* ~And?~ */ + FHImmy_and
END

IF ~~ THEN BEGIN FHImmy_problem
SAY @1979 /* ~Because you're both boys, you mean? No. You'll always be my little brother to me, no matter what you do.~ */
=
@1980 /* ~I was just wondering how far it's gone, 'cause, well, Thaniel seems a really nice guy and I don't want things to go too far if you're not serious about him. It wouldn't be good for either of you.~ */
++ @1981 /* ~What's this, Imoen? You, being serious?~ */ + FHImmy_serious
IF ~Global("FHNathSleep","GLOBAL",3)~ THEN REPLY @1982 /* ~Well, we've consummated the relationship, if that's what you're asking.~ */ + FHImmy_info
IF ~GlobalLT("FHNathSleep","GLOBAL",3)~ THEN REPLY @1983 /* ~We haven't slept together, if that's what you're asking.~ */ + FHImmy_sleep
++ @1984 /* ~I ... I like him a great deal.~ */ + FHImmy_like
++ @1985 /* ~I love him, and I've told him so.~ */ + FHImmy_love
++ @1986 /* ~I love him, but I haven't had the courage to say it to him yet.~ */ + FHImmy_nolove
++ @1987 /* ~It was a sudden kind of thing. I haven't really got my head around it yet.~ */ + FHImmy_head
END

IF ~~ THEN BEGIN FHImmy_boys
SAY @1988 /* ~Heh, remember that stableboy? That was a good one... Anyway, yeah, I'm not surprised as such.~ */
=
@1989 /* ~I was just wondering how far it's gone, 'cause Thaniel seems a really nice guy and I don't want things to go too far if you're not serious about him. It wouldn't be good for either of you.~ */
++ @1981 /* ~What's this, Imoen? You, being serious?~ */ + FHImmy_serious
IF ~Global("FHNathSleep","GLOBAL",3)~ THEN REPLY @1982 /* ~Well, we've consummated the relationship, if that's what you're asking.~ */ + FHImmy_info
IF ~GlobalLT("FHNathSleep","GLOBAL",3)~ THEN REPLY @1983 /* ~We haven't slept together, if that's what you're asking.~ */ + FHImmy_sleep
++ @1984 /* ~I ... I like him a great deal.~ */ + FHImmy_like
++ @1985 /* ~I love him, and I've told him so.~ */ + FHImmy_love
++ @1986 /* ~I love him, but I haven't had the courage to say it to him yet.~ */ + FHImmy_nolove
++ @1987 /* ~It was a sudden kind of thing. I haven't really got my head around it yet.~ */ + FHImmy_head
END

IF ~~ THEN BEGIN FHImmy_great
SAY @1990 /* ~Yes, it is! I've seen you together and it seems like you two really have a good thing going.~ */
=
@1991 /* ~I was wondering how far it's gone, though, 'cause Thaniel seems a really nice guy and I don't want things to go too far if you're not serious about him. It wouldn't be good for either of you.~ */
++ @1981 /* ~What's this, Imoen? You, being serious?~ */ + FHImmy_serious
IF ~Global("FHNathSleep","GLOBAL",3)~ THEN REPLY @1982 /* ~Well, we've consummated the relationship, if that's what you're asking.~ */ + FHImmy_info
IF ~GlobalLT("FHNathSleep","GLOBAL",3)~ THEN REPLY @1983 /* ~We haven't slept together, if that's what you're asking.~ */ + FHImmy_sleep
++ @1984 /* ~I ... I like him a great deal.~ */ + FHImmy_like
++ @1985 /* ~I love him, and I've told him so.~ */ + FHImmy_love
++ @1986 /* ~I love him, but I haven't had the courage to say it to him yet.~ */ + FHImmy_nolove
++ @1987 /* ~It was a sudden kind of thing. I haven't really got my head around it yet.~ */ + FHImmy_head
END

IF ~~ THEN BEGIN FHImmy_and
SAY @1989 /* ~I was just wondering how far it's gone, 'cause Thaniel seems a really nice guy and I don't want things to go too far if you're not serious about him. It wouldn't be good for either of you.~ */
++ @1981 /* ~What's this, Imoen? You, being serious?~ */ + FHImmy_serious
IF ~Global("FHNathSleep","GLOBAL",3)~ THEN REPLY @1982 /* ~Well, we've consummated the relationship, if that's what you're asking.~ */ + FHImmy_info
IF ~GlobalLT("FHNathSleep","GLOBAL",3)~ THEN REPLY @1983 /* ~We haven't slept together, if that's what you're asking.~ */ + FHImmy_sleep
++ @1984 /* ~I ... I like him a great deal.~ */ + FHImmy_like
++ @1985 /* ~I love him, and I've told him so.~ */ + FHImmy_love
++ @1986 /* ~I love him, but I haven't had the courage to say it to him yet.~ */ + FHImmy_nolove
++ @1987 /* ~It was a sudden kind of thing. I haven't really got my head around it yet.~ */ + FHImmy_head
END

IF ~~ THEN BEGIN FHImmy_serious
SAY @1992 /* ~Quiet, you. Anyway, I just wanted to check up on the two of you. I don't want anyone ... anyone else getting hurt.~ */
IF ~Global("FHNathSleep","GLOBAL",3)~ THEN REPLY @1982 /* ~Well, we've consummated the relationship, if that's what you're asking.~ */ + FHImmy_info
IF ~GlobalLT("FHNathSleep","GLOBAL",3)~ THEN REPLY @1983 /* ~We haven't slept together, if that's what you're asking.~ */ + FHImmy_sleep
++ @1984 /* ~I ... I like him a great deal.~ */ + FHImmy_like
++ @1985 /* ~I love him, and I've told him so.~ */ + FHImmy_love
++ @1986 /* ~I love him, but I haven't had the courage to say it to him yet.~ */ + FHImmy_nolove
++ @1987 /* ~It was a sudden kind of thing. I haven't really got my head around it yet.~ */ + FHImmy_head
END

IF ~~ THEN BEGIN FHImmy_info
SAY @1993 /* ~Now that, <CHARNAME>, is called a case of "too much information". Repeat after me - "too ... much..."~ */
=
@1994 /* ~Okay, okay, don't look at me like that. But are you serious about him?~ */
++ @1995 /* ~It's all happened so suddenly ... I don't really know how I feel.~ */ + FHImmy_head
++ @1996 /* ~Of course I am!~ */ + FHImmy_love
++ @1997 /* ~I wouldn't have done that if I wasn't serious, now would I?~ */ + FHImmy_love
END

IF ~~ THEN BEGIN FHImmy_sleep
SAY @1998 /* ~I wasn't asking that. I just wanted to know whether you're serious about him.~ */
++ @1995 /* ~It's all happened so suddenly ... I don't really know how I feel.~ */ + FHImmy_head
++ @1996 /* ~Of course I am!~ */ + FHImmy_love
++ @1997 /* ~I wouldn't have done that if I wasn't serious, now would I?~ */ + FHImmy_love
END

IF ~~ THEN BEGIN FHImmy_like
SAY @1999 /* ~Good. I know he likes you "a great deal", too, so good luck to you. I'm glad you're serious about him - I don't want anyone ... anyone else getting hurt.~ */
IF ~~ THEN DO ~SetGlobal("FHImNath","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN FHImmy_love
SAY @2000 /* ~Good!~ */
=
@2001 /* ~I'm glad we had this talk. It's nice to know that sometimes things work out good.~ */
IF ~~ THEN DO ~SetGlobal("FHImNath","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN FHImmy_nolove
SAY @2002 /* ~Then get on and say it, you goon! Pfeh, you'd think I'd have to hold your hand through all this!~ */
=
@2003 /* ~But I'm glad we had this talk. It's nice to know that sometimes things work out good.~ */
IF ~~ THEN DO ~SetGlobal("FHImNath","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN FHImmy_head
SAY @2004 /* ~Then you'd better get your head round it soon, 'cause otherwise someone's going to end up getting hurt.~ */
=
@2005 /* ~Seriously, <CHARNAME>, Gorion didn't bring you up good to trample on someone's feelings.~ */
IF ~~ THEN DO ~SetGlobal("FHImNath","GLOBAL",1)~
EXIT
END
END

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHImoenromTalk","GLOBAL",0)
OR(2)
Global("FHNathRomance","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)~ THEN BIMOEN2 FHImoenRom1
@2006 /* ~You know, Thaniel, it was a bit of a shock finding out about you and <CHARNAME>.~ */
DO ~SetGlobal("FHImoenromTalk","GLOBAL",1)~
== BFHNAT
@2007 /* ~Are you ... all right about it?~ */   
== BIMOEN2
@2008 /* ~Yeah, of course! You're obviously smitten with each other.~ */
=
@2009 /* ~But I don't want him making any mistakes. So ... I've compiled a list of questions to check whether you're the right guy for him.~ */
== BFHNAT
@2010 /* ~I...~ */
== BIMOEN2
@2011 /* ~Ssh! First question: what is your favourite food?~ */
== BFHNAT
@2012 /* ~Cake. But you knew that any--~ */
== BIMOEN2
@2013 /* ~Okay, next question. What's your favourite drink?~ */
== BFHNAT
@2014 /* ~I don't have one. Imoen--~ */
== BIMOEN2
@2015 /* ~Do you have any allergies?~ */
== BFHNAT
@2016 /* ~Cats, and pollen... Imoen, is this necessary?~ */
== BIMOEN2
@2017 /* ~Well, yeah. I only found out just now I have a little brother to terrorise. I need to make the most of it, you know?~ */
== BFHNAT
@2018 /* ~I never had any brothers or sisters.~ */
== BIMOEN2
@2019 /* ~Poor bunny. But don't worry, I'm sure you'll make a good brother-in-law. Now, next question...~ */
EXIT

CHAIN
IF
~Global("FHJHurt","GLOBAL",1)~ THEN JAHEIRAJ FHJHurt
@2020 /* ~Nathaniel, am I going to have to heal you constantly?~ */
DO ~SetGlobal("FHJHurt","GLOBAL",2)~
== BFHNAT
@2021 /* ~I don't do it to spite you, Jaheira.~ */
== BJAHEIR
@2022 /* ~Just be more careful next time.~ */
EXIT

CHAIN
IF
~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("FHJaheiraTalk","GLOBAL",0)~ THEN BFHNAT FHJaheira1
@2023 /* ~Lady Jaheira...?~ */   
DO ~SetGlobal("FHJaheiraTalk","GLOBAL",1)~
== BJAHEIR
@2024 /* ~Jaheira does fine, thank you. You sound like an obsequious servant.~ */
== BFHNAT
@2025 /* ~Er, yes, Jaheira. I ... just wanted to say that, well...~ */
== BJAHEIR
@1833 /* ~What is it?~ */
== BFHNAT
@2026 /* ~I'm sorry about your husband.~ */
== BJAHEIR
@2027 /* ~I thank you for your sympathy, but you need not treat me as an invalid because of it.~ */
== BFHNAT
@2028 /* ~I didn't mean to! I was just--~ */
== BJAHEIR
@2029 /* ~You need not look so frightened. I am not going to bite you.~ */
== BFHNAT
@2030 /* ~All ... all right.~ */
EXIT

CHAIN
IF
~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("FHJaheiraTalk","GLOBAL",1)~ THEN BFHNAT FHJaheira2
@2031 /* ~Could you tell me about Khalid?~ */   
DO ~SetGlobal("FHJaheiraTalk","GLOBAL",2)~
== BJAHEIR
@2032 /* ~What has brought this on?~ */
== BFHNAT
@2033 /* ~I just like to know things about the people I travel with.~ */
== BJAHEIR
@2034 /* ~I would prefer not to discuss Khalid with you, Nathaniel.~ */
== BFHNAT
@2035 /* ~Of course. I understand--~ */
== BJAHEIR
@2036 /* ~There you go, falling over yourself again.~ */
== BFHNAT
@2037 /* ~Do I really strike you as such a child? I'm older than <CHARNAME>, you know.~ */
== BJAHEIR
@2038 /* ~You strike me as a naive young man. That is all.~ */
EXIT

CHAIN
IF
~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("FHJaheiraTalk","GLOBAL",2)~ THEN BFHNAT FHJaheira3
@2039 /* ~When we last talked, you said I was naive. Why did you say that?~ */   
DO ~SetGlobal("FHJaheiraTalk","GLOBAL",3)~
== BJAHEIR
@2040 /* ~Are you feeling bitter about it?~ */
== BFHNAT
@2041 /* ~Oh, no. You're entitled to whatever opinion. I was just wondering why.~ */
== BJAHEIR
@2042 /* ~Well, I suppose that shows some maturity.~ */
== BFHNAT
@2043 /* ~*Some* maturity?~ */
== BJAHEIR
@2044 /* ~Nathaniel, if you are going to take every little thing I say so personally then I would prefer not to say anything at all.~ */
EXIT

CHAIN
IF
~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHJaheiraForestTalk","GLOBAL",0)
AreaType(FOREST)~ THEN BJAHEIR FHJaheira4
@2045 /* ~You look ill, Nathaniel. Is there something wrong?~ */
DO ~SetGlobal("FHJaheiraForestTalk","GLOBAL",1)~
== BFHNAT
@2046 /* ~No, it's just the pollen in the air. It irritates my eyes.~ */   
== BJAHEIR
@2047 /* ~You should have spent more time outdoors as a child. No wonder you are sickly.~ */
== BFHNAT
@2048 /* ~Hmph... Thanks for the support, Jaheira.~ */
== BJAHEIR
@2049 /* ~What was that?~ */
== BFHNAT
@2050 /* ~Nothing.~ */
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("FHJanTalk","GLOBAL",0)~ THEN BFHNAT FHJan1
@2051 /* ~Jan, why do you keep looking at me like that?~ */   
DO ~SetGlobal("FHJanTalk","GLOBAL",1)~
== BJAN
@2052 /* ~Like what?~ */
== BFHNAT
@2053 /* ~I - I don't know. Just ... I don't like it. What are you thinking?~ */
== BJAN
@2054 /* ~Nothing, Nathy, I'm trying to think who you remind-- Ah, yes, of course! Uncle Walter! Of course, he was actually my cousin but we don't talk about that. Still, he was a pleasant enough chap, despite the problem with the lemons.~ */
== BFHNAT
@2055 /* ~"Nathy"? What do you - how - who's Uncle Walter?~ */
== BJAN
@2056 /* ~Ah yes, the day of the lemons. A black day in the Jansen history. Suffice to say that Cousin Grimbleshank was never the same. Anyway, I ramble. Walter Jansen was responsible for the Great Turnip Massacre of '67! Can you seriously say you've never heard of him?~ */
== BFHNAT
@2057 /* ~I - I see...~ */
== BJAN
@2058 /* ~Uncle Walter was the first kensai ever to come from the Jansen clan. He was originally from the lands of the north; that's what he said, anyway. When I told him it seemed a little fishy, he told me that the phrase was curiously apt, but he only elaborated that there had been an interesting event involving a haddock.~ */
=
@2059 /* ~Ah, I'll never forget the day he went on a quest to the Plains of Purple Dust when he was younger. He claimed that it was to find enlightenment and improve his skills but it was really to find himself some purple dust. For his cloak.~ */
== BFHNAT
@2060 /* ~...But I don't like purple...~ */
== BJAN
@2061 /* ~Sssh, Nathy, be patient. Goodness me, you'll end up like Cousin Lucia when she attempted to cure the cabbage epidemic. Now, that was nasty. The entire village was overrun by liches for weeks. Or was it leeches? I forget. Speaking of liches, Uncle Walter had all these young boys as apprentices. That was why you reminded me of him.~ */
== BFHNAT
@2062 /* ~That's not like me! I don't like young boys!~ */
== BJAN
@2063 /* ~Of course you do. Oh, the stories Walter used to tell me about the Temple acolytes... I almost followed in his great footsteps myself. Quite small feet he had, even for a gnome. That got him out of some interesting situations, I can tell you.~ */
== BFHNAT
@2064 /* ~I don't quite--~ */
== BJAN
@2065 /* ~Remind me next time we're in the Order's building and I'll show you what I mean.~ */
== BKELDOR IF ~InParty("Keldorn")~ THEN @2066 /* ~Cease your jesting, gnome. The Order is not something to be mocked.~ */
== BANOMEN IF ~InParty("Anomen")~ THEN @2067 /* ~Do not impugn the honour of the Order, gnome! Now do not let me hear more of your foolishness!~ */
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("FHJanTalk","GLOBAL",1)~ THEN BFHNAT FHJan2
@2068 /* ~Jan, could you stop calling me Nathy?~ */   
DO ~SetGlobal("FHJanTalk","GLOBAL",2)~
== BJAN
@2069 /* ~But why?~ */
== BFHNAT
@2070 /* ~Well - it's not my name.~ */
== BJAN
@2071 /* ~Yes, it is. What else would it be?~ */
== BFHNAT
@2072 /* ~Nathaniel, of course.~ */
== BJAN
@2073 /* ~Exactly, Nathy.~ */
== BFHNAT
@2074 /* ~No, just Nathaniel!~ */
== BJAN
@2075 /* ~But that's so boring! As Poppy used to say, a turnip in the store is worth two in the ground. What would you suggest? Mr Kensai? Katana-man? Nathy Boy-Catcher?~ */
== BFHNAT
@2076 /* ~No! I - call me Thaniel, if you must!~ */
== BJAN
@2077 /* ~All right, Thanny.~ */
== BFHNAT
@2078 /* ~(sigh)~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHJanTalk","GLOBAL",2)~ THEN BJAN FHJan3
@2079 /* ~Thanny, how much do you like cake?~ */
DO ~SetGlobal("FHJanTalk","GLOBAL",3)~
== BFHNAT
@2080 /* ~A lot. Why?~ */   
== BJAN
@2081 /* ~But how much?~ */
== BFHNAT
@2082 /* ~Well, it's my favourite food.~ */
== BJAN
@2083 /* ~Good, good.~ */
== BFHNAT
@2084 /* ~Jan, what's going on?~ */
== BJAN
@2085 /* ~I've made you something! Just let me-- Here we go!~ */
== BFHNAT
@2086 /* ~What exactly is it?~ */
== BJAN
@2087 /* ~Why, it's cake, of course. You looked a little like cousin Laffy did when he saw his cracker-factory destroyed by griffins, so I thought some good old-fashioned Jansen cake would do the trick.~ */
== BFHNAT
@2088 /* ~Oh! Thank you, Jan, that's really nice of you.~ */
== BJAN
@2089 /* ~Try it, go on. Here, have some of the icing.~ */
=
@2090 /* ~Thanny, don't drop it--~ */
== BFHNAT
@2091 /* ~ARGH!~ */
== BJAN
@2092 /* ~Hmm. I didn't realise my cooking was *that* bad.~ */
== BFHNAT
@2093 /* ~That cooking isn't bad, it's homicidal! What in the hells is in it?~ */
== BJAN
@2094 /* ~Do you know how long I spent toiling over my stove to bring you that masterpiece? I'd be insulted if you didn't take the whole batch.~ */
== BFHNAT
@2095 /* ~The whole batch-- Wait, what stove?~ */
== BJAN
@2096 /* ~Poppy taught me a great deal about cooking with turnips for every occasion--~ */
== BFHNAT
@2097 /* ~It's a turnip cake?!~ */
== BJAN
@2098 /* ~--but of course, I had to substitute a few of the ingredients. Maybe you could use it as a weapon.~ */
== BFHNAT
@2099 /* ~I don't know ... I'm not very good at throwing things...~ */
== BJAN
@2100 /* ~Well, like my cousin Lydia always used to say: "Never stop saying: That's life"!~ */
DO ~GiveItemCreate("FHCAKE","Nath",0,0,0)
GiveItemCreate("FHCAKE","Nath",0,0,0)
GiveItemCreate("FHCAKE","Nath",0,0,0)
GiveItemCreate("FHCAKE","Nath",0,0,0)
GiveItemCreate("FHCAKE","Nath",0,0,0)~
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHJanTalk","GLOBAL",3)~ THEN BFHNAT FHJan4
@2101 /* ~I want you to answer the question I'm about to ask without any stories. Just yes or no.~ */   
DO ~SetGlobal("FHJanTalk","GLOBAL",4)~
== BJAN
@2102 /* ~Why, Thanny, I can't imagine what you're talking about.~ */
== BFHNAT
@2103 /* ~Just tell me ...are your stories true?~ */
== BJAN
@2104 /* ~How could you possibly ask such a thing? The last person to ask me that was a young chap named Egbert Fiddlebender - a friend of Uncle Walter's, actually. He was an odd fellow, that one. Treated the whole Jansen clan with suspicion ... especially poor Uncle Gerhardt. But then, Egbert was a gardener, so that explains it.~ */
== BFHNAT
@2105 /* ~Explains what?~ */
== BJAN
@2106 /* ~And even after Uncle Walter was finished with him he was still a complete sceptic. Still, you can't help but feel sorry for him, what with the crevasse incident.~ */
== BFHNAT
@2107 /* ~But, Jan, are they true?~ */
== BJAN
@2108 /* ~Haven't you been listening to anything I've been saying? Pfeh, young people these days...~ */
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
Global("FHKeldornTalk","GLOBAL",0)~ THEN BFHNAT FHKeldorn1
@2109 /* ~Sir Keldorn ... may I talk to you for a moment?~ */   
DO ~SetGlobal("FHKeldornTalk","GLOBAL",1)~
== BKELDOR
@2110 /* ~Of course, Nathaniel. What can I do for you? You look concerned.~ */
== BFHNAT
@2111 /* ~I ... am, a little. The Order of the Radiant Heart ... stands for all I believe in, and you are certainly, well, someone to take as an example.~ */
=
@2112 /* ~And I, I'm worried. About what they'd think ... what you think. About things.~ */
== BKELDOR
@2113 /* ~I presume that you refer to your preference for men.~ */
== BFHNAT
@2114 /* ~Yes, I am. I know it's not always accepted and it's never bothered me before, but ... the Order matters.~ */
== BKELDOR
@2115 /* ~I must be honest with you, Nathaniel. It is not approved of. Those who openly display such preference, as you do, are treated with suspicion. Any within the Order would be encouraged to not give in to temptation.~ */
== BFHNAT
@2116 /* ~But, but - they'd be lying to themselves. Surely honesty is more important? Why should I be judged badly because I don't hide what I am?~ */
== BKELDOR
@2117 /* ~It is a difficult question, certainly. But the fact remains that there are those who would see you as unnatural and base.~ */
== BFHNAT
@2118 /* ~I ... I see. I'm sorry for bothering you with it, Sir Keldorn.~ */
== BKELDOR
@2119 /* ~Nathaniel, if it is truly important to you, I will take it upon myself to judge you as I see fit and speak for you if ever your righteousness is called into question. I may be set in my ways, but I can recognise a virtuous man.~ */
== BFHNAT
@2120 /* ~You would do that? For me?~ */
== BKELDOR
@2121 /* ~I must judge you yet, Nathaniel, and if you are lacking I will not be swayed.~ */
== BFHNAT
@2122 /* ~I won't be lacking, I assure you.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHKeldornTalk","GLOBAL",1)~ THEN BKELDOR FHKeldorn2
@2123 /* ~Nathaniel, how would you deal with a man who broke the law but was a force for good?~ */
DO ~SetGlobal("FHKeldornTalk","GLOBAL",2)~
== BFHNAT
@2124 /* ~I'd arrest him. If he was truly good then he'd be able to redeem himself.~ */   
== BKELDOR
@2125 /* ~And an evil man who respected and followed the law?~ */
== BFHNAT
@2126 /* ~If ... someone was truly evil then they couldn't be following the law completely ... but if there was no evidence, I couldn't arrest him.~ */
== BKELDOR
@2127 /* ~What would be your actions, were you ordered to commit an evil act?~ */
== BFHNAT
@2128 /* ~I wouldn't do it. Even ... even if I was ordered. I couldn't.~ */
== BKELDOR
@2129 /* ~Would you ever stoop to paying to sleep with another man? Are you dishonourable?~ */
== BFHNAT
@2130 /* ~No! Who do you think I am?~ */
== BKELDOR
@2131 /* ~Be calm, Nathaniel, it is merely a question.~ */
== BFHNAT
@2132 /* ~I'm sorry, I ... never mind.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHKeldornTalk","GLOBAL",2)~ THEN BKELDOR FHKeldorn3
@2133 /* ~I am not sure what to make of you, Nathaniel. You seem a good enough man but it would not be my place to influence the Order were they making a decision over you.~ */
DO ~SetGlobal("FHKeldornTalk","GLOBAL",3)~
== BFHNAT
@2134 /* ~Are you sure? I'm as virtuous as anyone else!~ */
== BKELDOR
@2135 /* ~Nathaniel, please, do not argue. I made it clear to you that this matter is not something that can be changed.~ */
== BFHNAT
@2136 /* ~I'm sorry. I'm sorry to have bothered you.~ */
== BKELDOR
@2137 /* ~Calm yourself, young one. Now, look to the road. Your actions are all-important.~ */
== BFHNAT
@2138 /* ~Yes - yes, of course. I'll strive to be the best I can be.~ */
== BKELDOR
@2139 /* ~That is all that any of us can do. I wish you well.~ */
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
Global("FHKeldornTormTalk","GLOBAL",0)~ THEN BFHNAT FHKeldorn4
@2140 /* ~Sir Keldorn, I, ah-- What made you decide to follow Torm? I mean, why did you?~ */   
DO ~SetGlobal("FHKeldornTormTalk","GLOBAL",1)~
== BKELDOR
@2141 /* ~Nathaniel, you need not stammer and stutter whenever we speak. I am not an old lion snapping at the heels of the young.~ */
=
@2142 /* ~In answer to your question, it was less a decision and rather a calling that I followed. Surely you can understand that.~ */
== BFHNAT
@2143 /* ~Of course! I mean, I don't know if I've ever felt that but I do know what you mean.~ */
== BKELDOR
@2144 /* ~Is there any reason why you ask?~ */
== BFHNAT
@2145 /* ~No, I ... I was just curious. I know a little about him - Torm, I mean - and he stands for a lot that I believe in. I respect him.~ */
== BKELDOR
@2146 /* ~I am glad you feel that way, Nathaniel, and I am sure that Torm is, too.~ */
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHKorganTalk","GLOBAL",0)~ THEN BKORGAN FHKorgan1
@2147 /* ~Ach, lad, ye looked mighty pasty at that last battle. Was the carnage too much for ye?~ */
DO ~SetGlobal("FHKorganTalk","GLOBAL",1)~
== BFHNAT
@2148 /* ~I'm not a "lad", and I was fine.~ */
== BKORGAN
@2149 /* ~Ye'll ne'er be a truly great warrior when ye have that fear about ye.~ */
== BFHNAT
@2150 /* ~I told you, I was fine.~ */
== BKORGAN
@2151 /* ~'Course ye were. 'Course ye were. An' I'm the great god Cyric. Ye need to harden yerself against such girlish lack o' spleen.~ */
== BFHNAT
@2152 /* ~I am hardened against it, thank you.~ */
== BKORGAN
@2153 /* ~Hahaha! The only thing ye be hardened against is yer passing servingman!~ */
== BFHNAT
@2154 /* ~I don't appreciate that, dwarf.~ */
== BKORGAN
@2155 /* ~Ah, 'twas meant only in jest, ye great pansy.~ */
EXIT

CHAIN
IF WEIGHT #1 ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHKorganTalk","GLOBAL",1)~ THEN BKORGAN FHKorgan2
@2156 /* ~Nathaniel, why don't ye go down to the tavern, get a gallon o' ale in ye and a coupla maidens in ye breeches? That'll sort ye out!~ */
DO ~SetGlobal("FHKorganTalk","GLOBAL",2)~
== BFHNAT
@2157 /* ~Sort me out?~ */   
== BKORGAN
@2158 /* ~Ah, well. If ye be unwilling to do that there be no hope for ye.~ */
== BFHNAT
@2159 /* ~If "hope" involves what you suggest, I'd rather not have it, thank you.~ */
== BKORGAN
@2160 /* ~Aye, ye'll remain the longlimbed pansy all yer days. Shameful waste, it is, with yer swords dancin' like that in battle.~ */
== BFHNAT
@2161 /* ~Stop calling me that!~ */
== BKORGAN
@2162 /* ~But that's what ye are - and a pasty weak one at that!~ */
== BFHNAT
@2163 /* ~Right, that's it. I'm not standing for this any longer!~ */
== BKORGAN
@2164 /* ~Try me, ye weakling!~ */
END
++ @2165 /* ~You two. Stop that NOW!~ */ EXTERN BFHNAT FHKorganFight1
++ @2166 /* ~Honestly, it's like having schoolchildren in the group!~ */ EXTERN BFHNAT FHKorganFight1
++ @2167 /* ~Just get on with it. Hopefully both of you'll stop bothering me.~ */ EXTERN BFHNAT FHKorganFight2
++ @2168 /* ~Fine, but if someone gets hurt it's not my fault!~ */ EXTERN BFHNAT FHKorganFight2

APPEND BFHNAT
IF ~~ THEN BEGIN FHKorganFight1
SAY @2169 /* ~Fine, fine. Look, <CHARNAME>, I just-- I don't know how you put up with him, but I swear I'm not going to. It's him or me.~ */
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @2170 /* ~In that case, Nathaniel, you'll have to leave.~ */ + FHKorgFightNathleaveMith
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ THEN REPLY @2170 /* ~In that case, Nathaniel, you'll have to leave.~ */ + FHKorgFightNathleaveStay
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @2171 /* ~Very well. Korgan, please leave.~ */ EXTERN KORGANJ FHKorgFightKLeaveCop
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ THEN REPLY @2171 /* ~Very well. Korgan, please leave.~ */ EXTERN KORGANJ FHKorgFightKLeaveStay
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @2172 /* ~I'm not letting your petty rivalry get in the way of my leadership. Both of you, out.~ */ EXTERN BFHNAT FHKorgFightBothLeaveMith
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ THEN REPLY @2172 /* ~I'm not letting your petty rivalry get in the way of my leadership. Both of you, out.~ */ EXTERN BFHNAT FHKorgFightBothLeaveStay
++ @2173 /* ~Absolutely not. I need both of you in the group.~ */ + FHKorganFightstay
END

IF ~~ THEN BEGIN FHKorganFight2
SAY @2174 /* ~No. I'm not going to sink to his level. Look, <CHARNAME>, I just-- I don't know how you put up with him, but I swear I'm not going to. It's him or me.~ */
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @2170 /* ~In that case, Nathaniel, you'll have to leave.~ */ + FHKorgFightNathleaveMith
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ THEN REPLY @2170 /* ~In that case, Nathaniel, you'll have to leave.~ */ + FHKorgFightNathleaveStay
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @2171 /* ~Very well. Korgan, please leave.~ */ EXTERN KORGANJ FHKorgFightKLeaveCop
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ THEN REPLY @2171 /* ~Very well. Korgan, please leave.~ */ EXTERN KORGANJ FHKorgFightKLeaveStay
IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @2172 /* ~I'm not letting your petty rivalry get in the way of my leadership. Both of you, out.~ */ EXTERN BFHNAT FHKorgFightBothLeaveMith
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ THEN REPLY @2172 /* ~I'm not letting your petty rivalry get in the way of my leadership. Both of you, out.~ */ EXTERN BFHNAT FHKorgFightBothLeaveStay
++ @2173 /* ~Absolutely not. I need both of you in the group.~ */ + FHKorganFightstay
END

IF ~~ THEN BEGIN FHKorgFightNathleaveMith
SAY @2175 /* ~All right. I'll be at the Mithrest if you want to carry on travelling.~ */
IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
SetGlobal("NathKicked","LOCALS",1)
EscapeArea()
MoveGlobal("AR0704","Nath",[683.667])~
EXIT
END

IF ~~ THEN BEGIN FHKorgFightNathleaveStay
SAY @2176 /* ~All right. I'll be here if you want to carry on travelling.~ */
IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
SetGlobal("NathKicked","LOCALS",1)~
EXIT
END

IF ~~ THEN BEGIN FHKorganFightstay
SAY @2177 /* ~Fine. But if he says one more thing...~ */
IF ~~ THEN EXIT
END
END

CHAIN BFHNAT FHKorgFightBothLeaveMith
@2175 /* ~All right. I'll be at the Mithrest if you want to carry on travelling.~ */
DO ~LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
SetGlobal("NathKicked","LOCALS",1)
EscapeArea()
MoveGlobal("AR0704","Nath",[683.667])~
== KORGANJ
@2178 /* ~Fine. I'll be at the Coronet should ye come to yer senses.~ */
DO ~LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("AR0406","Korgan",[950.1867])~
EXIT

CHAIN BFHNAT FHKorgFightBothLeaveStay
@2176 /* ~All right. I'll be here if you want to carry on travelling.~ */
DO ~LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
SetGlobal("NathKicked","LOCALS",1)~
== KORGANJ
@2179 /* ~Fine. I'll be here should ye come to yer senses.~ */
DO ~LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
SetGlobal("KickedOut","LOCALS",1)~
EXIT

APPEND KORGANJ
IF ~~ THEN BEGIN FHKorgFightKLeaveCop
SAY @2180 /* ~I'm glad to be shot of ye if ye think the longlimb's worth more than me. I'll be at the Coronet should ye come to yer senses.~ */
IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("AR0406","Korgan",[950.1867])~
EXIT
END

IF ~~ THEN BEGIN FHKorgFightKLeaveStay
SAY @2181 /* ~I'm glad to be shot of ye if ye think the longlimb's worth more than me. I'll be here should ye come to yer senses.~ */
IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogFile()
ChangeAIScript("",DEFAULT)
SetGlobal("KickedOut","LOCALS",1)~
EXIT
END
END

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHMazzyTalk","GLOBAL",0)~ THEN BMAZZY FHMazzy1
@2182 /* ~I did not realise before I began adventuring that so many would be unsympathetic. Do you ever find that others do not see your righteousness, Nathaniel?~ */
DO ~SetGlobal("FHMazzyTalk","GLOBAL",1)~
== BFHNAT
@2183 /* ~If it's any consolation, I see your righteousness. You're a good woman, Mazzy, and I won't hear anyone say differently.~ */   
== BMAZZY
@2184 /* ~Thank you, friend Nathaniel. Arvoreen helps me bear the burden of people's jibes.~ */
== BFHNAT
@2185 /* ~You bear them well. If people went around thinking I was a thief, I'd be-- Well, annoyed.~ */
== BMAZZY
@2186 /* ~And justifiably so. But do not try to pretend that you do not share my problem. I hear the things that some say.~ */
== BFHNAT
@2187 /* ~Oh.~ */
== BMAZZY
@2188 /* ~And I shudder to think of what they think and do not say about you. People can be very unkind.~ */
== BFHNAT
@2189 /* ~Well, it only bothers me sometimes. The people who matter don't judge me like that ... or you, either. They won't judge you for your size, they'll judge you for your actions ... and your actions are worthy of a paladin.~ */
== BMAZZY
@2190 /* ~You are an innocent, Nathaniel. But thank you for your kind words.~ */
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
Global("FHMazzyTalk","GLOBAL",1)~ THEN BFHNAT FHMazzy2
@2191 /* ~Mazzy? I didn't say before how sorry I am about your ... your loss, and I thought I should say.~ */   
DO ~SetGlobal("FHMazzyTalk","GLOBAL",2)~
== BMAZZY
@2192 /* ~Thank you, Nathaniel. It is a comfort to know that those I travel with are as thoughtful as you.~ */
== BFHNAT
@2193 /* ~You bear it so well.~ */
== BMAZZY
@2194 /* ~Arvoreen gives me strength, and I have my happy memories of Patrick to sustain me. I know that he is pleased with what I am doing.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHMazzyTalk","GLOBAL",2)~ THEN BMAZZY FHMazzy3
@2195 /* ~What are you going to do about your lover, Nathaniel?~ */
DO ~SetGlobal("FHMazzyTalk","GLOBAL",3)~
== BFHNAT IF ~!Global("TalkAvery","GLOBAL",1) Global("FHBryceHere","GLOBAL",0)~ THEN
@2196 /* ~I ... I don't know. I've been looking for so long that ... sometimes it seems I'll never find him. Why do you ask?~ */   
== BFHNAT IF ~Global("TalkAvery","GLOBAL",1)~ THEN
@2197 /* ~I don't know ... try to put it all behind me? Why do you ask?~ */   
== BMAZZY
@2198 /* ~I was wondering. And after your words about Patrick, I wished to offer my own.~ */
== BFHNAT
@2199 /* ~Thank you. I appreciate you being concerned.~ */
== BMAZZY
@2200 /* ~Nathaniel, I see your anxiety, and I can tell you that I know that whatever happens you will act as you always have: with virtue. You have my belief behind you.~ */
== BFHNAT
@2201 /* ~That's ... oh, Mazzy, that's a lovely thing to say.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHMazzyTalk","GLOBAL",3)~ THEN BMAZZY FHMazzy4
@2202 /* ~I have noticed that you look pale of complexion when we enter into battle, Nathaniel. Would that I could heal you!~ */
DO ~SetGlobal("FHMazzyTalk","GLOBAL",4)~
== BFHNAT
@2203 /* ~It ... it's nothing, Mazzy. Don't worry about it.~ */   
== BMAZZY
@2204 /* ~You do not need to try to comfort me about my lack of healing touch--~ */
== BFHNAT
@2205 /* ~No, it's not about you being able to heal me.~ */
== BMAZZY
@2206 /* ~Then why do you turn away and say that nothing is wrong?~ */
== BFHNAT
@2207 /* ~Well ... I ...~ */
== BMAZZY
@2208 /* ~Why are you ashamed? Your combat is valiant and your heart is pure.~ */
== BFHNAT
@2209 /* ~It's just ... how are you so brave?~ */
== BMAZZY
@2210 /* ~It is Arvoreen who gives me courage, Nathaniel.~ */
== BFHNAT
@2211 /* ~No, it's not just that. You're brave even without the power of your god. It's admirable. And ... I don't have it.~ */
== BMAZZY
@2212 /* ~Please, believe me when I say that your fear does not make you unworthy.~ */
=
@2213 /* ~Listen. When we next battle, I will endeavour to give you Arvoreen's blessing of courage. Would that help set your mind at rest?~ */
== BFHNAT
@2214 /* ~I ... yes. Thank you, Mazzy.~ */
EXIT

CHAIN
IF
~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHMinscTalk","GLOBAL",0)~ THEN BMINSC FHMinsc1
@2215 /* ~Boo is worried, friend Nathaniel.~ */
DO ~SetGlobal("FHMinscTalk","GLOBAL",1)~
== BFHNAT
@2216 /* ~Oh. Um, why?~ */   
== BMINSC
@2217 /* ~Why do you not wear armour as Minsc and Boo do? Warriors of goodness like us should always be wary of the prod of enemy blades.~ */
== BFHNAT
@2218 /* ~I've just never found it comfortable. And generally I can move quickly enough to dodge blows.~ */
== BMINSC
@2219 /* ~Ah, you are a dodger rather than a stomper! Now I understand. We righteous warriors come in all shapes and sizes but evil shall fall before us!~ */
== BFHNAT
@2220 /* ~It will!~ */
== BMINSC
@2221 /* ~That is more like it! A nice bucketful of righteous fury will frighten our enemies into cowering jelly!~ */
== BFHNAT
@2222 /* ~Um, Minsc? Could you stop waving that sword? It makes me a little nervous.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHMinscTalk","GLOBAL",1)~ THEN BMINSC FHMinsc2
@2223 /* ~Ah!~ */
DO ~SetGlobal("FHMinscTalk","GLOBAL",2)~
== BFHNAT
@1833 /* ~What is it?~ */
== BMINSC
@2224 /* ~Minsc has realised what is amiss about you!~ */
== BFHNAT
@2225 /* ~I ... what? I'm not... Amiss?~ */
== BMINSC
@2226 /* ~Ah, Nathaniel, you look as pale as a pigeon! I meant that you do not bear the scars of battle as Minsc and Boo do.~ */
== BFHNAT
@2227 /* ~Oh, I see. Well, I hadn't been to many places outside Baldur's Gate before I left. Had you been outside Rasheman before?~ */
== BMINSC
@2228 /* ~Not far, before we set off on our dajemma. Minsc was luckier than you, though, for he had Boo and his witch to give him directions.~ */
== BFHNAT
@2229 /* ~Well, I've got <CHARNAME> to help with that now. Still ... you are lucky...~ */
== BMINSC
@2230 /* ~Do not look so miserable. While there is evil to fight, Minsc and Boo and Nathaniel will stand together!~ */
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("FHMinscTalk","GLOBAL",2)~ THEN BFHNAT FHMinsc3
@2231 /* ~Minsc? I ... heard about Dynaheir. If you, well, need to talk...?~ */   
DO ~SetGlobal("FHMinscTalk","GLOBAL",3)~
== BMINSC
@2232 /* ~I have Boo, and he is enough of a talker for the both of us. Still, Boo says thank you. It is not often that a warrior like Nathaniel is so kind.~ */
== BFHNAT
@643 /* ~Thank you.~ */
== BMINSC
@2233 /* ~Besides, Dynaheir is waiting for us in the halls of the noble Rashemeni and she is pleased with Boo and me.~ */
== BFHNAT
@2234 /* ~Do you think so?~ */
== BMINSC
@2235 /* ~Of course! We are giving evil a good kicking in <CHARNAME>'s company!~ */
== BFHNAT
@2236 /* ~Minsc?~ */
== BMINSC
@2237 /* ~Minsc is listening.~ */
== BFHNAT
@2238 /* ~You're a very powerful warrior. You scare me when we're in battle ... and out of it sometimes ... but I'm glad to have you on my side.~ */
== BMINSC
@2239 /* ~Boo is chittering his teeth in gratitude, Nathaniel! And it is fitting that Minsc scares even his friends: it means that evil has still more to fear!~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHMinscTalk","GLOBAL",3)~ THEN BMINSC FHMinsc4
@2240 /* ~Nathaniel, what is wrong? Your face looks as long as Minsc's sword!~ */
DO ~SetGlobal("FHMinscTalk","GLOBAL",4)~
== BFHNAT
@2241 /* ~Nothing. I'm fine.~ */   
== BMINSC
@2242 /* ~Boo thinks that you are lying, naughty man! Here. You may hold him for a moment.~ */
== BFHNAT
@2243 /* ~I ... I don't think I should, Minsc. I might be allergic to him.~ */
== BMINSC
@2244 /* ~Boo is no ordinary hamster! All the sneezing in the world cannot curb his might! I insist.~ */
== BFHNAT
@2245 /* ~Er, thank you... Hello, Boo. He's actually quite sweet, Minsc!~ */
== BMINSC
@2246 /* ~He is more savage than sweet, friend Nathaniel, but he enjoys your petting.~ */
== BFHNAT
@2247 /* ~Here, have him back - I don't want to drop him or anything.~ */
== BMINSC
@2248 /* ~Minsc and Boo will never be separated, do not worry!~ */
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Dead("Torgal")
Global("FHNaliaTorgalTalk","GLOBAL",0)~ THEN BFHNAT FHNalia1
@2249 /* ~Nalia? Your father--~ */   
DO ~SetGlobal("FHNaliaTorgalTalk","GLOBAL",1)~
== BNALIA
@2250 /* ~What about him? If you're going to offer words of condolence, I can tell you that it's not necessary.~ */
== BFHNAT
@2251 /* ~I was. Why isn't it necessary?~ */
== BNALIA
@2252 /* ~Because I need to work through this on my own. Thanks, though.~ */
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("FHNaliaTalk","GLOBAL",0)~ THEN BFHNAT FHNalia2
@2253 /* ~You're a mage, aren't you? You seem quite young to be so knowledgeable about things like that.~ */
DO ~SetGlobal("FHNaliaTalk","GLOBAL",1)~
== BNALIA
@2254 /* ~I'm the same age as <CHARNAME>, Nathaniel. Simply because you feel that you have more experience in the world than me doesn't mean you have to look down on me.~ */
== BFHNAT
@2255 /* ~I didn't mean to ... I'm sorry. I just meant to compliment you.~ */
== BNALIA
@2256 /* ~Well, thank you anyway. But I'm not only a mage. I needed to use thievery to sneak out of the castle. Aunty would never have let me go otherwise.~ */
== BFHNAT
@2257 /* ~You're a thief? But you're a nice girl!~ */
== BNALIA
@2258 /* ~I think you'll find that "nice girls" have more up their sleeves than you think. And what of you? You were a guard, I understand.~ */
== BFHNAT
@2259 /* ~Yes, I was.~ */
== BNALIA
@2260 /* ~Another representative of those treading down the poor folk.~ */
== BFHNAT
@2261 /* ~No! That's not true! I was never like the people you hate! Look. Nalia. I don't think this conversation is going anywhere.~ */
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("FHNaliaTalk","GLOBAL",1)~ THEN BFHNAT FHNalia3
@2262 /* ~Nalia, I'm sorry about before. Maybe ... I was a little hasty.~ */   
DO ~SetGlobal("FHNaliaTalk","GLOBAL",2)~
== BNALIA
@2263 /* ~It is no more than I would expect from a guard.~ */
== BFHNAT
@2264 /* ~Nalia, please listen to me. Being a thief ... is going down the wrong path. Helping people is good, but you stole from your family!~ */
== BNALIA
@2265 /* ~They could afford it. The people I was giving the money to are more deserving and it means more to them!~ */
== BFHNAT
@2266 /* ~But your family!~ */
== BNALIA
@2267 /* ~They wanted to change what I am, and they had no right to do that.~ */
== BFHNAT
@2268 /* ~But you've got no right to force your opinion of nobility onto them.~ */
== BNALIA
@2269 /* ~And you've no right to try to force your opinion of thievery onto me. Your father wanted you to be initiated into the guardsmen, didn't he, and you went along with it. You haven't had the struggles I have with my family.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHNaliaTalk","GLOBAL",2)~ THEN BNALIA FHNalia4
@2270 /* ~Nathaniel, is it only the privileged who are allowed into the Flaming Fist?~ */
DO ~SetGlobal("FHNaliaTalk","GLOBAL",3)~
== BFHNAT
@1939 /* ~Pardon?~ */   
== BNALIA
@2271 /* ~I was wondering whether all those in the Flaming Fist are as privileged as you are.~ */
== BFHNAT
@2272 /* ~I'm not noble, Nalia. If we met in Baldur's Gate I'd have to bow and call you "my lady".~ */
== BNALIA
@2273 /* ~Nevertheless, you had a comfortable upbringing in your Aplin-Fletcher house, didn't you?~ */
=
@2274 /* ~That reminds me: are women allowed into the Flaming Fist, too?~ */
== BFHNAT
@2275 /* ~Nalia, please don't try to lump the Flaming Fist in with the Amnish guards here. The years I spent there were the best of my life.~ */
== BNALIA
@2276 /* ~Please answer my question, Nathaniel.~ */
== BFHNAT
@2277 /* ~My friend Aurelia was one of the best officers in my division. And you're forgetting me. I was allowed to stay even though everyone knew about me and Latimer.~ */
== BNALIA
@2278 /* ~Hmm. I see what you mean. But what about the privileged status of the guards?~ */
== BFHNAT
@2279 /* ~Latimer ... Latimer was definitely not from a privileged background.~ */
=
@2280 /* ~Nalia, do you mind if we don't carry on this discussion?~ */
== BNALIA
@2281 /* ~I didn't mean to bring up bad memories, I just wanted to discuss things with you.~ */
== BFHNAT
@2282 /* ~It's all right. It's just ... sorry, I'd rather not talk right now.~ */
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("FHValygarTalk","GLOBAL",0)~ THEN BFHNAT FHValy1
@2283 /* ~Valygar? Maybe ... it'd help you feel better if you ... talked to someone about your problems?~ */   
DO ~SetGlobal("FHValygarTalk","GLOBAL",1)~
== BVALYGA
@2284 /* ~You want me to talk about my problems.~ */
== BFHNAT
@2285 /* ~Well, I always find talking about things helps.~ */
== BVALYGA
@2286 /* ~You want me to talk about my problems - to you.~ */
== BFHNAT
@2287 /* ~If you like...~ */
== BVALYGA
@2288 /* ~Then you wish to hear of my mother's neglect, her obsessive studying of books and scrolls of magic, of my parents' reanimated corpses laughing and begging me to join them?~ */
== BFHNAT
@2289 /* ~See? Don't you feel ... better?~ */
== BVALYGA
@2290 /* ~No.~ */
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("FHValygarForestTalk","GLOBAL",0)
AreaType(FOREST)
TimeOfDay(NIGHT)~ THEN BFHNAT FHForestValy
@2291 /* ~Aaah! What was that?~ */   
DO ~SetGlobal("FHValygarForestTalk","GLOBAL",1)~
== BVALYGA
@2292 /* ~Don't shout like that.~ */
== BFHNAT
@2293 /* ~I didn't mean-- I was, there were, it was dark and--~ */
== BVALYGA
@2294 /* ~Whatever the reason. It doesn't matter. Don't do it again.~ */
== BFHNAT
@2295 /* ~It's not my fault I don't feel comfortable out of the city.~ */
== BVALYGA
@2296 /* ~Yes, it is.~ */
== BFHNAT
@2297 /* ~I just don't know how you can feel at ease in these places.~ */
== BVALYGA
@2298 /* ~And I don't see how you can feel at ease in corrupted pits like Athkatla.~ */
== BFHNAT
@2299 /* ~That's not fair. Not everywhere's like Athkatla.~ */
== BVALYGA
@2300 /* ~Not every animal wants your blood.~ */
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("FHValygarTalk","GLOBAL",1)~ THEN BFHNAT FHValy2
@2301 /* ~Valygar...?~ */   
DO ~SetGlobal("FHValygarTalk","GLOBAL",2)~
== BVALYGA
@2302 /* ~What is it now?~ */
== BFHNAT
@2303 /* ~Nothing, I just--~ */
== BVALYGA
@2304 /* ~I suppose you want me to talk about my problems to you again. To you.~ */
== BFHNAT
@2305 /* ~What's wrong with me?~ */
== BVALYGA
@2306 /* ~You would have sold me to the Cowled Wizards. You of all people are not someone I'd want to associate with ... people like you are puppets for those fiends.~ */
== BFHNAT
@2307 /* ~I'm not a puppet!~ */
== BVALYGA
@2308 /* ~You might as well be.~ */
== BFHNAT
@2309 /* ~I ... look, I'm sorry. It's just that Tolgerias said you were a murderer! <CHARNAME> promised him to bring you in, and I ... don't believe in breaking promises.~ */
== BVALYGA
@2310 /* ~Promises mean nothing to such as them. They'll stab you in the back as soon as they can. Heed that, Aplin-Fletcher, if nothing else.~ */
== BFHNAT
@2311 /* ~If anyone - even you, Corthala - tried something like that, I'd hand them to the proper authorities.~ */
== BVALYGA
@2312 /* ~There are no "proper authorities" in this realm.~ */
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("FHValygarTalk","GLOBAL",2)~ THEN BFHNAT FHValy3
@2313 /* ~You said wizards are fiends, but I don't--~ */   
DO ~SetGlobal("FHValygarTalk","GLOBAL",3)~
== BVALYGA
@2314 /* ~Surely by now you understand that wizards are the scourge of mankind.~ */
== BFHNAT IF ~InParty("Aerie")~ THEN
@2315 /* ~But look at Aerie. How can you say she's a scourge of mankind? All I see is a nice girl.~ */
== BVALYGA
@2316 /* ~Nothing's worse than a wizard in this world, whether they mean well or not. It corrupts them in the end.~ */
== BFHNAT
@2317 /* ~I don't think so. Thieves are far worse.~ */
== BVALYGA
@2318 /* ~Can a thief raise the dead? Can a thief burn acid through a man's innards with a word and a gesture?~ */
== BFHNAT
@2319 /* ~But mages can use their powers for good. A thief's working only for chaos. They hide in the shadows--~ */
== BVALYGA
@2320 /* ~I hide in the shadows.~ */
== BFHNAT
@2321 /* ~Er, yes, but they're so insidious ... they're working to bring down order and that's a terrible thing.~ */
== BNALIA IF ~InParty("Nalia")~ THEN
@2322 /* ~Sometimes order needs to be brought down, for the good of innocent people!~ */
== BVALYGA
@2323 /* ~But wizards bring down humanity.~ */
== BIMOEN2 IF ~InParty("Imoen2")~ THEN
@2324 /* ~There are much worse people who bring down humanity, Valygar.~ */
== BFHNAT
@2325 /* ~Still, thieves can't be completely trusted - if they'll steal from someone on the street they might steal from you, no matter whether they're calling themselves your friend.~ */
== BJAN IF ~InParty("Jan")~ THEN
@2326 /* ~Oh, oh, my ears are burning! Speaking of which, Nathy, here's your purse. You ... ah, dropped it a couple of days-- that is, hours ago.~ */
== BVALYGA
@2327 /* ~If a wizard can snuff the life out of a man and reanimate him as a monstrosity to fight by your side, he can do the same to you.~ */
== BFHNAT
@2328 /* ~You may as well say that I can kill someone and therefore I'm going to kill you!~ */
== BVALYGA
@2329 /* ~You began that line of reasoning.~ */
== BFHNAT
@2330 /* ~Well--~ */
== BVALYGA
@2331 /* ~And you began this conversation. I would thank you for allowing me to end it.~ */
== BNALIA IF ~InParty("Nalia")~ THEN
@2332 /* ~Oh, grow up, the both of you!~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHVicTalk","GLOBAL",0)~ THEN BVICONI FHVic1
@2333 /* ~Your expression of disapproval at the world in general seems familiar. I understand you were a member of the guards of Baldur's Gate?~ */
DO ~SetGlobal("FHVicTalk","GLOBAL",1)~
== BFHNAT
@2334 /* ~Yes, I was. Did you know any of them?~ */   
== BVICONI
@2335 /* ~Yes, I knew of them. One of your number tried to kill me when I was close to your precious city.~ */
== BFHNAT
@2336 /* ~I'm sure none of us would do something like-- Wait. Was his name Josef?~ */
== BVICONI
@2337 /* ~I did not enquire his name: I killed him before such niceties.~ */
== BFHNAT
@2338 /* ~You're - you're the one ... I never heard your name, but you'd murdered a man! Josef was trying to bring you to custody!~ */
== BVICONI
@2339 /* ~As if I would submit to "justice" like a common cur. Was he known to you?~ */
== BFHNAT
@2340 /* ~No, I didn't know him very well.~ */
== BVICONI
@2341 /* ~Then do not pretend concern for his fate.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHVicTalk","GLOBAL",1)~ THEN BVICONI FHVic2
@2342 /* ~Why do you prefer males over females? Do you not find surface males' weakness sickening to the stomach?~ */
DO ~SetGlobal("FHVicTalk","GLOBAL",2)~
== BFHNAT
@2343 /* ~Considering I'm a "male" myself, no I don't. And if you find men so sickening why do you prefer them?~ */   
== BVICONI
@2344 /* ~Unlike you, I would not bed any male I came across, only the best.~ */
== BFHNAT
@2345 /* ~Unlike you, I wouldn't sleep with someone I wasn't in love with.~ */
== BVICONI
@2346 /* ~So you are frigid as well as weak. Perhaps that is the reason why your superior abandoned you.~ */
== BFHNAT
@2347 /* ~Don't try to presume things about me and Latimer, Viconia.~ */
== BVICONI
@2348 /* ~I was merely inferring these things from your conversation, toha'vithanna. I notice that you do not deny them.~ */
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("FHVicTalk","GLOBAL",2)~ THEN BFHNAT FHVic3
@2349 /* ~You called me something before.~ */   
DO ~SetGlobal("FHVicTalk","GLOBAL",3)~
== BVICONI
@2350 /* ~What would I have called you? Naive, childish, tiresome?~ */
== BFHNAT
@2290 /* ~No.~ */
=
@2351 /* ~The Drow word.~ */
== BVICONI
@2352 /* ~Toha'vithanna? It means a male who beds others of his kind.~ */
== BFHNAT
@2353 /* ~Oh. I assume it's meant as an insult?~ */
== BVICONI
@2354 /* ~It loses a little in the translation, but I do not understand why you ask if it were "meant" as an insult: it is an insult. A male who prefers males is necessarily one of the most pitiable creatures in existence.~ */
== BFHNAT
@2355 /* ~There are plenty of things I could call you, but I don't because I try to be polite!~ */
== BVICONI
@2356 /* ~Call it politeness if you wish, but I call it cowardice.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHVicTalk","GLOBAL",3)~ THEN BVICONI FHVic4
@2357 /* ~I could not help but notice your conduct at the end of the last battle, male. You looked as though you were about to faint.~ */
DO ~SetGlobal("FHVicTalk","GLOBAL",4)~
== BFHNAT
@2358 /* ~I--~ */   
== BVICONI
@2359 /* ~I cannot imagine how you have got as far as you have when you are so weak.~ */
== BFHNAT
@2360 /* ~For goodness' sake, Viconia! You've dug your barbs, you've spat your poison, you've proved what a heartless, sadistic bitch you are and I don't want to hear any more!~ */
=
@2361 /* ~Don't you have anything better to do than snipe and criticise? Just leave me alone! Your words are an old tune and though you seem to love the sound of your voice no one else does!~ */
== BVICONI
@2362 /* ~Ah. The kitten has grown claws at last.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHYoshiTalk","GLOBAL",0)~ THEN BYOSHIM FHYoshi1
@2363 /* ~Young Nathaniel, there is something I have been meaning to ask you.~ */
DO ~SetGlobal("FHYoshiTalk","GLOBAL",1)~
== BFHNAT
@2364 /* ~I don't think I have reason to discuss anything with you.~ */   
== BYOSHIM
@2365 /* ~Pardon? What have I done to earn such distrust?~ */
== BFHNAT
@2366 /* ~My profession stops me trusting a man like you, Yoshimo. If I had met you outside <CHARNAME>'s company my duty would be to put you behind bars. But duty to <PRO_HIMHER> forces me to do otherwise.~ */
== BYOSHIM
@2367 /* ~Well, that is unfortunate.~ */
== BFHNAT
@2368 /* ~How?~ */
== BYOSHIM
@2369 /* ~There is much that can be learned from a master of the katana.~ */
== BFHNAT
@2370 /* ~You'll have to learn it somewhere else.~ */
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("FHYoshiTalk","GLOBAL",1)~ THEN BFHNAT FHYoshi2
@2371 /* ~Yoshimo? I'd like to apologise.~ */   
DO ~SetGlobal("FHYoshiTalk","GLOBAL",2)~
== BYOSHIM
@2372 /* ~What for, sir? You have not insulted me. In fact, you have barely spoken to me.~ */
== BFHNAT
@2373 /* ~Yes ... that's what I wanted to apologise for. I ... spoke too quickly before.~ */
== BYOSHIM
@2032 /* ~What has brought this on?~ */
== BFHNAT
@2374 /* ~Nothing... Well, I've just - I've noticed how much you care about <CHARNAME>. Every time <PRO_HESHE>'s about to do something dangerous, you speak up. So, I'm sorry.~ */
== BYOSHIM
@2375 /* ~That is quite all right, Nathaniel. In any case, I would indeed be a dishonourable man to allow <PRO_HIMHER> to come to harm.~ */
== BFHNAT
@2376 /* ~That's a good thing to hear.~ */
== BYOSHIM
@2377 /* ~So would you permit me to ask about your teacher?~ */
== BFHNAT
@2378 /* ~Shigure? He's a learned man, and an expert swordsman. Perhaps you'll meet him sometime. I know he'd like you.~ */
== BYOSHIM
@2379 /* ~I would like that very much, Nathaniel.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHYoshiTalk","GLOBAL",2)~ THEN BYOSHIM FHYoshi3
@2380 /* ~My dear Nathaniel, you look positively haggard to<DAYNIGHT>. Whatever is the matter?~ */
DO ~SetGlobal("FHYoshiTalk","GLOBAL",3)~
== BFHNAT
@2381 /* ~It's nothing.~ */   
== BYOSHIM
@2382 /* ~Ah, you cannot fool me! Come, tell me what is on your mind.~ */
== BFHNAT
@2383 /* ~It's ... it's just hard to let go of things sometimes. I try, but sometimes... Do you ever find that?~ */
== BYOSHIM
@2384 /* ~I prefer to leave such things behind me. Perhaps that is what you should do.~ */
== BFHNAT
@2385 /* ~I know. But it's difficult.~ */
== BYOSHIM
@2386 /* ~I have heard that some find it so. But is it not better now that you are travelling with <CHARNAME>?~ */
== BFHNAT
@2387 /* ~It is. You're right, Yoshimo. Your advice is good, but it's hard to take it. I'll ... I'll try not to dwell on things, I suppose.~ */
== BYOSHIM
@2388 /* ~That's the spirit! And while we are on our way, I will regale you with tales of the infamous exploits of Yoshimo!~ */
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("FHYoshiTalk","GLOBAL",3)~ THEN BFHNAT FHYoshi4
@2389 /* ~Why is it that you stayed travelling with us? I'd have thought that you had other things to do.~ */   
DO ~SetGlobal("FHYoshiTalk","GLOBAL",4)~
== BYOSHIM
@2390 /* ~Why do any of us travel with <PRO_HIMHER>?~ */
== BFHNAT IF ~Global("NathRomanceActive","GLOBAL",2)~ THEN
@2391 /* ~I travel with him because I love him.~ */
== BFHNAT IF ~!Global("NathRomanceActive","GLOBAL",2)~ THEN
@2392 /* ~I travel with <PRO_HIMHER> because ... well ... <PRO_HESHE>'s had an influence on my life, I think. And it would be unfair to leave now.~ */
== BYOSHIM
@2393 /* ~Fair enough. Perhaps you understand the bonds of honour that bind a man or woman from my country?~ */
== BFHNAT
@2394 /* ~Yes, Shigure mentioned it sometimes.~ */
== BYOSHIM
@2395 /* ~<CHARNAME> enabled me to escape from that madman's dungeon, Nathaniel. I owe <PRO_HIMHER> my life. As such, it would be dishonourable to abandon <PRO_HIMHER> now.~ */
== BFHNAT
@2396 /* ~Yoshimo, you're a good friend.~ */
== BYOSHIM
@2397 /* ~I hope to always be true to my bonds, Nathaniel.~ */
EXIT
