//CONTENTS
//Anomen fight
//After vampirism
//Kickout dialogue
//Rejoining dialogue

BEGIN FHNATP

//Anomen fight

IF ~Global("FHKilledAno","GLOBAL",1)~ FHKilledAno
SAY @48 /* ~<CHARNAME>, I - I'm so sorry ... I couldn't do anything to stop him ... I wish you'd said something...~ */
++ @49 /* ~It ... it wasn't your fault, Nathaniel. Please join with me again.~ */ DO ~SetGlobal("FHKilledAno","GLOBAL",2)~ + FHKilledAno_join
++ @50 /* ~Don't say anything! I wish he'd killed you, not the other way round!~ */ DO ~SetGlobal("FHKilledAno","GLOBAL",2)~ + FHKilledAno_kill
++ @51 /* ~So do I. It was wrong of me to let him...~ */ DO ~SetGlobal("FHKilledAno","GLOBAL",2)~ + FHKilledAno_wrong
END

IF ~~ THEN BEGIN FHKilledAno_join
SAY @52 /* ~If you're sure...~ */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN FHKilledAno_kill
SAY @53 /* ~I ... I can see you're not interested in my company, then.~ */
IF ~~ DO ~EscapeArea() SetGlobal("NathFriend","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN FHKilledAno_wrong
SAY @54 /* ~No. No, it wasn't your fault. It was his and ... and mine.~ */
=
@55 /* ~I'd like to carry on travelling with you, <CHARNAME>, but I'd understand if you - didn't want me around.~ */
++ @56 /* ~It's too painful, Nathaniel. I'm sorry.~ */ + FHKilledAno_kill
++ @57 /* ~No, I'm still your friend, no matter what has happened.~ */ + FHKilledAno_join
END

//After vampirism

IF ~Global("FHNathVampire","GLOBAL",5)~ FHNath_rescued
SAY @58 /* ~Oh ... thank you, <CHARNAME>, thank you. I'm ... I'm so sorry.~ */
++ @59 /* ~It's fine. Well, it isn't, but all that matters is that you're safe now.~ */ DO ~SetGlobal("NathRomanceActive","GLOBAL",2) RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",900)~ + FHNath_safe
++ @60 /* ~I'm happy to see you back to normal, Nathaniel ... shall we get out of here?~ */ DO ~SetGlobal("NathRomanceActive","GLOBAL",2) RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",900)~ + FHNath_safe
++ @61 /* ~I love you, Nathaniel - how could I have done anything else?~ */ DO ~SetGlobal("NathRomanceActive","GLOBAL",2) RealSetGlobalTimer("NathLoveTalkTime","GLOBAL",900)~ + FHNath_safe
END

IF ~~ FHNath_safe
SAY @62 /* ~I ... I feel a little...~ */     
=
@63 /* ~This is ridiculous! Leave me, <CHARNAME>. I'm of no help to you.~ */   
++ @64 /* ~Don't be absurd! You'll be fine once you get out into the fresh air.~ */ + FHNath_panic
++ @65 /* ~If you think I'm going to leave you, Nathaniel, then you're more stupid than I thought.~ */ + FHNath_panic
++ @66 /* ~Haven't you been listening to me? I love you! Why would I want to leave you here?~ */ + FHNath_panic
++ @67 /* ~I'm not even going to dignify that with an answer, Nathaniel. Now let's get going.~ */ + FHNath_panic
++ @68 /* ~If you're going to be like that then yes, I'll be pleased to leave you.~ */
SOLVED_JOURNAL @69 /* ~The Final Battle with Bodhi.

While I had feared for some time that Bodhi's final revenge on me would be to take away Nathaniel forever, it seems that the information in the lorebook was right... Amaunator's idol has restored him not only to life, but has removed the vampiric curse from him, as well. However, I chose to leave him.~ */
DO ~SetGlobal("NathRomanceActive","GLOBAL",3)
ReputationInc(-1)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ FHNath_panic
SAY @70 /* ~But I feel so ... so ... she did something to me, she made me weak... Just when you need me most!~ */
++ @71 /* ~We'll find a way to fix it. Come on, Nathaniel.~ */ + FHNath_comeon
++ @72 /* ~Just relax, Nathaniel. There'll be a way of stopping you feeling that way, don't worry.~ */ + FHNath_comeon
++ @73 /* ~Stop that. Whatever she did to you, we can fix. All right?~ */ + FHNath_comeon
END

IF ~~ FHNath_comeon
SAY @74 /* ~All ... all right.~ */
IF ~~ THEN SOLVED_JOURNAL @75 /* ~The Final Battle with Bodhi.

While I had feared for some time that Bodhi's final revenge on me would be to take Nathaniel away forever, it seems that the information in the lorebook was right... Amaunator's idol has not only restored Nathaniel to life but has also removed the vampiric curse from him.~ */
DO ~SetGlobal("FHNathVampire","GLOBAL",6)
SetGlobal("FHVampEmotional","GLOBAL",1)
JoinParty()~
EXIT
END

//Kickout dialogue

IF ~!InParty("Nath") !Global("NathKicked","LOCALS",1) !Global("NathRomanceActive","GLOBAL",2)~ FHKickOut
SAY @0 /* ~Are you sure you want to separate?~ */
++ @1 /* ~Yes, I'm afraid so.~ */ + NathKickOut_go
++ @2 /* ~Actually, no. It's good having you around.~ */
DO ~JoinParty()~ EXIT
END

IF ~~ NathKickOut_go
SAY @6 /* ~Well, maybe it's for the best.~ */
+
~!AreaCheck("AR0602")
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
!AreaCheck("AR2906")~ + @7 /* ~Meet us at the Mithrest Inn, all right?~ */ + NathKickOutMithrest
+
~!AreaCheck("AR0301")
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
!AreaCheck("AR0803")~ + @8 /* ~Stay here. We'll come by if we need your help.~ */ + NathKickOutElsewhere
END

IF ~~ NathKickOutMithrest
SAY @9 /* ~All right. Come by soon.~ */
IF ~~ THEN DO
~SetGlobal("NathKicked","LOCALS",1)
EscapeAreaMove("AR0704",683,667,6)~
EXIT
END

IF ~~ NathKickOutElsewhere
SAY @10 /* ~All right, but I'd rather be away from this place.~ */
IF ~~ THEN DO ~SetGlobal("NathKicked","LOCALS",1)~
EXIT
END

IF ~!InParty("Nath") !Global("NathKicked","LOCALS",1) Global("NathRomanceActive","GLOBAL",2)~ NathKickOutLove
SAY @30 /* ~I don't like leaving you alone. What if something happens to you?~ */
++ @31 /* ~You're right. You should stay with me.~ */ + NathKickOutLove_stay
++ @32 /* ~I'm sorry. There just isn't room for you at the moment.~ */ + NathKickOutLove_go
END

IF ~~ NathKickOutLove_stay
SAY @33 /* ~I'm glad. Let's get going.~ */
IF ~~ DO ~SetGlobal("NathKicked","LOCALS",0) JoinParty()~
EXIT
END

IF ~~ NathKickOutLove_go
SAY @34 /* ~(sigh) Fair enough, I suppose. Where would you like to meet again?~ */
++ @35 /* ~Actually, Nathaniel, stay with me.~ */ + NathKickOutLove_stay
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
!AreaCheck("AR2906")~
THEN REPLY @26 /* ~Go to the Mithrest Inn and wait for us there.~ */ + NathKickOutLove_mithrest
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
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")~
THEN REPLY @27 /* ~Stay here and wait for us.~ */ + NathKickOutLove_elsewhere
END

IF ~~ NathKickOutLove_mithrest
SAY @36 /* ~I'll be there. I love you, <CHARNAME>.~ */
IF ~~ DO ~SetGlobal("NathKicked","LOCALS",1)
EscapeAreaMove("AR0704",683,667,6)~
EXIT
END

IF ~~ NathKickOutLove_elsewhere
SAY @37 /* ~All right, but come by soon? I love you, <CHARNAME>.~ */
IF ~~ DO ~SetGlobal("NathKicked","LOCALS",1)~
EXIT
END

//Rejoining dialogue

IF ~Global("NathKicked","LOCALS",1) !Global("NathRomanceActive","GLOBAL",2)~ NathRejoin
SAY @11 /* ~Hello there. Do you want to travel together again?~ */
++ @12 /* ~Yes, please. I've missed your company.~ */ + Nathjoin
++ @13 /* ~I'm afraid not.~ */ EXIT
END

IF ~~ Nathjoin
SAY @14 /* ~Excellent! Thank you, <CHARNAME>.~ */
IF ~~ DO
~SetGlobal("NathKicked","LOCALS",0)
JoinParty()~
EXIT
END

IF ~Global("NathKicked","LOCALS",1) Global("NathRomanceActive","GLOBAL",2)~ NathLoveRejoin
SAY @19 /* ~<CHARNAME>! I can't tell you how good it is to see you again.~ */
++ @20 /* ~I've missed you, Nathaniel. Come back with me.~ */ DO ~SetGlobal("NathKicked","LOCALS",0) JoinParty()~ EXIT
++ @21 /* ~I'm sorry, Nathaniel, but I need you to stay here for a while more.~ */ + NathLoveRejoin_no
END

IF ~~ NathLoveRejoin_no
SAY @22 /* ~All right. But don't stay away too long.~ */
IF ~~ EXIT
END
