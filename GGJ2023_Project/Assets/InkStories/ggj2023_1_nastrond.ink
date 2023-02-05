==nastrond_main
//Start of nastrond.

It's the sound of distant thunder that wakes you, and then <i>her</i> voice, unspooling like a silver thread across the lullaby of sand, and stone, and waves that surrounds you. 

*[<i>“Wake up Oath-breaker.”</i>] #image.nyrna

- "Nyrna?" #image.player 

The Dis' name sounds halting on your tongue, your throat still burning from the sea-water you just expelled from your lungs. 
Your hands are blue with cold as you claw your way upright, skinning your knees against the slick black rocks of the beach.

Something <i>pops</i> beneath the heel of your boot as you stand, and you look down to find a pale skull leering up at you, its jaw distended in a parody of a smile.

*[...]

-Now that you've seen it you notice them everywhere, bones littering the shoreline like seashells, nestling into the folds of the grey roots that snake down to the waters edge to writhe in the shallows. 

So then. 

*[This is the land of the dead.]

-Or more specifically, this is Nastrond, the Corpse-shore, where unworthy souls like yourself are washed up and discarded. 

If the World Tree is here then its great boughs are hidden in the mist.

There's just you, and the beach, and the dead.

*[It's not what you expected.]
But then, nothing ever is.

*[Are you supposed to be impressed?]
It'll take more than a few skulls to shake your resolve.

-The wrecks of burial ships jut like broken teeth from the waters edge, their prows scorched by bale-fire. 

Above you a black sun hovers in the shadow of the dour sky.

*[...]
-<i>"Here even the the sun is dead."</i> #image.nyrna

This time when you spin around you find her leaning against some roots nearby, casually picking at something in her teeth with a bit of bone.

She always has been prone to theatrics.

*[...]

-Nyrna offers you a lopsided smile.

"Happy to see me Oath-breaker? It took you long enough to wake up, for a moment there I thought you had drowned." #image.nyrna

*["I thought you didn't care what happened to me."] #image.player

"Oh, don't mistake me, this is just,' she wafts the bone through the air, as though weaving some invisible thread, 'oh I don't know... habit?" #image.nyrna


**[If you dislike me so much then why did you follow me down here?"] You ask, though it sounds childish even to your own ears. #image.player

-"Don't flatter yourself. This is just a <i>sending</i>, a projection of my will. I’m not really here." #image.nyrna

"Besides, where you plan to go, even <i>I</i> cannot follow. You made sure of that."

*[Throw something at her.] #image.player
You pick up a pebble from the beach, and throw it at her, watching as it passes through her left shoulder as though it were nothing. 

Mist curls upwards from the open wound as the vision re-forms itself.

Nyrna arches an eyebrow at you. "Feel better?" #image.nyrna

**["Marginally."] You admit. "I thought you dissapproved." #image.player

"I do." She says, her face suddenly grave. #image.nyrna

*[Scoff.]

"I didn't ask you to come here." You snap. #image.player

The sending is remarkably life-like, you can even see the sharp little glint in her eye as she sneers at you.

"You didn't have to, you lumbering oaf."  #image.nyrna

-"I couldn't let you do this alone. That would be too sad an end, even for you. Someone should bear witness."

*["The whole point of all this is there will be no witnesses."] #image.player

Soon your name will be forgotten, erased from the tapestry of time, unwritten from the annals of history. And it is a choice you make willingly, and a price you pay gladly. 

It is the only way to get what you want.

"Then I'll be witness to nothing and no-one!" She snaps at you.  #image.nyrna

"But I'll be there. Even when you've forgotten your name, and we are become strangers to one another. Even when there is nothing left of us but dust."

"I'm your Fate, Oath-breaker. I've been with you since the begining, and I will be there with you until the end. And if you don't like it, well–"

She throws the bone at you - nothing but air and light, but you flinch anyway.

"–just try and stop me."

- You could argue about it. You've already done so many times. But you find yourself struck with a strange melancholy. #image.player

*[You will miss these little arguments.]
{alterAbility(Mind, 1)}
*[You are relieved to have the company of a friend.]
{alterAbility(Luck, 1)}

-"Fine. Let's go then."

You have no things to gather, no belongings to cling to. All you have are your own strength and cunning, and the sodden clothes on your back. You were given no burial pyre, no offerings to smooth your right of passage. 
Even the manner of your entrance to this place is a perversion of the rites of passage. But you decided long ago that you would do whatever was necessary.

*[Journey up the shore.]->shore

=shore
Black cliffs loom ahead. You catch a glimpse of the world tree above, stretching across an impossible expanse of nothingness. For a moment you fear the incomprehensible reality of it will drive you mad, but then the merciful fog descends once more and you are able to look away.

You walk blindly for what feels like hours. When your steps falter Nyrna ranges ahead of you to find the way, but she cannot wander far.
{AbilityCheck(Luck, 10):
You stop, waiting for Nyrna, when you notice something, washed up on the shore. A little wooden thing, barely discernible among the driftwood. Something compels you to crouch down and pick it up.
{alterItem(Lucet, 1)}
- else:
You let your eyes rest on the strand while you wait for Nyrna; at all the debris of those who died and washed up here, never rescued into the halls of Valhalla. The items they had with them were useless, discarded. Like you are.
}

#image.Nyrna
"I think I've found something." Nyrna appears in the fog, rushing back from her latest ranging.

You gather your strength and stumble after her, and suddenly the fog thins. 

A rock looms from the breach, as tall as a jotunn.

"It's up there." She says. "If you are still sure."

The top of the rock is wreathed in the fog, that is how high it is. It is slick with moisture, full of razor-sharp fissures and devoid of any apparent handholds.
- (options)
* (body) [{RequireAbility(Body, 5)} You can climb it.]
At least you think you can. You take on the climb like the giant it looks like - head on.
{AbilityCheck(Body, 10): After a gruelling fight, you defeat it. ->runestone|Your hand slips on the wet rock, and suddenly you find yourself falling. {AbilityDamage(Body, Small)}}

"Typical." Nyrna sighs, as you pick yourself up.
->options
* (mind) [{RequireAbility(Mind, 5)} There must be another way up.]
{AbilityCheck(Mind, 10): You walk around the rock, carefully studying its surface, until you find what is clearly a set of hand-holds carved into it. You climb it easily.->runestone|You find nothing but the smooth surface of the rock all around. You cry out in frustration. {AbilityDamage(Mind, Small)}}
->options
* {body && mind || GetStack(Mind)<5 && GetStack(Body) <5} [{RequireAbility(Follower, 1)} Turn to Nyrna for help.]
"I need your help." You say. #image.player

Nyrna gives you a dour look. "So early? You know I do not have endless strength to lend you. Not down here." #image.nyrna
{AbilityCheck(Follower, 1):
She does not require further convincing, however. Your folgja lends you her strength, holding you as you climb the rock, keeping you from falling and slipping. Soon, you are at the top.
}
->runestone

=runestone
At the top of the rock you find the runestone, and etched into it are words that both are and are not yours. You kneel down by it, while Nyrna nervously watches by your shoulder.
->runestone_main->
"You really did it." Nyrna says, quietly. #image.nyrna
You do not answer her. You have nothing to explain to her, and time is running out. You climb back down to the beach and look to your next destination.
~allowedLocation=Location2
->leave

=leave
->travel_main