BEGIN VAMPNATH

IF ~~ THEN BEGIN FHVampNath
SAY @0 /* ~Anything ... anything for you, Mistress.~ */
IF ~~ THEN EXTERN C6BODHI 13
END

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("FHNathVampire","GLOBAL",2)~

EXTEND_BOTTOM C6BODHI 21
IF ~Global("FHNathVampire","GLOBAL",2)~ THEN EXTERN C6BODHI 23
END

EXTEND_BOTTOM C6BODHI 23
IF ~Global("FHNathVampire","GLOBAL",2)~
THEN REPLY @1 /* ~You have taken too much already!  You will return both Imoen's soul and Nathaniel!~ */ EXTERN C6BODHI FHVampNath_taken
IF ~Global("FHNathVampire","GLOBAL",2)~
THEN REPLY @2 /* ~And you have delivered on that promise. Return Nathaniel and perhaps I will be merciful.~ */ EXTERN C6BODHI FHVampNath_taken
IF ~Global("FHNathVampire","GLOBAL",2)~
THEN REPLY @3 /* ~I would have hunted you for your theft of Nathaniel alone.  He is very important to me.~ */ EXTERN C6BODHI FHVampNath_taken
IF ~Global("FHNathVampire","GLOBAL",2)~
THEN REPLY @4 /* ~You place too much confidence in sentiment.  The theft of Nathaniel will not save you.~ */ EXTERN C6BODHI FHVampNath_sentiment
END

APPEND C6BODHI
IF ~~ THEN BEGIN FHVampNath_taken
SAY @5 /* ~He is lost to you, <CHARNAME>.  Despite his claim to prefer males, Nathaniel has been quite receptive to my wiles.  I doubt your fumblings could have inspired the loyalty I have taken with a bite and a gaze.~ */
IF ~~ THEN UNSOLVED_JOURNAL @6 /* ~The Final Battle with Bodhi.

Bodhi has turned Nathaniel into a vampire!  Or ... or very nearly.  The process may not have been completed in the short time Bodhi has had him. Hopefully something can be done or I will have lost him.  Perhaps the elven war sage might know some way of restoration ... or Elhan...~ */
EXTERN VAMPNATH FHVampNath
END

IF ~~ THEN BEGIN FHVampNath_sentiment
SAY @7 /* ~An interesting ploy, though I am sure his fate will still serve as an example, whether you wish him back or not.~ */
=
@8 /* ~Ah, yes, pretty Nathaniel.  Despite his claim to prefer males, he has been quite receptive to my wiles.  I doubt your fumblings could have inspired the loyalty I have taken with a bite and a gaze.~ */
IF ~~ THEN UNSOLVED_JOURNAL @6 /* ~The Final Battle with Bodhi.

Bodhi has turned Nathaniel into a vampire!  Or ... or very nearly.  The process may not have been completed in the short time Bodhi has had him. Hopefully something can be done or I will have lost him.  Perhaps the elven war sage might know some way of restoration ... or Elhan...~ */
EXTERN VAMPNATH FHVampNath
END
END
