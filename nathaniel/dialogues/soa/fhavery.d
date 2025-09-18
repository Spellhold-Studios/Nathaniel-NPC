BEGIN FHAVERY

CHAIN IF ~Global("TalkAvery","GLOBAL",1)
InParty("Nath")
!Dead("Nath")
GlobalGT("FHBryceHere","GLOBAL",1)
Global("FHTellAvery","GLOBAL",0)~ THEN FHAVERY FHTellAvery
@115 /* ~Hello, Thaniel. <CHARNAME>.~ */
DO ~SetGlobal("FHTellAvery","GLOBAL",1)~
== FHNATJ
@116 /* ~Avery? May I speak to you for a second?~ */
== FHAVERY
@117 /* ~Of c-- What's wrong? Has something happened?~ */
== FHNATJ
@118 /* ~He wasn't dead. He came and talked to us.~ */
== FHAVERY
@119 /* ~No, you must be mistaken-- <CHARNAME>, what happened?~ */
END
++ @120 /* ~He's telling the truth. Latimer is alive.~ */ + FHTA_1
++ @121 /* ~Call yourself a guard? All that time he was roaming around.~ */ EXTERN FHNATJ FHTA_2
++ @122 /* ~He turned up out of nowhere. I wish I'd been able to kill him right then.~ */ + FHTA_1
++ @123 /* ~I'd prefer not to discuss it.~ */ + FHTA_1

CHAIN FHAVERY FHTA_1
@124 /* ~I see. I ... hope you weren't involved in any unpleasantness.~ */
=
@125 /* ~Thaniel, would you like to stay here for a while? It must have been...~ */
== FHNATJ
@126 /* ~No. I think it would be best if I didn't think about it too much.~ */
== FHAVERY
@127 /* ~Yes. Well. I'll speak to Lord Coprith and make sure the other guards in the region know that they were mistaken. I hope you're safe, and ... well, just keep out of too much danger, won't you?~ */
EXIT

CHAIN FHNATJ FHTA_2
@128 /* ~It wasn't Avery's fault, <CHARNAME>!~ */
== FHAVERY
@129 /* ~No, <PRO_HESHE>'s partly right. I'll speak to Lord Coprith and make sure the other guards in the region know about the mistake.~ */
=
@125 /* ~Thaniel, would you like to stay here for a while? It must have been...~ */
== FHNATJ
@126 /* ~No. I think it would be best if I didn't think about it too much.~ */
== FHAVERY
@130 /* ~Yes. Well. I hope you're safe, and ... well, just keep out of too much danger, won't you?~ */
EXIT

CHAIN
IF ~Global("TalkAvery","GLOBAL",1)
InParty("Nath")
!Dead("Nath")
Global("NathRomanceActive","GLOBAL",2)
Global("FHTellLAvery","GLOBAL",1)
Global("FHAveryRomance","LOCALS",0)~ THEN FHAVERY FHAveryRomance
@115 /* ~Hello, Thaniel. <CHARNAME>.~ */
DO ~SetGlobal("FHAveryRomance","LOCALS",1)~
== FHNATJ
@131 /* ~Avery, I've got some news. <CHARNAME> and I ... well, we're...~ */   
== FHAVERY
@132 /* ~You needn't blush like that, Thaniel. Congratulations on finding <CHARNAME>. I knew he was nice when I met him. It's good that you're with someone who'll treat you right.~ */
== FHNATJ
@133 /* ~Avery, you're like the mother I never had. Except more so.~ */   
== FHAVERY
@134 /* ~But, Thaniel, would I say "I told you so"?~ */
== FHNATJ
@135 /* ~Yes. You do all the time!~ */
== FHAVERY
@136 /* ~(laugh) Well, good luck to the both of you, anyway.~ */
EXIT

CHAIN IF ~RandomNum(4,1)
Global("TalkAvery","GLOBAL",1)
InParty("Nath")
!Dead("Nath")
!Global("NathRomanceActive","GLOBAL",2)~ THEN FHAVERY FHAveryLuck
@0 /* ~Good luck on your travels, Thaniel. And you too, <CHARNAME>.~ */
EXIT

CHAIN IF ~RandomNum(4,2)
Global("TalkAvery","GLOBAL",1)
InParty("Nath")
!Dead("Nath")
!Global("NathRomanceActive","GLOBAL",2)~ THEN FHAVERY FHAveryLuck2
@1 /* ~Hello again. I hope your journey is going well.~ */
EXIT

CHAIN IF ~RandomNum(4,3)
Global("TalkAvery","GLOBAL",1)
InParty("Nath")
!Dead("Nath")
!Global("NathRomanceActive","GLOBAL",2)~ THEN FHAVERY FHAveryLuck3
@2 /* ~I hope you're treating Thaniel well. He's been through tough times.~ */
EXIT

CHAIN IF ~RandomNum(4,4)
Global("TalkAvery","GLOBAL",1)
InParty("Nath")
!Dead("Nath")
!Global("NathRomanceActive","GLOBAL",2)~ THEN FHAVERY FHAveryLuck4
@3 /* ~Go on, be on with you. I've got duties to see to.~ */
EXIT

CHAIN IF ~Global("TalkAvery","GLOBAL",1)
InParty("Nath")
!Dead("Nath")
Global("FHAveryRomance","LOCALS",1)~ THEN FHAVERY FHAveryLuckRom
@4 /* ~I'm glad Thaniel found you, <CHARNAME>. I wish both of you all the luck in the world.~ */
EXIT

CHAIN IF
~RandomNum(2,1)
Global("TalkAvery","GLOBAL",1)
!InParty("Nath")
!Dead("Nath")~ THEN FHAVERY FHAveryConcern
@5 /* ~I hope you didn't leave Nathaniel in a tight spot. (sigh) Sometimes he just doesn't know what's good for him.~ */
EXIT

CHAIN IF ~RandomNum(2,2)
Global("TalkAvery","GLOBAL",1)
!InParty("Nath")
!Dead("Nath")~ THEN FHAVERY FHAveryConcern2
@6 /* ~Move along, please. I've got things to see to.~ */
EXIT

CHAIN IF
~Global("TalkAvery","GLOBAL",1)
Dead("Nath")
!InPartyAllowDead("Nath")~ THEN FHAVERY FHAveryNathDead
@7 /* ~I heard about Thaniel. I ... excuse me.~ */
DO ~EscapeArea()~
EXIT

CHAIN IF ~Global("FHSeeNath","GLOBAL",1)
Global("TalkAvery","GLOBAL",0)~
THEN FHAVERY GreetNathaniel
@21 /* ~Welcome to Trademeet, travellers--~ */
=
@22 /* ~Thaniel! Gods, I was wondering when you'd get here!~ */
DO ~SetGlobal("FHSeeNath","GLOBAL",2) SetGlobal("TalkAvery","GLOBAL",1)
SetGlobal("FHNoFlirtsPostAvery","GLOBAL",1)~
== FHNATJ
@23 /* ~Oh, Avery, it's good to see you. Look at you! You've done well for yourself.~ */   
== FHAVERY
@24 /* ~I could say the same for you! Who's this you're travelling with?~ */
== FHNATJ
@25 /* ~Don't you remember? This is the one who killed Sarevok.~ */
== FHAVERY
@26 /* ~Oh, so you're the one-- Look, thank you for all that. Angelo was a nasty piece of work, and good riddance to him.~ */
END
++ @27 /* ~You're welcome!~ */ + NathAvery_like
++ @28 /* ~Just doing my duty.~ */ + NathAvery_like
++ @29 /* ~I'm just sorry it caused so much upheaval to all of you.~ */ + NathAvery_like
++ @30 /* ~I don't need your praise, thank you so much.~ */ + NathAvery_nolike

CHAIN FHAVERY NathAvery_like
@31 /* ~Well, make sure you're a good influence on Thaniel, anyway.~ */
END
IF ~~ EXTERN FHNATJ NathAvery_avery

CHAIN FHAVERY NathAvery_nolike
@57 /* ~Well, Thaniel, you certainly pick the interesting ones.~ */
END
IF ~~ EXTERN FHNATJ NathAvery_avery

CHAIN FHNATJ NathAvery_avery
@32 /* ~Avery...~ */
== FHAVERY
@33 /* ~Sorry.~ */
== FHNATJ
@34 /* ~I'm sorry I couldn't come with you. But I can't abandon him.~ */   
== FHAVERY
@35 /* ~This isn't a time for going over the same old things. Something's happened.~ */
== FHNATJ
@36 /* ~What - what do you mean? Is it about my father? Is he all right?~ */
== FHAVERY
@37 /* ~Yes. It isn't that. It's Bryce. Latimer, I mean. I'm ... I'm sorry.~ */
== FHNATJ
@38 /* ~When - did it happen?~ */
== FHAVERY
@39 /* ~We found out about a trading convoy carrying illegal goods. So, Coprith sent us out to take them. They put up a damn good fight ... as well as the mercenaries they'd hired. I saw him and cornered him.~ */
=
@40 /* ~I tried to convince him to surrender, really I did. He pushed me back and one of our mages cast a fireball. Something exploded. The next thing I knew, I was in the healers' compound.~ */
== FHNATJ
@41 /* ~...~ */
== FHAVERY
@42 /* ~Thaniel?~ */
== FHNATJ
@43 /* ~You're wrong.~ */
== FHAVERY
@44 /* ~No, I--~ */
== FHNATJ
@45 /* ~Be quiet! He can't be! I - you're lying!~ */
== FHAVERY
@46 /* ~I swear to you it's the truth.~ */
== FHNATJ
@47 /* ~Did you see his body? Did you?~ */
== FHAVERY
@48 /* ~No, but--~ */
== FHNATJ
@49 /* ~See? You see?~ */
== FHAVERY
@50 /* ~Nathaniel, the explosion had damn near disintegrated him!~ */
== FHNATJ
@51 /* ~Couldn't he have looked after himself - he should have stayed with me! He shouldn't have gone and got himself killed--~ */
=
@52 /* ~--How can I have been so stupid?--~ */
== FHAVERY
@53 /* ~Thaniel! Stop and listen to me!~ */
END
++ @54 /* ~Pull yourself together, Nathaniel - everything's going to be all right.~ */ EXTERN FHAVERY NathAvery_panic
++ @55 /* ~Try to calm down, Nathaniel - what's got into you?~ */ EXTERN FHAVERY NathAvery_panic
++ @56 /* ~Oh, for heavens' sake! I knew he was a weakling, but this is ridiculous!~ */ EXTERN FHAVERY NathAvery_weak

CHAIN FHAVERY NathAvery_panic
@67 /* ~(Nathaniel looks very pale and begins to shiver, breathing too hard. Avery pulls Nathaniel into a hug and gives you a grim look over his shoulder.)~ */
=
@68 /* ~I haven't seen him this bad since the trouble with those bastards back when we were young. I swear, I could kill that Bryce if he wasn't dead.~ */
END
++ @69 /* ~But Nathaniel said that Latimer helped him and got rid of the bullies for him!~ */ + NathAvery_latnice
++ @70 /* ~Exactly! Him leaving Nathaniel was inexcusable!~ */ + NathAvery_agree
++ @71 /* ~Still, at least Latimer did something to help him. That's more than you did.~ */ + NathAvery_judge
++ @72 /* ~I spy some hostility here. Are you sure you're not just jealous?~ */ + NathAvery_judge

CHAIN FHAVERY NathAvery_weak
@73 /* ~Hah. Maybe it was travelling with you that made him worse again.~ */
=
@74 /* ~Thaniel? Are you with us?~ */
== FHNATJ
@75 /* ~I'm sorry.~ */
== FHAVERY
@76 /* ~It's all right. Come on - we can catch up in Vyatri's.~ */
== FHNATJ
@77 /* ~But <CHARNAME>--~ */
== FHAVERY
@78 /* ~You think I'm going to let you stay in the company of that <PRO_MANWOMAN>? Travelling with <PRO_HIMHER> isn't good for you. You're better off here, I swear.~ */
== FHNATJ
@79 /* ~I was thinking of staying anyway ... now - now Latimer's gone I should settle down...~ */
=
@80 /* ~Well, goodbye, <CHARNAME>.~ */
EXIT

CHAIN FHAVERY NathAvery_latnice
@81 /* ~He stopped those bullies, yeah, but he just isn't ... wasn't right for Thaniel. To understate.~ */
END
++ @82 /* ~Why not? Nathaniel told me that he helped him a great deal, when he was being bullied.~ */ + NathAvery_why
++ @83 /* ~Surely Nathaniel could make his own decisions - he's a grown man, after all.~ */ + NathAvery_mother
++ @84 /* ~Well, I'll never know now. At least if I'd met him I could have made my own judgement.~ */ + NathAvery_trust
++ @85 /* ~At least Latimer did something to help - which is more than you did.~ */ + NathAvery_judge
++ @86 /* ~Few people would deserve Nathaniel. He's a great friend.~ */ + NathAvery_agree

CHAIN FHAVERY NathAvery_agree
@87 /* ~I'm glad someone round here agrees with me! As for Bryce - trust me, you're not missing much. Oh, he was good to Thaniel, sure - until the drugs and drink released him from his better sense.~ */
=
@88 /* ~He - became abusive when Angelo took over. Not physically, but he'd make him feel awful. Of course Thaniel wouldn't hear a word against Bryce. I had to hold my tongue to stay friends with him.~ */
=
@89 /* ~When you killed Angelo lots of us had had enough, and we left. Thaniel, Bryce and I were travelling together. Bryce ... tried to convince Thaniel to become a mercenary and join him to protect illegal activities. Thaniel resisted.~ */
=
@90 /* ~Bryce broke up with him and threatened to leave. When Thaniel tried to stop him, he kneed him in the stomach and knocked him out cold. Then the bastard ran off.~ */
=
@91 /* ~Thaniel followed him, found you in Gods-know-where and now ... here we are.~ */
=
@92 /* ~Look, Thaniel - I need to get back to my guard duty, but I'm still here if you want to talk later, all right?~ */
== FHNATJ
@93 /* ~Yes. Yes, of course.~ */
=
@94 /* ~Gods, <CHARNAME>, I wish those panics were gone-- Will you - will you forgive me?~ */   
END
++ @95 /* ~Oh, Nathaniel, there's nothing to forgive!~ */ EXTERN FHNATJ NathLT12_signofweakness
++ @96 /* ~It was a shock for you. You shouldn't blame yourself and neither will I.~ */ EXTERN FHNATJ NathLT12_respect
++ @97 /* ~I'm so sorry about all this, Nathaniel.~ */ EXTERN FHNATJ NathLT12_sympathy
++ @98 /* ~Perhaps. But I won't be able to forget you being so weak.~ */ EXTERN FHNATJ NathLT12_weak
++ @99 /* ~If you were to be struck with that weakness in battle, it could cost us our lives, Nathaniel.~ */ EXTERN FHNATJ NathLT12_weak

CHAIN FHAVERY NathAvery_judge
@11 /* ~If you think you can just step into our lives and assess this situation, you're wrong. Try being in my position and then make a judgement. For your information, I was worried sick over Thaniel!~ */
END
++ @12 /* ~Easy, easy. I'm worried about him - and I suppose I don't really know all the details.~ */ + NathAvery_worried
++ @13 /* ~And you try being in *my* position and make a judgement about all of this!~ */ + NathAvery_dislike
++ @14 /* ~Don't try to tell me what to do, Lieutenant. I've seen things that you can't even imagine.~ */ + NathAvery_dislike

CHAIN FHAVERY NathAvery_why
@88 /* ~He - became abusive when Angelo took over. Not physically, but he'd make him feel awful. Of course Thaniel wouldn't hear a word against Bryce. I had to hold my tongue to stay friends with him.~ */
=
@100 /* ~When you killed Angelo lots of us had had enough, and we left. Thaniel, Bryce and I were travelling together. Bryce tried to convince Thaniel to become a mercenary and join him to protect illegal activities. Thaniel resisted.~ */
=
@90 /* ~Bryce broke up with him and threatened to leave. When Thaniel tried to stop him, he kneed him in the stomach and knocked him out cold. Then the bastard ran off.~ */
=
@91 /* ~Thaniel followed him, found you in Gods-know-where and now ... here we are.~ */
=
@92 /* ~Look, Thaniel - I need to get back to my guard duty, but I'm still here if you want to talk later, all right?~ */
== FHNATJ
@93 /* ~Yes. Yes, of course.~ */
=
@94 /* ~Gods, <CHARNAME>, I wish those panics were gone-- Will you - will you forgive me?~ */   
END
++ @95 /* ~Oh, Nathaniel, there's nothing to forgive!~ */ EXTERN FHNATJ NathLT12_signofweakness
++ @96 /* ~It was a shock for you. You shouldn't blame yourself and neither will I.~ */ EXTERN FHNATJ NathLT12_respect
++ @97 /* ~I'm so sorry about all this, Nathaniel.~ */ EXTERN FHNATJ NathLT12_sympathy
++ @98 /* ~Perhaps. But I won't be able to forget you being so weak.~ */ EXTERN FHNATJ NathLT12_weak
++ @99 /* ~If you were to be struck with that weakness in battle, it could cost us our lives, Nathaniel.~ */ EXTERN FHNATJ NathLT12_weak

CHAIN FHAVERY NathAvery_mother
@101 /* ~Hmm. I suppose I must sound overprotective, but years of seeing him hurt and not being able to do anything... And then when Bryce went the way he did...~ */   

=
@102 /* ~He - became abusive when Angelo took over. Not physically, but he hurt Thaniel's emotions. Of course he wouldn't hear a word against Bryce. I had to hold my tongue to stay friends with him.~ */
=
@103 /* ~When you killed Angelo lots of us had had enough, and we left. Nathaniel, Bryce and I were travelling together. Bryce ... tried to convince Thaniel to become a mercenary and join him to protect illegal activities. Thaniel resisted.~ */
=
@104 /* ~Bryce broke up with him and left. When Thaniel tried to stop him, he kneed him in the stomach and knocked him out cold. Then the bastard ran off.~ */
=
@91 /* ~Thaniel followed him, found you in Gods-know-where and now ... here we are.~ */
=
@92 /* ~Look, Thaniel - I need to get back to my guard duty, but I'm still here if you want to talk later, all right?~ */
== FHNATJ
@93 /* ~Yes. Yes, of course.~ */
=
@94 /* ~Gods, <CHARNAME>, I wish those panics were gone-- Will you - will you forgive me?~ */   
END
++ @95 /* ~Oh, Nathaniel, there's nothing to forgive!~ */ EXTERN FHNATJ NathLT12_signofweakness
++ @96 /* ~It was a shock for you. You shouldn't blame yourself and neither will I.~ */ EXTERN FHNATJ NathLT12_respect
++ @97 /* ~I'm so sorry about all this, Nathaniel.~ */ EXTERN FHNATJ NathLT12_sympathy
++ @98 /* ~Perhaps. But I won't be able to forget you being so weak.~ */ EXTERN FHNATJ NathLT12_weak
++ @99 /* ~If you were to be struck with that weakness in battle, it could cost us our lives, Nathaniel.~ */ EXTERN FHNATJ NathLT12_weak

CHAIN FHAVERY NathAvery_trust
@105 /* ~Trust me, you're not missing much. Oh, he was good to Nathaniel, sure - until the drugs and drink released him from his better sense.~ */
=
@102 /* ~He - became abusive when Angelo took over. Not physically, but he hurt Thaniel's emotions. Of course he wouldn't hear a word against Bryce. I had to hold my tongue to stay friends with him.~ */
=
@89 /* ~When you killed Angelo lots of us had had enough, and we left. Thaniel, Bryce and I were travelling together. Bryce ... tried to convince Thaniel to become a mercenary and join him to protect illegal activities. Thaniel resisted.~ */
=
@104 /* ~Bryce broke up with him and left. When Thaniel tried to stop him, he kneed him in the stomach and knocked him out cold. Then the bastard ran off.~ */
=
@91 /* ~Thaniel followed him, found you in Gods-know-where and now ... here we are.~ */
=
@92 /* ~Look, Thaniel - I need to get back to my guard duty, but I'm still here if you want to talk later, all right?~ */
== FHNATJ
@93 /* ~Yes. Yes, of course.~ */
=
@94 /* ~Gods, <CHARNAME>, I wish those panics were gone-- Will you - will you forgive me?~ */   
END
++ @95 /* ~Oh, Nathaniel, there's nothing to forgive!~ */ EXTERN FHNATJ NathLT12_signofweakness
++ @96 /* ~It was a shock for you. You shouldn't blame yourself and neither will I.~ */ EXTERN FHNATJ NathLT12_respect
++ @97 /* ~I'm so sorry about all this, Nathaniel.~ */ EXTERN FHNATJ NathLT12_sympathy
++ @98 /* ~Perhaps. But I won't be able to forget you being so weak.~ */ EXTERN FHNATJ NathLT12_weak
++ @99 /* ~If you were to be struck with that weakness in battle, it could cost us our lives, Nathaniel.~ */ EXTERN FHNATJ NathLT12_weak

CHAIN FHAVERY NathAvery_worried
@8 /* ~So am I, but I watch what I say to those who mean well. You'd do well to do the same, all right?~ */
END
++ @9 /* ~All right, all right. I'm sorry to have offended you.~ */ + NathAvery_ambivalent
++ @10 /* ~Oh, stop speaking as if you're better than me, Lieutenant. I've seen things you can't even imagine.~ */ + NathAvery_dislike

CHAIN FHAVERY NathAvery_dislike
@106 /* ~Well, "<CHARNAME>", you seem about as fit a companion for Nathaniel as Bryce was. And that isn't a compliment. (sigh) Still, I suppose I should fill you in on what happened.~ */
=
@107 /* ~He - became abusive when Angelo took over. Not physically, but he hurt Thaniel's emotions. Of course Thaniel wouldn't hear a word against Bryce. I had to hold my tongue to stay friends with him.~ */
=
@89 /* ~When you killed Angelo lots of us had had enough, and we left. Thaniel, Bryce and I were travelling together. Bryce ... tried to convince Thaniel to become a mercenary and join him to protect illegal activities. Thaniel resisted.~ */
=
@104 /* ~Bryce broke up with him and left. When Thaniel tried to stop him, he kneed him in the stomach and knocked him out cold. Then the bastard ran off.~ */
=
@91 /* ~Thaniel followed him, found you in Gods-know-where and now ... here we are.~ */
=
@92 /* ~Look, Thaniel - I need to get back to my guard duty, but I'm still here if you want to talk later, all right?~ */
== FHNATJ
@93 /* ~Yes. Yes, of course.~ */
=
@94 /* ~Gods, <CHARNAME>, I wish those panics were gone-- Will you - will you forgive me?~ */   
END
++ @95 /* ~Oh, Nathaniel, there's nothing to forgive!~ */ EXTERN FHNATJ NathLT12_signofweakness
++ @96 /* ~It was a shock for you. You shouldn't blame yourself and neither will I.~ */ EXTERN FHNATJ NathLT12_respect
++ @97 /* ~I'm so sorry about all this, Nathaniel.~ */ EXTERN FHNATJ NathLT12_sympathy
++ @98 /* ~Perhaps. But I won't be able to forget you being so weak.~ */ EXTERN FHNATJ NathLT12_weak
++ @99 /* ~If you were to be struck with that weakness in battle, it could cost us our lives, Nathaniel.~ */ EXTERN FHNATJ NathLT12_weak

CHAIN FHAVERY NathAvery_ambivalent
@108 /* ~Hmm. Well, you should still know about Bryce, I suppose.~ */
=
@107 /* ~He - became abusive when Angelo took over. Not physically, but he hurt Thaniel's emotions. Of course Thaniel wouldn't hear a word against Bryce. I had to hold my tongue to stay friends with him.~ */
=
@89 /* ~When you killed Angelo lots of us had had enough, and we left. Thaniel, Bryce and I were travelling together. Bryce ... tried to convince Thaniel to become a mercenary and join him to protect illegal activities. Thaniel resisted.~ */
=
@104 /* ~Bryce broke up with him and left. When Thaniel tried to stop him, he kneed him in the stomach and knocked him out cold. Then the bastard ran off.~ */
=
@91 /* ~Thaniel followed him, found you in Gods-know-where and now ... here we are.~ */
=
@92 /* ~Look, Thaniel - I need to get back to my guard duty, but I'm still here if you want to talk later, all right?~ */
== FHNATJ
@93 /* ~Yes. Yes, of course.~ */
=
@94 /* ~Gods, <CHARNAME>, I wish those panics were gone-- Will you - will you forgive me?~ */   
END
++ @95 /* ~Oh, Nathaniel, there's nothing to forgive!~ */ EXTERN FHNATJ NathLT12_signofweakness
++ @96 /* ~It was a shock for you. You shouldn't blame yourself and neither will I.~ */ EXTERN FHNATJ NathLT12_respect
++ @97 /* ~I'm so sorry about all this, Nathaniel.~ */ EXTERN FHNATJ NathLT12_sympathy
++ @98 /* ~Perhaps. But I won't be able to forget you being so weak.~ */ EXTERN FHNATJ NathLT12_weak
++ @99 /* ~If you were to be struck with that weakness in battle, it could cost us our lives, Nathaniel.~ */ EXTERN FHNATJ NathLT12_weak
