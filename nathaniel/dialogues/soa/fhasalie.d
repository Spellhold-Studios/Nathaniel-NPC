BEGIN FHASALIE

IF ~OR(2)
Global("FHAsalieSeeNath","GLOBAL",0)
Global("FHGotIoun","GLOBAL",1)
RandomNum(4,1)~ FHAsalie_nonath
SAY @0 /* ~IOUN STONES! Get your ioun stones here! Not you, lovey; could you get out of my light?~ */
IF ~~ EXIT
END

IF ~OR(2)
Global("FHAsalieSeeNath","GLOBAL",0)
Global("FHGotIoun","GLOBAL",1)
RandomNum(4,2)~ FHAsalie_nonath2
SAY @1 /* ~Hello there, sweetheart! A lovely <DAYNIGHT>, it is!~ */
IF ~~ EXIT
END

IF ~OR(2)
Global("FHAsalieSeeNath","GLOBAL",0)
Global("FHGotIoun","GLOBAL",1)
RandomNum(4,3)~ FHAsalie_nonath3
SAY @2 /* ~Hello to you, dearie. My stock of ioun stones should be coming in any day now.~ */
IF ~~ EXIT
END

IF ~OR(2)
Global("FHAsalieSeeNath","GLOBAL",0)
Global("FHGotIoun","GLOBAL",1)
RandomNum(4,4)~ FHAsalie_nonath4
SAY @3 /* ~Be on with you, sweetheart - I've things to do.~ */
IF ~~ EXIT
END

IF ~Global("FHAsalieSeeNath","GLOBAL",2)
Global("FHGotIoun","GLOBAL",0)~ FHAsalie_noioun
SAY @4 /* ~Hello to you again! Would you be interested in purchasing that present for your special friend?~ */
IF ~PartyGoldGT(2001)~ THEN REPLY @5 /* ~Of course. Anything for my Nathaniel.~ */ + FHAsalie_buy
IF ~PartyGoldGT(2001)~ THEN REPLY @6 /* ~I'm afraid I don't have the money, miss.~ */ + FHAsalie_lie
IF ~PartyGoldLT(2001)~ THEN REPLY @6 /* ~I'm afraid I don't have the money, miss.~ */ + FHAsalie_nomoney
++ @7 /* ~That's far too expensive. There are more important things we need to spend money on.~ */ + FHAsalie_nobuy
++ @8 /* ~I don't have the time for this at the moment.~ */ + FHAsalie_nobuy
END

IF ~~ FHAsalie_lie
SAY @9 /* ~Liar, liar, pants on fire! I can tell from the look of you that you're in the money!~ */
++ @10 /* ~(sigh) Very well, then. Let's have the ioun stone.~ */ + FHAsalie_buy
++ @11 /* ~Oh, all right. You deserve a present, Nathaniel.~ */ + FHAsalie_buy
++ @12 /* ~Sorry, miss. There are other things we need to spend money on.~ */ + FHAsalie_nobuy
++ @13 /* ~Is there no chance of a discount?~ */ + FHAsalie_nomoneylie
END

IF ~~ FHAsalie_nomoney
SAY @14 /* ~I'll tell you what - I'll lower the price to 1000 gold pieces, just for you, because you two are so cute!~ */
IF ~PartyGoldGT(1001)~ THEN REPLY @15 /* ~Thank you. I'll take it, then.~ */ + FHAsalie_buycheap
++ @12 /* ~Sorry, miss. There are other things we need to spend money on.~ */ + FHAsalie_nobuy
IF ~PartyGoldLT(1001)~ THEN REPLY @16 /* ~Sorry, but I don't have even that much money.~ */ + FHAsalie_nonomoney
END

IF ~~ FHAsalie_nobuy
SAY @17 /* ~Just look at how your boyfriend's pouting! Ahh well, some people just don't have taste when it comes to gifts! Never mind, you can come back another time!~ */
IF ~~ THEN EXIT
END

IF ~~ FHAsalie_nomoneylie
SAY @18 /* ~No! Not after you tried to play that trick on me! "No money" indeed!~ */
++ @19 /* ~All right, then. I'll take the ioun stone.~ */ + FHAsalie_buy
++ @12 /* ~Sorry, miss. There are other things we need to spend money on.~ */ + FHAsalie_nobuy
END

IF ~~ FHAsalie_nonomoney
SAY @20 /* ~Sorry, sir. I can't say any better than 1000 gold pieces. We have to earn a living too, sweetpea.~ */
IF ~~ THEN EXIT
END

CHAIN IF ~InParty("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHAsalieSeeNath","GLOBAL",1)~ THEN FHASALIE GetIoun
@21 /* ~Oooh! You two are so cute!~ */
DO ~SetGlobal("FHAsalieSeeNath","GLOBAL",2)~
== FHNATJ
@22 /* ~Are you speaking to me?~ */
== FHASALIE
@23 /* ~Why, yes I am! And aren't you two just the cutest couple!~ */
== FHNATJ
@24 /* ~Oh! Um, thank you, miss.~ */
== FHASALIE
@25 /* ~I've just had a shipment in, and I've got just the thing for you!~ */
== FHNATJ
@26 /* ~Oh? What is it?~ */
== FHASALIE
@27 /* ~An ioun stone! Just perfect for someone who can't wear armour like you!~ */
== FHNATJ
@28 /* ~How much are you selling it for?~ */
== FHASALIE
@29 /* ~A snip at 2000 gold pieces!~ */
== FHNATJ
@30 /* ~I don't know - you see, <CHARNAME>'s in charge of the gold, and I'm not sure that he'll--~ */
== FHASALIE
@31 /* ~Oh, go on, <CHARNAME>! Buy your sweetheart a present!~ */
END
IF ~PartyGoldGT(2001)~ THEN REPLY @32 /* ~Of course I'd like to buy it: I'd do anything for Nathaniel.~ */ + FHAsalie_buy
IF ~PartyGoldGT(2001)~ THEN REPLY @6 /* ~I'm afraid I don't have the money, miss.~ */ + FHAsalie_lie
IF ~PartyGoldLT(2001)~ THEN REPLY @6 /* ~I'm afraid I don't have the money, miss.~ */ + FHAsalie_nomoney
++ @33 /* ~That's far too expensive. There are more important things that we need to spend money on.~ */ + FHAsalie_nobuy
IF ~PartyGoldGT(2001)~ THEN REPLY @34 /* ~Well, I suppose you deserve a present. Let's have the ioun stone, miss.~ */ + FHAsalie_buy
++ @8 /* ~I don't have the time for this at the moment.~ */ + FHAsalie_nobuy

CHAIN FHASALIE FHAsalie_buy
@35 /* ~Wonderful!~ */
DO ~TakePartyGold(2000)
GiveItemCreate("FHIOUN","Nath",0,0,0)
SetGlobal("FHGotIoun","GLOBAL",1)~
== FHNATJ
@36 /* ~It's ... pink.~ */
== FHASALIE
@37 /* ~Pink is a gorgeous colour, don't you agree? Mmm, maybe it clashes with your hair some, but otherwise it's beautiful!~ */
== FHNATJ
@38 /* ~Well, if you think so...~ */
== FHASALIE
@39 /* ~Of course I do! Now hop to it. You need to get going.~ */
== FHNATJ
@40 /* ~Thank you, <CHARNAME>, I really appreciate it. Even if it is...pink.~ */
EXIT

CHAIN FHASALIE FHAsalie_buycheap
@35 /* ~Wonderful!~ */
DO ~TakePartyGold(1000)
GiveItemCreate("FHIOUN","Nath",0,0,0)
SetGlobal("FHGotIoun","GLOBAL",1)~
== FHNATJ
@36 /* ~It's ... pink.~ */
== FHASALIE
@37 /* ~Pink is a gorgeous colour, don't you agree? Mmm, maybe it clashes with your hair some, but otherwise it's beautiful!~ */
== FHNATJ
@38 /* ~Well, if you think so...~ */
== FHASALIE
@39 /* ~Of course I do! Now hop to it. You need to get going.~ */
== FHNATJ
@41 /* ~Thank you, <CHARNAME>, I really appreciate it. Even if it is ... pink.~ */
EXIT

