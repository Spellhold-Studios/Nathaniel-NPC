BEGIN FHMAYON

IF ~~ THEN BEGIN FHMayon_list
SAY @67 /* ~But of course, <SIRMAAM>! Here is my selection.~ */
IF ~PartyGoldGT(31) Global("FHelfsong","LOCALS",0)~ THEN REPLY @68 /* ~I'd like a slice of coffee and cocoa bean cake, please. With raspberries.~ */ + FHMayon_elfsong1
IF ~PartyGoldGT(31) Global("FHelfsong","LOCALS",1)~ THEN REPLY @68 /* ~I'd like a slice of coffee and cocoa bean cake, please. With raspberries.~ */ + FHMayon_elfsong2
IF ~PartyGoldGT(31) Global("FHelfsong","LOCALS",2)~ THEN REPLY @68 /* ~I'd like a slice of coffee and cocoa bean cake, please. With raspberries.~ */ + FHMayon_elfsong3
IF ~PartyGoldGT(31) Global("FHelfsong","LOCALS",3)~ THEN REPLY @68 /* ~I'd like a slice of coffee and cocoa bean cake, please. With raspberries.~ */ + FHMayon_elfsong4
IF ~PartyGoldGT(31) Global("FHelfsong","LOCALS",4)~ THEN REPLY @68 /* ~I'd like a slice of coffee and cocoa bean cake, please. With raspberries.~ */ + FHMayon_elfsong5
IF ~PartyGoldGT(6)~ THEN REPLY @69 /* ~I'd like a slice of the fruitcake, please.~ */ + FHMayon_choc1
IF ~PartyGoldGT(11)~ THEN REPLY @70 /* ~I'd like that maple cake, if you would.~ */ + FHMayon_choc2
IF ~PartyGoldGT(6)~ THEN REPLY @71 /* ~I'd like the ginger cake, please.~ */ + FHMayon_ginger1
IF ~PartyGoldGT(6)~ THEN REPLY @72 /* ~Could I have that chocolate cake?~ */ + FHMayon_choc3
IF ~PartyGoldGT(6)~ THEN REPLY @73 /* ~I'd like the one with the strawberries, please.~ */ + FHMayon_choc4
IF ~PartyGoldGT(11)~ THEN REPLY @74 /* ~What about that pink cake?~ */ + FHMayon_pink1
IF ~PartyGoldGT(11)~ THEN REPLY @75 /* ~I'll go for the lemon one, please.~ */ + FHMayon_pink2
IF ~PartyGoldGT(11)~ THEN REPLY @76 /* ~I'll have the cinnamon one, if you would.~ */ + FHMayon_pink3
IF ~PartyGoldGT(6)~ THEN REPLY @77 /* ~Could I have a slice of the cheesecake?~ */ + FHMayon_pink4
IF ~PartyGold(6)~ THEN REPLY @78 /* ~I'll take the hazelnut one, please.~ */ + FHMayon_ginger2
IF ~PartyGold(6)~ THEN REPLY @79 /* ~Is that a honey cake? I'd like that one.~ */ + FHMayon_ginger3
IF ~PartyGold(6)~ THEN REPLY @80 /* ~I'd like the coffee cake, please.~ */ + FHMayon_ginger4
END

IF ~InParty("Nath")
Global("FHMayonEligible","GLOBAL",1)
Global("FHMayonSeeNath","LOCALS",1)~ THEN BEGIN FHMayon_again
SAY @81 /* ~A pleasure to see you once again, <SIRMAAM>. How might I be of service?~ */
++ @82 /* ~I'd like some cake for my friend, please.~ */ + FHMayon_list
++ @83 /* ~Nothing today, thank you.~ */ EXIT
END

IF
~OR(2)
!Global("FHMayonEligible","GLOBAL",1)
!InParty("Nath")
RandomNum(4,1)~ THEN BEGIN FHMayon_nonath
SAY @84 /* ~So many people misjudge the value of a worthy dessert.~ */
IF ~~ THEN EXIT
END

IF
~OR(2)
!InParty("Nath")
!Global("FHMayonEligible","GLOBAL",1)
RandomNum(4,2)~ THEN BEGIN FHMayon_nonath2
SAY @85 /* ~Please be on with you, <SIRMAAM>. You're distracting my clientele.~ */
IF ~~ THEN EXIT
END

IF
~OR(2)
!InParty("Nath")
!Global("FHMayonEligible","GLOBAL",1)
RandomNum(4,3)~ THEN BEGIN FHMayon_nonath3
SAY @86 /* ~You are unlikely to find a confectioner with more skill than I ... especially in a place like this.~ */
IF ~~ THEN EXIT
END

IF
~OR(2)
!InParty("Nath")
!Global("FHMayonEligible","GLOBAL",1)
RandomNum(4,4)~ THEN BEGIN FHMayon_nonath4
SAY @87 /* ~I heard there was something happening in that circus tent, but I steered well clear of it.~ */
IF ~~ THEN EXIT
END

CHAIN IF ~InParty("Nath")
Global("FHMayonEligible","GLOBAL",1)
Global("FHMayonSeeNath","LOCALS",0)~ THEN FHMAYON FHMayon_greeting
@88 /* ~Hullo there, adventurers. I am Mayona, a confectionary artist of Athkatla. How may I serve you?~ */
DO ~SetGlobal("FHMayonSeeNath","LOCALS",1)~
== FHNATJ
@89 /* ~This is the woman I told you about, <CHARNAME>. I hadn't had a chance to buy anything from her, but--~ */
== FHMAYON
@90 /* ~A travesty! How can one not have the chance to sample these fine confections?~ */
== FHNATJ
@91 /* ~Well, <CHARNAME> ... would it be possible...?~ */
END
++ @92 /* ~I don't suppose you serve cake, do you? My friend here has a great fondness for it.~ */ + FHMayon_list
++ @93 /* ~I don't need anything, thanks.~ */ EXIT

CHAIN FHMAYON FHMayon_elfsong1
@94 /* ~Ah, that's a rare one, <SIRMAAM>. Still, I have some from when I last visited Baldur's Gate - kept magically preserved, naturally.~ */
DO ~TakePartyGold(30)
SetGlobal("FHelfsong","LOCALS",1)~
== FHNATJ
@95 /* ~<CHARNAME> ... that's really ... thank you!~ */
=
@96 /* ~(When Mayona hands Nathaniel the cake, Nathaniel's eyes light up and he eats it with more speed than should be humanly possible. He gives you a faintly queasy look.)~ */
=
@97 /* ~Urgh. Maybe ... I shouldn't have eaten it that fast. But that was so nice of you, <CHARNAME>. Thank you so much.~ */
EXIT

CHAIN FHMAYON FHMayon_elfsong2
@98 /* ~Naturally. Only the best for the heroes of Baldur's Gate, yes?~ */
DO ~TakePartyGold(30)
SetGlobal("FHelfsong","LOCALS",2)~
== FHNATJ
@99 /* ~Thank you, <CHARNAME>. I'll eat it slower this time, I think. I don't want to get ill.~ */
=
@100 /* ~Mmmm. So. Nice. Thank you.~ */
EXIT

CHAIN FHMAYON FHMayon_elfsong3
@101 /* ~Ahh, you adventurers have a fine taste in confectionary. If only more were as discerning as yourselves.~ */
DO ~TakePartyGold(30)
SetGlobal("FHelfsong","LOCALS",3)~
== FHNATJ
@102 /* ~Oh, <CHARNAME>, you spoil me, you really do.~ */
=
@103 /* ~Mmm, that takes me back. Come on, let's get going.~ */
EXIT

CHAIN FHMAYON FHMayon_elfsong4
@104 /* ~I do apologise, but that's my last slice. Dear me, if I'd known that there would be travellers of such good taste here, I would have stocked up.~ */
DO ~TakePartyGold(30)
SetGlobal("FHelfsong","LOCALS",4)~
== FHNATJ
@105 /* ~(Nathaniel sighs and breaks the slice in half.) Here, <CHARNAME>, you have some. It's not fair for you not to get any.~ */
END
++ @106 /* ~Why, thank you.~ */ EXTERN FHNATJ FHelfsongyes
++ @107 /* ~I'm not a great admirer of cake. It'd be a waste.~ */ EXTERN FHNATJ FHelfsongno
++ @108 /* ~No, thanks. You have it.~ */ EXTERN FHNATJ FHelfsongno

CHAIN FHMAYON FHMayon_elfsong5
@109 /* ~You have taken all my stock of that confection, I am afraid.~ */
== FHNATJ
@110 /* ~Sorry--~ */
== FHMAYON
@111 /* ~Do not trouble over it, sir!~ */
EXIT

CHAIN FHMAYON FHMayon_choc1
@112 /* ~Of course, <SIRMAAM>. There we are.~ */
DO ~TakePartyGold(5)~
== FHNATJ
@113 /* ~Thank you, <CHARNAME> ... that's so nice of you...~ */
=
@114 /* ~(Nathaniel polishes off his cake with obvious relish.) Oh, I could eat that all day!~ */
EXIT

CHAIN FHMAYON FHMayon_choc2
@115 /* ~There we go! I hope you enjoy it.~ */
DO ~TakePartyGold(10)~
== FHNATJ
@116 /* ~Mmm. This is delicious, it really is. Ooh, is that walnut? Thanks, <CHARNAME>.~ */
EXIT

CHAIN FHMAYON FHMayon_choc3
@117 /* ~Enjoy! That one's got cocoa beans imported from Matzica, don't you know.~ */
DO ~TakePartyGold(5)~
== FHNATJ
@118 /* ~Wherever it's from, it looks lovely. Look, <CHARNAME>. I don't know how I can repay you.~ */
=
@119 /* ~(Nathaniel peels the icing from the top and nibbles it until it is gone, then consumes the rest. His happy and slightly sleepy smile is reward enough for you.)~ */
EXIT

CHAIN FHMAYON FHMayon_choc4
@120 /* ~There we go. I must say, you're just the sort of people I like to sell to.~ */
DO ~TakePartyGold(5)~
== FHNATJ
@121 /* ~Oh, no. <CHARNAME>, that's too much oh, all right then.~ */
=
@122 /* ~(Nathaniel's brief tussle with his conscience over, he concentrates on the more important business of eating the strawberries on the top of the cake.)~ */
EXIT

CHAIN FHMAYON FHMayon_pink1
@123 /* ~Ah, yes, the strawberry. Quite the connoisseur!~ */
DO ~TakePartyGold(10)~
== FHNATJ
@124 /* ~Thanks, <CHARNAME>. Mmm, fruity! That is nice. You know, I hadn't had that before seeing you, ma'am.~ */
== FHMAYON
@125 /* ~I pride myself on my original work. Thank you for your appreciation.~ */
EXIT

CHAIN FHMAYON FHMayon_pink2
@126 /* ~Here we go, <SIRMAAM>, with my compliments.~ */
DO ~TakePartyGold(10)~
== FHNATJ
@127 /* ~Thank you, Mayona.~ */
=
@128 /* ~(Nathaniel eats the cake with high speed, then dusts off his hands, grinning at you.)~ */
=
@129 /* ~Shall we go?~ */
EXIT

CHAIN FHMAYON FHMayon_pink3
@130 /* ~Mmm-hmmm. Here you go, <SIRMAAM>.~ */
DO ~TakePartyGold(10)~
== FHNATJ
@131 /* ~(When you give him the cake, Nathaniel smiles almost shyly and slowly eats. He is obviously savouring the taste, and his enjoyment is plain in his wide smile.)~ */
EXIT

CHAIN FHMAYON FHMayon_pink4
@132 /* ~As you wish, <SIRMAAM>. There we go.~ */
DO ~TakePartyGold(10)~
== FHNATJ
@133 /* ~Do you want some, <CHARNAME>? I feel like you're spoiling me.~ */
END
++ @134 /* ~No, thanks. I'm not a cake person.~ */ EXTERN FHNATJ FHelfsongno
++ @135 /* ~All right. Give me a bit.~ */ EXTERN FHNATJ FHpinkyes
++ @136 /* ~Yes please!~ */ EXTERN FHNATJ FHpinkyes
++ @137 /* ~No, it's for you.~ */ EXTERN FHNATJ FHelfsongno

CHAIN FHMAYON FHMayon_ginger1
@138 /* ~Of course, <SIRMAAM>. A pleasure to oblige.~ */
DO ~TakePartyGold(5)~
== FHNATJ
@139 /* ~(As soon as Nathaniel takes a bite of the ginger cake, he begins to cough violently.)~ */
== FHMAYON
@140 /* ~Oh, dear. Perhaps we put a little too much spice in that one. Have a glass of water, sir.~ */
== FHNATJ
@141 /* ~Thank ... thank you!~ */
== FHMAYON
@142 /* ~I do hope this has not discouraged you from your custom.~ */
== FHNATJ
@143 /* ~Oh, of course not. It was just a bit of a shock.~ */
== FHMAYON
@144 /* ~Well, here is your money back, and I do hope that you return soon.~ */
DO ~GivePartyGold(5)~
EXIT

CHAIN FHMAYON FHMayon_ginger2
@145 /* ~Here you go, <SIRMAAM>.~ */
DO ~TakePartyGold(5)~
== FHNATJ
@146 /* ~Thank you, <CHARNAME>. Mmm, delicious. You're a good cook, ma'am.~ */
== FHMAYON
@147 /* ~Why, thank you. Only too happy to oblige.~ */
EXIT

CHAIN FHMAYON FHMayon_ginger3
@148 /* ~It is yours, <SIRMAAM>. If I may say so, an excellent choice.~ */
DO ~TakePartyGold(5)~
== FHNATJ
@149 /* ~Oh, <CHARNAME>, you shouldn't feed my habit like this. (As Nathaniel takes a bite, he smiles at you. The effect is somewhat spoiled by his full mouth.)~ */
EXIT

CHAIN FHMAYON FHMayon_ginger4
@150 /* ~Here you are, <SIRMAAM>. I do hope you enjoy it.~ */
== FHNATJ
@151 /* ~I'm sure I will.~ */
== FHMAYON
@152 /* ~Perhaps the <PRO_LADYLORD> would like some too, sir.~ */
== FHNATJ
@153 /* ~(Nathaniel shoots you a guilty look.) Of course! I'm sorry, <CHARNAME>, I forgot my manners. Do you want a bit?~ */
END
++ @154 /* ~No, thanks. I'm not really in the mood.~ */ EXTERN FHNATJ FHelfsongno
++ @155 /* ~Yes, all right.~ */ EXTERN FHNATJ FHgingeryes
++ @156 /* ~No, I got it for you and you're going to have it!~ */ EXTERN FHNATJ FHelfsongno

CHAIN FHNATJ FHelfsongyes
@210 /* ~(You put the cake in your mouth, and the rich taste is as wonderful as Nathaniel has told you, though you are at a loss at how he manages to eat it so fast.)~ */
EXIT

CHAIN FHNATJ FHelfsongno
@211 /* ~You're missing out, <CHARNAME>, and you know it. Ah, well. (He delicately nibbles the edge in an effort to make it last as long as possible.)~ */
EXIT

CHAIN FHNATJ FHpinkyes
@212 /* ~(You take a bite of the cake but Nathaniel accidentally jogs you so you end up having a coughing fit. He hits your back, his own piece of cake forgotten.)~ */
=
@213 /* ~Oh, <CHARNAME>, I'm sorry! I hope you're all right now!~ */
EXIT

CHAIN FHNATJ FHgingeryes
@214 /* ~(You take a bite. The spice is strong but warms you pleasantly. Nathaniel smiles at you and finishes his slice.)~ */
=
@215 /* ~That was really nice, <CHARNAME>. Thank you.~ */
EXIT
