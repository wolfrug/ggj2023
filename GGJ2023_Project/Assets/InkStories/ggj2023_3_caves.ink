==caves_main
The passageway down is smooth, a perfect circle of darkness descending into the earth, the walls scraped clean as though by the passage of some great serpent.

Nyrna stand at the breach and lifts her hand high, her palm cupped around a small flame.

"Ready when you are Oath-breaker." She says. #image.nyrna

The illumination from her small flame scatters light across the walls, reflecting in the facets of black rock embedded there like shards of ancient glass. #image.none

*[...]

-Soon the one passage branches, then branches again. It would be easy for one to lose their way down here. A moments inattention, one thoughtless step, and you could find yourself trapped in an endless spiral of passageways with no hope of any succour.

You are not faint hearted, but you find yourself very aware of the sound of your breathing in the darkness, and the steady thrum of your own heart, so loud to your own ears that for a moment you wonder if perhaps there is another walking in the shadows alongside you.

You cast your gaze back over your shoulder, and light scatters across the cave walls in a dizzying cascade.

Is that movement you glimpse? A looming shadow? Are those footsteps trailing off into the distance?

* [Steel your mind - the Underworld is full of illusions and dark magic.]
{alterAbility(Mind, 1)}
* [Prepare yourself to fight: Skadi's snakes were known to make these caves their home.]
{alterAbility(Body, 1)}

- "Byleistr."#image.nyrna

The sound of your name brings you to your senses. How long has it been since she last called you that? How many times are you likely to hear it spoken again.

*["I'm here."] You find yourself saying. #image.player

- What you mean to say is that you are fine. That you haven't gone mad. That you aren't a child, afraid of the dark. But what use are such words between old friends. She knows all that already.
{Follower_stack>=9:
And so far, you have proven you can hold your own.
{alterAbility(Luck, 1)}
}
"This way." She says, and offers up a reassuring smile. #image.nyrna

*[...] #image.none

-After what feels like aeons, the cave opens up, and you find yourself in a vast underground cavern. Stalactite's hang suspended from the ceiling, vast draperies of wax-like stone dripping downwards to merge with the great stone columns that line the cave floor, like the pillars of some ancient hall. 

You see many more cave entrances lining the cavern walls, like a gallery of open mouths, waiting to be fed.

As your eyes adjust you notices the mushrooms blooming across moist patches of stone, their pale caps glowing faintly in the darkness.

"Someone has plucked these recently." Nyrna observes, pointing at some disturbance in the fungal growth. "Sigyn, perhaps?" #image.nyrna

By all accounts your brother is tightly bound, confined to a cave somewhere within this vast maze.

You could pass him by.

Perhaps you should. After all, no good can come of your meeting one another again after all this time. 

And yet you find yourself unable to move forward.

Sigyn will know where he is, and so Sigyn you must find.

It’s your last chance to see him. Your last chance to say goodbye.

*[...]

-You follow the signs, and it doesn't take long to come across her abode. The cave where she has made her home is small and damp. Scraps of mouldering cloth line the corner in a makeshift bed, and she has made a small fire-pit in the centre of the cave - though you can't for the life of you imagine what fuel she could find to light it down here.

As you poke experimentally through the coals, she comes up behind you, silent as a spirit. The first warning you have of her arrival is the sensation of cold steel pressed against the soft hollow of your throat.

Even Nyrna looks surprised.

*["You're still fond of knives I see."] You say, careful not to make any sudden movements. #image.player

-"And I see you're still fond of entering peoples homes without invitation, brother-in-law." #image.sigyn

It takes her an awfully long time to remove the knife from your throat, and when you turn to face her she regards you with the air of a wary animal - just as likely to bite you as befriend you.

Her face is shrouded under a hood, but you can see that her stay in these caves has left its mark on her. She has become gaunt and pale, and the her eyes glow with an unnatural light like two pale moons.

//probably need to work in some dialogue choices somewhere around here to make this a bit more engaging. Many many words. Much waffling

Sensing your scrutiny, she averts her gaze, and bends down to busy herself at the fireplace, pushing the coals back and forth with no clear purpose.

"Why did you come here after all this time?" She asks, sullen, accusing, hopeful. #image.sigyn

#image.none
You feel the taste of bitter shame rise in your throat. You were so concerned with your own troubles that you never considered what it must be like for her. 

Not that you were aware of the fullness of Loki's punishment, Grimnir was always careful to keep the truth hidden. But you'd known something was wrong.

Your family picked off one by one. Cast aside. Banished. Slaughtered. And you didn't even notice.

You could say all these things to her. You never really liked Sigyn, but for better or worse she is family, and you owe her at least that much. 

But instead you make a noncommittal grunt and look away.

Off to one side you hear Nyrna make a quiet sound of contempt. You can hardly blame her.

To think, once you were called brave, and songs of your exploits were sung in the halls of Vallalla by heroes of every Age.

"I suppose that <i>woman</i> told you I was down here." She says eventually, misinterpreting your silence, or perhaps just seeking to fill it. #image.sigyn

#image.player
She can't have many people to converse with down here. But then again, your brother did always enjoy the sound of his own voice. Loki silver-tongue, sharp of wit and sharp of word, bound by blood to Odin himself.

How far you've all come from those glorious days.

You wonder. Does he still talk so freely? Can he talk at all? Or did they cut out his tongue as part of his punishment. You wouldn't put it past them, The Aesir always excel at cruelty.

Baldr was the one exception. //le gasp, we speak his name. Or think it, whatever.

*["Angr–."] You start to speak her name, then think better of it. #image.player
"No, she did not mention you."

Sigyn scoffed, hitting the coals as if they were the heads of Loki's many bastard children.

**["I'm sorry it took so long for me to come here."]

Too little too late. You are always too late to make a difference.

She treats your words with the contempt they deserve, and instead gestures towards the end of the cave with the tip of her knife.

**["Where is he?"]

She glares at you, a flash of baleful moonlight, then shrugs and gestures towards the end of the cave with the tip of her knife. 

-"That way." She says, hunching her shoulders. #image.sigyn

You open your mouth to say something, <i>anything</i> more, but Nyrna steps towards you with a firm shake of her head. 

*[Go to Loki's cave.]->lokis_cave

=lokis_cave

LOKI WUZ HERE.

+ [Leave]
->leave

=runestone
You go to the runestone.
->runestone_main->
Cool.
->leave

=leave
Time to go.
->travel_main