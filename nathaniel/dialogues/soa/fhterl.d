BEGIN FHTERL

CHAIN IF ~Global("FHAveryLetter","GLOBAL",2)~ THEN FHTERL FHTerl0
@0 /* ~I understand that you are Nathaniel Aplin-Fletcher, sir.~ */
DO ~SetGlobal("FHAveryLetter","GLOBAL",3)~
== FHNATJ @225 /* ~That's right. Who are you?~ */
== FHTERL
@1 /* ~I am Terl, bearing a message from a Lieutenant Avery Fairfax.~ */
DO ~SetGlobal("FHAveryLetter","GLOBAL",4)
GiveItemCreate("FHNOTE","Nath",0,0,0)~
== FHNATJ
@226 /* ~Avery! Thank you.~ */
=
@227 /* ~He asks us to meet him in Trademeet. I'd appreciate it if we could go, <CHARNAME>. I'm sure you'd like him, and it's been a while since we caught up on things.~ */
END
++ @228 /* ~Of course, Nathaniel. We'll make our way there soon.~ */ EXTERN FHNATJ NathTerl_yes
++ @229 /* ~We'll go there soon. It could be something important.~ */ EXTERN FHNATJ NathTerl_yes
++ @230 /* ~I'm not sure we've got time to go and see him, Nathaniel - there are a lot of things I need to do.~ */ EXTERN FHNATJ NathTerl_maybe
++ @231 /* ~No. I refuse to go gallivanting after your old army pals.~ */ EXTERN FHNATJ NathTerl_no

CHAIN FHNATJ NathTerl_yes
@232 /* ~Excellent! Thank you.~ */
END
IF ~~ THEN UNSOLVED_JOURNAL @233 /* ~Nathaniel has heard from Lieutenant Fairfax
Nathaniel received a letter from an old friend of his and is anxious to make his way to Trademeet to see him.~ */
DO ~SetGlobalTimer("NathTM","GLOBAL",TWO_DAYS)
ActionOverride("FHTERL",EscapeArea())~ EXIT

CHAIN FHNATJ NathTerl_maybe
@234 /* ~Please - I think we ought to go. He wouldn't have contacted me if it wasn't something important.~ */
END
++ @235 /* ~Very well, then. We can start making our way to see him soon.~ */ + NathTerl_yes
++ @236 /* ~Fair enough, then. But it had better be something important.~ */ + NathTerl_yes
++ @237 /* ~All right. I suppose it'll be interesting to meet him.~ */ + NathTerl_yes
++ @238 /* ~I'm sorry. It's just that there are other things to do.~ */ + NathTerl_no

CHAIN FHNATJ NathTerl_no
@239 /* ~(sigh) Well, in that case I'll have to leave you.~ */
DO ~LeaveParty() EscapeArea()~
EXIT
