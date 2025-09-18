CHAIN
IF ~InParty("J#Kelsey")
InParty("Anomen")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("AnomenRomanceActive","GLOBAL",1)
Global("J#KelseyRomanceActive","GLOBAL",1)
OR(2)
Alignment("Anomen",LAWFUL_GOOD)
Alignment("Anomen",LAWFUL_NEUTRAL)
Global("FHKelsAnoTalk","GLOBAL",0)~ THEN BFHNAT FHKelsAno
~...No, really, I just think you should try to talk to him. It's not as if he's done anything to you.~
DO ~SetGlobal("FHKelsAnoTalk","GLOBAL",1)~
== BJ#KLSY
~Hasn't done...? Are you serious?~
== BFHNAT
~Yes. I'm sure if you actually talked you'd find you got on a lot better.~
== BJ#KLSY
~Look, Nathaniel, for Waukeen's sake! If you love Anomen so much why don't you take him and do <CHARNAME> and me a favour?~
== BFHNAT
~Excuse me? For one thing, Anomen isn't-- and for another-- it's just - just wrong!~
== BJ#KLSY
~*sigh* Look. I'm sorry. But it's not going to happen.~
EXIT

CHAIN
IF ~InParty("J#Kelsey")
InParty("Anomen")
!StateCheck("J#Kelsey",STATE_SLEEPING)
OR(2)
Alignment("Anomen",LAWFUL_GOOD)
Alignment("Anomen",LAWFUL_NEUTRAL)
Global("FHKelsAnoTalk","GLOBAL",0)~ THEN BFHNAT FHKelsAno2
~...No, really, I just think you should try to talk to him. It's not as if he's done anything to you.~
DO ~SetGlobal("FHKelsAnoTalk","GLOBAL",1)~
== BJ#KLSY
~Hasn't done...? Are you serious?~
== BFHNAT
~Yes. I'm sure if you actually talked you'd find you got on a lot better.~
== BJ#KLSY
~Look, Nathaniel, for Waukeen's sake! If you love Anomen so much why don't you take him? Then at least he'd be out of my face!~
== BFHNAT
~Excuse me? For one thing, Anomen isn't-- and for another-- it's just - just wrong!~
== BJ#KLSY
~*sigh* Look. I'm sorry. But it's not going to happen.~
EXIT

CHAIN IF
~InParty("Nath")
!StateCheck("Nath",STATE_SLEEPING)
Global("FHKelsTalk","GLOBAL",0)~ THEN BJ#KLSY FHKels1
~...ah, here it is. I was worried I'd lost it for a moment there.~
DO ~SetGlobal("FHKelsTalk","GLOBAL",1)~
== BFHNAT
~Hmmm?~
== BJ#KLSY
~Oh, it's just one of my notebooks. I doubt what's written in there is particularly earth-shattering, but I'd be sorry to lose it.~
== BFHNAT
~It is quite pretty.~
== BJ#KLSY
~Yes ... I can't remember where I got it from now, but it's stayed with me for a while now. Since before I left home.~
== BFHNAT
~Can you see yourself going back there? Home, I mean?~
== BJ#KLSY
~I don't know - I hadn't really thought about it. I mean, we're with <CHARNAME> now, aren't we?~
== BFHNAT
~Not even if you miss the people you cared about?~
== BJ#KLSY
~I guess not, the way things are between my family and me right now.~
=
~But this isn't really about me, is it?~
== BFHNAT
~What?~
== BJ#KLSY
~Don't worry about it.~
EXIT
