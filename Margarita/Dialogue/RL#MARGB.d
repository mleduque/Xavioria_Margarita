BEGIN RL#MARGB

IF ~Global("NashkelMinesExit","GLOBAL",1)~ THEN BEGIN NashkelMinesExit
SAY ~So Mulahey is dead. Now what am I supposed to do?~
IF ~~ THEN REPLY ~I don't understand, why don't you just go on about your way?~ DO ~SetGlobal("NashkelMinesExit","GLOBAL",2)~ GOTO MinesExitBanter1.1
IF ~~ THEN REPLY ~Explain to me how killing Mulahey affects you at all?~ DO ~SetGlobal("NashkelMinesExit","GLOBAL",2)~ GOTO MinesExitBanter1.2
END

IF ~~ THEN BEGIN MinesExitBanter1.1
SAY ~The letters, have you not read them? The poisoning of the mines is not an isolated incident.~
IF ~~ THEN REPLY ~Well yes, of course I have read them, but I still don't understand how this affects you.~ GOTO MinesExitBanter1.2
IF ~~ THEN REPLY ~Of course I see it; it's just a matter of time before those bandits are routed.~ GOTO MinesExitBanter1.3
END

IF ~~ THEN BEGIN MinesExitBanter1.2
SAY ~Because... I want this blasted Iron Crisis to end. Life is hard enough already.~
IF ~~ THEN REPLY ~Then you should stay with me, Margarita, for I should see it finished as well.~ GOTO MinesExitBanter1.3
IF ~~ THEN REPLY ~Well I don't quite need you to stop this problem, I'm sure you would only get in the way.~ GOTO MinesExitBanter1.6
IF ~~ THEN REPLY ~Margarita, it seems there is something you are not telling me.~ GOTO MinesExitBanter1.4
END

IF ~~ THEN BEGIN MinesExitBanter1.3
SAY ~Then, I should continue on with you. I don't like this situation, and I think staying around you would help me understand a few things.~
IF ~~ THEN REPLY ~Very well, let us continue, perhaps we can learn more about eachother.~ GOTO MinesExitBanter1.5
IF ~~ THEN REPLY ~I could care less about your understanding of things. This is where we part ways.~ GOTO MinesExitBanter1.6
IF ~~ THEN REPLY ~Understand what things, exaclty?~ GOTO MinesExitBanter1.7
END

IF ~~ THEN BEGIN MinesExitBanter1.4
SAY ~I have suffered at the hands of the Iron Crisis as well. I may be little, but that doesn't mean I can't help fix this.~
IF ~~ THEN REPLY ~I don't know if I believe that. Perhaps you should just go on about your way.~ GOTO MinesExitBanter1.6
IF ~~ THEN REPLY ~Then we share a similar cause. Welcome aboard, Margarita.~ GOTO MinesExitBanter1.5
END

IF ~~ THEN BEGIN MinesExitBanter1.5
SAY ~Then we shall find our answers together!~
IF ~~ EXIT
END

IF ~~ THEN BEGIN MinesExitBanter1.7
SAY ~Just to understand the troubles plagueing the region! So paranoid...~
IF ~~ EXIT
END

IF ~~ THEN BEGIN MinesExitBanter1.6
SAY ~Fine! Staying with you would probably get me killed anyway!~
IF ~~ DO ~SetGlobal("RL#MARGJoined","LOCALS",0) EscapeArea()~ EXIT
END

IF ~Global("NashkelMinesExit","GLOBAL",3)~ THEN BEGIN NimbulDeath
SAY ~Was that an assassin!? Why are you randomly being targeted by assassins, <CHARNAME>?~
IF ~~ THEN REPLY ~I have yet to find out, but it seems I'm a threat to someone.~ DO ~SetGlobal("NashkelMinesExit","GLOBAL",4) SetGlobal("NimbulDeathvariable","GLOBAL",3)~ GOTO NimbulDeath1.1
IF ~~ THEN REPLY ~Why? Will this be a problem for you during our travels?~ DO ~SetGlobal("NashkelMinesExit","GLOBAL",4) SetGlobal("NimbulDeathvariable","GLOBAL",3)~ GOTO NimbulDeath1.2
END

IF ~~ THEN BEGIN NimbulDeath1.1
SAY ~And who would that be? There's no way anyone has uttered a word to Mulahey's superiors.~
IF ~~ THEN REPLY ~And what makes you so sure of that?~ GOTO NimbulDeath1.3
IF ~~ THEN REPLY ~Well I've been hunted buy assassins way before now, this is just another in a long list of them.~ GOTO NimbulDeath1.4
IF ~~ THEN REPLY ~I care not who sends them. They've all died by my hand, and any others will as well!~ GOTO NimbulDeath1.5
END

IF ~~ THEN BEGIN NimbulDeath1.2
SAY ~Well... I guess not, if we're able to deal with them. I should have figured this would be a constant reoccurence.~
IF ~~ THEN REPLY ~It will be, and I have no doubts about that, just be sure you can stomach it from now on.~ GOTO NimbulDeath1.6
IF ~~ THEN REPLY ~Not to worry, Halfling. I can handle anything that comes our way!~ GOTO NimbulDeath1.5
IF ~~ THEN REPLY ~Really? And exactly what would have given you that impression?~ GOTO NimbulDeath1.3
END

IF ~~ THEN BEGIN NimbulDeath1.3
SAY ~I don't really know. I suppose Mulahey's death held some reperccusions that you may not have been aware of.~
IF ~~ THEN REPLY ~What, and you were? What is it that you know that I don't?~ GOTO NimbulDeath1.7
IF ~~ THEN REPLY ~Of course you're probably right about that. Not that it matters, I'll have my justice in the end.~ GOTO NimbulDeath1.5
IF ~~ THEN REPLY ~It matters not, we must move forward regardless.~ GOTO NimbulDeath1.6
END

IF ~~ THEN BEGIN NimbulDeath1.4
SAY ~That's very interesting. The bounty on you're head is higher than I thought.~
IF ~~ THEN REPLY ~Really? What makes you think there is?~ GOTO NimbulDeath1.3
IF ~~ THEN REPLY ~No bounty is going to stop me, Margarita. There will be swift retribution for our enemies!~ GOTO NimbulDeath1.5
IF ~~ THEN REPLY ~Regardless, it matters not. We must keep searching for our answers.~ GOTO NimbulDeath1.6
END

IF ~~ THEN BEGIN NimbulDeath1.5
SAY ~Well aren't you a bundle of confidence! I guess it makes sense since you just killed someone.~
IF ~~ THEN REPLY ~I think that means I'll be a bundle of confidence most of the time. Let's go!~ GOTO NimbulDeath1.6
IF ~~ THEN REPLY ~Of Course! Now let's get going, my new friend. The day awaits!~ GOTO NimbulDeath1.6
END

IF ~~ THEN BEGIN NimbulDeath1.6
SAY ~Very Well. I have no qualms about heading out. I'm sure you have a good idea of where to go next.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NimbulDeath1.7
SAY ~Do I look like I know anything useful? You found me stuck in the middle of a kobold infested mine! You're starting to sound paranoid, let's just go.~
IF ~~ THEN EXIT
END

IF ~Global("NashkelMinesExit","GLOBAL",5)~ THEN BEGIN MargaritaOutted
SAY ~You can't really believe him, can you <CHARNAME>?~
IF ~~ THEN REPLY ~I'm having a really hard time believing YOU at the moment, Margarita.~ DO ~SetGlobal("NashkelMinesExit","GLOBAL",6)~ GOTO EnderGone1.1
IF ~~ THEN REPLY ~I do, actually. The enemy of my enemy is my friend. Besides, he has no reason to lie.~ DO ~SetGlobal("NashkelMinesExit","GLOBAL",6)~ GOTO EnderGone1.2
IF ~~ THEN REPLY ~Of course I don't. I would never trust a careless thief.~ DO ~SetGlobal("MargaritaBackfire","GLOBAL",1)~ GOTO EnderGone1.10
END

IF ~~ THEN BEGIN EnderGone1.1
SAY ~But, <CHARNAME>! He's a spy, and a thief! He said it himself, who would you believe, a thief you hardly know, or the person who helped you fend off all these bandits?~
IF ~~ THEN REPLY ~You admitted to being a spy yourself, and I doubt you're as innocent as you pass yourself off to be. Come clean, Margarita. Who are you really?~ GOTO EnderGone1.3
IF ~~ THEN REPLY ~He's a man with the same enemies as me, therefore, no reason at all to lie.~ GOTO EnderGone1.2
IF ~~ THEN REPLY ~Worry not, Margarita, I believe you.~ DO ~SetGlobal("MargaritaBackfire","GLOBAL",1)~ GOTO EnderGone1.10
END

IF ~~ THEN BEGIN EnderGone1.2
SAY ~What, and I do? I've done nothing but help you out all this way! Surely you must remember that!~
IF ~~ THEN REPLY ~I tire of these games. It is time for you to explain yourself.~ GOTO EnderGone1.3
END

IF ~~ THEN BEGIN EnderGone1.3
SAY ~(sigh) Very well. I think I should have foreseen this, and it was my own foolishness that brought us to this point. I shall explain myself.~
= ~Yes, I am a spy. I am obviously not a very good one, but a spy nonetheless.~
= ~When you found me, I was doing reconnaissance for the organization that hired me.~
IF ~~ THEN REPLY ~Which organization? And what specifically did they ask you to do?~ GOTO EnderGone1.4
END

IF ~~ THEN BEGIN EnderGone1.4
SAY ~I'm getting to that! Sheesh! Impatient...~
= ~I am employed by the Iron Throne.~
= ~They needed to know what Mulahey was doing in the Mines; because it became obvious to them that he was screwing everything up.~
= ~I was sent in as an observer, mainly. If Mulahey was found out too soon, or if he accidentally got killed, then I was to clean up the mess by leaving false evidence that would lead to the Zhentarim.~
= ~It was becoming obvious to my superiors that the Half-Orc was inept, and needed to be watched because of his carelessness.~
IF ~~ THEN REPLY ~I cannot handle this, Margarita. Not only did you lie to me, but you're conspiring against me!~ GOTO ParanoidAttack
IF ~~ THEN REPLY ~So you're saying that my intrusion into the mines screwed up your orders?~ GOTO EnderGone1.5
END

IF ~~ THEN BEGIN EnderGone1.5
SAY ~More or less. I was also to stand gaurd and kill any interlopers who happened across my checkpoint. One such unfortunate soul happened to make it that far, and saddly, I had to do what my employers dictated.~
IF ~Global("HelpNashkellWoman","GLOBAL",3)~ THEN REPLY ~Wait. You killed the Nashkel woman's Husband, Joseph? Have you no remorse?~ GOTO SpecialDialogue1.1
IF ~~ THEN REPLY ~And what about your "Group"? Or was that just a cover?~ GOTO EnderGone1.6
IF ~~ THEN REPLY ~I knew it! You were going to betray me, weren't you?~ GOTO ParanoidAttack
END

IF ~~ THEN BEGIN EnderGone1.6
SAY ~There was never a group that I traveled with. I was there alone.~
= ~When you arrived there, and saw me, I saw that I was outmatched. What could I do?~
= ~So I decided to go with you. If Mulahey killed you, I could just be done with the whole matter and return to my post.~
= ~However, that's not what happened. Now, Mulahey's dead, and if I were to return to the Throne alive, they'd basically kill me by sending me to kill you.~
IF ~~ THEN REPLY ~So then where do your loyalties lie? With me, or with the Iron Throne?~ GOTO EnderGone1.7
IF ~~ THEN REPLY ~Then that means you are in league with my enemy!~ GOTO ParanoidAttack
END

IF ~~ THEN BEGIN EnderGone1.7
SAY ~My allegiance is to my employer usually, but this is a special case.~
= ~I take my employer's tasks seriously, and as long as the pay is adequate, then I have no problems with the job.~
= ~I also don't care why my superiors ask me to do certain things. It is none of my business.~
= ~My life, however, is my business, and the only reason I'm still alive attributes to the fact that I'm traveling with you.~
= ~So worry not, for the Iron Throne is nothing but a pay day. I hold no real loyalties with them.~
IF ~~ THEN REPLY ~The Iron Throne has taken a personal interest in my death, Margarita. How do I know that I can trust you?~ GOTO EnderGone1.8
IF ~~ THEN REPLY ~I'm sure that part of your tasks includes my death! I cannot adhere to this, Margarita!~ GOTO ParanoidAttack
END

IF ~~ THEN BEGIN EnderGone1.8
SAY ~<CHARNAME>, I could have tried to kill you a dozen times over. If you cannot at least trust my words, please at least, trust that!~
IF ~~ THEN REPLY ~I see your point. Do you have access to the Iron Throne, so that we may pass uninhibited?~ GOTO EnderGone1.9
IF ~~ THEN REPLY ~I cannot trust ANYTHING you say or do, you have lied to me countless times!~ GOTO ParanoidAttack
END

IF ~~ THEN BEGIN EnderGone1.9
SAY ~Oh yes! Not to worry, <CHARNAME>! I can help you. And in the end, we'll both get the answers we seek!~
IF ~~ THEN REPLY ~Very well. I've heard all I need to hear. Let us return to the road.~ GOTO EnderGone1.10
END

IF ~~ THEN BEGIN EnderGone1.10
SAY ~I'm glad to hear it! Yes, let's!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ParanoidAttack
SAY ~What? I am not, nor have I ever been against you, <CHARNAME>! Enough of this!~
IF ~~ THEN REPLY ~NO! I will see you DEAD, Margarita! I will not be betrayed, and I think it is time for you to die!~ DO ~Enemy()Attack(Player1)~ EXIT
IF ~~ THEN REPLY ~You are right. Enough of this, I think you should remove yourself posthaste. I do not indulge liars in my party!~ GOTO FinalFarewell
END

IF ~~ THEN BEGIN FinalFarewell
SAY ~I'm sorry for my lies, <CHARNAME>. I promise that you will not be bothered by the likes of me, ever again.~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SpecialDialogue1.1
SAY ~Yes, I did. I had to. It wasn't pretty, but orders are orders. Remorse has nothing to do with it.~
IF ~~ THEN REPLY ~Then I suppose your "orders" would have included betraying me and my comrades?~ GOTO ParanoidAttack
IF ~~ THEN REPLY ~And what of your "Group"? Was it also part of your orders to have them killed as well?~ GOTO EnderGone1.6
END

IF ~Global("NashkelMinesExit","GLOBAL",7)~ THEN BEGIN IronThroneArea
SAY ~Well, here we are, <CHARNAME>. The Iron Throne is just over yonder. Do not worry, I can get us through most of the gaurds without having to draw our blades. I hope you're ready.~
IF ~~ THEN REPLY ~If we can get through all the gaurds there, why would I need to ready myself? What exactly do we go to face?~ DO ~SetGlobal("NashkelMinesExit","GLOBAL",8)~ GOTO IronThroneArea1.1
IF ~~ THEN REPLY ~Yes, I am ready, Margarita. Just lead the way.~ DO ~SetGlobal("NashkelMinesExit","GLOBAL",8)~ GOTO IronThroneArea1.4
IF ~~ THEN REPLY ~Do not but in, Halfling. I do not want you to alert anyone to our presence. Let me handle this.~ DO ~SetGlobal("NashkelMinesExit","GLOBAL",8)~ GOTO IronThroneArea1.5
END

IF ~~ THEN BEGIN IronThroneArea1.1
SAY ~I honestly don't know. I have been here only a handful of times. I know the gaurds, but I do not know who might be there waiting for us.~
IF ~~ THEN REPLY ~Are you sending me into a trap? I thought you said you would help me.~ GOTO IronThroneArea1.2
IF ~~ THEN REPLY ~If there is anyone there waiting, we will have to cross that bridge when we get to it. Let's just get moving.~ GOTO IronThroneArea1.4
IF ~~ THEN REPLY ~I do not need anymore of your kind of help. Just do your job in battle and we will have no conflict.~ GOTO IronThroneArea1.5
END

IF ~~ THEN BEGIN IronThroneArea1.2
SAY ~<CHARNAME>! Really now, we have come all this way, and I have told you the truth. Just have a little faith. I did promise to help.~
IF ~~ THEN REPLY ~You're right, I do not mean to be paranoid, but you have lied to me once already.~ GOTO IronThroneArea1.3
IF ~~ THEN REPLY ~On second thought, I think it best you just stay quiet, and let me do the talking.~ GOTO IronThroneArea1.5
END

IF ~~ THEN BEGIN IronThroneArea1.3
SAY ~I understand your hesitation, I really do. But please just trust me. I do not want to fight anymore than we have to.~
IF ~~ THEN REPLY ~Then we are ready to go, Let us head out.~ GOTO IronThroneArea1.4
END

IF ~~ THEN BEGIN IronThroneArea1.4
SAY ~Ready when you are, <CHARNAME>!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IronThroneArea1.5
SAY ~If that is what you really want, then I'll do my best to stay out of your way, <CHARNAME>.~
IF ~~ THEN DO ~SetGlobal("MargaritaBackfire","GLOBAL",1)~ EXIT
END

// NPC-NPC banters

CHAIN
IF ~Global("RL#HarpersMargaritaTalk","LOCALS",0)
InParty("KHALID")
InParty("JAHEIRA")
InParty("RL#MARG")
See("RL#MARG")
!StateCheck("KHALID",STATE_SLEEPING)
!StateCheck("JAHEIRA",STATE_SLEEPING)~
THEN RL#MARGB RL#HarperGauge
~Ya know, for Harpers, you guys aren't too bad.~ DO ~ SetGlobal("RL#HarpersMargaritaTalk","LOCALS",1)~
== BJAHEI ~I do not understand, you like Khalid and I, but do not like other Harpers?~
== RL#MARGB ~Is there anyone out there that does like Harpers?~
== BJAHEI ~Harpers have done much good in the past. I see no reason for you to dislike us.~
== RL#MARGB ~If you guys see it as good, then you're all deluded.~
== BKHALI ~N-n-now Jaheira dear, w-we get this sort of thing all the time. N-n-no need to-.~
== BJAHEI ~Hush Khalid, I will not be forced into some sort of argument with the ignorant Halfling, she is welcome to her opinions.~
== RL#MARGB ~I scratch that, Khalid isn't too bad, can't say much for your wife though.~
== BKHALI ~W-w-well thank you, I th-think...~
== BJAHEI ~You will make many enemies, Margarita, if you keep forcing your spiteful opinions in the path of others.~
== RL#MARGB ~You're right, I shouldn't follow your bad example.~
EXIT

CHAIN
IF ~Global("RL#HarpersMargaritaTalk","LOCALS",1)
InParty("KHALID")
InParty("JAHEIRA")
InParty("RL#MARG")
See("RL#MARG")
!StateCheck("KHALID",STATE_SLEEPING)
!StateCheck("JAHEIRA",STATE_SLEEPING)~
THEN BKHALI RL#HarperHarpy
~M-Margarita d-d-dear, w-why do you not tell anyone of some of your past? I-it would be a pleasure to hear it.~ DO ~SetGlobal("RL#HarpersMargaritaTalk","LOCALS",2)~
== RL#MARGB ~I'm surprised that harpy of a wife even let you speak to me, after our last conversation.~
== BJAHEI ~What was it you just said?~
== BKHALI ~N-N-N-NOTHING, J-Jaheira, she was just commenting on the weather.~
EXIT

CHAIN
IF ~Global("RL#HarpersMargaritaTalk","LOCALS",2)
InParty("KHALID")
InParty("JAHEIRA")
InParty("RL#MARG")
See("RL#MARG")
!StateCheck("KHALID",STATE_SLEEPING)
!StateCheck("JAHEIRA",STATE_SLEEPING)~
THEN RL#MARGB RL#HarperRetribution
~Khalid?~ DO ~SetGlobal("RL#HarpersMargaritaTalk","LOCALS",3)~
== BKHALI ~Y-yes Margarita?~
== RL#MARGB ~I wanted to answer your question about last time. I don't talk much about my past, because there isn't much about it that would be of interest to you.~
== BKHALI ~I d-d-don't think that's true. J-just try me.~
== RL#MARGB ~I would rather not, really; I mean there isn't much to say.~
== BKHALI ~How about j-j-just start with your origins. Where are you f-from?~
== RL#MARGB ~Sembia.~
== BKHALI ~Now I'm sure that wasn't so hard.~
== RL#MARGB ~Why did you marry Jaheira?~
== BKHALI ~P-p-pardon?~
== RL#MARGB ~You can do so much better than her, why did you marry such a stern woman?~
== BKHALI ~M-Margarita-.~
== BJAHEI ~What is this?~
== BKHALI ~Oh dear.~
== RL#MARGB ~You really can't stand to mind your own business to have you to but in every time I wish to talk with Khalid.~
== BJAHEI ~Do not insist on some type of innocence. Your intentions seem less than sincere, Halfling!~
== RL#MARGB ~Forget I said anything.~
EXIT

CHAIN
IF ~Global("RL#HarpersMargaritaTalk","LOCALS",3)
InParty("KHALID")
InParty("JAHEIRA")
InParty("RL#MARG")
See("RL#MARG")
!StateCheck("KHALID",STATE_SLEEPING)
!StateCheck("JAHEIRA",STATE_SLEEPING)~
THEN RL#MARGB RL#Harperflirting
~Hi Khalid.~ DO ~SetGlobal("RL#HarpersMargaritaTalk","LOCALS",4)~
== BKHALI ~Hello there, M-Margarita, how does this day f-find you?~
== RL#MARGB ~Quite well, and yourself?~
== BKHALI ~W-wonderfully, Methinks. what is on your m-mind?~
== RL#MARGB ~Several things, I think some of which may interest you.~
== BKHALI ~How so?~
== RL#MARGB ~Well, there are a few things that I think we could do together.~
== BJAHEI ~This has gone on long enough, leave him be, lest I strike you down where you stand!~
== RL#MARGB ~We were just talking, harpy! Why don't you go save a tree somewhere?~
== BKHALI ~L-l-ladies...~
== BJAHEI ~I have figured you out, small hussie! Leave us! I will not sit idle while you act amorously towards my Khalid!~
== RL#MARGB ~You're insulting, that is not what I was trying to do, at all!~
== BJAHEI ~You cannot try me for a fool, simple girl!~
== RL#MARGB ~I don't know how you deal with her, Khalid!~
== BKHALI ~(sigh)~
EXIT

CHAIN
IF ~Global("RL#KivanMargaritaTalk","LOCALS",0)
InParty("RL#MARG")
InParty("KIVAN")
See("RL#MARG")
!StateCheck("KIVAN",STATE_SLEEPING)~
THEN BKIVAN RL#RangerSpeak
~I find it odd that a halfling such as yourself calls yourself a Ranger, Margarita.~ DO ~SetGlobal("RL#KivanMargaritaTalk","LOCALS",1)~
== RL#MARGB ~Is it because I'm short or because I'm not trying to avenge some dead wife of mine?~
== BKIVAN ~You would take care not to mock me, Halfling. Your size does not matter to me. Your actions and words, however, do.~
== RL#MARGB ~Maybe if you minded your own business. You only feel offended because you wanted to pry where you're not welcome.~
== BKIVAN ~Then forgive me, young Ranger. I shall not pry again.~
EXIT

CHAIN
IF ~GlobalGT("Chapter","GLOBAL",3)
InParty("RL#MARG")
InParty("KIVAN")
See("RL#MARG")
!StateCheck("KIVAN",STATE_SLEEPING)
Global("RL#KivanMargaritaTalk","LOCALS",1)~
THEN BKIVAN RL#RangerAmend
~I think I shall watch you more closely, deceiver. <CHARNAME> still allows you to travel with us, but I disagree with <HISHER> choice.~ DO ~SetGlobal("RL#KivanMargarita","LOCALS",2)~
== RL#MARGB ~Is this the nickname I hold now? Deceiver? I have done nothing to this party, or to you personally. Why do you pester me?~
== BKIVAN ~You ally yourself with the monster who murdered my Deheriana! You shall be called by nothing else.~
== RL#MARGB ~You know nothing, Mr. Broken. Are you going to follow me into the bushes when I need to tinkle as well?~
== BKIVAN ~I find no humor in your jest.~
== RL#MARGB ~And that is why I call you Mr. Broken.~
EXIT

CHAIN
IF ~Global("RL#KivanMargaritaTalk","LOCALS",2)
InParty("RL#MARG")
InParty("KIVAN")
See("RL#MARG")
!StateCheck("KIVAN",STATE_SLEEPING)~
THEN RL#MARGB RL#RangerDislike
~Hey, Mr. Broken. I don't like you.~ DO ~SetGlobal("RL#KivanMargaritaTalk","LOCALS",3)~
== BKIVAN ~That matters not to me, Deceiver.~
== RL#MARGB ~I suppose that means that we're on the same page.~
== BKIVAN ~I doubt we could ever be on the same page of anything. You are a liar down to the bone.~
== RL#MARGB ~You even disagree to disagree. This is why I dislike you, Mr. Broken.~
EXIT

CHAIN
IF ~Global("RL#ViconiaMargaritaTalk","LOCALS",0)
InParty("RL#MARG")
InParty("VICONIA")
See("RL#MARG")
!StateCheck("VICONIA",STATE_SLEEPING)~
THEN RL#MARGB RL#DrowAttentions
~Um... You... I mean... we... we um... they didn't... does...?~ DO ~SetGlobal("RL#ViconiaMargaritaTalk","LOCALS",1)~
== BVICON ~Either you are addled, or you speak in tongues I do not understand. Can you perchance speak Common?~
== RL#MARGB ~I speak Common. I just... uh, well you... I think...~
== BVICON ~I do not understand why <CHARNAME> decided to bring an addlebrained Halfling. Perhaps I should just ask <HIMHER>.~
EXIT

CHAIN
IF ~Global("RL#ViconiaMargaritaTalk","LOCALS",1)
InParty("RL#MARG")
InParty("VICONIA")
See("RL#MARG")
!StateCheck("VICONIA",STATE_SLEEPING)~
THEN RL#MARGB RL#ScaredOfDrow
~I'm so sorry about the last time I spoke. I think I just wasn't used to seeing Drow.~ DO ~SetGlobal("RL#ViconiaMargaritaTalk","LOCALS",2)~
== BVICON ~I figured that out, small female. I am no danger to you. As of yet.~
== RL#MARGB ~Well I'm never a danger to anyone, so you don't have to worry about me.~
== BVICON ~I have seen at least a taste of your battle talents, Halfling. Your innocence charade does not impress me.~
== RL#MARGB ~I meant to anyone in the party. I'm really just a small little helper here.~
== BVICON ~I think your charms with others may work, but not with me. I do not hold anything against that dance, just at least name you for what you are.~
== RL#MARGB ~And that would be...?~
== BVICON ~A trickster.~
EXIT

CHAIN
IF ~Global("RL#ViconiaMargaritaTalk","LOCALS",2)
InParty("RL#MARG")
InParty("VICONIA")
See("RL#MARG")
!StateCheck("VICONIA",STATE_SLEEPING)
GlobalGT("Chapter","GLOBAL",3)~
THEN BVICON RL#DrowKnowledge
~You have proven to be quite the little scoundrel, Margarita. You had even me fooled.~ DO ~SetGlobal("RL#ViconiaMargaritaTalk","LOCALS",3)~
== RL#MARGB ~It was not my intention to fool you, Viconia. Please don't be angry with me.~
== BVICON ~I hold no anger towards you. I am just surprised somewhat.~
== RL#MARGB ~I also did not mean to surprise you.~
== BvICON ~Margarita, if I did not know any better, I would say you are afraid of me.~
== RL#MARGB ~You don't say...~
EXIT

CHAIN
IF ~Global("RL#ViconiaMargaritaTalk","LOCALS",3)
InParty("RL#MARG")
InParty("VICONIA")
See("RL#MARG")
!StateCheck("VICONIA",STATE_SLEEPING)~
THEN BVICON RL#WhyAfraid
~Why do you fear me, Halfling? I have done nothing to you to warrant such an emotion.~ DO ~SetGlobal("RL#ViconiaMargaritaTalk","LOCALS",4)~
= ~I must admit, that is not easy to do.~
== RL#MARGB ~I'm not afraid, I'm just... I don't know...~
== BVICON ~The fear is obvious, do not deny what I see as plain as this burning sunlight.~
== RL#MARGB ~You're Drow!~
== BVICON ~That is it?~
== RL#MARGB ~Should there be more?~
== BVICON ~I thought as much, but I thought I should at least hear it from your lips so that I may be sure.~
== RL#MARGB ~Well, that's why.~
== BVICON ~(sigh)~
EXIT

CHAIN
IF ~Global("RL#KagainMargaritaTalk","LOCALS",0)
InParty("RL#MARG")
InParty("KAGAIN")
See("RL#MARG")
!StateCheck("KAGAIN",STATE_SLEEPING)~
THEN BKAGAI RL#KagainUnderstanding
~I like how you work, Margarita.~ DO ~SetGlobal("RL#KagainMargaritaTalk","LOCALS",1)~
== RL#MARGB ~I don't understand, what do you know about how I work?~
== BKAGAI ~You don't ask questions and you do whatever it takes to get the job done.~
== RL#MARGB ~Of course, every employee should have integrity when handling their responsibilities.~
== BKAGAI ~I perfectly agree.~
EXIT

CHAIN
IF ~Global("RL#KagainMargaritaTalk","LOCALS",1)
InParty("RL#MARG")
InParty("KAGAIN")
See("RL#MARG")
!StateCheck("KAGAIN",STATE_SLEEPING)~
THEN BKAGAI RL#KagainInterest
~Margarita, I think you should look into working for a different employer.~ DO ~SetGlobal("RL#KagainMargaritaTalk","LOCALS",2)~
== RL#MARGB ~And why is that?~
== BKAGAI ~There are different opprotunities for work that I think are worth pursuing.~
== RL#MARGB ~My loyalties lie with someone else at the moment.~
== BKAGAI ~I think you should at least think about it. I can be a very generous Dwarf.~
== RL#MARGB ~I thought you were a hoarder, why would you give me gold to do anything?~
== BKAGAI ~Who said anything about gold?!~
== RL#MARGB ~Well aren't you a keeper.~
EXIT

CHAIN
IF ~Global("RL#KagainMargaritaTalk","LOCALS",2)
InParty("RL#MARG")
InParty("KAGAIN")
See("RL#MARG")
!StateCheck("KAGAIN",STATE_SLEEPING)~
THEN BKAGAI RL#KagainWantsDate
~I think we should go get an ale sometime.~ DO ~SetGlobal("RL#KagainMargaritaTalk","LOCALS",3)~
== RL#MARGB ~Are you asking me what I think you're asking me?~
== BKAGAI ~O' course! I know you like being around the generous sort, I can be that for ya.~
== RL#MARGB ~I don't even know what to say to that.~
== BKAGAI ~Just tell me you'll think about it. Wouldn't hurt, and who doesn't love ale?~
== RL#MARGB ~But, you're old.~
== BKAGAI ~I prefer the term experienced.~
== RL#MARGB ~Well I prefer the term old.~
EXIT

CHAIN
IF ~Global("RL#XanMargaritaTalk","LOCALS",0)
InParty("RL#MARG")
InParty("XAN")
See("RL#MARG")
!StateCheck("XAN",STATE_SLEEPING)~
THEN RL#MARGB RL#XanUnliked
~You're probably more useless than a fat trapeze artist~ DO ~SetGlobal("RL#XanMargaritaTalk","LOCALS",1)~
== BXANNN ~Trying to goad me into a verbal altercation is a useless endeavor. It might be best for you to abandon it.~
== RL#MARGB ~I know that you would be useless in a fight so I'm not goading you to do anything, except maybe remove yourself from the party.~
== BXANNN ~I pull my weight like you do, even though we'll probably all fall by the day's end.~
== RL#MARGB ~Ugh, I still don't understand why <CHARNAME> tolerates your presence. Maybe <HESHE> finds you amusing.~
== BXANNN ~Perhaps <HESHE> knows I'm right and just needs reminding.~
== RL#MARGB ~Reminding about what?~
== BXANNN ~About how vain our quest is.~
EXIT

CHAIN
IF ~Global("RL#XanMargaritaTalk","LOCALS",1)
InParty("RL#MARG")
InParty("XAN")
See("RL#MARG")
!StateCheck("XAN",STATE_SLEEPING)~
THEN BXANNN RL#XanDismissed
~Margarita, have you ever thought perhaps your mission is a waste of your time?~ DO ~SetGlobal("RL#XanMargaritaTalk","LOCALS",2)~
== RL#MARGB ~I think it's a waste of YOUR time to even address me, Mr. Useless. Go away.~
== BXANNN ~I see. It is futile to try to even speak to one such as you.~
== RL#MARGB ~You really don't listen. Enough of your gibbering! Leave me be!~
EXIT

CHAIN
IF ~Global("RL#TiaxMargaritaTalk","LOCALS",0)
InParty("TIAX")
InParty("XAN")
InParty("RL#MARG")
See("RL#MARG")
!StateCheck("TIAX",STATE_SLEEPING)~
THEN BTIAX RL#TiaxCrazyness
~Tiax will rule all!~ DO ~SetGlobal("RL#TiaxMargaritaTalk","LOCALS",1)~
== RL#MARGB ~Have you ever thought of who your underlings will be when you rule all?~
== BTIAX ~Everyone! Everyone will be my underlings, whoever I look upon shall be my loyal subject!~
== RL#MARGB ~What will you do with all the types who wish to push you aside?~
== BTIAX ~They will be destroyed! There is no one who can match the might of the great Tiax!~
== RL#MARGB ~And who will destroy them?~
== BTIAX ~I shall, of course!~
== RL#MARGB ~Don't you think doing such a thing is beneath you?~
== BTIAX ~There is a good point in your words! I shall have my loyal subjects rout those brigands and bring them all to ME!~
== RL#MARGB ~Well Xan is definitely one of those pests you should get rid of!~
== BXANNN ~Margarita, you'll have my ears drummed to deafness by the end of the night!~
== BTIAX ~I have known I could not trust the gloomy elf! In due time, I shall have him cowed!~
== BXANNN ~(sigh) I knew that halfling hated me, I just knew it.~
== RL#MARGB ~(Giggle)~
EXIT

CHAIN
IF ~Global("RL#SpecialDialogue","LOCALS",0)
InParty("RL#MARG")
InParty("EDWIN")
InParty("VICONIA")
InParty("SHARTEEL")
See("RL#MARG")
!StateCheck("EDWIN",STATE_SLEEPING)
!StateCheck("SHARTEEL",STATE_SLEEPING)
!StateCheck("VICONIA",STATE_SLEEPING)
Global("Chapter","GLOBAL",4)~
THEN RL#MARGB RL#SpecialDialogue1
~I think a powerful mage should looked on with care. You never know if they'll go crazy!~ DO ~SetGlobal("RL#SpecialDialogue","LOCALS",1)~
== BSHART ~If he were a man, you should kill him anyway!~
== BEDWIN ~This is a silly idea (which are the only ones you seem to come up with). A powerful mage is an asset!~
== RL#MARGB ~I think they're more of a liability.~
== BEDWIN ~You are mistaken, of course! Do you mean to suggest I am some thing you should throw away?~
== BSHART ~You are, simply because you are male!~
== BVICON ~I happen to agree with you, small female. But that goes with anyone with power.~
== RL#MARGB ~Well... Viconia... I think magic is powerful by itself. So giving it to people is unwise.~
== BEDWIN ~Perhaps you are jealous of powerful mages like myself? It is something too difficult for your simple mind to understand.~
== RL#MARGB ~I can understand it well enough, Red Wizard! I see you fling magic missles at people all the time!~
== BEDWIN ~Yes, you see it, but do you understand it?~
== BSHART ~Let's kill him, Margarita, I can take him with both my hands behind my back!~
== BVICON ~Do not be foolish, Shar-Teel. Edwin is useless to us dead.~
== BEDWIN ~At least the Dark Elf can see my use. The rest of you are too inept to appreciate anything beyond your own noses.~
== BSHART ~That isn't true, I can appreciate your entrails dripping off my blade!~
== RL#MARGB ~Oh my goodness, Shar-Teel, that's just morbid.~
== BVICON ~The woman does know how to paint a pretty picture though.~
== BEDWIN ~Enough of this! I think I can understand why someone wants this party dead! <CHARNAME> is surrounded by imbeciles!~
== RL#MARGB ~Watch out guys! Edwin might capture and torture us if we aren't careful! And just because he thinks we're stupid. You can never trust an evil mage!~
== BSHART ~Does that mean we're going to kill him?~
== BVICON ~Shar-Teel, no one is killing Edwin. Today at least.~
== RL#MARGB ~Maybe tommorrow?~
EXIT

