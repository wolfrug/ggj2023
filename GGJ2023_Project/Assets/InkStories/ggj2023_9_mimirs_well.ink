==mimirs_well_main
You find yourself moving quickly now that the end is within sight, your steps carrying you forward over the boulders rich with moss, up the rootbound path, towards the Well. 
The end of all things.

You find the first runestone at the foot of the path. You wipe it from dew; you already know what is on it. Nyrna does not try to stop you.

->runestone_main->

You carry on, following the path.

You hear it first, water dripping from above in a gentle cascade. The song of the birds in the trees, a breath of wind stirring the fitful leaves. And it is almost as if you have been here before, as if it is a place more familiar to you than any hearth you have rested beside, or any home you have lived in.

The second runestone rests against a tree, as if the tree itself grew around it. You touch it, gently, knowing this is the end.

->runestone_main->

There is a being next to you, made of light, whose name you cannot recall right now. She looks at you sadly, but you know she is your friend. You did many things together. #image.nyrna

"This way, friend." She says, smiling. You follow her numbly.

The Well of Mimir rises before you, springing forth from the bowl of the ancient taproot that tethers the world tree, the edges of the water decorated with a spray of lily pads, the petals of their flowers bright offerings beneath the subterranean twilight of the forest canopy.

"I suppose it's too late to ask you to turn aside just one last time?" The being asks asks, her eyes fixed upon the water. You can barely see her now, she is just a pale shadow at your side, growing fainter with every passing minute. #image.nyrna

"There was only ever one outcome to this journey." You tell her, voice gentle with regret. "But I was glad." #image.player

"I was glad to have you as my friend, my follower, my most annoying companion." You say these things even as your memory of what she was to you, what you yourself were, slips away.

She laughs at you, wiping stray tears from the spectre of her cheek. #image.nyrna

"I don't want to say goodbye. There's still so much left to say..."

You wish you could hold her hand, could thank her for everything she has done for you - that you know she has done for you. Somehow. You know, instinctively, that without her you would have been nothing. She has made your life so much worthier just through the virtue of her presence.

But the words will not come, and then it is too late. 

*[She is gone.] #image.none
~mimirs_points+=GetStack(Follower)
{alterAbility(Follower, -GetStack(Follower))}

-You stand before the spring, truly alone for the first time in your life.

IS THIS WHAT YOU WANTED?  #image.mimir

The voice comes from the Well, and it is the sound of all things, a creaking, trickling, grinding sound squeezed into word-like shapes. The hair on your arms stand on end, and you feel a thin trickle of sweat snake its way down your spine.

*["Mimir?"] #image.player

-IS THERE ANOTHER WHO DWELLS HERE? #image.mimir

#image.player
The voice is neither kind nor cruel, rather it is empty, it is nothing, it is the unflinching eye of eternity levelled upon your unworthy spirit and you are...

Ready.

Yes, you are ready for this.

COME THEN. TAKE WHAT YOU SEEK. #image.mimir

You stand at the water’s edge and meet the gaze of your own reflection. You know it is your face, but you no longer recognise the shape of it. Even this has been taken from you.

The edges of your memories are so tattered now that little of substance remains. But the core is still there, hard and bright, the Stone in the centre of your heart.

BREAK IT. Mimir tells you. #image.mimir

And so you do.

And everything disappears.

*[Venture forth into memory.] #image.none 
->memoryofbaldr

=memoryofbaldr
<i>Baldr waits for you on the hilltop, as always, beneath the branches of the great old ash. The sun is setting, and the last of light catches in the burnished tangles of his hair.

When you see him here, at times like this, it's hard to remember how to breathe. No matter that he isn't yours, that he never will be. There are many kinds of love, and for you, this is enough. It always has been.

Usually he is smiling, but not today.

"You saw it?" He asks, while you're still lowering yourself to the ground. "He's gone too far this time."

You've never heard him this angry, and it frightens you. Both his anger on your behalf, and the fact that you feel nothing.</i>

*[I saw it.] <i>You say quietly.</i>

-<i>"We have to stop him." Baldr springs up and starts pacing back and forth, too full of energy to remain seated. "If he has his way he will drag all nine realms to the brink of war, and for what? Fate? Glory? I won't allow it."

"Your father is too powerful. There's no way to stop him, even for you, Baldr. He knows all, sees all. The headless one and the volvas whisper to him in his dreams. He will see us coming from leagues away."

"That's not true." Baldr says, growing still. "There is a way..."</i>

*[Listen]

-<i>It is then that he tells you of his dreams, of all the things he has been keeping from you, of a plan to defy the gods, and fate itself, and unwrite what has been written for you.

"I won't let him use you." He says, pressing a hand to your cheek as his eyes search your face.

It's at times like this that you wonder if he knows the true depths of your feelings. 

It's at times like this that you wonder if he feels the same way.

And so together you hatch a plan to bring about the end of the world, and in so doing save it, and everything within it that you hold dear. 

There is so much that could go wrong, so many moving threads. But there is a chance you could succeed, if you do it together.

"Hel is the key, And Loki! Your brother will help us, won't he?" Baldr asks, full of hope for some vision of the future that only he can see.

"Yes, of course he will. He'll do whatever I ask."

"Then it'll start with him." Baldr says, laughing, and you laugh with him. How could you not?

You did not know how it would turn out then. You did not know the lengths Odin would go to to save his own skin. 

You didn't know anything.</i>

*[END MEMORY]

-You emerge gasping from the spring, gulping great lungfuls of air as you remember how to breathe again.

HAD ENOUGH? Mimr asks, his voice grating like sandstone against your ears. #image.mimir

YOU WERE BOTH SO YOUNG, AND SO FOOLISH.

*["At least we tried!"] #image.player

-"At least we did <i>something</i>."

OH, BUT IF THAT WERE TRUE YOU WOULD NOT BE HERE. THIS PLACE IS NOTHINGNESS. THIS PLACE IS ENDINGS. #image.mimir

*["All the more reason for you to help me in that case."] #image.player

It takes a long time for you to recover from the peals of Mimir's laughter ringing in your ears.

GIVE ME THAT WHICH IS MOST PRECIOUS TO YOU AND I WILL CONSIDER IT OATH-LESS ONE.#image.mimir

YOU HAVE COME SO FAR AND GIVEN UP SO MUCH. IT IS TIME TO SEE THIS THROUGH TO THE END.
- (options)
* {CHOICE_COUNT() < 3 && MainInventory?Bracteate} [{RequireItem(Bracteate)}"I won this in a wager with a wolf."]
~mimirs_points += 5
{alterItem(Bracteate, -1)}
The Bracteate reminds you of Sleipnir. You wish you had him to ride now.
->options
* {CHOICE_COUNT() < 3 && MainInventory?Feather} [{RequireItem(Feather)}"My prize from wrestling a giantess."]
~mimirs_points += 5
{alterItem(Feather, -1)}
You feel heavier the moment the feather leaves your hand.
->options
* {CHOICE_COUNT() < 3 && MainInventory?Mead} [{RequireItem(Mead)}"A gift from an unseen friend."]
~mimirs_points += 2*Mead_stack
{alterItem(Mead, -Mead_stack)}
You think you know who it was who gave you the mead. She would always have some, in Breidablik.
->options
* {CHOICE_COUNT() < 3 && MainInventory?Lucet} [{RequireItem(Lucet)}"A childhood thing of my niece."]
~mimirs_points += 5
{alterItem(Lucet, -1)}
You are not sure why you did not give this to Hel when you had the chance. Was this truly what you intended?
->options
* {CHOICE_COUNT() < 3 && MainInventory?Vial} [{RequireItem(Vial)}"Gathered by a faithful wife."]
~mimirs_points += 5
{alterItem(Vial, -1)}
You do not know why Mimir laughs when you drop the vial into the well.
->options
* {CHOICE_COUNT() < 3 && MainInventory?Laevateinn} [{RequireItem(Laevateinn)}"A cursed gift."]
~mimirs_points += 5
{alterItem(Bracteate, -1)}
You know what this spear did, even if it did so unknowingly.
->options
* {CHOICE_COUNT() < 3 && MainInventory?Draupnir} [{RequireItem(Draupnir)}"The gift of kindness."]
~mimirs_points += 5
{alterItem(Draupnir, -1)}
This one hurts you the most. You do not give it up willingly, even now.
->options
* {CHOICE_COUNT() < 3 && GetStack(Luck)>0} ["I give you my hamingjar."]
~mimirs_points += GetStack(Luck)
{alterAbility(Luck, -GetStack(Luck))}
What good luck you have left in the world is now lost to you.
->options
* {CHOICE_COUNT() < 3 && GetStack(Mind)>0} ["I give you my hugr."]
~mimirs_points += GetStack(Mind)
{alterAbility(Mind, -GetStack(Mind))}
You feel a heaviness descend over you. Yet you push on.
->options
* {CHOICE_COUNT() < 3 && GetStack(Body)>0} ["I give you my hamr."]
~mimirs_points += GetStack(Body)
{alterAbility(Body, -GetStack(Body))}
You feel cold and weak. Anywhere else, this would kill you. There is not much left now.
->options
* {CHOICE_COUNT() < 1} [That is all you have. There is nothing more.]
->endingsintro



=endingsintro
It was never meant to be like this. You planned it all so carefully, but then Odin had Baldr killed, and everything fell apart. When you failed to come to heel, you were blamed and your family torn apart - beaten, brutalised, shamed and imprisoned in the farthest corners of the nine realms.

There is so much you have forgotten. But this last part of you remains true, a bright flame burning in the embers of your heart.

* {mimirs_points<15} [Did you truly have so little to show for your journey?]
->badending
* {mimirs_points>=35} [It takes you a while to empty everything into the well.]
->goodending
* {CHOICE_COUNT()<1} [You give what you have, and hope it is enough.]
->midending

=badending
You offer up everything you have to the Well, but still you are found wanting.

THIS IS IT? #image.mimir 

THIS IS ALL YOU HAVE TO OFFER?

You watch in horror as the last vestiges of your self disappear into the well, swallowed by the dark water until not even a ripple remains.

"Who am I...what...is this." You scramble backwards in terror, fall, and fit your head upon a rock hidden in the roots. Somewhere in the distance a murder of crows takes flight.

From the well, Mimir watches.

And somewhere further, through eyes not his own, the All-Father watches too, and smiles.

"You thought I couldn’t see? You thought I wouldn’t know what you were up to." He says, using the head of Mimir as a mouthpiece. #image.mimir

"Sleep, Byleistr. Sleep, and forget all your troubles... That is, until we meet again." He says, and dismisses the spell with a wave of his fingertips.

The world tilts, and shifts, and somewhere in the distance there is the sound of waves breaking against a rocky shoreline.

*[Wake up, Oath-breaker.] #reset
->END

=midending
You cannot get back what you have lost. And you are too weak and weary to offer up much of value. It took everything you had just to make the journey here.

But you can still take something from the All-father.

The one thing he truly cares about. 

The one place in which he is vulnerable.

Mimir.

Without the well, he will be cut off from the root of all his knowledge, unable to see what lies ahead. It is a small wound, the barest prick in the all-fathers side. But if you are lucky, maybe it will be enough. All you need is a chance.

You offer your self - or what little remains of it unto the Well. And still for a moment you fear that Mimir will turn you away. 

YOU WOULD SET ME FREE AND TAKE MY PLACE? #image.mimir

For a moment, even Mimir seems lost for words.

I HAD NEVER CONSIDERED SUCH AN OUTCOME. ONLY A FOOL WOULD CHOOSE THIS FATE. BUT YES. YES, I WILL ACCEPT. 

#image.none

He does not wait for you to change your mind, there is no pause, no reckoning, no chance for you to say goodbye to all that you are and all that you have been.

One minute you are Byleistr, brother of Loki, breaker of bonds, beloved of Baldr. The next you are nothingness, and oneness. You are the roots and you are the sky, and you are the branches swaying beneath the burning stars that stretch into infinity. You are everywhere and everything and you see ALL. And there is so very much to see.

And you see all that you once were, all that you have been, and all that you have thrown away.

If you were still a man, you would weep.

But it’s all so far away now, all so small and inconsequential.

In his high seat, the One-eyed man raises his gaze upwards and looks into the night sky, and calls out for an answer to his burning questions.

You do not answer.

You do not hate him now, hate is the smallest of emotions. But you will not help him either.

And so he sits, small, sightless, stumbling. Just a man, just a god, just another speck of dust on the long road to eternity.

Instead you look to the stars, to the future, towards things of which no living mind can possibly conceive.

And in your heart a small fire still burns, as you begin this, the next leg of your journey.
+ [The end] #reset
->END

=goodending
You offer up everything you have to the well. All the precious artefacts you have collected along the way. Every feeling. Every memory. Every heartbeat. Until there is nothing left.

And it is such a relief. 

To let go. 

To end. 

To cease to be.

You had not realised how hard it was to live, to breathe, to choose existence with each and every waking moment.

Your body jerks, nerves firing, one last attempt to cling to life, and then you fall into the water, and sink into the bottomless deep.

And somewhere a brother’s chains break, and an oath is shattered, and the bonds of the eater-of-worlds fall free as he howls in savage joy at the sky. And far away in his high-chair, looking down at the world, Odin the All-Father rises to his feet in horror and whispers, “No.”.

The price was steeper than you could have ever imagined, but in the end you made sure Baldr’s vision came to pass.

“It’s the only way to stop him.” Baldr tells you, full of a sweet sadness as you make your plans upon that hilltop so long ago. “It’s the only way to set everyone free from his tyranny. Don’t you see?”

And you do. You see everything. 

*[The world ends.]

-And then, out of ashes emerges a tiny seed. It grows, and unfurls, and flowers until it towers over the hillside as the mightiest of trees.

Life finds a way.

Life always finds a way.

*[Dream]

-Some time later, perhaps in the reckoning of hundreds of years a man stands upon a green hillside, and looks down at the land below. The sun is setting, light reflecting across the river that wends its gentle way through the fields. 

The man has no name. No memory of how he came to be here. He is a blank slate, a new mind, as pristine as the landscape before him. He does not question these things, they simply are, as they have always been.

There is another there, lying beneath the great tree that overlooks the valley, his long legs stretched out before him, the burnished tangles of his fair catching the last of the fading light.

They have never met, the man knows that much. But when the other man looks up at his approach there is a familiarity in his wide smile, a sense of coming home again.

"Hello." The other man says.

And it is a beginning. 

It is the beginning of everything.
+ [The end] #reset
->END
