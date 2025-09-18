BEGIN BFHN25

//Wraith talk//

IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHWraithTalk","LOCALS",1)
Global("FHLovedOne","GLOBAL",6)~ THEN BEGIN FHWT
SAY @0 /* ~I feel sick.~ */
++ @1 /* ~Nathaniel--~ */ DO ~SetGlobal("FHWraithTalk","LOCALS",2)~ + FHWT_leave
END

IF ~~ THEN BEGIN FHWT_leave
SAY @2 /* ~I...I'm...I should leave.~ */
++ @3 /* ~Listen, Nathaniel, none of it was true - Gorion wasn't there and neither was Avery.~ */ + FHWT_true
++ @4 /* ~Don't be absurd. Why in Faerun do you think you should leave?~ */ + FHWT_why
++ @5 /* ~Nathaniel, listen--~ */ + FHWT_true
++ @6 /* ~(Hug Nathaniel.)~ */ + FHWT_hug
END

IF ~~ THEN BEGIN FHWT_true
SAY @7 /* ~But - but he was - there, and-- <CHARNAME>, what if it *was* true? What if he's dead? What if it was me, what if it was my fault that he died?~ */
++ @8 /* ~Please, Nathaniel, calm down. It was all lies: they were just spirits.~ */ + FHWT_lies
++ @9 /* ~Nathaniel, snap out of it! How do you think *I* feel, seeing all of that?~ */ + FHWT_upset
++ @10 /* ~But you shouldn't leave. We need to help each other get through this, don't you see?~ */ + FHWT_noleave
++ @6 /* ~(Hug Nathaniel.)~ */ + FHWT_hug2
END

IF ~~ THEN BEGIN FHWT_why
SAY @11 /* ~Because it was, I should, I should go and see whether it was true - what if he's dead, what if it was me, what if it was my fault that he died?~ */
++ @8 /* ~Please, Nathaniel, calm down. It was all lies: they were just spirits.~ */ + FHWT_lies
++ @12 /* ~Look, stop this. You don't have a monopoly on feeling bad, you know.~ */ + FHWT_upset
++ @13 /* ~No, you shouldn't leave. We need to help each other get through this, don't you see?~ */ + FHWT_noleave
++ @6 /* ~(Hug Nathaniel.)~ */ + FHWT_hug2
END

IF ~~ THEN BEGIN FHWT_hug
SAY @14 /* ~(Nathaniel sinks gratefully against you before sharply withdrawing.)~ */
=
@15 /* ~But, <CHARNAME> - what if he's dead, what if it was me, what if it was my fault that he died?~ */
++ @16 /* ~Still, you shouldn't leave. We need to stay together so we can help each other.~ */ + FHWT_noleave
++ @17 /* ~None of it was true - it wasn't real. They were just spirits.~ */ + FHWT_lies
++ @12 /* ~Look, stop this. You don't have a monopoly on feeling bad, you know.~ */ + FHWT_upset
END

IF ~~ THEN BEGIN FHWT_lies
SAY @18 /* ~But what if it wasn't? Oh, <CHARNAME>...~ */
=
@19 /* ~(Nathaniel grips you in an embrace so tight that it is almost painful.)~ */
IF ~~ THEN + FHWT_sorry
END

IF ~~ THEN BEGIN FHWT_sorry
SAY @20 /* ~I'm sorry. For everything. I'll try...I'll try not to think about this.~ */
++ @21 /* ~Don't apologise, Nathaniel. You haven't done anything wrong.~ */ + FHWT_nowrong
++ @22 /* ~I love you, Nathaniel. Believe that if nothing else.~ */ + FHWT_love
++ @23 /* ~We're together, Nathaniel, and that's what matters - not what some false ghost says.~ */ + FHWT_matter
++ @24 /* ~I don't know what you're apologising for, but if you need forgiving, then I forgive you.~ */ + FHWT_nowrong
END

IF ~~ THEN BEGIN FHWT_upset
SAY @25 /* ~Of course, Gorion-- Oh, <CHARNAME>, I'm sorry. I'm so sorry. For everything.~ */
++ @26 /* ~Stop this, Nathaniel. We both need to be strong, now.~ */ + FHWT_matter
++ @27 /* ~Don't apologise. Just be a little more supportive next time.~ */ + FHWT_support
++ @28 /* ~We're together and that's what matters - not what some false ghost says.~ */ + FHWT_matter
++ @29 /* ~I forgive you, but please, pull yourself together.~ */ + FHWT_support
END

IF ~~ THEN BEGIN FHWT_hug2
SAY @30 /* ~(Nathaniel sinks gratefully against you, gripping you in an embrace so tight that it is almost painful.)~ */
IF ~~ THEN GOTO FHWT_sorry
END

IF ~~ THEN BEGIN FHWT_noleave
SAY @31 /* ~Yes. Yes, you're right. But, oh, <CHARNAME>, what if--~ */
=
@19 /* ~(Nathaniel grips you in an embrace so tight that it is almost painful.)~ */
IF ~~ THEN + FHWT_sorry
END

IF ~~ THEN BEGIN FHWT_nowrong
SAY @32 /* ~Thank - thank you for saying so. I don't know how right you are, though.~ */
=
@33 /* ~Ohh, can we just get away from here? It's just going to make both of us feel worse if we stay any longer.~ */
IF ~~ THEN DO ~SetGlobal("FHWraithTalk","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN FHWT_love
SAY @34 /* ~I - I love you too, and I do believe that you love me. I--~ */
=
@33 /* ~Ohh, can we just get away from here? It's just going to make both of us feel worse if we stay any longer.~ */
IF ~~ THEN DO ~SetGlobal("FHWraithTalk","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN FHWT_matter
SAY @35 /* ~You're - you're right. But I--~ */
=
@33 /* ~Ohh, can we just get away from here? It's just going to make both of us feel worse if we stay any longer.~ */
IF ~~ THEN DO ~SetGlobal("FHWraithTalk","LOCALS",2)~
EXIT
END

IF ~~ THEN BEGIN FHWT_support
SAY @36 /* ~I will. I promise...I'm sorry.~ */
IF ~~ THEN DO ~SetGlobal("FHWraithTalk","LOCALS",2)~
EXIT
END

//Saradush Talk//

IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHSaradushTalk","GLOBAL",1)~ THEN BEGIN FHSaradush
SAY @37 /* ~I really thought that it would all be all right for Saradush. We've always - you've always been able to save people in the nick of time, like Baldur's Gate and Suldanessellar, and I thought it could happen again.~ */
=
@38 /* ~But it didn't. I keep seeing in my mind how scared those people were. And, and I know there isn't anything we can do now, but I can't help it.~ */
IF ~Global("FHBoyNath","GLOBAL",0)~ THEN REPLY @39 /* ~I see them, too. It's the price I pay for having the blood that I do.~ */ DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~ + FHSaradush_price
IF ~GlobalGT("FHBoyNath","GLOBAL",0)~ THEN REPLY @39 /* ~I see them, too. It's the price I pay for having the blood that I do.~ */ DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~ + FHSaradush_price2
++ @40 /* ~Nathaniel, I'm feeling bad enough as it is without you going on about it!~ */ DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~ + FHSaradush_bad
IF ~Global("FHBoyNath","GLOBAL",0)~ THEN REPLY @41 /* ~We managed to save some of them. There's always that.~ */ DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~ + FHSaradush_save
IF ~GlobalGT("FHBoyNath","GLOBAL",0)~ THEN REPLY @41 /* ~We managed to save some of them. There's always that.~ */ DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~ + FHSaradush_save2
IF ~Global("FHBoyNath","GLOBAL",0)~ THEN REPLY @42 /* ~I hoped all that too - but you're right, there's nothing we can do now.~ */ DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~ + FHSaradush_nothing
IF ~GlobalGT("FHBoyNath","GLOBAL",0)~ THEN REPLY @42 /* ~I hoped all that too - but you're right, there's nothing we can do now.~ */ DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~ + FHSaradush_nothing2
++ @43 /* ~We just have to move on, Nathaniel. There's so much to do, and we mustn't dwell on this.~ */ DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~ + FHSaradush_move
END

IF ~~ THEN BEGIN FHSaradush_price
SAY @44 /* ~They paid a price too, though. More than you or me or any of us have done. I don't think I've ever seen...~ */
=
@45 /* ~I know that people have died because of you before - but they were innocents, and so many.~ */
=
@46 /* ~I'm sorry. I know I shouldn't think about it, but I can't help it. And I'm not trying to blame you for any of it. You did your best.~ */
++ @47 /* ~You mean, *we* did our best. You helped to save some of them too.~ */ + FHSaradush_help
++ @48 /* ~Please, could we not talk about it? I don't think dwelling on it is going to help either of us feel better.~ */ + FHSaradush_dwell
++ @49 /* ~Nathaniel, I don't need this! I feel terrible about this, all right?~ */ + FHSaradush_bad
++ @50 /* ~I'm glad you're not blaming me. I need you now more than ever.~ */ + FHSaradush_blame
END

IF ~~ THEN BEGIN FHSaradush_price2
SAY @44 /* ~They paid a price too, though. More than you or me or any of us have done. I don't think I've ever seen...~ */
=
@45 /* ~I know that people have died because of you before - but they were innocents, and so many.~ */
=
@51 /* ~I'm sorry. I know I shouldn't, but I can't help thinking of Elenor. I wonder if she was all right or whether she was...~ */
++ @52 /* ~I'm sure she's all right. The temple was a good place for her to go.~ */ + FHSaradush_templegood
++ @53 /* ~I can't say anything to make you feel better about what happened to her. We just don't know.~ */ + FHSaradush_dontknow
++ @48 /* ~Please, could we not talk about it? I don't think dwelling on it is going to help either of us feel better.~ */ + FHSaradush_dwell
++ @49 /* ~Nathaniel, I don't need this! I feel terrible about this, all right?~ */ + FHSaradush_bad
END

IF ~~ THEN BEGIN FHSaradush_bad
SAY @54 /* ~I'm sorry. I didn't mean to-- Is there anything I can do?~ */
++ @55 /* ~Just - leave me alone. I don't want to say something I might regret.~ */ + FHSaradush_worst
++ @56 /* ~Just drop it, please. Dwelling on it only makes me feel worse.~ */ + FHSaradush_dwell
++ @57 /* ~No! There's nothing either of us can do! And that's the worst thing of all!~ */ + FHSaradush_worst
END

IF ~~ THEN BEGIN FHSaradush_save
SAY @58 /* ~Yes. You're right. But still, I don't think I've ever seen--~ */
=
@59 /* ~I know that people have died because of you before - but this time they were innocents, and so many...~ */
=
@46 /* ~I'm sorry. I know I shouldn't think about it, but I can't help it. And I'm not trying to blame you for any of it. You did your best.~ */
++ @47 /* ~You mean, *we* did our best. You helped to save some of them too.~ */ + FHSaradush_help
++ @60 /* ~Please, could we not talk about it? This isn't making either of us feel better.~ */ + FHSaradush_dwell
++ @61 /* ~Nathaniel, I don't need this! I feel terrible about it, all right?~ */ + FHSaradush_bad
++ @50 /* ~I'm glad you're not blaming me. I need you now more than ever.~ */ + FHSaradush_blame
END

IF ~~ THEN BEGIN FHSaradush_save2
SAY @62 /* ~Yes. You're right. But still, I don't think I've ever seen...~ */
=
@63 /* ~I know that people have died because of you before - but this time they were innocents, and so many.~ */
=
@51 /* ~I'm sorry. I know I shouldn't, but I can't help thinking of Elenor. I wonder if she was all right or whether she was...~ */
++ @64 /* ~I'm sure she was all right. The temple was a good place for her to go.~ */ + FHSaradush_templegood
++ @53 /* ~I can't say anything to make you feel better about what happened to her. We just don't know.~ */ + FHSaradush_dontknow
++ @60 /* ~Please, could we not talk about it? This isn't making either of us feel better.~ */ + FHSaradush_dwell
++ @49 /* ~Nathaniel, I don't need this! I feel terrible about this, all right?~ */ + FHSaradush_bad
END

IF ~~ THEN BEGIN FHSaradush_nothing
SAY @65 /* ~I think that's the worst part. I, I don't think I've ever seen...~ */
=
@63 /* ~I know that people have died because of you before - but this time they were innocents, and so many.~ */
=
@46 /* ~I'm sorry. I know I shouldn't think about it, but I can't help it. And I'm not trying to blame you for any of it. You did your best.~ */
++ @66 /* ~You mean, *we* did our best. You helped to save some of the people, too.~ */ + FHSaradush_help
++ @60 /* ~Please, could we not talk about it? This isn't making either of us feel better.~ */ + FHSaradush_dwell
++ @49 /* ~Nathaniel, I don't need this! I feel terrible about this, all right?~ */ + FHSaradush_bad
++ @67 /* ~I'm glad you're not blaming me. I need your support now more than ever.~ */ + FHSaradush_blame
END

IF ~~ THEN BEGIN FHSaradush_nothing2
SAY @65 /* ~I think that's the worst part. I, I don't think I've ever seen...~ */
=
@63 /* ~I know that people have died because of you before - but this time they were innocents, and so many.~ */
=
@51 /* ~I'm sorry. I know I shouldn't, but I can't help thinking of Elenor. I wonder if she was all right or whether she was...~ */
++ @64 /* ~I'm sure she was all right. The temple was a good place for her to go.~ */ + FHSaradush_templegood
++ @53 /* ~I can't say anything to make you feel better about what happened to her. We just don't know.~ */ + FHSaradush_dontknow
++ @60 /* ~Please, could we not talk about it? This isn't making either of us feel better.~ */ + FHSaradush_dwell
++ @49 /* ~Nathaniel, I don't need this! I feel terrible about this, all right?~ */ + FHSaradush_bad
END

IF ~~ THEN BEGIN FHSaradush_move
SAY @68 /* ~You're right.~ */
=
@46 /* ~I'm sorry. I know I shouldn't think about it, but I can't help it. And I'm not trying to blame you for any of it. You did your best.~ */
++ @47 /* ~You mean, *we* did our best. You helped to save some of them too.~ */ + FHSaradush_help
++ @48 /* ~Please, could we not talk about it? I don't think dwelling on it is going to help either of us feel better.~ */ + FHSaradush_dwell
++ @49 /* ~Nathaniel, I don't need this! I feel terrible about this, all right?~ */ + FHSaradush_bad
++ @50 /* ~I'm glad you're not blaming me. I need you now more than ever.~ */ + FHSaradush_blame
END

IF ~~ THEN BEGIN FHSaradush_help
SAY @69 /* ~I suppose there is that.~ */
=
@70 /* ~Oh, <CHARNAME>, it's just that things are going so... All right, I'll try to, I don't know, deal with it. But how do you deal with something like this?~ */
++ @71 /* ~We can deal with it by staying strong, and resolved in our purpose~ */ + FHSaradush_strong
++ @72 /* ~We're together, Nathaniel, and that's what matters.~ */ + FHSaradush_together
++ @73 /* ~By not dwelling on it - that just makes things worse.~ */ + FHSaradush_dwell2
++ @74 /* ~Nathaniel, I'm feeling bad enough about all this without you going on about it!~ */ + FHSaradush_bad
END

IF ~~ THEN BEGIN FHSaradush_dwell
SAY @75 /* ~Yes. You're right, as usual.~ */
=
@70 /* ~Oh, <CHARNAME>, it's just that things are going so... All right, I'll try to, I don't know, deal with it. But how do you deal with something like this?~ */
++ @76 /* ~We can deal with it by remaining strong and resolute.~ */ + FHSaradush_strong
++ @77 /* ~As I said, we shouldn't dwell on it. Hindsight just makes things feel worse.~ */ + FHSaradush_dwell2
++ @78 /* ~We can deal with it because we're together, Nathaniel, and that's what matters.~ */ + FHSaradush_together
++ @74 /* ~Nathaniel, I'm feeling bad enough about all this without you going on about it!~ */ + FHSaradush_bad
END

IF ~~ THEN BEGIN FHSaradush_blame
SAY @79 /* ~How could I blame you? I couldn't put more stress on you by doing something like that! You're such a good person, and...~ */
=
@80 /* ~Come on, we should go. I shouldn't - *we* shouldn't - dwell on all this.~ */
IF ~~ THEN DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN FHSaradush_templegood
SAY @81 /* ~Yes. Yes, maybe. I hope--~ */
=
@82 /* ~Oh, <CHARNAME>, how do you deal with something like this?~ */
++ @76 /* ~We can deal with it by remaining strong and resolute.~ */ + FHSaradush_strong
++ @77 /* ~As I said, we shouldn't dwell on it. Hindsight just makes things feel worse.~ */ + FHSaradush_dwell2
++ @78 /* ~We can deal with it because we're together, Nathaniel, and that's what matters.~ */ + FHSaradush_together
++ @74 /* ~Nathaniel, I'm feeling bad enough about all this without you going on about it!~ */ + FHSaradush_bad
END

IF ~~ THEN BEGIN FHSaradush_dontknow
SAY @83 /* ~That doesn't make me feel much better, but it's the truth. I hope--~ */
=
@82 /* ~Oh, <CHARNAME>, how do you deal with something like this?~ */
++ @76 /* ~We can deal with it by remaining strong and resolute.~ */ + FHSaradush_strong
++ @77 /* ~As I said, we shouldn't dwell on it. Hindsight just makes things feel worse.~ */ + FHSaradush_dwell2
++ @78 /* ~We can deal with it because we're together, Nathaniel, and that's what matters.~ */ + FHSaradush_together
++ @74 /* ~Nathaniel, I'm feeling bad enough about all this without you going on about it!~ */ + FHSaradush_bad
END

IF ~~ THEN BEGIN FHSaradush_worst
SAY @84 /* ~I know that. I'm sorry for bringing it up.~ */
IF ~~ THEN DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN FHSaradush_strong
SAY @85 /* ~You're right - and you help me to do it, you know.~ */
IF ~~ THEN DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN FHSaradush_together
SAY @86 /* ~I definitely believe that when you're around. Sometimes I worry that it won't be enough, though.~ */
IF ~~ THEN DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN FHSaradush_dwell2
SAY @87 /* ~But forgetting about it is doing the people a disservice, surely?~ */
=
@88 /* ~Ah, you're probably right. We should get going.~ */
IF ~~ THEN DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN FHSaradush_little
SAY @89 /* ~Well, whatever you need, just say, all right?~ */
IF ~~ THEN DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN FHSaradush_no
SAY @90 /* ~I'm not sure what to do, but if you know you need something just say, all right?~ */
IF ~~ THEN DO ~SetGlobal("FHSaradushTalk","GLOBAL",2)~
EXIT
END


//Lovetalk 1//
IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHExpLoveTalk","LOCALS",2)~ THEN BEGIN FHLT1
SAY @91 /* ~It's odd to be back in on the road again, isn't it? Especially when there's all this going on. Do you miss the time we spent in Suldanessellar?~ */
++ @92 /* ~Not in the slightest. I was glad to be rid of their suspicious glances.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT1_suspicious
++ @93 /* ~A little. But with everything that was going on I know that it was right to leave.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT1_sometimes
++ @94 /* ~Yes, I do. It was good to be a little more settled, if only for a little while.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT1_metoo
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @95 /* ~I'm a half-breed, so I never truly felt at ease there.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT1_suspicious
IF ~Race(Player1,ELF)~ THEN REPLY @96 /* ~I do: being with so many of my own people made me feel at peace.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT1_ownpeople
IF ~Race(Player1,ELF)~ THEN REPLY @97 /* ~I try not to - they were my people, but in the end they didn't trust me.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT1_suspicious
END

IF ~~ THEN BEGIN FHLT1_suspicious
SAY @98 /* ~Yes, I didn't want to say anything, but I noticed, and I didn't like it. You saved them, after all. But I'm sorry that we had to leave.~ */
++ @99 /* ~Well, I'm not. I didn't appreciate their attitude towards me.~ */ + FHLT1_notsorry
++ @100 /* ~I didn't realise that you enjoyed Suldanessellar so much.~ */ + FHLT1_whylike
++ @101 /* ~You could have stayed if you'd wanted. It was me they feared, not you.~ */ + FHLT1_stay
END

IF ~~ THEN BEGIN FHLT1_sometimes
SAY @102 /* ~You're right, of course: we have things to do, out in the world. But still, I'm sorry we had to leave.~ */
++ @100 /* ~I didn't realise that you enjoyed Suldanessellar so much.~ */ + FHLT1_whylike
++ @103 /* ~I am too, Nathaniel. It was nice to have some peace, if only for a little while.~ */ + FHLT1_metoo
++ @104 /* ~You could have stayed if you'd wanted: it's me they're afraid of, not you.~ */ + FHLT1_stay
END

IF ~~ THEN BEGIN FHLT1_ownpeople
SAY @105 /* ~They were wrong to be afraid of us in the end. It's a shame that it became like that, and I'm rather sorry that we had to leave.~ */
++ @100 /* ~I didn't realise that you enjoyed Suldanessellar so much.~ */ + FHLT1_whylike
++ @103 /* ~I am too, Nathaniel. It was nice to have some peace, if only for a little while.~ */ + FHLT1_metoo
++ @104 /* ~You could have stayed if you'd wanted: it's me they're afraid of, not you.~ */ + FHLT1_stay
END

IF ~~ THEN BEGIN FHLT1_notsorry
SAY @106 /* ~I must admit that I'm glad to be back in a normal city too. I like being able to see the ground!~ */
=
@107 /* ~But still, in Suldanessellar we stayed long enough for it to feel - well, not like home, but safe.~ */
=
@108 /* ~It wasn't nice being surrounded by trees and being so high off the ground, but it was wonderful to be safe, and to be with you in such a settled way.~ */
++ @109 /* ~Nathaniel, that's very nice of you to say. I liked being with you, too.~ */ + FHLT1_sweet
++ @110 /* ~I hope that one day we can settle down again, wherever we want to.~ */ + FHLT1_feltsame
++ @111 /* ~I didn't enjoy staying in one place like that. I like to be on the road.~ */ + FHLT1_notstay
++ @112 /* ~Being with you is what's important, not whether we're on the road or not.~ */ + FHLT1_important
END

IF ~~ THEN BEGIN FHLT1_metoo
SAY @113 /* ~Ahh, we feel the same way!~ */
=
@114 /* ~I didn't like Suldanessellar for the trees and the scenery, though. The elves didn't seem to understand why I kept sneezing, did they? It was all so...strange.~ */
=
@115 /* ~What was so wonderful, though, was being there with *you*. I loved being so safe and calm and waking up to you every morning.~ */
++ @109 /* ~Nathaniel, that's very nice of you to say. I liked being with you, too.~ */ + FHLT1_sweet
++ @110 /* ~I hope that one day we can settle down again, wherever we want to.~ */ + FHLT1_feltsame
++ @112 /* ~Being with you is what's important, not whether we're on the road or not.~ */ + FHLT1_important
END

IF ~~ THEN BEGIN FHLT1_whylike
SAY @116 /* ~It certainly wasn't for the scenery! Do you remember how strangely the elves looked at me when I couldn't stop sneezing?~ */
=
@117 /* ~Or rather, it was one particular piece of scenery...the reason why I loved being there was *you*.~ */
=
@118 /* ~It was just so wonderful, you see, being so settled and sleeping next to you every night.~ */
++ @109 /* ~Nathaniel, that's very nice of you to say. I liked being with you, too.~ */ + FHLT1_sweet
++ @110 /* ~I hope that one day we can settle down again, wherever we want to.~ */ + FHLT1_feltsame
++ @111 /* ~I didn't enjoy staying in one place like that. I like to be on the road.~ */ + FHLT1_notstay
++ @112 /* ~Being with you is what's important, not whether we're on the road or not.~ */ + FHLT1_important
END

IF ~~ THEN BEGIN FHLT1_stay
SAY @119 /* ~<CHARNAME>, I'd never even think about doing something like that! I love you, I went to Hell with you, and I'll certainly come here with you!~ */
=
@120 /* ~Besides, Suldanessellar wasn't good to be in because of the city, it was because of *you*.~ */
=
@121 /* ~Waking up next to you every day was-- I could never give that up. Being settled was wonderful, because I was with you.~ */
++ @109 /* ~Nathaniel, that's very nice of you to say. I liked being with you, too.~ */ + FHLT1_sweet
++ @110 /* ~I hope that one day we can settle down again, wherever we want to.~ */ + FHLT1_feltsame
++ @111 /* ~I didn't enjoy staying in one place like that. I like to be on the road.~ */ + FHLT1_notstay
++ @112 /* ~Being with you is what's important, not whether we're on the road or not.~ */ + FHLT1_important
END

IF ~~ THEN BEGIN FHLT1_feltsame
SAY @122 /* ~Good. I love you...more than I thought I could love anyone...and I want us to have that feeling again.~ */
=
@123 /* ~I know this isn't really the time, but you know I'm not the best person at this kind of thing anyway...I just want to tell you that you're the - the most important person in the world to me. I want to spend the rest of my life with you.~ */
++ @124 /* ~Steady on! I haven't even known you for very long.~ */ + FHLT1_steadyon
++ @125 /* ~I love you too, Nathaniel. There's nothing I'd like better.~ */ + FHLT1_loveyoutoo
++ @126 /* ~Thank you, Nathaniel. You mean a lot to me too.~ */ + FHLT1_loveyoutoo
END

IF ~~ THEN BEGIN FHLT1_sweet
SAY @127 /* ~It's true. I love you more than I thought I could love anyone, and I want...I want us to have that feeling again.~ */
=
@123 /* ~I know this isn't really the time, but you know I'm not the best person at this kind of thing anyway...I just want to tell you that you're the - the most important person in the world to me. I want to spend the rest of my life with you.~ */
++ @124 /* ~Steady on! I haven't even known you for very long.~ */ + FHLT1_steadyon
++ @125 /* ~I love you too, Nathaniel. There's nothing I'd like better.~ */ + FHLT1_loveyoutoo
++ @126 /* ~Thank you, Nathaniel. You mean a lot to me too.~ */ + FHLT1_loveyoutoo
END

IF ~~ THEN BEGIN FHLT1_notstay
SAY @128 /* ~I...can't say I understand, or that I agree. One day I do want to stop adventuring and live with you in a place that we both like. But that can wait, if you want to.~ */
=
@129 /* ~I love you, <CHARNAME>, more than I thought I'd love anyone. I know this isn't really the time, but you know I'm not the best person at this kind of thing anyway...I just want to tell you that you're the - the most important person in the world to me. I want to spend the rest of my life with you.~ */
++ @124 /* ~Steady on! I haven't even known you for very long.~ */ + FHLT1_steadyon
++ @125 /* ~I love you too, Nathaniel. There's nothing I'd like better.~ */ + FHLT1_loveyoutoo
++ @126 /* ~Thank you, Nathaniel. You mean a lot to me too.~ */ + FHLT1_loveyoutoo
END

IF ~~ THEN BEGIN FHLT1_important
SAY @130 /* ~Of course that's the most important thing, <CHARNAME> - I love you, more than I thought I could love anyone!~ */
=
@131 /* ~Someday I do want to settle down, just the two of us, and stop adventuring. But the fact is that I couldn't live without you. I know this isn't really the time, but you know I'm not the best person at this kind of thing anyway...I just want to tell you that you're the - the most important person in the world to me. I want to spend the rest of my life with you.~ */
++ @124 /* ~Steady on! I haven't even known you for very long.~ */ + FHLT1_steadyon
++ @125 /* ~I love you too, Nathaniel. There's nothing I'd like better.~ */ + FHLT1_loveyoutoo
++ @126 /* ~Thank you, Nathaniel. You mean a lot to me too.~ */ + FHLT1_loveyoutoo
END

IF ~~ THEN BEGIN FHLT1_change
SAY @132 /* ~I feel a bit more peaceful, I think. I'm not worrying about you and me so much. We survived Hell together, so there can't be anything that would break us apart now!~ */
=
@133 /* ~The truth is that I love you completely. I know now that together we can get through anything.~ */
=
@123 /* ~I know this isn't really the time, but you know I'm not the best person at this kind of thing anyway...I just want to tell you that you're the - the most important person in the world to me. I want to spend the rest of my life with you.~ */
++ @124 /* ~Steady on! I haven't even known you for very long.~ */ + FHLT1_steadyon
++ @125 /* ~I love you too, Nathaniel. There's nothing I'd like better.~ */ + FHLT1_loveyoutoo
++ @126 /* ~Thank you, Nathaniel. You mean a lot to me too.~ */ + FHLT1_loveyoutoo
END

IF ~~ THEN BEGIN FHLT1_steadyon
SAY @134 /* ~But I'm serious, I--~ */
=
@135 /* ~Ahh, never mind. I love you, I love being with you. That's what's important. Let's get going, shall we? Whatever comes, we'll face it together.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT1_loveyoutoo
SAY @136 /* ~I'm so glad I'm with you. I can only hope I can repay you someday...but we have the whole of our lives to do that!~ */
=
@137 /* ~Even so...I'll start tonight.~ */
IF ~~ THEN EXIT
END


//Lovetalk 2//
IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHExpLoveTalk","LOCALS",4)~ THEN BEGIN FHLT2
SAY @138 /* ~<CHARNAME>, I know it's a little far in advance, but do you think you'd ever want to have children?~ */
++ @139 /* ~Why do you ask? Are you getting broody?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT2_broody
IF ~Global("FHBoyNath","GLOBAL",0)~ THEN REPLY @140 /* ~Where did that come from?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT2_where1
IF ~GlobalGT("FHBoyNath","GLOBAL",0)~ THEN REPLY @140 /* ~Where did that come from?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT2_where2
++ @141 /* ~I'm sorry, but I can't think about things like this when my life is so unstable.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT2_plan
++ @142 /* ~Didn't your father ever teach you about the birds and the bees?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT2_bird
++ @143 /* ~Yes, I would like to have children, one day.~ */ DO ~SetGlobal("FHKids","GLOBAL",1) SetGlobal("FHSettle","GLOBAL",1) IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT2_yeskids
++ @144 /* ~No, I don't think I would.~ */ + FHLT2_nokids
END

IF ~~ THEN BEGIN FHLT2_plan
SAY @145 /* ~That's the thing. There's so many terrible things happening, but thinking about the future - well, it makes me feel better about the present.~ */
++ @146 /* ~Fair enough, but I don't really enjoy discussing it.~ */ + FHLT2_notalk
++ @147 /* ~Sorry, Nathaniel, but I have other things to think about.~ */ + FHLT2_notalk
IF ~Global("FHBoyNath","GLOBAL",0)~ THEN REPLY @148 /* ~All right, then. So what do you have in mind regarding children?~ */ + FHLT2_where1
IF ~GlobalGT("FHBoyNath","GLOBAL",0)~ THEN REPLY @148 /* ~All right, then. So what do you have in mind regarding children?~ */ + FHLT2_where2
++ @149 /* ~I don't mind discussing future plans, but discussing children is going a bit far.~ */ + FHLT2_notalk
END

IF ~~ THEN BEGIN FHLT2_where1
SAY @150 /* ~For me, thinking about what we'll do when all this stops makes things feel better, so I was just thinking about it, and I'd like to maybe have children.~ */
=
@151 /* ~If we took in a child - or more than one - who didn't have anyone, it'd make their lives so much better. And it'd make *our* lives so much better too. We'd be a family.~ */
=
@152 /* ~I was just thinking about it, that's all. If you don't want to do it, that's fine.~ */
++ @153 /* ~I'd like to settle down with you one day, but I'm not sure about having children.~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_settleyes
++ @154 /* ~I'd like to do that. I've always wanted a proper family.~ */ DO ~SetGlobal("FHKids","GLOBAL",1) SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_yeskids
++ @155 /* ~I'm not even sure about settling in one place. It doesn't seem right for me.~ */ DO ~SetGlobal("FHSettle","GLOBAL",2)~ + FHLT2_nosettle
++ @156 /* ~I don't think so, Nathaniel. I'm not very fond of children.~ */ + FHLT2_nokids
++ @157 /* ~There's so much going on that it's impossible to know what'll happen. I'd rather not discuss it.~ */ + FHLT2_notalk
END

IF ~~ THEN BEGIN FHLT2_where2
SAY @158 /* ~Well, Elenor was so sad, wasn't she? I'd do anything to stop things like that happening. And if we didn't live the way we do we could have taken her in.~ */
=
@151 /* ~If we took in a child - or more than one - who didn't have anyone, it'd make their lives so much better. And it'd make *our* lives so much better too. We'd be a family.~ */
=
@152 /* ~I was just thinking about it, that's all. If you don't want to do it, that's fine.~ */
++ @153 /* ~I'd like to settle down with you one day, but I'm not sure about having children.~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_settleyes
++ @154 /* ~I'd like to do that. I've always wanted a proper family.~ */ DO ~SetGlobal("FHKids","GLOBAL",1) SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_yeskids
++ @155 /* ~I'm not even sure about settling in one place. It doesn't seem right for me.~ */ DO ~SetGlobal("FHSettle","GLOBAL",2)~ + FHLT2_nosettle
++ @156 /* ~I don't think so, Nathaniel. I'm not very fond of children.~ */ + FHLT2_nokids
++ @157 /* ~There's so much going on that it's impossible to know what'll happen. I'd rather not discuss it.~ */ + FHLT2_notalk
END

IF ~~ THEN BEGIN FHLT2_bird
SAY @159 /* ~I was talking about *adopting*. If we took in a child - or more than one - who didn't have anyone, it'd make their lives so much better. And it'd make *our* lives so much better too. We'd be a family.~ */
=
@152 /* ~I was just thinking about it, that's all. If you don't want to do it, that's fine.~ */
++ @153 /* ~I'd like to settle down with you one day, but I'm not sure about having children.~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_settleyes
++ @154 /* ~I'd like to do that. I've always wanted a proper family.~ */ DO ~SetGlobal("FHKids","GLOBAL",1) SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_yeskids
++ @155 /* ~I'm not even sure about settling in one place. It doesn't seem right for me.~ */ DO ~SetGlobal("FHSettle","GLOBAL",2)~ + FHLT2_nosettle
++ @156 /* ~I don't think so, Nathaniel. I'm not very fond of children.~ */ + FHLT2_nokids
++ @157 /* ~There's so much going on that it's impossible to know what'll happen. I'd rather not discuss it.~ */ + FHLT2_notalk
END

IF ~~ THEN BEGIN FHLT2_broody
SAY @160 /* ~Not exactly, but I've always liked the idea of having children. If we took in a child - or more than one - who didn't have anyone, it'd make their lives so much better. And it'd make *our* lives so much better too. We'd be a family.~ */
=
@152 /* ~I was just thinking about it, that's all. If you don't want to do it, that's fine.~ */
++ @153 /* ~I'd like to settle down with you one day, but I'm not sure about having children.~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_settleyes
++ @154 /* ~I'd like to do that. I've always wanted a proper family.~ */ DO ~SetGlobal("FHKids","GLOBAL",1) SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_yeskids
++ @155 /* ~I'm not even sure about settling in one place. It doesn't seem right for me.~ */ DO ~SetGlobal("FHSettle","GLOBAL",2)~ + FHLT2_nosettle
++ @156 /* ~I don't think so, Nathaniel. I'm not very fond of children.~ */ + FHLT2_nokids
++ @157 /* ~There's so much going on that it's impossible to know what'll happen. I'd rather not discuss it.~ */ + FHLT2_notalk
END

IF ~~ THEN BEGIN FHLT2_notalk
SAY @161 /* ~Of course. I'm sorry, don't worry about it.~ */
IF ~Global("FHNoTalkSettle","GLOBAL",0)~ THEN DO ~SetGlobal("FHNoTalkSettle","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN FHLT2_nokids
SAY @162 /* ~Well, being with you is the important thing, no matter whether we've got children. I love you.~ */
=
@163 /* ~Still, it might be nice, one day...~ */
++ @153 /* ~I'd like to settle down with you one day, but I'm not sure about having children.~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_settleyes
++ @154 /* ~I'd like to do that. I've always wanted a proper family.~ */ DO ~SetGlobal("FHKids","GLOBAL",1) SetGlobal("FHSettle","GLOBAL",1)~ + FHLT2_yeskids
++ @155 /* ~I'm not even sure about settling in one place. It doesn't seem right for me.~ */ DO ~SetGlobal("FHSettle","GLOBAL",2)~ + FHLT2_nosettle
++ @156 /* ~I don't think so, Nathaniel. I'm not very fond of children.~ */ + FHLT2_nokids
++ @157 /* ~There's so much going on that it's impossible to know what'll happen. I'd rather not discuss it.~ */ + FHLT2_notalk
END

IF ~~ THEN BEGIN FHLT2_yeskids
SAY @164 /* ~That's...<CHARNAME>, that's so good to hear! I love you so much!~ */
=
@165 /* ~I've always thought you should decorate a nursery so children can enjoy them when they're older too, don't you agree? And of course you have to feed them good food...~ */
++ @166 /* ~Er, Nathaniel? You do realise we're still fighting for our lives, don't you?~ */ + FHLT2_carry
++ @167 /* ~I like neutral tones for nurseries. That way they won't grow out of them so quickly.~ */ + FHLT2_kids
++ @168 /* ~But children should have spaces that reflect the way they are, not what they will be.~ */ + FHLT2_kids
END

IF ~~ THEN BEGIN FHLT2_carry
SAY @169 /* ~I know, I know, I'm getting carried away. But I love to plan for the future - it makes things seem, well, worthwhile.~ */
=
@170 /* ~But we've got years and years for these conversations. We should get moving, shouldn't we?~ */
IF ~~ THEN DO ~SetGlobal("FHNoTalkSettle","GLOBAL",0)~
EXIT
END

IF ~~ THEN BEGIN FHLT2_kids
SAY @171 /* ~Ahh, but--~ */
=
@172 /* ~Ha, we should probably have this conversation a long time in the future. But thank you, <CHARNAME> - I love planning, it makes things seem, well, worthwhile.~ */
=
@170 /* ~But we've got years and years for these conversations. We should get moving, shouldn't we?~ */
IF ~~ THEN DO ~SetGlobal("FHNoTalkSettle","GLOBAL",0)~
EXIT
END

IF ~~ THEN BEGIN FHLT2_nosettle
SAY @173 /* ~...oh. Well, it's being with you that's important. Of course I'll stay with you, wherever we are.~ */
IF ~~ THEN DO ~SetGlobal("FHNoTalkSettle","GLOBAL",0)~
EXIT
END

IF ~~ THEN BEGIN FHLT2_maybekids
SAY @174 /* ~Of course. I don't want to force you into anything.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT2_settleyes
SAY @175 /* ~Well, settling down with you would be wonderful, no matter who's with us!~ */
=
@176 /* ~I know, I know, I'm getting overexcited. But I love to plan these things - it makes everything seem worthwhile, you know?~ */
IF ~~ THEN DO ~SetGlobal("FHNoTalkSettle","GLOBAL",0)~
EXIT
END

//Lovetalk 3//
IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHExpLoveTalk","LOCALS",6)~ THEN BEGIN FHLT3
SAY @177 /* ~I've been having a bit of trouble sleeping, <CHARNAME> - do you mind if I talk to you for a bit?~ */
++ @178 /* ~Of course not. What's up?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT3_what
++ @179 /* ~Sorry, Nathaniel, I need to rest.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT3_rest
++ @180 /* ~If you need to talk, of course you can.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT3_what
END

IF ~~ THEN BEGIN FHLT3_what
SAY @181 /* ~It's just that, well, people are saying such terrible things about the Bhaalspawn. About you.~ */
=
@182 /* ~It's not fair for them to judge you based on the things others have done! I know that you're a good person and, and it bothers me.~ */
++ @183 /* ~Don't let them bother you - it's not worth getting worried about.~ */ + FHLT3_bother
++ @184 /* ~I know. It's so unfair, especially considering all the good things I've done.~ */ + FHLT3_metoo
++ @185 /* ~I know what you mean, but together we can get through anything.~ */ + FHLT3_together
END

IF ~~ THEN BEGIN FHLT3_rest
SAY @186 /* ~Of course. Here, let me hold you...~ */
=
@187 /* ~Mmm...I don't think I'll have a problem sleeping now.~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN FHLT3_bother
SAY @188 /* ~(sigh) I know. But it does bother me. I can't stand that there are people who think that - that you're a bad person.~ */
=
@189 /* ~Because you're not, and I wish I could make them believe that you're not.~ */
++ @190 /* ~You being with me makes up for all of their judgements about me.~ */ + FHLT3_together
++ @191 /* ~Don't worry about it: their opinions aren't important.~ */ + FHLT3_opinion
++ @6 /* ~(Hug Nathaniel.)~ */ + FHLT3_hug2
END

IF ~~ THEN BEGIN FHLT3_metoo
SAY @192 /* ~Somehow, it makes me feel better to know that. Not that I want you to feel bad or anything! But it's comforting.~ */
=
@193 /* ~I like that I can just tell you things that are bothering me, my love - I don't feel uncomfortable or guilty. Sometimes I did, with--~ */
=
@194 /* ~But we should sleep now. You need to keep up your strength.~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN FHLT3_together
SAY @195 /* ~Oh, <CHARNAME>, you always seem to know the thing to say that'll make me feel better.~ */
++ @196 /* ~I love you, Nathaniel.~ */ + FHLT3_love
++ @197 /* ~I take it you are feeling better, then?~ */ + FHLT3_feelbetter
++ @198 /* ~Well, it's my job to make you feel better, after all.~ */ + FHLT3_feelbetter
++ @199 /* ~Good. Now, let's sleep. We need to be alert at times like this.~ */ + FHLT3_rest
END

IF ~~ THEN BEGIN FHLT3_opinion
SAY @200 /* ~Maybe not. Ahh, there's no use worrying about it, I suppose.~ */
=
@201 /* ~That's odd. A year ago I'd never have said that. That's *your* influence, <CHARNAME>.~ */
++ @196 /* ~I love you, Nathaniel.~ */ + FHLT3_love
++ @197 /* ~I take it you are feeling better, then?~ */ + FHLT3_feelbetter
++ @198 /* ~Well, it's my job to make you feel better, after all.~ */ + FHLT3_feelbetter
++ @199 /* ~Good. Now, let's sleep. We need to be alert at times like this.~ */ + FHLT3_rest
END

IF ~~ THEN BEGIN FHLT3_hug2
SAY @202 /* ~Ohh, you're so warm...~ */
=
@203 /* ~*yawn*~ */
=
@204 /* ~All right, we should sleep now. Thank you, my love...~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN FHLT3_love
SAY @205 /* ~I love you too. And you make me feel...I can't even describe it.~ */
=
@203 /* ~*yawn*~ */
=
@206 /* ~All right, we should sleep now. Thank you...~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ THEN BEGIN FHLT3_feelbetter
SAY @207 /* ~Yes. I feel a lot better.~ */
=
@203 /* ~*yawn*~ */
=
@204 /* ~All right, we should sleep now. Thank you, my love...~ */
IF ~~ THEN DO ~RestParty()~
EXIT
END

//Lovetalk 4//
IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHExpLoveTalk","LOCALS",8)~ THEN BEGIN FHLT4
SAY @208 /* ~It's strange. I'd never have dreamed I'd be in this situation - that *we'd* be in this situation.~ */
++ @209 /* ~Which particular situation were you thinking of?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT4_situation
++ @210 /* ~Neither would I. I wish we didn't have to do all this.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT4_wish
++ @211 /* ~Neither would I. It's exhilarating, isn't it?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT4_exhil
++ @212 /* ~When we live our kind of life, you can never see what's coming round the corner.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT4_corner
END

IF ~~ THEN BEGIN FHLT4_situation
SAY @213 /* ~Well, you know what I mean, don't you? It seems like hardly any time ago that you were the hero of Baldur's Gate. Now, you could destroy the Iron Throne with your little finger.~ */
=
@214 /* ~It worries me a little. What if we do something wrong and people get hurt because of us? We're so powerful and it's...odd...to think of the responsibility we've got.~ */
++ @215 /* ~Not quite my little finger. My index finger, maybe.~ */ + FHLT4_index
++ @216 /* ~Isn't that a good thing? We need to be able to defend ourselves.~ */ + FHLT4_defend
++ @217 /* ~I think I see what you mean. It...scares me, sometimes.~ */ + FHLT4_scare
++ @218 /* ~Sometimes I wish I could return to those times, but it's not possible, is it?~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT4_return
++ @219 /* ~Yes, it's unsettling. I've never liked responsibility.~ */ + FHLT4_responsibility
END

IF ~~ THEN BEGIN FHLT4_wish
SAY @220 /* ~I'd love nothing better than to whisk you away and live in a town somewhere and not have to worry about Bhaal, or destiny, or all these people who want to kill us.~ */
=
@221 /* ~I mean, I used to be proud if I managed to kill a - a kobold or something, but now we're going after these children of Bhaal and changing the whole world!~ */
=
@222 /* ~It worries me a little. What if we do something wrong and people get hurt because of us? We're so powerful now and it's...strange...to think of the responsibility we've got.~ */
++ @223 /* ~Still, even though there's lots of pressure we know we can defend ourselves.~ */ + FHLT4_defend
++ @224 /* ~I agree. It scares me a little, sometimes.~ */ + FHLT4_scare
++ @225 /* ~It's a shame that we can't return to the old days when things were quieter, isn't it?~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT4_return
++ @226 /* ~I know. I've always hated responsibility.~ */ + FHLT4_responsibility
END

IF ~~ THEN BEGIN FHLT4_exhil
SAY @227 /* ~Mmm, that's one word for it. Sometimes...I just wish we didn't have to worry about Bhaal and destiny. I mean, I used to be proud if I managed to kill a - a kobold or something, but now we're going after these children of Bhaal and changing the whole world!~ */
=
@222 /* ~It worries me a little. What if we do something wrong and people get hurt because of us? We're so powerful now and it's...strange...to think of the responsibility we've got.~ */
++ @228 /* ~Still, it's good that we can defend ourselves.~ */ + FHLT4_defend
++ @229 /* ~I'd have thought you'd have got used to unpredictability in our lives.~ */ + FHLT4_unpredictable
++ @230 /* ~I see what you mean. I've never liked having responsibility.~ */ + FHLT4_responsibility
++ @231 /* ~Well, I enjoy being powerful. Who doesn't?~ */ + FHLT4_power
END

IF ~~ THEN BEGIN FHLT4_corner
SAY @232 /* ~That's true. And that's kind of what worries me. Sometimes...I just wish we didn't have to worry about Bhaal and destiny. I mean, I used to be proud if I managed to kill a - a kobold or something, but now we're going after these children of Bhaal and changing the whole world!~ */
=
@233 /* ~What if we do something wrong and people get hurt because of us? We're so powerful now and it's...strange...to think of the responsibility we've got.~ */
++ @216 /* ~Isn't that a good thing? We need to be able to defend ourselves.~ */ + FHLT4_defend
++ @217 /* ~I think I see what you mean. It...scares me, sometimes.~ */ + FHLT4_scare
++ @218 /* ~Sometimes I wish I could return to those times, but it's not possible, is it?~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT4_return
++ @219 /* ~Yes, it's unsettling. I've never liked responsibility.~ */ + FHLT4_responsibility
++ @234 /* ~I enjoy being as powerful as I am. Who doesn't?~ */ + FHLT4_unpredictable
END

IF ~~ THEN BEGIN FHLT4_index
SAY @235 /* ~<CHARNAME>, I'm serious. I mean, I used to be proud if I killed a - a nest of kobolds or something, and now here we are going after children of Bhaal and changing the whole world!~ */
=
@233 /* ~What if we do something wrong and people get hurt because of us? We're so powerful now and it's...strange...to think of the responsibility we've got.~ */
++ @216 /* ~Isn't that a good thing? We need to be able to defend ourselves.~ */ + FHLT4_defend
++ @217 /* ~I think I see what you mean. It...scares me, sometimes.~ */ + FHLT4_scare
++ @218 /* ~Sometimes I wish I could return to those times, but it's not possible, is it?~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT4_return
++ @219 /* ~Yes, it's unsettling. I've never liked responsibility.~ */ + FHLT4_responsibility
++ @234 /* ~I enjoy being as powerful as I am. Who doesn't?~ */ + FHLT4_unpredictable
END

IF ~~ THEN BEGIN FHLT4_defend
SAY @236 /* ~Of course! I wouldn't want us to be killed just because we weren't willing to use our skills. It's just...I don't know...~ */
++ @237 /* ~It's all right, Nathaniel, you can tell me.~ */ + FHLT4_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHLT4_willing
++ @239 /* ~I hope you're willing to use your other "skills" in the meantime...~ */ + FHLT4_skills
++ @240 /* ~Sometimes it scares me a little, too, but we just have to deal with it.~ */ + FHLT4_deal
END

IF ~~ THEN BEGIN FHLT4_scare
SAY @241 /* ~Really? Thank you for telling me, <CHARNAME> - I'll try to help you feel better if you're afraid.~ */
=
@242 /* ~I'm not saying that I want us to be killed just because we're unwilling to use our skills. It's just...I don't know...~ */
++ @237 /* ~It's all right, Nathaniel, you can tell me.~ */ + FHLT4_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHLT4_willing
++ @239 /* ~I hope you're willing to use your other "skills" in the meantime...~ */ + FHLT4_skills
++ @240 /* ~Sometimes it scares me a little, too, but we just have to deal with it.~ */ + FHLT4_deal
END

IF ~~ THEN BEGIN FHLT4_return
SAY @243 /* ~I know what you mean. Sometimes I think I'd like to return to those days, but there's no point thinking like that. After all, I wouldn't have met you if we were still in the old days, would I?~ */
=
@244 /* ~It's not that I want us to be killed because we're unwilling to use our skills. It's just...I don't know...~ */
++ @237 /* ~It's all right, Nathaniel, you can tell me.~ */ + FHLT4_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHLT4_willing
++ @239 /* ~I hope you're willing to use your other "skills" in the meantime...~ */ + FHLT4_skills
++ @240 /* ~Sometimes it scares me a little, too, but we just have to deal with it.~ */ + FHLT4_deal
END

IF ~~ THEN BEGIN FHLT4_better
SAY @245 /* ~Oh, I am, don't worry about that! I'm not saying that I want us to get killed just because we don't want to use our skills. It's just...I don't know...~ */
++ @237 /* ~It's all right, Nathaniel, you can tell me.~ */ + FHLT4_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHLT4_willing
++ @239 /* ~I hope you're willing to use your other "skills" in the meantime...~ */ + FHLT4_skills
++ @240 /* ~Sometimes it scares me a little, too, but we just have to deal with it.~ */ + FHLT4_deal
END

IF ~~ THEN BEGIN FHLT4_responsibility
SAY @246 /* ~It's not so much that. I don't mind responsibility for people who are in it because they want to be - like being a captain in the Flaming Fist. What bothers me is if people get hurt who don't have any choice.~ */
++ @247 /* ~Still, it's good that we're capable of defending ourselves.~ */ + FHLT4_defend
++ @217 /* ~I think I see what you mean. It...scares me, sometimes.~ */ + FHLT4_scare
++ @218 /* ~Sometimes I wish I could return to those times, but it's not possible, is it?~ */ DO ~SetGlobal("FHSettle","GLOBAL",1)~ + FHLT4_return
++ @234 /* ~I enjoy being as powerful as I am. Who doesn't?~ */ + FHLT4_unpredictable
END

IF ~~ THEN BEGIN FHLT4_unpredictable
SAY @248 /* ~I have, don't worry. I'm not saying that I want us to get killed just because we don't want to use our skills. It's just...I don't know...~ */
++ @237 /* ~It's all right, Nathaniel, you can tell me.~ */ + FHLT4_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHLT4_willing
++ @239 /* ~I hope you're willing to use your other "skills" in the meantime...~ */ + FHLT4_skills
++ @240 /* ~Sometimes it scares me a little, too, but we just have to deal with it.~ */ + FHLT4_deal
END

IF ~~ THEN BEGIN FHLT4_power
SAY @249 /* ~Well, I'm not saying it isn't...nice...for me to be able to defend you against people who want to hurt you. And I wouldn't want us to get killed because we didn't want to use our skills. It's just...I don't know...~ */
++ @237 /* ~It's all right, Nathaniel, you can tell me.~ */ + FHLT4_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHLT4_willing
++ @239 /* ~I hope you're willing to use your other "skills" in the meantime...~ */ + FHLT4_skills
++ @240 /* ~Sometimes it scares me a little, too, but we just have to deal with it.~ */ + FHLT4_deal
END

IF ~~ THEN BEGIN FHLT4_tell
SAY @250 /* ~It's just that...well, sometimes I forget that you're the child of a god. Not that you're not a wonderful person, but I... Ahh, that wasn't what I meant.~ */
=
@251 /* ~I think I'm not used to events this big, that's all. You'd think I would have got used to them, wouldn't you! I suppose it'll just take a bit of time.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT4_willing
SAY @252 /* ~Of course I am. Always, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT4_skills
SAY @253 /* ~Oh, anytime, <CHARNAME>. All you have to do is ask. We can start next time we rest, if you like.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT4_deal
SAY @254 /* ~You're right. I think it's just that I'm not used to events this big, that's all. You'd think I would have got used to them, travelling with you! I suppose it'll just take time.~ */
IF ~~ THEN EXIT
END

//First in the second set of talks - after the Oasis and meeting with Balthazar//
//Lovetalk 5//
IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHExpLoveTalk","LOCALS",10)~ THEN BEGIN FHLT5
SAY @255 /* ~I never thought that people would think of you in such a way after you've done so many good things. It's...oh, it's just unfair!~ */
++ @256 /* ~It's not a problem. I can defeat however many people they send to apprehend us.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT5_defeat
++ @257 /* ~Letting these kinds of things get to us will only result in more pain.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT5_focus
++ @258 /* ~Don't worry about it: we know that we're doing the right thing.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT5_right
++ @259 /* ~I know, and it concerns me that those soldiers thought they were in the right.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT5_thought
END

IF ~~ THEN BEGIN FHLT5_know
SAY @260 /* ~Of course I don't! <CHARNAME>, I was just...~ */
=
@261 /* ~I didn't mean to be insensitive and I'm sorry if it sounded that way.~ */
++ @262 /* ~No, don't worry about it, I'm feeling a little fragile.~ */ + FHLT5_fragile
++ @263 /* ~It's just that what makes it worse is that those soldiers thought they were in the right.~ */ + FHLT5_thought
++ @264 /* ~Just leave it, Nathaniel. I'm not in the mood for discussing this.~ */ + FHLT5_leave
++ @265 /* ~I don't think that talking about this will help either of us feel better.~ */ + FHLT5_leave
END

IF ~~ THEN BEGIN FHLT5_defeat
SAY @266 /* ~I don't doubt that. Maybe that's what bothers me - I don't want us to turn into the kind of people those soldiers thought we were.~ */
IF ~~ THEN + FHLT5_see
END

IF ~~ THEN BEGIN FHLT5_see
SAY @267 /* ~Do you see what I mean?~ */
++ @268 /* ~Not really. I know that we're in the right.~ */ + FHLT5_right2
++ @269 /* ~I just think that if we think about this it will only make us feel worse.~ */ + FHLT5_right2
++ @270 /* ~I'm a little afraid of that too - Bhaal's taint is unpredictable.~ */ + FHLT5_taint
++ @271 /* ~But how can we reason with everyone who thinks we're evildoers?~ */ + FHLT5_reason
END

IF ~~ THEN BEGIN FHLT5_focus
SAY @272 /* ~Maybe, but I think I'm just... Well, I don't want us to turn into the kind of people those soldiers thought we were.~ */
IF ~~ THEN + FHLT5_see
END

IF ~~ THEN BEGIN FHLT5_right
SAY @273 /* ~Yes. Yes, I know that we're doing the right thing. But still, they thought they were too. I think maybe I'm a little afraid that we'll turn into the kind of people they thought we were.~ */
IF ~~ THEN + FHLT5_see
END

IF ~~ THEN BEGIN FHLT5_thought
SAY @274 /* ~Yes. Yes, you're right. They did, didn't they? I don't know...~ */
=
@275 /* ~I'm sorry. You must be feeling bad too, and here I am being anxious. Is there anything I can do?~ */
++ @276 /* ~Not right now, Nathaniel, I'd rather just be left alone.~ */ + FHLT5_left
++ @277 /* ~You don't have to *do* anything. Having you around is fine.~ */ + FHLT5_left
++ @278 /* ~No. There's nothing either of us can do. And that's what makes it so bad.~ */ + FHLT5_bad
END

IF ~~ THEN BEGIN FHLT5_fragile
SAY @279 /* ~I'm sorry. Here I am being anxious when you've got so much to worry about. Is there anything I can do?~ */
++ @276 /* ~Not right now, Nathaniel, I'd rather just be left alone.~ */ + FHLT5_left
++ @277 /* ~You don't have to *do* anything. Having you around is fine.~ */ + FHLT5_left
++ @278 /* ~No. There's nothing either of us can do. And that's what makes it so bad.~ */ + FHLT5_bad
END

IF ~~ THEN BEGIN FHLT5_leave
SAY @280 /* ~Of course - I'm sorry. But just remember that you can talk to me, all right? Is there anything I can do now?~ */
++ @276 /* ~Not right now, Nathaniel, I'd rather just be left alone.~ */ + FHLT5_left
++ @277 /* ~You don't have to *do* anything. Having you around is fine.~ */ + FHLT5_left
++ @278 /* ~No. There's nothing either of us can do. And that's what makes it so bad.~ */ + FHLT5_bad
END

IF ~~ THEN BEGIN FHLT5_right2
SAY @281 /* ~Well, maybe it's best not to dwell on it, then. Those soldiers shook me up, too.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT5_taint
SAY @282 /* ~Oh no, I didn't mean it like that. I know you're in control of the...the taint, and if you start thinking that you can't control it, I'll do everything I can to help you.~ */
=
@283 /* ~Is there anything you'd like me to do now?~ */
++ @276 /* ~Not right now, Nathaniel, I'd rather just be left alone.~ */ + FHLT5_left
++ @277 /* ~You don't have to *do* anything. Having you around is fine.~ */ + FHLT5_left
++ @278 /* ~No. There's nothing either of us can do. And that's what makes it so bad.~ */ + FHLT5_bad
END

IF ~~ THEN BEGIN FHLT5_reason
SAY @284 /* ~I don't know, and that's what worries me, I suppose. But I suppose we can't do anything about other people if they want to think like that about us. *sigh*~ */
=
@285 /* ~Well, I know that you're a good person, so if you start feeling unsure just remember that, all right? Is there anything you'd like now?~ */
++ @276 /* ~Not right now, Nathaniel, I'd rather just be left alone.~ */ + FHLT5_left
++ @277 /* ~You don't have to *do* anything. Having you around is fine.~ */ + FHLT5_left
++ @278 /* ~No. There's nothing either of us can do. And that's what makes it so bad.~ */ + FHLT5_bad
END

IF ~~ THEN BEGIN FHLT5_left
SAY @286 /* ~Of course. We can talk later, if you'd like.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT5_hug
SAY @287 /* ~Mmm, that's always good.~ */
=
@288 /* ~I hope you feel better later.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT5_bad
SAY @289 /* ~No, <CHARNAME>, we mustn't-- you mustn't think like that. It'll be all right, I know it will.~ */
IF ~~ THEN EXIT
END

//Lovetalk 6//
IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHExpLoveTalk","LOCALS",12)~ THEN BEGIN FHLT6
SAY @290 /* ~<CHARNAME>? I was wondering, do we have a moment?~ */
++ @291 /* ~Of course. What's up?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT6_start
++ @292 /* ~This isn't the most convenient of times. Can it wait?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT6_start
++ @293 /* ~Sorry, Nathaniel, I don't have time.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT6_notime
END

IF ~~ THEN BEGIN FHLT6_start
SAY @294 /* ~Well, I got something for you...it isn't much, and it isn't really the best moment, I know, but I thought I'd never get round to it if I--~ */
++ @295 /* ~Stop stammering and give me the present.~ */ + FHLT6_present
++ @296 /* ~What are you waiting for? Let's see.~ */ + FHLT6_present
++ @297 /* ~You're right, it isn't the best moment.~ */ + FHLT6_notime
END

IF ~~ THEN BEGIN FHLT6_notime
SAY @298 /* ~Ah, all right. Fair enough.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT6_present
SAY @299 /* ~All right, here it is. Sorry, I didn't have time to wrap it or anything.~ */
=
@300 /* ~(Nathaniel hands you a simple pendant on a silver chain.)~ */
++ @301 /* ~I'll put it on right away! Thank you so much.~ */ + FHLT6_puton
++ @302 /* ~Do you mind if I keep it safe rather than wearing it? I don't want it damaged.~ */ + FHLT6_safe
++ @303 /* ~It's...um, it's very nice.~ */ + FHLT6_lie
END

IF ~~ THEN BEGIN FHLT6_puton
SAY @304 /* ~I'm so glad you like it! There were quite a few there, but I thought maybe you'd like that colour. Are you sure it's all right? I could get you a different one, or something.~ */
++ @305 /* ~Don't fish for compliments, Nathaniel, it's not attractive.~ */ + FHLT6_fish
++ @306 /* ~Don't be ridiculous. Where would you get another one, anyway?~ */ + FHLT6_another
++ @307 /* ~Sssh, I love it. Are you satisfied?~ */ + FHLT6_love
END

IF ~~ THEN BEGIN FHLT6_safe
SAY @308 /* ~Oh, of course not! I'd hate for it to get lost.~ */
IF ~~ THEN DO ~GiveItemCreate("FHAMUL",Player1,0,0,0)~
EXIT
END

IF ~~ THEN BEGIN FHLT6_lie
SAY @309 /* ~*sigh* You don't have to pretend, <CHARNAME> - I don't mind if you don't wear it.~ */
=
@310 /* ~Besides, now I know more what you like.~ */
IF ~~ THEN DO ~GiveItemCreate("FHAMUL",Player1,0,0,0)~
EXIT
END

IF ~~ THEN BEGIN FHLT6_fish
SAY @311 /* ~Ah, sorry. I didn't mean to come across that way, honestly! I won't do it in future.~ */
IF ~~ THEN DO ~GiveItemCreate("FHAMUL",Player1,0,0,0)~
EXIT
END

IF ~~ THEN BEGIN FHLT6_another
SAY @312 /* ~I don't know, but...Ahh, sorry to worry. I'll try not to next time.~ */
IF ~~ THEN DO ~GiveItemCreate("FHAMUL",Player1,0,0,0)~
EXIT
END

IF ~~ THEN BEGIN FHLT6_love
SAY @313 /* ~Mmm, of course I am! I just want to make sure that you're happy, that's all.~ */
IF ~~ THEN DO ~GiveItemCreate("FHAMUL",Player1,0,0,0)~
EXIT
END

//Lovetalk 7//
IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHExpLoveTalk","LOCALS",14)~ THEN BEGIN FHLT7
SAY @314 /* ~Please - you mustn't--~ */
=
@315 /* ~Ah. <CHARNAME>? Sorry - I was having a bad dream. I didn't wake you up, did I?~ */
++ @316 /* ~You did, but that doesn't matter. Are you all right now?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT7_allright
++ @317 /* ~Oh, dear. I'd been hoping they'd been getting better.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT7_better
++ @318 /* ~What was it about? Is there anything I can do?~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT7_about
END

IF ~~ THEN BEGIN FHLT7_allright
SAY @319 /* ~Yes. I think so. Thank you, I appreciate you being here so much...~ */
=
@320 /* ~(Nathaniel softly kisses your cheek.)~ */
++ @321 /* ~I thought they'd been improving lately, but I suppose not.~ */ + FHLT7_better
++ @322 /* ~Would you like anything? I don't know what I can do to help, but...~ */ + FHLT7_anything
++ @323 /* ~Can you remember what the dream was about?~ */ + FHLT7_about
++ @324 /* ~Are you sure? You look a little pale, still.~ */ + FHLT7_pale
END

IF ~~ THEN BEGIN FHLT7_better
SAY @325 /* ~Oh, they have! That is, you've been helping so much, you mustn't worry about that. It wasn't as bad as it's been before, anyway.~ */
++ @326 /* ~I'm glad you're feeling better, anyway.~ */ + FHLT7_better2
++ @327 /* ~Are you sure? You look a little pale.~ */ + FHLT7_pale
++ @323 /* ~Can you remember what the dream was about?~ */ + FHLT7_about
END

IF ~~ THEN BEGIN FHLT7_about
SAY @328 /* ~It was-- I was-- Ohh, I can't remember it now. It's odd, it was so vivid, but it just faded away. Do you find that sometimes?~ */
=
@329 /* ~It's probably better to just forget about it.~ */
++ @330 /* ~That seems the right thing to do. Let's get going.~ */ + FHLT7_go
++ @331 /* ~You still look a bit pale. Are you sure you're all right?~ */ + FHLT7_pale
END

IF ~~ THEN BEGIN FHLT7_anything
SAY @332 /* ~No...no, I think I'll be all right. It just felt so-- well, so much like I felt before I was with you. I don't know... but I feel a bit better now, anyway.~ */
++ @333 /* ~Are you sure? You look a bit pale, still.~ */ + FHLT7_pale
++ @334 /* ~Good. I'm glad you're feeling better.~ */ + FHLT7_better2
++ @323 /* ~Can you remember what the dream was about?~ */ + FHLT7_about
++ @335 /* ~Then let's get going, and forget about it.~ */ + FHLT7_go
END

IF ~~ THEN BEGIN FHLT7_pale
SAY @336 /* ~I think I'd rather be moving on. Is that all right? Let's get going.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT7_better2
SAY @337 /* ~So am I.~ */
=
@338 /* ~(Nathaniel gives you a brief and warm hug.)~ */
=
@339 /* ~Thank you for being here, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT7_go
SAY @340 /* ~Yes, let's go. Can you help me with this pack? The strap's come a bit loose.~ */
IF ~~ THEN EXIT
END

//LT8//
IF ~Global("NathRomanceActive","GLOBAL",2)
Global("FHExpLoveTalk","LOCALS",16)~ THEN BEGIN FHLT8
SAY @341 /* ~I think it's almost time, isn't it? Yes, I suppose it is. I just want to have a word with you...you know, about what's going to happen.~ */
=
@342 /* ~I just want you to know...that you're free to do anything you need to.~ */
++ @343 /* ~I don't know what's going to happen. Destiny is unfathomable.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT8_destiny
++ @344 /* ~I want to stay with you, Nathaniel, and that's the end of it.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT8_stay
++ @345 /* ~Let's not dwell on this. I'd rather concentrate on enjoying what we have now.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT8_focus
++ @346 /* ~Thank you. I appreciate you giving me that freedom.~ */ DO ~IncrementGlobal("FHExpLoveTalk","LOCALS",1) RealSetGlobalTimer("NathRomance","GLOBAL",EIGHT_HOURS)~ + FHLT8_free
END

IF ~~ THEN BEGIN FHLT8_destiny
SAY @347 /* ~I know it is.~ */
IF ~~ THEN + FHLT8_want
END

IF ~~ THEN BEGIN FHLT8_want
SAY @348 /* ~If you want this, then you should do it. I don't want you to feel as though I'm holding you back.~ */
++ @349 /* ~I don't know whether I want it. That's what makes it so hard.~ */ + FHLT8_hard
++ @350 /* ~I'd rather concentrate on what we have now than what might happen.~ */ + FHLT8_focus
++ @351 /* ~You don't hold me back. I love you, Nathaniel, and that's the important thing.~ */ + FHLT8_free
++ @352 /* ~I know that it's my choice, and I appreciate you giving me that freedom.~ */ + FHLT8_free
END

IF ~~ THEN BEGIN FHLT8_stay
SAY @353 /* ~Thank you. But we don't know what's going to happen, do we? It could be anything in there.~ */
IF ~~ THEN + FHLT8_want
END

IF ~~ THEN BEGIN FHLT8_focus
SAY @354 /* ~Yes. Yes, you're right. Just, let me just hold you for a second?~ */
IF ~~ THEN + FHLT8_there
END

IF ~~ THEN BEGIN FHLT8_there
SAY @355 /* ~...there. Just remember that I'll...I'll support you no matter what you decide.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHLT8_free
SAY @356 /* ~Just...let me hold you for a second?~ */
IF ~~ THEN + FHLT8_there
END

IF ~~ THEN BEGIN FHLT8_hard
SAY @357 /* ~Yes, I'm sorry. I didn't mean to upset you, or anything.~ */
IF ~~ THEN + FHLT8_free
END


//Friendship Talks//
IF
~Global("FHExpFriendTalk","LOCALS",2)
!Global("NathRomanceActive","GLOBAL",2)~ THEN BEGIN FHFT1
SAY @358 /* ~I've got some things on my mind - do you mind if I talk to you for a bit?~ */
++ @178 /* ~Of course not. What's up?~ */ DO ~IncrementGlobal("FHExpFriendTalk","LOCALS",1) RealSetGlobalTimer("FHExpFriendTime","GLOBAL",EIGHT_HOURS)~ + FHFT1_what
++ @359 /* ~Sorry, Nathaniel, I've got other things to do at the moment.~ */ DO ~IncrementGlobal("FHExpFriendTalk","LOCALS",1) RealSetGlobalTimer("FHExpFriendTime","GLOBAL",EIGHT_HOURS)~ + FHFT1_rest
++ @180 /* ~If you need to talk, of course you can.~ */ DO ~IncrementGlobal("FHExpFriendTalk","LOCALS",1) RealSetGlobalTimer("FHExpFriendTime","GLOBAL",EIGHT_HOURS)~ + FHFT1_what
END

IF ~~ THEN BEGIN FHFT1_what
SAY @181 /* ~It's just that, well, people are saying such terrible things about the Bhaalspawn. About you.~ */
=
@360 /* ~It sometimes makes me wonder if they might not be right, in some ways, and that bothers me.~ */
IF ~ReputationGT(Player1,13)~ THEN REPLY @361 /* ~Don't let them bother you - it's not worth it.~ */ + FHFT1_bothergood
IF ~ReputationLT(Player1,14)~ THEN REPLY @361 /* ~Don't let them bother you - it's not worth it.~ */ + FHFT1_botherevil
++ @362 /* ~And what if they *are* right? Is that such a bad thing?~ */ + FHFT1_areright
++ @363 /* ~I know. It bothers me, too.~ */ + FHFT1_metoo
++ @364 /* ~I know what you mean, but we just have to stay resolute.~ */ + FHFT1_resolute
END

IF ~~ THEN BEGIN FHFT1_rest
SAY @365 /* ~Of course. Maybe another time.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFT1_bothergood
SAY @366 /* ~I know. But it does. It's unfair that there are people who think that - that you're a bad person.~ */
=
@367 /* ~Because you've done such good things, and I wish I could make them believe that you're not.~ */
++ @368 /* ~All that matters is that I know I'm in the right.~ */ + FHFT1_know
++ @191 /* ~Don't worry about it: their opinions aren't important.~ */ + FHFT1_opinion
++ @369 /* ~I know what you mean, but I've got people like you who believe in me.~ */ + FHFT1_metoo
END

IF ~~ THEN BEGIN FHFT1_botherevil
SAY @370 /* ~I know. But it's unfair - you've made mistakes, but people are just following what everyone says about you.~ */
++ @368 /* ~All that matters is that I know I'm in the right.~ */ + FHFT1_know
++ @191 /* ~Don't worry about it: their opinions aren't important.~ */ + FHFT1_opinion
++ @371 /* ~I feel that too, but I've got people like you who believe in me.~ */ + FHFT1_metoo
END

IF ~~ THEN BEGIN FHFT1_areright
SAY @372 /* ~Have you *heard* some of the things they say about the Bhaalspawn? Maybe you wouldn't be so nonchalant about it if you had.~ */
=
@373 /* ~Ahh, never mind.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFT1_metoo
SAY @374 /* ~Somehow, it makes me feel better to know that. Not that I want you to feel bad or anything, but it's good to know that other people feel the same.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFT1_resolute
SAY @375 /* ~You're right. Thank you - I'll do my best to do that.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFT1_know
SAY @376 /* ~Hmm, I suppose that's helpful for you, but it doesn't help much for me, I'm afraid.~ */
=
@373 /* ~Ahh, never mind.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFT1_opinion
SAY @200 /* ~Maybe not. Ahh, there's no use worrying about it, I suppose.~ */
IF ~~ THEN EXIT
END

//FT2//
IF
~Global("FHExpFriendTalk","LOCALS",4)
!Global("NathRomanceActive","GLOBAL",2)~ THEN BEGIN FHFT2
SAY @208 /* ~It's strange. I'd never have dreamed I'd be in this situation - that *we'd* be in this situation.~ */
++ @377 /* ~Which particular were you thinking of?~ */ DO ~IncrementGlobal("FHExpFriendTalk","LOCALS",1) RealSetGlobalTimer("FHExpFriendTime","GLOBAL",EIGHT_HOURS)~ + FHFT2_situation
++ @378 /* ~Neither would I. I wish I didn't have to do all this.~ */ DO ~IncrementGlobal("FHExpFriendTalk","LOCALS",1) RealSetGlobalTimer("FHExpFriendTime","GLOBAL",EIGHT_HOURS)~ + FHFT2_wish
++ @211 /* ~Neither would I. It's exhilarating, isn't it?~ */ DO ~IncrementGlobal("FHExpFriendTalk","LOCALS",1) RealSetGlobalTimer("FHExpFriendTime","GLOBAL",EIGHT_HOURS)~ + FHFT2_exhil
++ @379 /* ~When we live this kind of life, you can never see what's coming round the corner.~ */ DO ~IncrementGlobal("FHExpFriendTalk","LOCALS",1) RealSetGlobalTimer("FHExpFriendTime","GLOBAL",EIGHT_HOURS)~ + FHFT2_corner
END

IF ~~ THEN BEGIN FHFT2_situation
SAY @213 /* ~Well, you know what I mean, don't you? It seems like hardly any time ago that you were the hero of Baldur's Gate. Now, you could destroy the Iron Throne with your little finger.~ */
=
@214 /* ~It worries me a little. What if we do something wrong and people get hurt because of us? We're so powerful and it's...odd...to think of the responsibility we've got.~ */
++ @215 /* ~Not quite my little finger. My index finger, maybe.~ */ + FHFT2_index
++ @216 /* ~Isn't that a good thing? We need to be able to defend ourselves.~ */ + FHFT2_defend
++ @380 /* ~I think I see what you mean. It scares me, sometimes.~ */ + FHFT2_scare
++ @218 /* ~Sometimes I wish I could return to those times, but it's not possible, is it?~ */ + FHFT2_return
++ @381 /* ~I've never liked responsibility.~ */ + FHFT2_responsibility
END

IF ~~ THEN BEGIN FHFT2_wish
SAY @220 /* ~I'd love nothing better than to whisk you away and live in a town somewhere and not have to worry about Bhaal, or destiny, or all these people who want to kill us.~ */
=
@221 /* ~I mean, I used to be proud if I managed to kill a - a kobold or something, but now we're going after these children of Bhaal and changing the whole world!~ */
=
@222 /* ~It worries me a little. What if we do something wrong and people get hurt because of us? We're so powerful now and it's...strange...to think of the responsibility we've got.~ */
++ @382 /* ~Still, even though there's lots of pressure it's good that we can defend ourselves.~ */ + FHFT2_defend
++ @383 /* ~Yes. It scares me, sometimes.~ */ + FHFT2_scare
++ @225 /* ~It's a shame that we can't return to the old days when things were quieter, isn't it?~ */ + FHFT2_return
++ @226 /* ~I know. I've always hated responsibility.~ */ + FHFT2_responsibility
END

IF ~~ THEN BEGIN FHFT2_exhil
SAY @227 /* ~Mmm, that's one word for it. Sometimes...I just wish we didn't have to worry about Bhaal and destiny. I mean, I used to be proud if I managed to kill a - a kobold or something, but now we're going after these children of Bhaal and changing the whole world!~ */
=
@222 /* ~It worries me a little. What if we do something wrong and people get hurt because of us? We're so powerful now and it's...strange...to think of the responsibility we've got.~ */
++ @228 /* ~Still, it's good that we can defend ourselves.~ */ + FHFT2_defend
++ @384 /* ~I'd have thought you'd got used to unpredictability in our lives.~ */ + FHFT2_unpredictable
++ @230 /* ~I see what you mean. I've never liked having responsibility.~ */ + FHFT2_responsibility
++ @231 /* ~Well, I enjoy being powerful. Who doesn't?~ */ + FHFT2_power
END

IF ~~ THEN BEGIN FHFT2_corner
SAY @232 /* ~That's true. And that's kind of what worries me. Sometimes...I just wish we didn't have to worry about Bhaal and destiny. I mean, I used to be proud if I managed to kill a - a kobold or something, but now we're going after these children of Bhaal and changing the whole world!~ */
=
@233 /* ~What if we do something wrong and people get hurt because of us? We're so powerful now and it's...strange...to think of the responsibility we've got.~ */
++ @384 /* ~I'd have thought you'd got used to unpredictability in our lives.~ */ + FHFT2_unpredictable
++ @385 /* ~I see what you mean. I've never liked having so much responsibility.~ */ + FHFT2_responsibility
++ @231 /* ~Well, I enjoy being powerful. Who doesn't?~ */ + FHFT2_power
++ @383 /* ~Yes. It scares me, sometimes.~ */ + FHFT2_scare
++ @225 /* ~It's a shame that we can't return to the old days when things were quieter, isn't it?~ */ + FHFT2_return
END

IF ~~ THEN BEGIN FHFT2_index
SAY @235 /* ~<CHARNAME>, I'm serious. I mean, I used to be proud if I killed a - a nest of kobolds or something, and now here we are going after children of Bhaal and changing the whole world!~ */
=
@233 /* ~What if we do something wrong and people get hurt because of us? We're so powerful now and it's...strange...to think of the responsibility we've got.~ */
++ @384 /* ~I'd have thought you'd got used to unpredictability in our lives.~ */ + FHFT2_unpredictable
++ @385 /* ~I see what you mean. I've never liked having so much responsibility.~ */ + FHFT2_responsibility
++ @231 /* ~Well, I enjoy being powerful. Who doesn't?~ */ + FHFT2_power
++ @383 /* ~Yes. It scares me, sometimes.~ */ + FHFT2_scare
++ @225 /* ~It's a shame that we can't return to the old days when things were quieter, isn't it?~ */ + FHFT2_return
END

IF ~~ THEN BEGIN FHFT2_defend
SAY @236 /* ~Of course! I wouldn't want us to be killed just because we weren't willing to use our skills. It's just...I don't know...~ */
++ @386 /* ~It's all right, Nathaniel. You can tell me.~ */ + FHFT2_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHFT2_willing
++ @387 /* ~Sometimes it scares me a little, too. But we just have to deal with it.~ */ + FHFT2_deal
END

IF ~~ THEN BEGIN FHFT2_scare
SAY @241 /* ~Really? Thank you for telling me, <CHARNAME> - I'll try to help you feel better if you're afraid.~ */
=
@242 /* ~I'm not saying that I want us to be killed just because we're unwilling to use our skills. It's just...I don't know...~ */
++ @386 /* ~It's all right, Nathaniel. You can tell me.~ */ + FHFT2_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHFT2_willing
++ @387 /* ~Sometimes it scares me a little, too. But we just have to deal with it.~ */ + FHFT2_deal
END

IF ~~ THEN BEGIN FHFT2_return
SAY @243 /* ~I know what you mean. Sometimes I think I'd like to return to those days, but there's no point thinking like that. After all, I wouldn't have met you if we were still in the old days, would I?~ */
=
@244 /* ~It's not that I want us to be killed because we're unwilling to use our skills. It's just...I don't know...~ */
++ @386 /* ~It's all right, Nathaniel. You can tell me.~ */ + FHFT2_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHFT2_willing
++ @387 /* ~Sometimes it scares me a little, too. But we just have to deal with it.~ */ + FHFT2_deal
END

IF ~~ THEN BEGIN FHFT2_better
SAY @245 /* ~Oh, I am, don't worry about that! I'm not saying that I want us to get killed just because we don't want to use our skills. It's just...I don't know...~ */
++ @386 /* ~It's all right, Nathaniel. You can tell me.~ */ + FHFT2_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHFT2_willing
++ @387 /* ~Sometimes it scares me a little, too. But we just have to deal with it.~ */ + FHFT2_deal
END

IF ~~ THEN BEGIN FHFT2_responsibility
SAY @246 /* ~It's not so much that. I don't mind responsibility for people who are in it because they want to be - like being a captain in the Flaming Fist. What bothers me is if people get hurt who don't have any choice.~ */
++ @384 /* ~I'd have thought you'd got used to unpredictability in our lives.~ */ + FHFT2_unpredictable
++ @231 /* ~Well, I enjoy being powerful. Who doesn't?~ */ + FHFT2_power
++ @383 /* ~Yes. It scares me, sometimes.~ */ + FHFT2_scare
++ @225 /* ~It's a shame that we can't return to the old days when things were quieter, isn't it?~ */ + FHFT2_return
END

IF ~~ THEN BEGIN FHFT2_unpredictable
SAY @248 /* ~I have, don't worry. I'm not saying that I want us to get killed just because we don't want to use our skills. It's just...I don't know...~ */
++ @386 /* ~It's all right, Nathaniel. You can tell me.~ */ + FHFT2_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHFT2_willing
++ @387 /* ~Sometimes it scares me a little, too. But we just have to deal with it.~ */ + FHFT2_deal
END

IF ~~ THEN BEGIN FHFT2_power
SAY @249 /* ~Well, I'm not saying it isn't...nice...for me to be able to defend you against people who want to hurt you. And I wouldn't want us to get killed because we didn't want to use our skills. It's just...I don't know...~ */
++ @386 /* ~It's all right, Nathaniel. You can tell me.~ */ + FHFT2_tell
++ @238 /* ~Well, I'm glad you're willing to fight alongside me.~ */ + FHFT2_willing
++ @387 /* ~Sometimes it scares me a little, too. But we just have to deal with it.~ */ + FHFT2_deal
END

IF ~~ THEN BEGIN FHFT2_tell
SAY @388 /* ~It's just that...well, sometimes I forget that you're the child of a god. Not that you're not an interesting person, but I... Ahh, that wasn't what I meant.~ */
=
@251 /* ~I think I'm not used to events this big, that's all. You'd think I would have got used to them, wouldn't you! I suppose it'll just take a bit of time.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFT2_willing
SAY @252 /* ~Of course I am. Always, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFT2_skills
SAY @253 /* ~Oh, anytime, <CHARNAME>. All you have to do is ask. We can start next time we rest, if you like.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHFT2_deal
SAY @254 /* ~You're right. I think it's just that I'm not used to events this big, that's all. You'd think I would have got used to them, travelling with you! I suppose it'll just take time.~ */
IF ~~ THEN EXIT
END


//Interparty Banters
CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("AerienolikeNath","GLOBAL",1)
Global("FH25AerieRec","GLOBAL",0)~ THEN BAERIE25 FHAerieRec25
@389 /* ~Nathaniel.~ */
DO ~SetGlobal("FH25AerieRec","GLOBAL",1)
SetGlobal("AerienolikeNath","GLOBAL",0)~
== BFHN25
@390 /* ~What's wrong?~ */
== BAERIE25
@391 /* ~No, no, there's nothing wrong as such, it's just that I - I wanted to apologise.~ */
== BFHN25
@392 /* ~Ah.~ */
== BAERIE25
@393 /* ~When I said those things I was...it was wrong. So I'm sorry.~ */
== BFHN25
@394 /* ~So you're all right with <CHARNAME> and I now? I mean--~ */
== BAERIE25
@395 /* ~I do not think that two men living as man and woman is something that I-- that is, I would not to live like that myself.~ */
=
@396 /* ~But you and <CHARNAME> seem happy, and you are such good people. If - if you are happy I can see that it could be a good thing. Perhaps I misunderstood <CHARNAME>'s intentions before.~ */
== BFHN25
@397 /* ~Thank you. It's good of you to say - I know many people wouldn't.~ */
== BAERIE25
@398 /* ~Oh, that's quite all right. In any case, there are much more important things to worry about now.~ */
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!Global("AerienolikeNath","GLOBAL",1)
Global("FHAerieTalk25","GLOBAL",0)~ THEN BFHN25 FHAerieTalk25
@399 /* ~Aerie, you look nice. Is that a new dress? Or shoes...?~ */
DO ~SetGlobal("FHAerieTalk25","GLOBAL",1)~
== BAERIE25
@400 /* ~Silly, I unbraided my hair! Do you think it looks nice?~ */
== BFHN25
@401 /* ~I just said it did.~ */
== BAERIE25
@402 /* ~Thank you. It's more practical to keep it up, though. It wouldn't be good for it to be swinging about in battle! I wouldn't be able to do anything.~ */
=
@403 /* ~What are you smiling about?~ */
== BFHN25
@404 /* ~Nothing.~ */
== BAERIE25
@405 /* ~No, what is it? Nathaniel, stop teasing me!~ */
== BFHN25
@406 /* ~I wasn't teasing - I was just thinking how I like your company.~ */
== BAERIE25
@407 /* ~Ah, now you *are* teasing.~ */
== BFHN25
@408 /* ~No, really, I'm not.~ */
== BAERIE25
@409 /* ~Well, thank you. But I still think you were teasing - just a little.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
!Global("AerienolikeNath","GLOBAL",1)
Global("FHAerieTalk25","GLOBAL",1)~ THEN BAERIE25 FHAerieTalk225
@410 /* ~What do you want to do when all of this is over? I cannot help but think that it will be strange - for all of us.~ */
DO ~SetGlobal("FHAerieTalk25","GLOBAL",2)~
== BFHN25 IF ~!Global("NathRomanceActive","GLOBAL",2)~ THEN
@411 /* ~Probably go and see some of my old friends. I do miss them sometimes.~ */
== BFHN25 IF ~Global("NathRomanceActive","GLOBAL",2) OR(2) Global("FHSettle","GLOBAL",0) Global("FHSettle","GLOBAL",1)~ THEN
@412 /* ~I hope to make a home somewhere. I've always wanted that - it would be so lovely.~ */
== BFHN25 IF ~Global("NathRomanceActive","GLOBAL",2) Global("FHSettle","GLOBAL",2)~ THEN
@413 /* ~I'd love to make a home somewhere, but <CHARNAME> doesn't seem to want that.~ */
== BFHN25
@414 /* ~What about you?~ */
== BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN
@415 /* ~Oh, I want to stay with <CHARNAME>. I don't really mind if we settle down, as long as we live a good life together.~ */
== BAERIE25 IF ~!Global("AerieRomanceActive","GLOBAL",2)~ THEN
@416 /* ~Do you know, I had not really thought about it. Isn't that silly? Perhaps I will return to Uncle Quayle, or continue fighting for justice... ah, who knows?~ */
=
@417 /* ~But <CHARNAME> needs us for the moment. Perhaps we should not think about the future so soon.~ */
== BFHN25
@418 /* ~Maybe not, but I like to.~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
Global("FHAnoCNTalk25","GLOBAL",0)
!StateCheck("Anomen",CD_STATE_NOTVALID)
Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN BANOME25 FHAnoCNTalk25
@419 /* ~'Tis a marvellous time to be adventuring, is it not? These battles we fight now are far more invigorating than anything back in Athkatla.~ */
DO ~SetGlobal("FHAnoCNTalk25","GLOBAL",1)~
== BFHN25
@420 /* ~I don't know, I quite liked it when there wasn't so much - excitement, as you call it.~ */
== BANOME25
@421 /* ~Ah, you never were the adventurous sort, were you? Perhaps some ale at the next inn will help you feel more at home.~ */
== BFHN25
@422 /* ~No, thank you. I'll be fine without.~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
Global("FHAnoTalk25","GLOBAL",0)
!StateCheck("Anomen",CD_STATE_NOTVALID)
OR(2)
Alignment("Anomen",MASK_GOOD)
Alignment("Anomen",LAWFUL_NEUTRAL)~ THEN BFHN25 FHAnoTalk25
@423 /* ~Right, Anomen, today's the day. Are you ready?~ */
DO ~SetGlobal("FHAnoTalk25","GLOBAL",1)~
== BANOME25
@424 /* ~Ready?~ */
== BFHN25
@425 /* ~I want you to have this.~ */
== BANOME25
@426 /* ~This is your cake, is it not? That flavour you prefer?~ */
== BFHN25
@427 /* ~Yes it is, and I'd like you to have it. I know neither of us are frivolous people or anything like that, but you seem to do so little that you enjoy simply for - for the joy of doing it.~ */
=
@428 /* ~It's only a small thing, but makes me smile to my face, and there's been little to smile about lately. So - please, have it.~ */
== BANOME25
@429 /* ~I thank you for your sentiments, Nathaniel, and your friendship too. But I would really rather not.~ */
== BFHN25
@430 /* ~(sigh) Fair enough, if you're sure. But you don't know what you're missing!~ */
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
Global("FHAnoTalk25","GLOBAL",1)
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("SaradushSacked","GLOBAL",1)
OR(2)
Alignment("Anomen",MASK_GOOD)
Alignment("Anomen",LAWFUL_NEUTRAL)~ THEN BFHN25 FHAnoTalk225
@431 /* ~Anomen, I've noticed that you seem...preoccupied sometimes.~ */
DO ~SetGlobal("FHAnoTalk25","GLOBAL",2)~
== BANOME25
@432 /* ~So do you, when things are quiet.~ */
== BFHN25
@433 /* ~Yes. Yes, I am. I can't help but worry about what we're doing. Is it the right thing? Are we responsible for all these people who have died? Who do we answer to if we do something wrong when we're so powerful - and what'll happen to <CHARNAME>, and us, and--~ */
== BANOME25
@434 /* ~Calm yourself, Nathaniel.~ */
== BFHN25
@435 /* ~I - I'm sorry. I don't know what came over me. It was foolish--~ */
== BANOME25
@436 /* ~That is not true. As for your questions, they are valid concerns. They trouble me also.~ */
=
@437 /* ~But they are not worth making yourself anxious over. You have come too far for that, have you not?~ */
== BFHN25
@438 /* ~I suppose so. I'll try not to worry about these things so much.~ */
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHCerndTalk25","GLOBAL",0)~
THEN BFHN25 FHCerndTalk251
@439 /* ~It's strange, isn't it? To think how far we've gone, in all this time. You know?~ */
DO ~SetGlobal("FHCerndTalk25","GLOBAL",1)~
== BCERND25
@440 /* ~Literally or figuratively? There are so many different ways in which one may travel.~ */
== BFHN25
@441 /* ~Wh-- Oh, never mind. I was just thinking aloud.~ */
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("FHCerndTalk25","GLOBAL",1)~ THEN BFHN25 FHCerndTalk252
@442 /* ~I've never seen anything like this, ever. There's just been so much...death.~ */
DO ~SetGlobal("FHCerndTalk25","GLOBAL",2)~
== BCERND25
@443 /* ~Indeed there has.~ */
== BFHN25
@444 /* ~*You* don't seem too bothered about it all.~ */
== BCERND25
@445 /* ~In the grand scheme of things, this is nothing but a mote of dust that Nature will blow away.~ */
== BFHN25
@446 /* ~I'm not sure how comforting that is, to be honest.~ */
== BCERND25
@447 /* ~Comfort or no, it is the truth.~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHEdTalk25","GLOBAL",0)~ THEN BEDWIN25 FHEdTalk251
@448 /* ~Ape! Do not wave that sword about when I am close by!~ */
DO ~SetGlobal("FHEdTalk25","GLOBAL",1)~
== BFHN25
@449 /* ~Don't worry, I wasn't anywhere near you.~ */
== BEDWIN25
@450 /* ~Hmph! Given your clumsiness I doubt very much that anywhere near you is safe.~ */
== BFHN25
@451 /* ~That's not true at all!~ */
=
@452 /* ~Anyway, I doubt that I'm about to trip over and hit you, Edwin - I have been fighting since I was fifteen.~ */
== BEDWIN25
@453 /* ~Yes, yes, as you are so eager to remind us. However, keep away in future, lest when you sleep you encounter a fireball...~ */
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("FHEdTalk25","GLOBAL",1)~ THEN BFHN25 FHEdTalk252
@454 /* ~What's that, Edwin? Some sort of jewel? It looks nice...~ */
== BEDWIN25
@455 /* ~Do not touch! It is nothing that you should concern yourself with - or understand, for that matter.~ */
== BFHN25
@456 /* ~Try me.~ */
== BEDWIN25
@457 /* ~If I told you that merely to gauge its worth you would require the intellect of an archmage, would you cease your infernal yammering?~ */
== BFHN25
@458 /* ~I was just interested, Edwin. No need to bite my head off.~ */
== BEDWIN25
@459 /* ~Then trouble me no more. (Perhaps his head will "accidentally" be bitten off in reality, and we will all be spared his chatter...)~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHHDTalk25","GLOBAL",0)~ THEN BHAERD25 FHHDTalk251
@460 /* ~It is beautiful, isn't it?~ */
DO ~SetGlobal("FHHDTalk25","GLOBAL",1)~
== BFHN25
@461 /* ~Sorry?~ */
== BHAERD25
@462 /* ~The smoke. Do you not see it, my swan? The beauty of things as they fall?~ */
== BFHN25
@463 /* ~While people die? No, I don't.~ */
== BHAERD25
@464 /* ~Hmm.~ */
== BHAERD25 IF ~InParty("Imoen2")~ THEN
@465 /* ~I believe that this one does, though.~ */
== BIMOEN25 IF ~InParty("Imoen2")~ THEN
@466 /* ~No, I - I don't know what you mean.~ */
== BFHN25
@467 /* ~There's hope, too. I don't understand why you don't seem to see that.~ */
== BHAERD25
@468 /* ~The end nears, Nathaniel. That is what I see.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHHDTalk25","GLOBAL",1)~ THEN BHAERD25 FHHDTalk252
@469 /* ~There is one role that I feel I could never quite capture, I think.~ */
DO ~SetGlobal("FHHDTalk25","GLOBAL",2)~
== BFHN25
@470 /* ~Which one was that? You always said that you could perform in any play.~ */
== BHAERD25
@471 /* ~That of the Tragic Hero. Perhaps it was something about the eyebrows that I lacked.~ */
== BFHN25
@472 /* ~Maybe that's a good thing. I mean, it's not like tragedy is all there is. I'm sure you did well in your other roles.~ */
== BHAERD25
@473 /* ~Ah, no, you misunderstand. Heroism, my swan, heroism is what I speak of, not the tragedy.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHImoenromTalk25","GLOBAL",0)
Global("NathRomanceActive","GLOBAL",2)~ THEN BIMOEN25 FHImoenRom1
@474 /* ~Thaniel, you and <CHARNAME> make a really good couple.~ */
DO ~SetGlobal("NathImoenromTalk25","GLOBAL",1)~
== BFHN25
@475 /* ~Oh! Thank you, Imoen, I'm glad you approve.~ */
== BIMOEN25
@476 /* ~I mean, really cute. You look so good together.~ */
== BFHN25
@477 /* ~...Thanks. I suppose I should take it as a compliment?~ */
== BIMOEN25
@478 /* ~Yeah. You know, if he wasn't my brother I know what I'd suggest...~ */
== BFHN25
@479 /* ~Imoen! How can you say things like-- What if <CHARNAME> overheard?~ */
== BIMOEN25
@480 /* ~I'd tell him the truth. That we're...discussing.~ */
=
@481 /* ~(snigger)~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHImoenromTalk25","GLOBAL",1)~ THEN BIMOEN25 FHImoenRom2
@482 /* ~You know, I've always wanted to be Crazy Aunt Imoen.~ */
DO ~SetGlobal("FHImoenromTalk25","GLOBAL",2)~
== BFHN25
@483 /* ~Wouldn't you rather be a - well, a well-balanced aunt?~ */
== BIMOEN25
@484 /* ~Ha! That's not nearly as fun. No, I'm looking forward to it. You and <CHARNAME>'ll have all these perfectly well-behaved children, and then I can come corrupt them.~ */
== BFHN25
@485 /* ~You wouldn't!~ */
== BIMOEN25
@486 /* ~I'll come to visit and feed them all the sweets you don't give them 'cause it'll hurt their teeth, and buy them really great presents.~ */
== BFHN25
@487 /* ~Like what, exactly?~ */
== BIMOEN25
@488 /* ~Ooh, I don't know. A wand of magic missiles - or a set of lockpicks...~ */
== BFHN25
@489 /* ~Imoen! You wouldn't!~ */
== BIMOEN25
@456 /* ~Try me.~ */
=
@490 /* ~I'm looking forward to it already.~ */
== BFHN25
@491 /* ~Yes, so am I.~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
Global("FHImoenTalk25","GLOBAL",0)~ THEN BIMOEN25 FHImoenTalk125
@492 /* ~Oh my gosh! It's a vampire, Thaniel!~ */
DO ~SetGlobal("FHImoenTalk25","GLOBAL",1)~
== BFHN25
@493 /* ~What? Stay back, Imoen, I can--~ */
=
@494 /* ~What was *that* for?~ */
== BIMOEN25
@495 /* ~Made you look!~ */
=
@496 /* ~Sheesh, I had a vampire take my soul, and I'm okay. What's up with you and vampires?~ */
== BFHN25
@497 /* ~That's not the point. I just - don't like them.~ */
== BIMOEN25
@498 /* ~Aww, come on. You can tell Auntie Imoen.~ */
== BFHN25
@499 /* ~*sigh* When I was younger, my friend Devlyn told me about vampires. I had nightmares for weeks. They'd come and kill everyone I knew, and I wouldn't be able to do anything.~ */
=
@500 /* ~The fear of them never really went away.~ */
== BIMOEN25
@501 /* ~Seriously, you need to get that sorted out.~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
Global("FHImoenTalk25","GLOBAL",1)~ THEN BIMOEN25 FHImoenTalk225
@502 /* ~So Latimer was your first boyfriend, then?~ */
DO ~SetGlobal("FHImoenTalk25","GLOBAL",2)~
== BFHN25
@503 /* ~Do you want my entire romantic history, or something?~ */
== BIMOEN25
@504 /* ~Don't be so prickly. I'm just interested, is all.~ */
== BFHN25
@505 /* ~Fine, there was a girl. Once.~ */
== BIMOEN25
@506 /* ~Oooh! What was she like?~ */
== BFHN25
@507 /* ~She had blonde hair, and she was quite tall, and--~ */
== BIMOEN25
@508 /* ~You're impossible! I don't want an inventory. Was she pretty?~ */
== BFHN25
@509 /* ~Yes, she was, for a ten year old. I was nine at the time, so I was a bit overwhelmed by the whole thing.~ */
=
@510 /* ~Unfortunately, it wasn't to be. We decided to call it off after three days.~ */
== BIMOEN25
@511 /* ~Awww, what a sad story!~ */
== BFHN25
@512 /* ~I think she ended up marrying an actor, so it's not a complete tragedy.~ */
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
Global("FHJahTalk25","GLOBAL",0)~ THEN BFHN25 FHJahTalk125
@513 /* ~Jaheira, I picked up a sprig of this plant, and I was wondering - would it go well in the stew tonight? It smells nice.~ */
DO ~SetGlobal("FHJahTalk25","GLOBAL",1)~
== BJAHEI25
@514 /* ~That plant, I believe, would paralyse us. That is, unless we were to eat enough of it, in which case we would be dead within three days without the proper treatment.~ */
== BFHN25
@392 /* ~Ah.~ */
=
@515 /* ~I suppose that's a no, then?~ */
== BJAHEI25
@516 /* ~Most emphatically.~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
Global("FHJahTalk25","GLOBAL",1)~ THEN BJAHEI25 FHJahTalk225
@517 /* ~Watch your step, here.~ */
DO ~SetGlobal("FHJahTalk25","GLOBAL",2)~
== BFHN25
@518 /* ~I'm *fine*, Jaheira, thank you.~ */
== BJAHEI25
@519 /* ~As you wish. I was merely trying to assist you.~ */
== BFHN25
@520 /* ~I, um, I'm sorry.~ */
=
@521 /* ~Look, I know that maybe it's not the best time, but do you ever worry about what we're doing? You seem so sure of yourself, and I wish I had that.~ */
== BJAHEI25
@522 /* ~Nathaniel, I cannot give you the fast answer that you seem to wish for. But let <CHARNAME> deal with <PRO_HISHER> heritage, if that is what troubles you. It is not your burden.~ */
== BFHN25
@523 /* ~I... Thank you, Jaheira. I appreciate it.~ */
== BJAHEI25
@524 /* ~And watch where you walk, also. You will be of no use to the group with an injury.~ */
EXIT


CHAIN
IF ~InParty("Nath")
See("Nath")
Global("FHJanTalk25","GLOBAL",0)
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BJAN25 FHJanTalk25
@525 /* ~Thanny, you're looking  particularly thoughtful today. What's eating you? Or, more importantly, what are you eating? I remember the time when that town of dwarves ate those turnips, and they all went very odd, might I say, running about with floppy hats and pickaxes. The whistling, Thanny, the whistling...it was dreadful...~ */
DO ~SetGlobal("FHJanTalk25","GLOBAL",1)~
== BFHN25
@526 /* ~Jan? Are you all right?~ */
== BJAN25
@527 /* ~Yes, of course I am. Why wouldn't I be? Now, what's on your mind?~ */
== BFHN25
@528 /* ~I was just thinking if I should get a haircut. I always had my hair cut short, before.~ */
== BJAN25
@529 /* ~If you *do* decide to have your hair cut, then whatever you do don't go to the Waterdeep Barber. A sensitive boy like you wouldn't last a minute.~ */
== BFHN25
@530 /* ~Why not? And I'm not a boy.~ */
== BJAN25
@531 /* ~He used to be a member of a group of dirty lowlifes, thieves and pirates. They would call him "The Barber". Oh, Thanny, if you were to meet him I'd feel sick with worry. He's the kind of turnip-cursing chap that would make Uncle Scratchy blue with envy. He always had a problem with the colour green...~ */
== BFHN25
@532 /* ~But should I get my hair cut?~ */
== BJAN25
@533 /* ~No, it's better longer. It'll keep you warm at night!~ */
EXIT

CHAIN
IF ~InParty("Nath")
See("Nath")
Global("FHJanTalk25","GLOBAL",1)
!StateCheck("Nath",CD_STATE_NOTVALID)
PartyHasItem("FHSW2")
OR(2)
PartyHasItem("FHSW1")
PartyHasItem("FHSW3")~ THEN BJAN25 FHJanTalk225
@534 /* ~Thanny, your swords are looking plain old neglected. Quite like a radish festival in turnip season, I might add. I think it's time you did something about them. Your father would be ashamed!~ */
DO ~SetGlobal("FHJanTalk25","GLOBAL",2)~
== BFHN25
@535 /* ~What? I take good care of my weapons, Jan. They're in fine condition.~ */
== BJAN25
@536 /* ~But they could be in excellent condition. With my patent-pending, groundbreaking secret Jansen technology I can reforge and combine your swords to make them weapons fit for Uncle Walter! It will take only a few innocuous items, but you'll never need to worry about it again!~ */
== BFHN25
@537 /* ~Oh, dear. What innocuous items? And where would you get a forge from anyway?~ */
== BJAN25
@538 /* ~Let me see...I'll need an ankheg shell, three bloodstone gems, eight beljurils, the skull of a dead warrior, a key to a royal treasury, a shark's tooth, a string of the Harp of Discord, mercury, scrolls of Disintegrate, Grease, Knock and Find Familiar, a Cursed Scroll of Weakness, a slime sceptre - not too many of those about - a mithril medallion, the Horn of Kazgaroth and the Robe of Vecna.~ */
== BFHN25
@539 /* ~...Robe of Vecna?~ */
== BJAN25
@540 /* ~For the scabbard, of course! Uncle Walter said that looking good is half of a noontime meal, and I took it to heart.~ */
== BFHN25
@541 /* ~I don't know where to start...~ */
== BJAN25
@542 /* ~Well, these swords will be the better for it. Blades won't be able to touch you. Magic will slide right off you! And any demiliches in the area will lock up their sarcophagi! Trust me.~ */
== BFHN25
@543 /* ~I'd rather not, thank you.~ */
== BJAN25
@544 /* ~Thanny! Are you implying that I'd do something wrong with those things? I am a skilled metalsmith. Occasionally.~ */
== BFHN25
@545 /* ~No, really, I'm fine without your help.~ */
== BJAN25
@546 /* ~And I'm hurt!~ */
EXIT

CHAIN IF ~InParty("Keldorn")
See("Keldorn")
Global("FHKelTalk25","GLOBAL",0)
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN BFHN25 FHKelTalk125
@547 /* ~I suppose it must be quite difficult for you, travelling with a child of Bhaal.~ */
DO ~SetGlobal("FHKelTalk25","GLOBAL",1)~
== BKELDO25
@548 /* ~I admit, it does feel somewhat strange. But I suspect that destiny has more in mind for <CHARNAME> than we know.~ */
== BFHN25
@549 /* ~Yes, that's what worries me.~ */
== BKELDO25
@550 /* ~Do you fear that the taint may take hold? Yes, I see that you do.~ */
=
@551 /* ~Fear not, Nathaniel. I am constantly vigilant for signs that <PRO_HESHE> could be corrupted.~ */
== BFHN25
@552 /* ~That's...not entirely what I wanted to hear, but I suppose it'll have to do.~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
Global("FHKelTalk25","GLOBAL",1)
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BKELDO25 FHKelTalk225
@553 /* ~I must admit, Nathaniel, that I had my reservations about you. But I believe that you are a good man.~ */
DO ~SetGlobal("FHKelTalk25","GLOBAL",2)~
== BFHN25
@554 /* ~Really? I mean, what made you suddenly think it?~ */
== BKELDO25
@555 /* ~I see your efforts to uphold the law and they are commendable. You defend right and justice with a warrior's determination.~ */
== BFHN25
@556 /* ~I do try my best to do what's right, and it's wonderful to hear that you think that.~ */
== BKELDO25
@557 /* ~Perhaps you could one day serve the greater good under one of the gods.~ */
== BFHN25
@558 /* ~Um, no offence, sir, but I don't think it's really for me. The gods aren't my business - people are.~ */
== BKELDO25
@559 /* ~Many noble warriors have felt the same way about such things. As it is, I believe that Helm would approve of your actions.~ */
== BFHN25
@560 /* ~I...thank you, Sir Keldorn. I can't say how much it means to hear you say that!~ */
EXIT

CHAIN IF ~InParty("Korgan")
See("Korgan")
Global("FHKorgTalk25","GLOBAL",0)
!StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN BFHN25 FHKorgTalk125
@561 /* ~Step away, Korgan. I don't need your jibes distracting me.~ */
DO ~SetGlobal("FHKorgTalk25","GLOBAL",1)~
== BKORGA25
@562 /* ~Ha, ha! Ye don't need me to distract you. I'm sure ye can do yer prancin' by yerself.~ */
== BFHN25
@563 /* ~Oh, this is just ridiculous! You know and I know that I don't *prance*.~ */
== BKORGA25
@564 /* ~But it's so satisfyin' to see the look on yer pasty face, lanky boy.~ */
== BFHN25
@565 /* ~(sigh) I give up.~ */
EXIT

CHAIN IF
~InParty("Mazzy")
See("Mazzy")
Global("FHMazzyTalk25","GLOBAL",0)
!StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BFHN25 FHMazzyTalk125
@566 /* ~Mazzy? Wait a second, I think you dropped this. Is this your necklace?~ */
DO ~SetGlobal("FHMazzyTalk25","GLOBAL",1)~
== BMAZZY25
@567 /* ~Ah! Yes, thank you, Nathaniel. I would have missed having that.~ */
=
@568 /* ~My mother gave it to me as a gift when I first left to go adventuring. I find that having something of home makes the journey feel less overlong.~ */
== BFHN25
@569 /* ~Yes, I know what you mean. Sometimes it feels like it's going to go on forever, doesn't it?~ */
== BMAZZY25
@570 /* ~Do not be cast down, Nathaniel. I am sure that you will get your wish in time.~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
Global("FHMazzyTalk25","GLOBAL",1)
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BMAZZY25 FHMazzyTalk225
@571 /* ~Nathaniel, there is something that I have been meaning to talk to you about.~ */
DO ~SetGlobal("FHMazzyTalk25","GLOBAL",2)~
== BFHN25
@572 /* ~Of course, Mazzy. What's up?~ */
== BMAZZY25
@573 /* ~I believe that you have become stronger in recent times. I would like you to know that you are an inspiration and a good friend to me.~ */
== BFHN25
@574 /* ~Thank you, Mazzy! That's a really nice thing for you to say.~ */
=
@575 /* ~You're an inspiration for me too, you know. You're stronger than I am, and being around you helps me to be more like you.~ */
== BMAZZY25
@576 /* ~I appreciate that a great deal, Nathaniel.~ */
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
Global("FHMinscTalk25","GLOBAL",0)
!StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN BFHN25 FHMinscTalk125
@577 /* ~Boo looks a bit downcast, Minsc. Are you sure he's all right?~ */
DO ~SetGlobal("FHMinscTalk25","GLOBAL",1)~
== BMINSC25
@578 /* ~Hmmm? Ah, Boo is fine! He just has a little upset tummy.~ */
== BFHN25
@579 /* ~Ah...did he eat something bad?~ */
== BMINSC25
@580 /* ~Some berries did not agree with him. He is rather delicate for a space hamster, but he will soon be ready for buttkicking once again!~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
Global("FHMinscTalk25","GLOBAL",1)
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BMINSC25 FHMinscTalk225
@581 /* ~Come, come! Warriors like Minsc and Nathaniel must smile as they do their work, in order that our enemies will feel our bootheels all the more keenly!~ */
DO ~SetGlobal("FHMinscTalk25","GLOBAL",2)~
== BFHN25
@582 /* ~Of course. Sorry, I was just a bit lost in thought.~ */
== BMINSC25
@583 /* ~You must not get lost, friend Nathaniel! Walk beside Minsc and Boo - we are so big that you will always see where to go.~ */
== BFHN25
@584 /* ~Minsc, do you ever-- I mean, does the loss of Dynaheir ever trouble you?~ */
== BMINSC25
@585 /* ~The one who slew Minsc's witch was killed by righteous blades. She lies at peace now. And Minsc and Boo know that when it is their time she will be waiting for them!~ */
=
@586 /* ~She may scold us a little for being slow, but that was often her way.~ */
== BFHN25
@587 /* ~Sometimes you know just what to say, don't you? I think I'm ready to carry on now.~ */
== BMINSC25
@588 /* ~Ah, *now* you are smiling, friend Nathaniel! Much better!~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
Global("FHNaliaTalk25","GLOBAL",0)
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BNALIA25 FHNaliaTalk125
@589 /* ~Your prejudice against thievery is completely unfounded. Sometimes someone has to do what is necessary, to get things done.~ */
DO ~SetGlobal("FHNaliaTalk25","GLOBAL",1)~
== BFHN25
@590 /* ~I don't believe that thievery *is* necessary. What kind of example is it showing to those we need to help?~ */
== BNALIA25
@591 /* ~But things need to *happen*, and we can't just sit idly by and watch people mistreating each other.~ */
== BFHN25
@592 /* ~I don't doubt that, but I can't help thinking that the things that need to happen could be orchestrated differently.~ */
== BNALIA25
@593 /* ~Perhaps so, but I believe in the practical approach.~ */
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
Global("FHNaliaTalk25","GLOBAL",1)
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BFHN25 FHNaliaTalk225
@594 /* ~You seem awfully sure of yourself, Nalia. I suppose you've studied a great deal.~ */
DO ~SetGlobal("FHNaliaTalk25","GLOBAL",2)~
== BNALIA25
@595 /* ~I have indeed. It's not like learning a few sword-strokes - it's been a lot of work getting myself to this aptitude.~ */
== BFHN25
@596 /* ~So have you completely rejected your thievery, or...?~ */
== BNALIA25
@597 /* ~Oh, I see what this is about. No, Nathaniel, I haven't rejected any of the skills that I've learned. All of them are of use in a world like this.~ */
== BFHN25
@598 /* ~I see.~ */
== BNALIA25
@599 /* ~Look, I know you may think I am still a naive girl, but it's not true. I hold more power than I could ever have dreamed...and I intend to use it to change the world.~ */
== BFHN25
@600 /* ~Change it to what, though? Whatever you're in the mood for at the time?~ */
== BNALIA25
@601 /* ~No! My power is to be used for good, and it would be well for you to remember that we're on the same side.~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
Global("FHSarevTalk25","GLOBAL",0)
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BSAREV25 FHSarTalk125
@602 /* ~You have looked at me askance once too often, fool. I don't care for it.~ */
DO ~SetGlobal("FHSarevTalk25","GLOBAL",1)~
== BFHN25
@603 /* ~No. You don't care for those whose lives you ruined, do you. You wouldn't have enough decency even to remember.~ */
== BSAREV25 IF ~Alignment(Myself,MASK_EVIL)~ THEN
@604 /* ~Why should I care about an ant such as yourself? Whatever it is you think I did to you, I can do much worse now.~ */
== BSAREV25 IF ~Alignment(Myself,MASK_GOOD)~ THEN
@605 /* ~I do not wish to discuss whatever it is you think I did to you.~ */
== BFHN25
@606 /* ~I was in the Flaming Fist, under the command of Angelo. I suppose that means nothing to you.~ */
== BSAREV25
@607 /* ~You are correct. Now leave me in peace.~ */
EXIT

CHAIN IF ~InParty("Sarevok")
See("Sarevok")
Global("FHSarevTalk25","GLOBAL",1)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
Alignment("Sarevok",MASK_EVIL)~ THEN BFHN25 FHSarTalk225
@608 /* ~I don't know why your presence is even tolerated in this group.~ */
DO ~SetGlobal("FHSarevTalk25","GLOBAL",2)~
== BSAREV25
@609 /* ~That, guardsman, is between myself and <CHARNAME>, and is none of your business.~ */
== BFHN25
@610 /* ~Oh, I know that.~ */
=
@611 /* ~But rest assured, Sarevok, if you try anything I've got my eye on you.~ */
== BSAREV25
@612 /* ~Then I look forward to that day, for it will be the day when I run you through with my blade.~ */
== BFHN25
@613 /* ~I'll be ready for you, Sarevok.~ */
EXIT

CHAIN IF ~InParty("Sarevok")
See("Sarevok")
Global("FHSarevGoodTalk","GLOBAL",0)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
Alignment("Sarevok",MASK_GOOD)~ THEN BFHN25 FHSarTalk325
@614 /* ~I overheard you talking, earlier. I hear you've had a "change of heart" of some kind.~ */
DO ~SetGlobal("FHSarevGoodTalk","GLOBAL",1)~
== BSAREV25
@615 /* ~That, soldier, like so much, is none of your business.~ */
== BFHN25 IF ~!Global("NathRomanceActive","GLOBAL",2)~ THEN
@616 /* ~I imagined you'd say that, yes. Just remember, Sarevok, just because you've duped <CHARNAME> you won't get anything from me.~ */
== BFHN25 IF ~Global("NathRomanceActive","GLOBAL",2)~ THEN
@617 /* ~I imagined you'd say that, yes. Just remember, just because <CHARNAME> thinks you're worthy of trust you won't get anything from him - I'll see to that.~ */
== BSAREV25
@618 /* ~Speak not of what you do not understand. Be thankful that you have nothing to atone for, and leave me in peace.~ */
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
Global("FHValyTalk25","GLOBAL",0)
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BFHN25 FHValyTalk125
@619 /* ~...it's just that you seem a little more accepting of magic, now. That has to be a good thing.~ */
DO ~SetGlobal("FHValyTalk25","GLOBAL",1)~
== BVALYG25
@620 /* ~I don't understand this concern for my welfare, Aplin-Fletcher. Accept that I am different from you and get on with it.~ */
== BFHN25
@621 /* ~It's just that I don't like it if people are unhappy. Don't you see?~ */
== BVALYG25
@622 /* ~Everyone has different ways of finding happiness, and for some people life isn't just about giddiness.~ */
== BFHN25
@623 /* ~Are you saying my life is?~ */
== BVALYG25
@624 /* ~No. Just that there are more important goals than laughter.~ */
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
Global("FHValyTalk25","GLOBAL",1)
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BFHN25 FHValyTalk225
@625 /* ~Valygar?~ */
DO ~SetGlobal("FHValyTalk25","GLOBAL",2)~
== BVALYG25
@626 /* ~What is it?~ */
== BFHN25
@627 /* ~I know we kind of got off on the wrong foot, but we've been travelling together for a while now, and--~ */
== BVALYG25
@628 /* ~Spit it out, Aplin-Fletcher.~ */
== BFHN25
@629 /* ~Look, I wish you'd just call me Nathaniel - everyone else does. Never mind.~ */
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
Global("FHVicTalk25","GLOBAL",0)
!StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN BFHN25 FHVicTalk125
@630 /* ~What is it, Viconia? Thinking of some catty comment to make?~ */
DO ~SetGlobal("FHVicTalk25","GLOBAL",1)~
== BVICON25
@631 /* ~I was merely thinking on the place of males in Drow society.~ */
== BFHN25
@632 /* ~Your point being?~ */
== BVICON25
@633 /* ~If you were Drow, Nathaniel, you would be sacrificed in the spider pits for such insolence.~ */
=
@634 /* ~It is a rather pleasing image. Now, please leave me to my thoughts.~ */
EXIT

CHAIN IF ~InParty("Nath")
See("Nath")
Global("FHVicTalk25","GLOBAL",1)
!StateCheck("Nath",CD_STATE_NOTVALID)~ THEN BVICON25 FHVicTalk225
@635 /* ~You realise, I suppose, that you will never be able to return to your home.~ */
DO ~SetGlobal("FHVicTalk25","GLOBAL",2)~
== BFHN25
@636 /* ~Of course I will, one day.~ */
== BVICON25
@637 /* ~Then why have you not before?~ */
== BFHN25
@638 /* ~Well, I--~ */
=
@639 /* ~I don't see that I need answer to you, Viconia. I know that at some point I'll go back.~ */
== BVICON25
@640 /* ~Answer or not, it means little to me. But one can never truly return to a place one has left: you, or it, have changed too much for it to ever be the same.~ */
EXIT
