EXTEND_TOP FATESP 6 #13
IF ~!Dead("Nath")
!InMyArea("Nath")                    
Global("NathSummoned","GLOBAL",0)
Gender(Player1,MALE)
!Global("AerieRomanceActive","GLOBAL",2)
!Global("JaheiraRomanceActive","GLOBAL",2)
!Global("ViconiaRomanceActive","GLOBAL",2)
!Class(Player1,THIEF_ALL)
OR(3)
Alignment(Player1,MASK_GOOD)
Alignment(Player1,LAWFUL_NEUTRAL)
Class(Player1,DRUID)
OR(3)
Race(Player1,HUMAN)
Race(Player1,HALF_ELF)
Race(Player1,ELF)~ THEN
REPLY @0 /* ~Bring me my lover, Nathaniel.~ */
DO ~SetGlobal("NathSummoned","GLOBAL",1)
SetGlobal("NathRomanceActive","GLOBAL",2)
SetGlobal("FHNathSleep","GLOBAL",3)~ GOTO 8

IF ~!Dead("Nath")
!InMyArea("Nath")
Global("NathSummoned","GLOBAL",0)~ THEN
REPLY @1 /* ~Bring me Nathaniel, the human kensai.~ */
DO ~SetGlobal("NathSummoned","GLOBAL",1)~ GOTO 8
END

BEGIN FHN25

IF ~~ THEN BEGIN FHSummonedRom_sarevoktrust
SAY @2 /* ~I trust *you*, you know I do. But that creature? Never. I'm worried that he's done something to you to force you to be his companion.~ */
IF ~Global("SarevokOath","GLOBAL",1)~ THEN REPLY @3 /* ~It's all right. I made him swear an oath not to hurt me.~ */ + FHSummonedRom_sarevokorder
IF ~Global("SarevokOath","GLOBAL",0)~ THEN REPLY @4 /* ~I just have a feeling...I know he won't betray us.~ */ + FHSummonedRom_sarevokorder
++ @5 /* ~Relax, Nathaniel, please.~ */ + FHSummonedRom_sarevokorder
++ @6 /* ~Anyone can be redeemed...even him.~ */ + FHSummonedRom_sarevokredeem
END

IF ~~ THEN BEGIN FHSummonedRom_sarevokorder
SAY @7 /* ~Well...I suppose...well, I'll keep an eye on him for you, anyway. If he makes one wrong move...~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN FHWaitSarry
SAY @8 /* ~I've no intention of leaving you alone with that murdering bastard. I'm sorry, but my mind's made up.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN FHSummonedRom_sarevokredeem
SAY @9 /* ~I don't think that's true...especially in *his* case. Well, I'll keep an eye on him for you, anyway. If he makes one wrong move...~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN FHSummoned_sarevokjoin
SAY @10 /* ~With *him*? Well...all right, if you need my help. But if he steps over the line...~ */
IF ~Global("SarevokOath","GLOBAL",1)~ THEN REPLY @11 /* ~It's all right. He's sworn an oath not to harm me.~ */ + FHSummoned_sarevokoath
IF ~Global("SarevokOath","GLOBAL",0)~ THEN REPLY @12 /* ~It's all right, I'm pretty sure that he won't hurt me.~ */ + FHSummoned_sarevokoath
++ @13 /* ~Relax, Nathaniel, he's all right. Now step into line.~ */ + FHSummoned_sarevokoath
++ @14 /* ~Well, if you're going to be like that, I'm not sure I want you with me after all.~ */ + FHMeet_firstleave
END

IF ~~ THEN BEGIN FHSummoned_sarevokoath
SAY @15 /* ~I don't believe a word of it. That fiend killed your stepfather...I can't believe you're actually willing to travel with him.~ */
=
@16 /* ~(sigh) I suppose it's your decision, though.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~Global("NathSummoned","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",2)
!InParty("Sarevok")~ THEN BEGIN FHNathSummoned
SAY @17 /* ~<CHARNAME>...? I heard about the Bhaalspawn purges and I was worried for you...but what are you...what are *we*...what's going on?~ */
++ @18 /* ~Calm down! Take a few deep breaths.~ */ DO ~SetGlobal("NathSummoned","GLOBAL",2)~ GOTO FHMeet_breath
++ @19 /* ~If you're the weakling I remember you'd better get over it quickly.~ */ DO ~SetGlobal("NathSummoned","GLOBAL",2)~ GOTO FHMeet_weak
++ @20 /* ~I can't explain at the moment, I'm afraid. It's a little...complicated.~ */ DO ~SetGlobal("NathSummoned","GLOBAL",2)~ GOTO FHMeet_complicated
++ @21 /* ~Don't worry about it. Just wait over there, if you would.~ */ DO ~SetGlobal("NathSummoned","GLOBAL",2)~ GOTO FHMeet_firstleave
END

IF ~~ THEN BEGIN FHMeet_breath
SAY @22 /* ~Well, this isn't exactly normal, so what *is* going on?~ */
++ @23 /* ~I can't explain right now, Nathaniel. I need your help.~ */ + FHMeet_help
++ @24 /* ~I summoned you here so you could assist me. Is that possible?~ */ + FHMeet_assist
++ @25 /* ~Stop stammering and listen to me! I need you to help me!~ */ + FHMeet_snaphelp
++ @26 /* ~It doesn't matter. Just wait here, and I'll tell you if I need you.~ */ + FHMeet_firstleave
END

IF ~~ THEN BEGIN FHMeet_weak
SAY @27 /* ~I *have* improved, and I hope that your manners do too. What have you summoned me for?~ */
++ @28 /* ~I can't explain right now. I need your help.~ */ + FHMeet_snaphelp
++ @29 /* ~Is it possible for you to assist me?~ */ + FHMeet_snaphelp
++ @30 /* ~I've had enough of your stuck-up attitude. Just wait here.~ */ + FHMeet_snapleave
END

IF ~~ THEN BEGIN FHMeet_complicated
SAY @31 /* ~Yes, I can tell. Can you at least tell me why I'm here?~ */
++ @32 /* ~Well, I'd like your assistance.~ */ + FHMeet_help
++ @33 /* ~I need your help, Nathaniel. Is that possible?~ */ + FHMeet_assist
++ @34 /* ~I'll tell you if I need anything. Could you wait over there?~ */ + FHMeet_firstleave
END

IF ~~ THEN BEGIN FHMeet_help
SAY @35 /* ~Then you can have it, of course. I'm glad to help you, no matter how...strange...the situation is. At least it's better than sitting around in this place.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN FHMeet_assist
SAY @36 /* ~Yes, of course it is. I'm glad to help, no matter how...strange...the situation is. At least it's better than sitting around in this place.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()
AddXPObject("Nath",2380000)~ EXIT
END

IF ~~ THEN BEGIN FHMeet_snaphelp
SAY @37 /* ~Fine, I'll join you, but you'd better treat me with a little more courtesy!~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN FHMeet_firstleave
SAY @38 /* ~I can't see the logic in getting me here and just making me stand around, but you know best.~ */
IF ~~ THEN DO ~MoveToPointNoInterrupt([1585.1374]) Face(0)~
EXIT
END

IF ~~ THEN BEGIN FHMeet_snapleave
SAY @39 /* ~Very well. I hope you're in a better mood when you return.~ */
IF ~~ THEN DO ~MoveToPointNoInterrupt([1585.1374]) Face(0)~
EXIT
END

IF ~Global("NathSummoned","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)
!InParty("Sarevok")~ THEN BEGIN FHMeetRom
SAY @40 /* ~Oh, it's good to see you again, <CHARNAME>! The elves said you had gone to the grove, but then I found that a battle had been fought there...~ */
=
@41 /* ~I was worried, but I told myself that you could handle yourself. And you did. So where is this?~ */
++ @42 /* ~It's some sort of personal plane of mine, but that's not important. Come, join me again.~ */ DO ~SetGlobal("NathSummoned","GLOBAL",2)~ + FHMeetRom_join
++ @43 /* ~A woman called Illasera attacked me, but I'm fine - though I'd have preferred you with me.~ */ DO ~SetGlobal("NathSummoned","GLOBAL",2)~ + FHMeetRom_attack
++ @44 /* ~It's a little hazy - there was this Solar, and...anyway, I'd like you with me again.~ */ DO ~SetGlobal("NathSummoned","GLOBAL",2)~ + FHMeetRom_join
++ @45 /* ~I can't explain that at the moment. Would you be able to wait here?~ */ DO ~SetGlobal("NathSummoned","GLOBAL",2)~ + FHMeetRom_firstleave
END

IF ~~ THEN BEGIN FHMeetRom_join
SAY @46 /* ~Yes, that would be wonderful! It's so good to see you again...I love you.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN FHMeetRom_attack
SAY @47 /* ~We can be together now though, can't we?~ */
++ @48 /* ~Yes, of course. I love you; I wouldn't just leave you here.~ */ + FHMeetRom_love
++ @49 /* ~I'm sorry, but it's best if you stay here for a while.~ */ + FHMeetRom_firstleave
END

IF ~~ THEN BEGIN FHMeetRom_firstleave
SAY @50 /* ~Oh. Well, if you're sure. I'd rather...be with you, though.~ */
IF ~~ THEN DO ~MoveToPointNoInterrupt([1585.1374]) Face(0)~
EXIT
END

IF ~~ THEN BEGIN FHMeetRom_love
SAY @51 /* ~I love you too, <CHARNAME>...it feels so good to be with you again...~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~
EXIT
END

IF ~Global("NathSummoned","GLOBAL",2)
!Global("NathRomanceActive","GLOBAL",2)~ THEN BEGIN FHReturn
SAY @52 /* ~Hello again. Have you decided what I'm to do? I'd be happy to join you.~ */
++ @53 /* ~Yes, please join with me.~ */ DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
++ @54 /* ~No. Wait here a little longer.~ */ GOTO FHReturn2
END

IF ~~ THEN BEGIN FHReturn2
SAY @55 /* ~(sigh) I'd really rather be away from here, if even for a little while.~ */
IF ~~ THEN EXIT
END

IF ~Global("NathSummoned","GLOBAL",2)
Global("NathRomanceActive","GLOBAL",2)~ THEN BEGIN FHReturnRom
SAY @56 /* ~I really would prefer to be around you, <CHARNAME>. Could we get going?~ */
++ @57 /* ~Yes, please join with me again.~ */ DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
++ @58 /* ~I'm afraid you need to wait here a little longer.~ */ GOTO FHReturnRom2
END

IF ~~ THEN BEGIN FHReturnRom2
SAY @59 /* ~(sigh) All right. But please, come along soon.~ */
IF ~~ THEN EXIT
END

CHAIN
IF ~InParty("Sarevok")
Global("NathSummoned","GLOBAL",1)
!Global("NathRomanceActive","GLOBAL",2)~
THEN FHN25 FHSummoned_sarevok
@60 /* ~<CHARNAME>...? What are you...what are we...~ */
=
@61 /* ~<CHARNAME>. What is *that* doing with you?~ */
DO ~SetGlobal("NathSummoned","GLOBAL",2)~
== BSAREV25
@62 /* ~From your glare I presume that you refer to me.~ */
== FHN25
@63 /* ~Yes. Why are you here? Why has <CHARNAME> lowered <PRO_HIMHER>self to ally with you? Why--~ */
== BSAREV25
@64 /* ~Quiet yourself, soldier. <CHARNAME> offered me some of <PRO_HISHER> essence in order to restore me and <PRO_HISHER> motives are not yours to question.~ */
== FHN25
@65 /* ~My name is *Nathaniel*, and I--~ */
== BSAREV25
@66 /* ~I care nothing for your name. ~ */
== FHN25
@67 /* ~You - you - <CHARNAME>, why have you done this? He killed your father!~ */
END
IF ~!Global("NathRomanceActive","GLOBAL",2)~ THEN REPLY @68 /* ~As Sarevok said, it was my decision. Will you join with me?~ */ + FHSummoned_sarevokjoin
IF ~!Global("NathRomanceActive","GLOBAL",2)~ THEN REPLY @69 /* ~I had to do it in order to get out of here. Are you willing to help me?~ */ + FHSummoned_sarevokjoin
IF ~!Global("NathRomanceActive","GLOBAL",2)~ THEN REPLY @21 /* ~Don't worry about it. Just wait over there, if you would.~ */ + FHMeet_firstleave

CHAIN
IF ~InParty("Sarevok")
Global("NathSummoned","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)~
THEN FHN25 FHSummonedRom_sarevok
@70 /* ~Oh, it's good to see you again, <CHARNAME>! The elves said you had gone to the grove, but then I... Wait!~ */
=
@71 /* ~What is *that*?~ */
== BSAREV25
@62 /* ~From your glare I presume that you refer to me.~ */
== FHN25
@72 /* ~<CHARNAME>...? Why have you...why are you travelling with that fiend?~ */
== BSAREV25
@73 /* ~Quiet yourself, soldier. <CHARNAME> offered me some of his essence in order to restore me, that is all. His motives are none of your concern.~ */
== FHN25
@74 /* ~My name is *Nathaniel*, and <CHARNAME>'s motives are of great concern to me! He--~ */
== BSAREV25
@75 /* ~I care nothing for your name. All that I demand is that you quiet your babbling.~ */
== FHN25
@76 /* ~You - you-- <CHARNAME>, why are you doing this? He killed your father! He wanted to kill you!~ */
END
++ @77 /* ~Nathaniel, don't you trust me?~ */ + FHSummonedRom_sarevoktrust
++ @78 /* ~Look, it was my decision. Can't you accept it?~ */ + FHSummonedRom_sarevoktrust
++ @79 /* ~I had to do it in order to get out of here.~ */ + FHSummonedRom_sarevokorder
++ @80 /* ~Don't worry about it. Can you wait over there?~ */ + FHWaitSarry
