BEGIN FHN25P

IF ~Global("NathJoined","LOCALS",1) !Global("NathRomanceActive","GLOBAL",2)~ THEN BEGIN FHKickOut
SAY @0 /* ~Obviously it's your decision, but I'd prefer to continue travelling with you.~ */
++ @1 /* ~Fair enough. Stay with me.~ */ DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
IF ~AreaCheck("AR4500")~ THEN REPLY @2 /* ~Just wait here for a while, if you would.~ */ DO ~SetGlobal("NathJoined","LOCALS",0) MoveToPointNoInterrupt([1585.1374]) Face(0)~ EXIT
IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 /* ~I'll send you back to the pocket plane and come by for you there.~ */ DO ~SetGlobal("NathJoined","LOCALS",0)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ EXIT
IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @4 /* ~Wait here, if you would.~ */ DO ~SetGlobal("NathJoined","LOCALS",0)~ GOTO FHWait
END

IF ~~ THEN BEGIN FHWait
SAY @5 /* ~All right, but I don't want to be waiting too long. Come by soon, all right?~ */
IF ~~ THEN EXIT
END

IF ~Global("NathJoined","LOCALS",1) Global("NathRomanceActive","GLOBAL",2) InParty("Sarevok")~ THEN BEGIN FHKickOutRom_sarry
SAY @6 /* ~No. I'm sorry, <CHARNAME>, but I'm not leaving you alone with that "brother" of yours.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~Global("NathJoined","LOCALS",1) Global("NathRomanceActive","GLOBAL",2) !InParty("Sarevok")~ THEN BEGIN FHKickOutRom
SAY @7 /* ~<CHARNAME>...? Are you sure you want to go separate ways?~ */
++ @8 /* ~You're right, we shouldn't be parted. Stay with me.~ */ GOTO FHStayRom
IF ~AreaCheck("AR4500")~ THEN REPLY @9 /* ~I'd like you to wait here for a while.~ */ GOTO FHKickOutRom_pp
IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 /* ~I'll send you back to the pocket plane and come by for you there.~ */ GOTO FHKickOutRom_pp2
IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @9 /* ~I'd like you to wait here for a while.~ */ DO ~SetGlobal("NathJoined","LOCALS",0)~ GOTO FHWaitRom
END

IF ~~ THEN BEGIN FHStayRom
SAY @10 /* ~That's a relief... Thank you.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN FHKickOutRom_pp
SAY @11 /* ~All right... But please come back soon - I love you, and I don't want something to happen to you because I'm not there.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",0) MoveToPointNoInterrupt([1585.1374]) Face(0)~ EXIT
END

IF ~~ THEN BEGIN FHKickOutRom_pp2
SAY @12 /* ~All right... But please go there soon - I love you, and I don't want something to happen to you because I'm not there.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",0)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ EXIT
END

IF ~~ THEN BEGIN FHWaitRom
SAY @11 /* ~All right... But please come back soon - I love you, and I don't want something to happen to you because I'm not there.~ */
IF ~~ THEN EXIT
END

IF ~Global("NathJoined","LOCALS",0) !Global("NathRomanceActive","GLOBAL",2)~ THEN BEGIN FHRejoin
SAY @13 /* ~It's good to see you! Do you wish to travel together again?~ */
++ @14 /* ~Yes, that's a good idea.~ */ GOTO FHRejoin2
++ @15 /* ~No, stay here a while longer.~ */ GOTO FHWait
END

IF ~~ THEN BEGIN FHRejoin2
SAY @16 /* ~Excellent! Let's get going.~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~Global("NathJoined","LOCALS",0) Global("NathRomanceActive","GLOBAL",2)~ THEN BEGIN FHRejoinRom
SAY @17 /* ~<CHARNAME>! Oh, my love, it's good to see you. Shall we get going?~ */
++ @18 /* ~Yes, of course. I'm glad to be back with you.~ */ GOTO FHRejoinRom2
++ @19 /* ~I'm afraid I need you to wait here a little longer.~ */ GOTO FHRejoinRom3
END

IF ~~ THEN BEGIN FHRejoinRom2
SAY @20 /* ~So am I!~ */
IF ~~ THEN DO ~SetGlobal("NathJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN FHRejoinRom3
SAY @21 /* ~All right... But please come back soon. I love you.~ */
IF ~~ THEN EXIT
END
