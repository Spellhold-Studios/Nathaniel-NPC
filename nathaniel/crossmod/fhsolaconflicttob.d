APPEND FHN25J

IF
~Global("FHSola1","LOCALS",1)~ THEN BEGIN FHSola1
SAY ~Um, <CHARNAME>? Could I have a word...?~
IF ~~ THEN DO ~SetGlobal("FHSola1","LOCALS",2)~
REPLY ~Of course. What is it?~ + FHSola1_what
++ ~Go on. What's on your mind, Nathaniel?~ + FHSola1_what
++ ~I don't want to hear it, Nathaniel. I'm not interested.~ + FHSola1_notinterested
END

IF ~~ THEN BEGIN FHSola1_what
SAY ~Well, I...~
=
~I've noticed you spending a lot of time with Solaufein. That's all. I know it's probably nothing, but ... you know.~
++ ~Relax, Nathaniel. Solaufein's just my friend.~ + FHSola1_friend
++ ~I hadn't noticed him looking at me in any particular way. I think you're probably getting worried over nothing.~ + FHSola1_friend
++ ~Oh! Well, I'll mention it to him. I don't want him to misinterpret things.~ + FHSola1_mention
++ ~Well, he's a lot more interesting than you are, so of course I'm going to spend time with him!~ + FHSola1_interesting
++ ~I enjoy his conversation, Nathaniel. Is that wrong?~ + FHSola1_wrong
END

IF ~~ THEN BEGIN FHSola1_notinterested
SAY ~But... Oh, never mind.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola1_friend
SAY ~Of course. I just don't want him to get ideas ... being so alien, he might--~
=
~But let's be getting on. I didn't mean for this to get out of proportion.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola1_mention
SAY ~Thanks, <CHARNAME>. That's a weight off my mind. But let's be getting on. I didn't mean for this to get out of proportion.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola1_interesting
SAY ~You don't have to insult me, <CHARNAME>! I don't mind about you spending time with him, I just don't want him getting ideas!~
=
~Look. I didn't want this to get out of proportion. Let's get going.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola1_wrong
SAY ~No, no, of course not. I just don't want him to get the wrong idea, that's all.~
=
~But let's be getting on. I didn't mean for this to get out of proportion.~
IF ~~ THEN EXIT
END

IF
~Global("FHSola2","LOCALS",1)~ THEN BEGIN FHSola2
SAY ~<CHARNAME>! What was that about?~
IF ~~ THEN DO ~SetGlobal("FHSola2","LOCALS",2)~
REPLY ~What was what about?~ + FHSola2_what
++ ~Oh, you mean the hand thing. I ... yes...~ + FHSola2_yes
++ ~I know, I was confused too! I'm going to say something...~ + FHSola2_say
++ ~Nothing! I mean, nothing, of course.~ + FHSola2_yes
++ ~Nathaniel? I'm ... I'm sorry you had to see that, but I've been meaning to tell you for some time...~ + FHSola2_niceish
++ ~"That" was Solaufein and I bonding, Nathaniel. Sorry, and all that.~ + FHSola2_nasty
END

IF ~~ THEN BEGIN FHSola2_what
SAY ~Touching him like that! Look, I'm sure you - you mean well, but the way he looks at you, it's as if ... as if you and I aren't close. Please, can you talk to him about it?~
++ ~Yes, I was confused too. I'll mention it to him.~ + FHSola2_say
++ ~I'm sure it's nothing to be worried about, Nathaniel. Solaufein's a friend.~ + FHSola2_friend
++ ~He's Drow, Nathaniel. He doesn't know how surfacer relationships work, so he must not have realised.~ + FHSola2_friend
++ ~Nathaniel ... I know we're very close, but Solaufein's just ... well...~ + FHSola2_niceish
++ ~I enjoy talking to him, but if it makes you uneasy I'll say something.~ + FHSola2_say
++ ~I don't want something like this to come between us, Nathaniel.~ + FHSola2_friend
END

IF ~~ THEN BEGIN FHSola2_yes
SAY ~Is that all you have to say? <CHARNAME>--~
++ ~What? Look, don't be so suspicious! Solaufein's a friend, nothing more!~ + FHSola2_friend
++ ~I'm sorry, Nathaniel. I was just at a loss as to what to say ... I don't want you to be jealous.~ + FHSola2_friend
++ ~Solaufein's Drow, Nathaniel! He doesn't know how surfacer relationships work!~ + FHSola2_friend
++ ~No, it's not. I enjoy talking to him, and touching him too!~ + FHSola2_nasty
++ ~No, it's not all I have to say. I ... didn't want to have to tell you, but I like Solaufein ... a great deal.~ + FHSola2_niceish
END

IF ~~ THEN BEGIN FHSola2_say
SAY ~Thank you. That would set my mind at rest.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FHSola2_niceish
SAY ~What? You mean ... after what we've been through, you just take up with some exotic Drow male? That's it, <CHARNAME>. You led me on, and I'm not standing for it any longer!~
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN FHSola2_nasty
SAY ~Oh, I see. So all that we did was just a dalliance until you could find something better. You just take up with some exotic Drow male. That's it, <CHARNAME>. You led me on, and I'm not standing for it!~
IF ~~ THEN DO
~SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN FHSola2_friend
SAY ~Fair enough, but I'd still appreciate it if you said something to him. I'm yours, <CHARNAME>, and I'd like to think that I can count on you.~
IF ~~ THEN EXIT
END

IF
~Global("FHSola3","LOCALS",1)~ THEN BEGIN FHSola3
SAY ~I don't think I can stand this any more. I gave everything to you. Now you're going to throw all that in my face and parade around with that elf? I'm going, <CHARNAME>. I don't want to be around you.~
IF ~~ THEN DO ~SetGlobal("FHSola3","LOCALS",3)
SetGlobal("NathRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~
EXIT
END
END
