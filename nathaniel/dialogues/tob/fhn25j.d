BEGIN FHBOY

IF ~RandomNum(4,1) GlobalLT("FHBoyNath","GLOBAL",1)~ THEN BEGIN FHEliNo1
SAY @0 /* ~I want my mummy...~ */
IF ~~ THEN EXIT
END

IF ~RandomNum(4,2) GlobalLT("FHBoyNath","GLOBAL",1)~ THEN BEGIN FHEliNo2
SAY @1 /* ~When the fighting stops, I can go home.~ */
IF ~~ THEN EXIT
END

IF ~RandomNum(4,3) GlobalLT("FHBoyNath","GLOBAL",1)~ THEN BEGIN FHEliNo3
SAY @2 /* ~Daddy left to go and fight but he hasn't come back yet.~ */
IF ~~ THEN EXIT
END

IF ~RandomNum(4,4) GlobalLT("FHBoyNath","GLOBAL",1)~ THEN BEGIN FHEliNo4
SAY @3 /* ~D-do you know when the fighting will stop?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHEli_thanks
SAY @4 /* ~Th-thank you, sir.~ */
IF ~~ THEN DO ~SetGlobal("FHEliTemple","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN FHEli_allright
SAY @5 /* ~I will be, sir. Th-thank you.~ */
IF ~~ THEN DO ~SetGlobal("FHEliTemple","GLOBAL",1)~
EXIT
END

IF ~RandomNum(4,1) Global("FHEliTemple","GLOBAL",2)~ THEN BEGIN FHEli1
SAY @0 /* ~I want my mummy...~ */
IF ~~ THEN EXIT
END

IF ~RandomNum(4,2) Global("FHEliTemple","GLOBAL",2)~ THEN BEGIN FHEli2
SAY @6 /* ~H-hello again.~ */
IF ~~ THEN EXIT
END

IF ~RandomNum(4,3) Global("FHEliTemple","GLOBAL",2)~ THEN BEGIN FHEli3
SAY @7 /* ~Th-thank you for sending me here. It's nice.~ */
IF ~~ THEN EXIT
END

IF ~RandomNum(4,4) Global("FHEliTemple","GLOBAL",2)~ THEN BEGIN FHEli4
SAY @8 /* ~I hope the fighting stops. Then I can go home.~ */
IF ~~ THEN EXIT
END

CHAIN
IF ~Global("FHBoyNath","GLOBAL",1)
Global("NathRomanceActive","GLOBAL",2)~ THEN FHBOY FHBoyNath
@9 /* ~E-excuse me? My mummy's in the house a-and she won't wake up, and I don't know what to do...~ */
DO ~SetGlobal("FHBoyNath","GLOBAL",2)~
== FHN25J
@10 /* ~Do you know where your father is?~ */
== FHBOY
@11 /* ~D-daddy left a little while ago but he hasn't come back yet.~ */
== FHN25J
@12 /* ~Sssh, it's all right, don't cry - here, blow your nose - there, isn't that better?~ */
== FHBOY
@13 /* ~A - a bit.~ */
== FHN25J
@14 /* ~That's the spirit. What's your name?~ */
== FHBOY
@15 /* ~E-Elenor Blakely.~ */
== FHN25J
@16 /* ~All right, Elenor. Don't run off, we'll find somewhere for you to go.~ */
=
@17 /* ~<CHARNAME>, we have to do something.~ */
END
++ @18 /* ~We could take her to the barracks. That has to be the safest place here.~ */ EXTERN FHN25J FHEli_barracks
++ @19 /* ~We should leave her here. At least it's a familiar place.~ */ EXTERN FHN25J FHEli_here
++ @20 /* ~I might be able to send her to the pocket plane.~ */ EXTERN FHN25J FHEli_pocket
++ @21 /* ~We could leave her at the temple.~ */ + FHTemple
++ @22 /* ~We could take her to the tavern. It looks comfortable in there.~ */ EXTERN FHN25J FHEli_tavern

CHAIN FHBOY FHTemple
@23 /* ~I - I'd like that, sir. Sister Farielle is nice.~ */
== FHN25J
@24 /* ~Then it's settled. <CHARNAME>, could we accompany her to the temple? To be sure that she's safe.~ */
END
++ @25 /* ~Of course. She seems a nice enough girl.~ */ + FHEli_thanks
++ @26 /* ~I'm sorry, but we've got more pressing things to deal with.~ */ EXTERN FHN25J FHNathEli_fair
++ @27 /* ~All right, but we can't be there too long.~ */ EXTERN FHN25J FHNathEli_fair
++ @28 /* ~No thanks. I'm not fond of children.~ */ EXTERN FHN25J FHNathEli_fair
++ @29 /* ~I'm sure she'll be all right on her own.~ */ EXTERN FHN25J FHNathEli_fair

CHAIN
IF WEIGHT #-1
~Global("FHEliTemple","GLOBAL",1)~ THEN FHBOY FHEliInTemple
@30 /* ~It's not so loud here. I - I like it.~ */
DO ~SetGlobal("FHEliTemple","GLOBAL",2)~
== FHN25J
@31 /* ~How are you feeling now?~ */
== FHBOY
@32 /* ~All - all right. Will mummy be here soon?~ */
== FHN25J
@33 /* ~She's...um, she won't be coming here. I'm sorry.~ */
== FHBOY
@34 /* ~...oh...~ */
== FHN25J
@35 /* ~<CHARNAME>, maybe we should go.~ */
EXIT

BEGIN FHN25J

//Reputation quibbling//

IF ~Global("NathGoes2","GLOBAL",1)~ THEN BEGIN NathGoes2
SAY @36 /* ~I know that things are very...difficult at the moment, but please, <CHARNAME>, think about what you're doing - it's not right to behave like this to people.~ */
IF ~~ THEN DO ~SetGlobal("NathGoes2","GLOBAL",2)~
EXIT
END

//PC dual-classes to thief//
IF ~Global("NathThief2","GLOBAL",1)~ THEN BEGIN NathThief2
SAY @37 /* ~<CHARNAME>. We should talk about this. Why did you decide to take up as a thief, even though you're perfectly good at what you do? It's...it's not something to be admired.~ */
++ @38 /* ~I need these skills to help us survive, Nathaniel.~ */ + NathThief2_survive
++ @39 /* ~It isn't because I enjoy breaking the law, Nathaniel - it's a necessity. I'm sorry, but that's the way it has to be.~ */ + NathThief2_survive
++ @40 /* ~I don't see that my changing profession has anything to do with our being together, Nathaniel.~ */ + NathThief2_everything
++ @41 /* ~Let's just keep business and pleasure separate, all right? What has what I am got to do with us?~ */ + NathThief2_everything
END

IF ~~ THEN BEGIN NathThief2_survive
SAY @42 /* ~Hmm. I think you're exaggerating the importance of these *skills*. Surely there are other--~ */
=
@43 /* ~(sigh) Look, let's just forget we had this conversation, all right? I love you, and that's what's important.~ */
IF ~~ THEN DO
~SetGlobal("NathThief2","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN NathThief2_everything
SAY @44 /* ~It's got everything to do with it - I just...well, I can't respect you as much as I did. I'm sorry.~ */
++ @45 /* ~I'm sorry, too. I didn't think it would have this much of an impact on you.~ */ + NathThief2_impact
++ @46 /* ~Are you breaking up with me, Nathaniel?~ */ + NathThief2_break
++ @47 /* ~If you're going to be that shallow, maybe I don't respect *you* as much as I did.~ */ + NathThief2_shallow
END

IF ~~ THEN BEGIN NathThief2_impact
SAY @48 /* ~It's...it's all right. I'll get over it. Nothing's as important as the fact that I love you, I promise. Let's just forget this conversation happened, all right?~ */
IF ~~ THEN DO
~SetGlobal("NathThief2","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN NathThief2_break
SAY @49 /* ~No, of course not. All that matters is that I love you, I promise. Let's just forget this conversation happened, all right?~ */
IF ~~ THEN DO
~SetGlobal("NathThief2","GLOBAL",2)~
EXIT
END

IF ~~ THEN BEGIN NathThief2_shallow
SAY @50 /* ~Stop it! I didn't mean to be shallow - I was just saying! Look, I'm sorry, all right? Let's just forget this conversation happened.~ */
IF ~~ THEN DO
~SetGlobal("NathThief2","GLOBAL",2)~
EXIT
END

//Elenor stuff
IF ~~ THEN BEGIN FHEli_barracks
SAY @51 /* ~I'm not sure that's such a good idea. It's not right for a child to be in a place where there's so much fighting going on. And a lot of those soldiers are Gromnir's, aren't they? They might hurt her.~ */
=
@52 /* ~We could take her to the Temple, though.~ */
IF ~~ THEN EXTERN FHBOY FHTemple
END

IF ~~ THEN BEGIN FHEli_here
SAY @53 /* ~We can't do that! She could get hit by one of those catapults! No, she needs to be somewhere safe. Maybe we could take her to the Temple of Waukeen.~ */
IF ~~ THEN EXTERN FHBOY FHTemple
END

IF ~~ THEN BEGIN FHEli_pocket
SAY @54 /* ~That's a good idea! Elenor, we'll take you somewhere safe. Don't worry, it'll feel strange at first, but--~ */
++ @55 /* ~Don't get your hopes up, Nathaniel. I'm afraid it's not working.~ */ + FHEli_imposs
++ @56 /* ~I'm sorry. It doesn't seem to be working.~ */ + FHEli_imposs
++ @57 /* ~Damn it! It's not happening like it should.~ */ + FHEli_imposs
END

IF ~~ THEN BEGIN FHEli_imposs
SAY @58 /* ~Oh. Well, she probably wouldn't have liked it there anyway. She needs to go somewhere safe...~ */
=
@59 /* ~Maybe we could take her to the Temple?~ */
IF ~~ THEN EXTERN FHBOY FHTemple
END

IF ~~ THEN BEGIN FHEli_tavern
SAY @60 /* ~It's not exactly the place for a child, though, is it? She needs somewhere more sheltered...~ */
=
@61 /* ~How about the Temple?~ */
IF ~~ THEN EXTERN FHBOY FHTemple
END

IF ~~ THEN BEGIN FHNathEli_fair
SAY @62 /* ~Fair enough, but I'd like to check that she's all right.~ */
IF ~~ THEN EXTERN FHBOY FHEli_allright
END

//Interjections//

INTERJECT_COPY_TRANS ABAZIGAL 1 FHAbazig1
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@63 /* ~It's odd how many people actually *want* this essence of yours. I'd hate to have to cope with it.~ */
END

INTERJECT_COPY_TRANS2 AMARCH02 5 FHAmarch02
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@64 /* ~<CHARNAME>! Couldn't you have left them alone when they asked you to?~ */
END

INTERJECT_COPY_TRANS AMMAYOR 5 FHAMMAYOR
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@65 /* ~These mercenaries aren't pursuing the law at all, only their own whims!~ */
END

INTERJECT_COPY_TRANS AMBOY01 0 FHAMBOY01
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@66 /* ~These poor children...having only criminals to aspire to!~ */
END

APPEND AMCAPT01
IF WEIGHT #-1
~InParty("Nath")
See("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHAmCapt","LOCALS",0)~ THEN BEGIN FHAmCapt
SAY @67 /* ~Leave us alone, fool. We have better things to do than talk to you.~ */
IF ~~ THEN DO ~SetGlobal("FHAmCapt","LOCALS",1)~ EXTERN FHN25J FHNathCapt
END
END

APPEND FHN25J
IF ~~ THEN BEGIN FHNathCapt
SAY @68 /* ~That's supposing I *wanted* to talk to you in the first place.~ */
IF ~~ THEN EXIT
END
END

INTERJECT_COPY_TRANS AMCARRAS 9 FHCarras
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@69 /* ~Hmm, I wouldn't believe him. These criminals are all the same.~ */
END

INTERJECT_COPY_TRANS2 AMCLER01 8 FHAmcler
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@70 /* ~I wonder why Balthazar lets his monks behave that way? Well, it was good of you to give him the money anyway, <CHARNAME>.~ */
END

INTERJECT_COPY_TRANS AMLICH01 8 FHVon1
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@71 /* ~When will people like him learn that money isn't everything? To give up your soul for something so small...~ */
END

INTERJECT_COPY_TRANS AMMERC02 0 FHAmmerc02
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@72 /* ~It can't be him...~ */
END

INTERJECT_COPY_TRANS AMMONK02 3 FHAmmonk02
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@73 /* ~Infamous? It seems...worrying that everyone knows you like this. I'd rather we were less high-profile.~ */
END

INTERJECT_COPY_TRANS AMMONK03 0 FHAmmonk03
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@74 /* ~He - he betrays us *again*? Just what's--~ */
END

INTERJECT_COPY_TRANS AMSAEMON 14 FHAmsaemon
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@75 /* ~My heart bleeds.~ */
END

INTERJECT_COPY_TRANS2 AMSAEMON 32 FHAmsaemon2
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@76 /* ~I really don't think it's a good idea to trust him. Just keep your eyes open, and I'll do the same.~ */
END

INTERJECT_COPY_TRANS2 AMTGEN01 1 FHAmtgen
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@77 /* ~But - no, wait!--~ */
END

INTERJECT_COPY_TRANS BAERIE25 157 FHAeriebaby
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@78 /* ~Ohhh...look at him...he's so small! He's yawning!~ */
== IMOEN25J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN
@79 /* ~You know, Thaniel, if I didn't know you better I'd say you were getting broody.~ */
END

INTERJECT_COPY_TRANS BALTH 26 FHBalth
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@80 /* ~<CHARNAME> does more than "strive" to be virtuous - <PRO_HESHE> succeeds, unlike you!~ */
END

INTERJECT_COPY_TRANS BAZDRA03 10 FHBazdra03
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@81 /* ~But you--~ */
END

INTERJECT_COPY_TRANS2 BAZDRA03 12 FHBazdra032
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@82 /* ~Oh...thank goodness!~ */
END

INTERJECT_COPY_TRANS2 BAZMONK 3 FHBazmonk
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@83 /* ~Who would do something like that to a man? I wonder what he was doing here...~ */
END

INTERJECT_COPY_TRANS SAREV25J 9 FHBazmonksar
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@84 /* ~Typically bloodthirsty. I wonder, when will you find some compassion in that mind of yours?~ */
== SAREV25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@85 /* ~You know nothing of my mind. Be silent when amongst your betters.~ */
END

INTERJECT_COPY_TRANS BAZPAT01 5 FHBazpat01
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@86 /* ~Who *are* these people?~ */
END

APPEND BOTSMITH
IF WEIGHT #-1
~IsGabber("Nath")
!StateCheck("Nath",CD_STATE_NOTVALID)
Global("ItemMaker","GLOBAL",0)
GlobalGT("TalkedToBotsmith","GLOBAL",0)
PartyHasItem("FHSW1")
Global("FHNathCesp","LOCALS",0)~ THEN BEGIN FHNathCesp
SAY @87 /* ~Ooooh! Let's take a look at that sword... Mmm, a katanana...~ */
=
@88 /* ~Blech! This is old and dusty! If you wants, I can make it a lot more shinier! I needs 10,000 gp and a scroll of Fireball.~ */
IF ~NumItemsPartyGT("SCRL1G",0)
PartyGoldGT(9999)~ THEN REPLY @89 /* ~Yes, I'd like to do that.~ */
DO ~SetGlobal("FHNathCesp","LOCALS",1)
TakePartyItemNum("SCRL1G",1)   DestroyItem("SCRL1G")
TakePartyItemNum("FHSW1",1)   DestroyItem("FHSW1")
TakePartyGold(10000)      DestroyGold(10000)
GiveItemCreate("FHSW3","Nath",1,1,0)~ EXIT
IF ~PartyGoldLT(10000)~ THEN REPLY @90 /* ~I don't have the gold, I'm afraid.~ */ EXTERN BOTSMITH 10
++ @91 /* ~Maybe another time.~ */ EXIT
END
END

INTERJECT_COPY_TRANS CHALCY01 0 FHCyric
== FHN25J IF ~InParty("Nath") Global("NathRomanceActive","GLOBAL",2)~ THEN
@92 /* ~Oh...my goodness! Please, <CHARNAME>, be careful with this...person?~ */
END

APPEND CHALDT01
IF WEIGHT #-1
~IsGabber("Nath")
Global("NathRomanceActive","GLOBAL",2)
StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHInLost","LOCALS",0)~ THEN BEGIN FHInLost
SAY @93 /* ~I know of you, for you murmur your love to <CHARNAME> in the darkness of the night and are causing me to fade, so begone!~ */
IF ~~ THEN EXIT
END
END

INTERJECT_COPY_TRANS CHALDT01 4 FHNathDoubtLost
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@94 /* ~Doubt's never a good thing, <CHARNAME>, believe me. Don't listen to this creature.~ */
END

APPEND CHALIN01
IF WEIGHT #-1
~IsGabber("Nath")
Global("NathRomanceActive","GLOBAL",2)
StateCheck("Nath",CD_STATE_NOTVALID)
Global("FHInLost","LOCALS",0)~ THEN BEGIN FHInLost
SAY @95 /* ~I know of you, for you murmur your love to <CHARNAME> in the darkness of the night and have caused him to lose me! Begone!~ */
IF ~~ THEN EXIT
END
END

INTERJECT_COPY_TRANS CHALIN01 6 FHNathInLost
== FHN25J IF ~InParty("Nath") Global("NathRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@96 /* ~Even though you're less innocent, you've had good experiences too, and learned how to cope with things! Please, <CHARNAME>, don't listen to this creature.~ */
END

INTERJECT_COPY_TRANS CHALPC01 0 FHChalSar
== FHN25J IF ~InParty("Nath") Global("NathRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@97 /* ~<CHARNAME> would never have become a monster like Sarevok and that bastard Angelo!~ */
END

APPEND FAMIL125
IF WEIGHT #-1
~IsGabber("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN BEGIN FHFamil125
SAY @98 /* ~The dragon flicks its tail, its eyes shimmering. "Take care, my lord. You mean a great deal to <CHARNAME>."~ */
IF ~~ THEN EXIT
END
END

APPEND FAMIL325
IF WEIGHT #-1
~IsGabber("Nath")
Global("NathRomanceActive","GLOBAL",2)~ THEN BEGIN FHFamil325
SAY @99 /* ~The familiar scratches its ear lazily, then starts to groom itself. It pauses for a moment. "Do not get yourself killed, *if* you please. <CHARNAME> is very fond of you."~ */
IF ~~ THEN EXIT
END
END

INTERJECT_COPY_TRANS FINSOL01 27 FHNathFinSol
== FHN25J IF ~InParty("Nath") !Global("NathRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@100 /* ~<CHARNAME>, I don't think you should do this. Everyone...everyone would miss you so much.~ */
=
@101 /* ~And I know that you might do good things with the power, but I also know that whatever you do with it, it's Bhaal's. I've seen the hold that it can have over you, and I don't believe that it's harmless, no matter what that Solar says.~ */
=
@102 /* ~But...I suppose in the end it's your choice. Your mind's probably made up, and I don't want to try to change it if it is.~ */
END

INTERJECT_COPY_TRANS FINSOL01 27 FHNathFinSolAer
== FHN25J IF ~InParty("Nath") !Global("NathRomanceActive","GLOBAL",2) Global("AerieRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@103 /* ~<CHARNAME>, I don't think you should do this. You mean so much to Aerie...it isn't fair to leave her behind like that.~ */
=
@101 /* ~And I know that you might do good things with the power, but I also know that whatever you do with it, it's Bhaal's. I've seen the hold that it can have over you, and I don't believe that it's harmless, no matter what that Solar says.~ */
=
@102 /* ~But...I suppose in the end it's your choice. Your mind's probably made up, and I don't want to try to change it if it is.~ */
END

INTERJECT_COPY_TRANS FINSOL01 27 FHNathFinSolAno
== FHN25J IF ~InParty("Nath") !Global("NathRomanceActive","GLOBAL",2) Global("AnomenRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@104 /* ~<CHARNAME>, I don't think you should do this. You mean so much to Anomen...it isn't fair to leave him behind like that.~ */
=
@101 /* ~And I know that you might do good things with the power, but I also know that whatever you do with it, it's Bhaal's. I've seen the hold that it can have over you, and I don't believe that it's harmless, no matter what that Solar says.~ */
=
@102 /* ~But...I suppose in the end it's your choice. Your mind's probably made up, and I don't want to try to change it if it is.~ */
END

INTERJECT_COPY_TRANS FINSOL01 27 FHNathFinSolJah
== FHN25J IF ~InParty("Nath") !Global("NathRomanceActive","GLOBAL",2) Global("JaheiraRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@105 /* ~<CHARNAME>, I don't think you should do this. You mean so much to Jaheira...it isn't fair to leave her behind like that.~ */
=
@101 /* ~And I know that you might do good things with the power, but I also know that whatever you do with it, it's Bhaal's. I've seen the hold that it can have over you, and I don't believe that it's harmless, no matter what that Solar says.~ */
=
@102 /* ~But...I suppose in the end it's your choice. Your mind's probably made up, and I don't want to try to change it if it is.~ */
END

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)
Global("FHPlease","GLOBAL",0)~ THEN DO ~SetGlobal("FHPlease","GLOBAL",1)~ EXTERN FHN25J FHPleaseStay
END

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)
Global("FHLeaving","GLOBAL",0)~ THEN DO
~SetGlobal("FHLeaving","GLOBAL",1)~ EXTERN FHN25J FHLeaving
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)
Global("FHLeaving","GLOBAL",0)~ THEN DO
~SetGlobal("FHLeaving","GLOBAL",1)~ EXTERN FHN25J FHLeaving
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)
Global("FHLeaving","GLOBAL",0)~ THEN DO
~SetGlobal("FHLeaving","GLOBAL",1)~ EXTERN FHN25J FHLeaving
END

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("Nath")
Global("NathRomanceActive","GLOBAL",2)
Global("FHStay","GLOBAL",0)~ THEN DO
~SetGlobal("FHStay","GLOBAL",1)~ EXTERN FHN25J FHStay
END

APPEND FHN25J
IF ~~ THEN BEGIN FHPleaseStay
SAY @106 /* ~I know I said that I would let you make your decision. I know I should just let you think instead of distracting you...~ */
=
@107 /* ~But I can't. When I said that, I - was lying to you, and I'm sorry. I can't sit back and let you make your decision at all.~ */
=
@108 /* ~Please, <CHARNAME> - please stay here. With me. I know I can't offer you power or riches or anything like that, but I can offer you a life where you're the centre of my world.~ */
=
@109 /* ~I love you. And...and I couldn't stand to lose you.~ */
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN FHLeaving
SAY @110 /* ~...I see...~ */
++ @111 /* ~Nathaniel--~ */ + FHLeaving_nath
++ @112 /* ~I love you with all my heart, Nathaniel.~ */ + FHLeaving_love
++ @113 /* ~Please believe me, I did this for a reason.~ */ + FHLeaving_reason
++ @114 /* ~I'm sorry, Nathaniel--~ */ + FHLeaving_nath
++ @115 /* ~One day, you'll find someone else. I know it.~ */ + FHLeaving_else
END

IF ~~ THEN BEGIN FHLeaving_nath
SAY @116 /* ~Sssh. You. Are. The most--~ */
IF ~~ THEN GOTO FHLeaving_embrace
END

IF ~~ THEN BEGIN FHLeaving_love
SAY @117 /* ~I know. And, and I love you too, <CHARNAME>.~ */
=
@118 /* ~You. Are. The most--~ */
IF ~~ THEN GOTO FHLeaving_embrace
END

IF ~~ THEN BEGIN FHLeaving_reason
SAY @119 /* ~Please, don't - I don't need to be told...~ */
=
@120 /* ~You. Are. The most...~ */
IF ~~ THEN GOTO FHLeaving_embrace
END

IF ~~ THEN BEGIN FHLeaving_else
SAY @121 /* ~No. I can't imagine that I could find anyone as--~ */
IF ~~ THEN GOTO FHLeaving_embrace
END

IF ~~ THEN BEGIN FHLeaving_embrace
SAY @122 /* ~(Nathaniel pulls you into a fierce, tight embrace, then draws back, running his fingers over your face as if to ensure that it is imprinted in his memory.)~ */
=
@123 /* ~Goodbye, my darling. I love you.~ */
COPY_TRANS FINSOL01 29
END

IF ~~ THEN BEGIN FHStay
SAY @124 /* ~Oh...oh, this was too much to hope for...I told myself you'd say you'd leave so I wouldn't be as disappointed, and now...~ */
=
@125 /* ~(Nathaniel wraps you in his arms and sighs against your hair, inhaling your smell. After several long minutes, he withdraws and gazes at your face, drinking you in.)~ */
=
@126 /* ~You're the best person to me in the world, and I mean that. I love you so much.~ */
COPY_TRANS FINSOL01 32
END
END

EXTEND_BOTTOM HGWRA01 18
IF ~Global("NathRomanceActive","GLOBAL",2)
InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("FHLovedOne","GLOBAL",6)~ EXTERN HGWRA01 FHwraith
END

APPEND HGWRA01
IF ~~ THEN BEGIN FHwraith
SAY @127 /* ~What of the inevitable pain you must give to the one you love? This man, the one whom you call "Nathaniel".~ */
IF ~~ THEN EXTERN FHN25J FHwraith2
END
END

APPEND FHN25J
IF ~~ THEN BEGIN FHwraith2
SAY @128 /* ~No. You're wrong. He's helped my pain to fade.~ */
IF ~~ THEN EXTERN HGWRA01 24
END
END

EXTEND_BOTTOM HGWRA01 24
IF ~Global("NathRomanceActive","GLOBAL",2)~ THEN DO
~ClearAllActions()
StartCutSceneMode()
StartCutScene("FHcut218")~ EXIT
END

BEGIN FHLOVE6
IF ~NumTimesTalkedTo(0)~ THEN BEGIN FHLove6
SAY @129 /* ~Hello, Thaniel.~ */
IF ~~ THEN EXTERN FHN25J FHNathWraith
END

CHAIN FHN25J FHNathWraith
@130 /* ~A-Avery? What...what's going on?~ */
== FHLOVE6
@131 /* ~Isn't it obvious? While you've been gallivanting about I'm cold in the ground.~ */
== FHN25J
@132 /* ~I don't understand, I...~ */
== FHLOVE6
@133 /* ~Is it so hard to grasp? I was murdered. I, who became your friend when you were eight years old, the one you abandoned countless times. Did that get through your thick skull?~ */
== FHN25J
@134 /* ~Who - who killed you?~ */
== FHLOVE6
@135 /* ~You did. Oh, it was another's hand who held the blade, it was your lover who slit my throat as I slept, but it is *your* doing.~ */
== FHN25J
@136 /* ~No, how could I-- my lover?~ */
== FHLOVE6
@137 /* ~Latimer. Yes, he came to Trademeet and broke into my room as I slept and he killed me. For what you had done to him.~ */
== FHN25J
@138 /* ~I...~ */
== FHLOVE6
@139 /* ~I warned you against him countless times and what did you do? You threatened to break off our friendship. He drove everyone out of your life - with *your* help.~ */
=
@140 /* ~You wanted me out of your life and finally I am. Forever!~ */
== FHN25J
@141 /* ~No, that's not true!~ */
== FHLOVE6
@142 /* ~You kept Latimer around and when you were bored you cast him off for someone else. Latimer punished the only person he knew he could.~ */
=
@143 /* ~You knew he'd go to me. You knew he'd think it was my doing and so you threw him aside and killed me, all for your petty little crush.~ */
== FHN25J
@144 /* ~But, no, it wasn't like--~ */
== FHLOVE6
@145 /* ~You wanted me dead and you got it, you bastard, you got it! Do you hear me? IT'S YOUR FAULT!~ */
END
++ @147 /* ~I know that Nathaniel did none of this. Leave him alone!~ */ EXTERN HGWRA01 25
++ @148 /* ~Stop tormenting him! There must be another explanation.~ */ EXTERN HGWRA01 25
++ @149 /* ~Gorion, stop this! I won't let this go any further!~ */ EXTERN HGWRA01 25
IF ~CheckStatGT(Player1,16,WIS)~ THEN REPLY @150 /* ~Nathaniel, this isn't Avery and it isn't Gorion. It isn't real!~ */ EXTERN HGWRA01 25

INTERJECT_COPY_TRANS ILLASERA 7 FHIlla
== FHN25J IF ~InParty("Nath") Global("NathRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@151 /* ~Like Sarevok, you mean? <CHARNAME>'s a better person than Bhaalspawn like you could ever be!~ */
END

INTERJECT_COPY_TRANS IMOEN25J 27 FHImBad
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@152 /* ~Imoen, I don't want to criticise, but couldn't you have said something before?~ */
END

INTERJECT_COPY_TRANS2 ORPHAN1 1 FHOrphBad
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@153 /* ~<CHARNAME>, that was a terrible thing to do! What were you thinking?~ */
END

INTERJECT_COPY_TRANS MELISS01 12 FHMelis
== FHN25J IF ~InParty("Nath") Global("NathRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@154 /* ~So you manipulated the man I love. I hope you realise that I'm not going to let this go, Melissan.~ */
END

INTERJECT_COPY_TRANS SARBAR01 6 FHSarbar01
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@155 /* ~It's a terrible situation, but don't worry, I'm sure <CHARNAME> will do everything <PRO_HESHE> can to help.~ */
END

INTERJECT_COPY_TRANS SARBHA02 1 FHSarbha1
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@156 /* ~Don't worry - one day it'll be better for you. Besides, it's not always good to blend in with everyone else.~ */
END

INTERJECT_COPY_TRANS SARBUL06 2 FHSarbul1
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@157 /* ~Comments like that are disgusting! It's terrible to think that people like this are in positions of authority!~ */
END

ADD_TRANS_TRIGGER SARCNT01 14 ~!InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~

EXTEND_BOTTOM SARCNT01 14
IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN DO ~CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
Enemy()~
EXTERN FHN25J FHSarcnt01
END

APPEND FHN25J
IF ~~ THEN BEGIN FHSarcnt01
SAY @158 /* ~This is terrible! I'm not going to let you kill these people, <CHARNAME>!~ */
IF ~~ THEN DO ~ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Nath",LeaveParty())
ActionOverride("Nath",Enemy())~
EXIT
END
END

INTERJECT_COPY_TRANS SAREV25A 0 FHSarevMeet
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@159 /* ~What? Sarevok?! You-- keep away from me!~ */
END

INTERJECT_COPY_TRANS SAREV25A 15 FHSarevDeal
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@160 /* ~<CHARNAME>, don't do anything for him! He can't be trusted!~ */
END

INTERJECT_COPY_TRANS SAREV25A 38 FHSarevLive
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@161 /* ~No...no, <CHARNAME>, what have you done?~ */
END

INTERJECT_COPY_TRANS SAREV25A 41 FHSarevSure
== FHN25J IF ~InParty("Nath") Global("NathRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@162 /* ~He could have died because of you! You--~ */
END

INTERJECT SAREV25A 42 FHSarevTake
== FHN25J IF ~!InParty("Imoen2") InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@163 /* ~Don't do this, <CHARNAME>...~ */
END SAREV25A 54

INTERJECT_COPY_TRANS2 SAREV25A 61 FHSarevNoOath
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@164 /* ~This isn't a good choice. At least if he had sworn an oath there would be some kind of restraint on him.~ */
END

INTERJECT_COPY_TRANS2 SAREV25A 69 FHSarevOath
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@165 /* ~This isn't a good choice...even with this oath I don't trust him an inch. I hope you know what you're doing, <CHARNAME>.~ */
END

INTERJECT_COPY_TRANS SARKIS01 25 FHSarkis
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@166 /* ~If this man was as innocent as he claims, he should have just told the guards.~ */
END

INTERJECT_COPY_TRANS SARTEM01 6 FHSartem
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@167 /* ~It's a pity that there are people who exploit others' kindness like that.~ */
END

APPEND SARTEM01

IF WEIGHT #-1 ~See("FHBOY") Global("FHSartemEli","GLOBAL",0)~ THEN BEGIN FHSARTEM01
SAY @168 /* ~I thank you for bringing this child under Waukeen's protection, <BROTHERSISTER>.~ */
IF ~~ THEN DO ~SetGlobal("FHSartemEli","GLOBAL",1)~
EXIT
END
END


INTERJECT_COPY_TRANS SARVIE01 6 FHViekang
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@169 /* ~She must be such a powerful woman...~ */
END

EXTEND_TOP SARVOLO 9 #16
IF ~InParty("Nath") !Global("NathRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN REPLY @170 /* ~Tell me about Nathaniel.~ */ GOTO FHVolo
IF ~InParty("Nath") Global("NathRomanceActive","GLOBAL",2) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN REPLY @170 /* ~Tell me about Nathaniel.~ */ GOTO FHVoloRom
END

APPEND SARVOLO
IF ~~ THEN BEGIN FHVolo
SAY @171 /* ~Still committed to the upholding of justice, Nathaniel has grown in confidence throughout his travels with <CHARNAME>, leading him to become the greatest swordsman to come from the Aplin-Fletcher line. Enemies cower at tales of his lightning-fast blades, yet the innocent listen in awe, for they know that he is there to protect them.~ */
IF ~~ THEN EXTERN FHN25J FHNathVolo
END

IF ~~ THEN BEGIN FHVoloRom
SAY @172 /* ~Nathaniel's determined upholding of justice and his lightning-fast blades belie the warmth of his heart, for his devotion to his lover <CHARNAME> will never be broken. Before, he looked to <CHARNAME> for courage, but thanks to his love he is able to find his own.~ */
IF ~~ THEN EXTERN FHN25J FHNathVolo
END
END

APPEND FHN25J
IF ~~ THEN BEGIN FHNathVolo
SAY @173 /* ~Thank you, I suppose.~ */
IF ~~ THEN EXTERN SARVOLO 9
END
END

INTERJECT_COPY_TRANS SOLAR 1 FHSolar
== FHN25J IF ~InParty("Nath") !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@174 /* ~But why didn't that being help you when you needed it?~ */
END

//Watcher's Keep ToB

INTERJECT_COPY_TRANS GORAPP1 6 FHGorapp1
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@175 /* ~The Prince of Demons?! But they're followers of Helm! How could they deceive us like that?~ */
END

INTERJECT_COPY_TRANS GORAPP1 10 FHGorapp12
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@176 /* ~<CHARNAME>, I don't think we should try to put ourselves against something...someone?...as powerful as a demon prince.~ */
END

INTERJECT_COPY_TRANS GORCAMB 17 FHGorcamb
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@177 /* ~Gambling's never a good idea, but with a demon? It's stupid, <CHARNAME> - you shouldn't do it.~ */
END

INTERJECT_COPY_TRANS GORCHR 2 FHGorchr
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@178 /* ~I don't like the sound of this...~ */
END

INTERJECT_COPY_TRANS GORDEMO 1 FHGordemo
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@179 /* ~<CHARNAME>, this place is-- I feel ill just being here!~ */
END

INTERJECT_COPY_TRANS2 GORDEMO 18 FHGordemo2
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@180 /* ~If this...creature...is telling the truth, then those knights deserve to die!~ */
END

INTERJECT_COPY_TRANS GORIMP01 13 FHGorimp
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@181 /* ~It's a shame they couldn't use their powers for something worthwhile. What a waste of time!~ */
END

INTERJECT_COPY_TRANS GORODR1 11 FHGorodr
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@182 /* ~But you're knights of Helm. Why can't you clear out the dungeon yourselves?~ */
END

INTERJECT_COPY_TRANS GORPOL1 1 FHGorpol
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@183 /* ~Hmm. Followers of Helm should be able to do as they've promised, not hand it on to someone else.~ */
END

INTERJECT_COPY_TRANS JAN25J 13 FHJanGith
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@184 /* ~Jan, please be quiet! These creatures are dangerous!~ */
END

INTERJECT_COPY_TRANS HAERD25J 13 FHHaerNya
== FHN25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@185 /* ~This is hardly the time for discussing irony, Haer'dalis!~ */
== HAERD25J IF ~InParty("Nath") GlobalGT("Chapter","GLOBAL",7) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@186 /* ~There is always time for discussing such things, my swan.~ */
END

//Watcher's Keep SoA

INTERJECT_COPY_TRANS GORAPP1 6 FHGorapp1
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@175 /* ~The Prince of Demons?! But they're followers of Helm! How could they deceive us like that?~ */
END

INTERJECT_COPY_TRANS GORAPP1 10 FHGorapp12
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@176 /* ~<CHARNAME>, I don't think we should try to put ourselves against something...someone?...as powerful as a demon prince.~ */
END

INTERJECT_COPY_TRANS GORCAMB 17 FHGorcamb
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@177 /* ~Gambling's never a good idea, but with a demon? It's stupid, <CHARNAME> - you shouldn't do it.~ */
END

INTERJECT_COPY_TRANS GORCHR 2 FHGorchr
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@178 /* ~I don't like the sound of this...~ */
END

INTERJECT_COPY_TRANS GORDEMO 1 FHGordemo
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@179 /* ~<CHARNAME>, this place is-- I feel ill just being here!~ */
END

INTERJECT_COPY_TRANS2 GORDEMO 18 FHGordemo2
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@180 /* ~If this...creature...is telling the truth, then those knights deserve to die!~ */
END

INTERJECT_COPY_TRANS GORIMP01 13 FHGorimp
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@181 /* ~It's a shame they couldn't use their powers for something worthwhile. What a waste of time!~ */
END

INTERJECT_COPY_TRANS GORODR1 11 FHGorodr
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@182 /* ~But you're knights of Helm. Why can't you clear out the dungeon yourselves?~ */
END

INTERJECT_COPY_TRANS GORPOL1 1 FHGorpol
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@183 /* ~Hmm. Followers of Helm should be able to do as they've promised, not hand it on to someone else.~ */
END

INTERJECT_COPY_TRANS JAN25J 13 FHJanGith
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@184 /* ~Jan, please be quiet! These creatures are dangerous!~ */
END

INTERJECT_COPY_TRANS HAERD25J 13 FHHaerNya
== FHN25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@185 /* ~This is hardly the time for discussing irony, Haer'dalis!~ */
== HAERD25J IF ~InParty("Nath") GlobalLT("Chapter","GLOBAL",8) !StateCheck("Nath",CD_STATE_NOTVALID)~ THEN
@186 /* ~There is always time for discussing such things, my swan.~ */
END
