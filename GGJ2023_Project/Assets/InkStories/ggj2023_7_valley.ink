==valley_main
You are grateful to leave the hills behind you, and gradually the land softens and the wind becomes less chill. 

Vegetation returns, and you notice small blooms of wildflowers sprouting by the roadside. The track is well-worn, as though people pass by here often, yet you are still surprised when you see a the palisade of a small village rise before you.

The walls are built high and strong, but the gate lies open in welcome, and the mouthwatering scent of cooking drifts towards you on the gentle breeze.

"Is that a village? Here of all places?" Nyrna asks, staring ahead. #image.nyrna

*[Nod.] #image.player

-"The land of the dead is full of strange wonders, is it not?" You had assumed the lands beyond Helheim would be abandoned, but it seems even here beyond death, life has found a way.

"It could be a trap." Nyrna muses. #image.nyrna

#image.player
*[You have grown more suspicious than me, Fylgja."]

"Recent events have taught me to question everything. The more innocuous a thing seems, the more capable it is of hurting you." She grumbles.#image.nyrna

*[It could be. But it is the only way forward.]

"That's not true, we could skirt around it. Stick to the woods, avoid it entirely." #image.nyrna

"An miss out on that delicious food? Let's be brave and chance it." You tell her. #image.player

Even you are surprised by your sudden good humour.

- "I sense a Runestone ahead, so we must go forward." #image.player

"I can feel them now, can't you? Like tethers holding me to the ground. You would think the burden would grow lighter, but I find it is the opposite. The fewer stones that remain, the heavier they feel."

"Even my kness ache." You laugh. "But then, maybe I'm just getting old."

Nyrna casts a silent look at your face, then turns away. If you didn't know her better you might think she was holding back tears.

"The end draws near." She says. #image.nyrna 

"Let us rest a little before continuing the journey."

Together, you walk towards the village, through the open gates, and into a ghost town. Everything lies abandoned, as though the residents were there but moments before, and for some reason fled.

"See, I told you it was a trap." Nyrna sounds almost smug about it. 

You head towards the heart of the village, and there perched on the edge of a well sits a familiar figure, eating a leg of freshly roasted boar. 

"We meet again!" He crows as make your approach, and this time his hood is down, and you can shee his face, and his wolfish smile. #image.fenrir

Some niggling memory gnaws at you, something about a wolf - THE wolf. But if you once regarded him as friend or foe you cannot say. You decide to trust recent events. If we meant you harm he could have easily done so already.

Then again, what happened to the villagers?

You share a loaded look with Nyrna, but say nothing. Nonetheless, the wolf seems to get the gist of your thoughts.

"Ah, the village folk?" He waves the boar leg through the air in a casual dismissal of your fears. "I was hungry, so I came down to investigate the smell of their cooking, but they always run away when they see me approaching."

The wolf shrugs. 

"Some people are just prejudiced, as I'm sure you know." He adds, looking you up and down with a glint in his eye.

"It's Fenrir." Nyrna hisses quitely in your ear, batting at space around your sleeve. "FENRIR." She mouths silently, as though this somehow clarifies things.

The name is famililar to you but you cannot place it, and it doesn't bring with it any sense of alarm. You notice Fenrir watching the space beside you with amusement. He can see your folgja? Interesting. Though unsurprising given his familiarity with illusion magic. //remove this if problematic

*[I was drawn here for a similar reason."] You say, gesturing to the remains of the boar over the fire pit. #image.player

-"Ah, you were? Excellent then! Let us break bread together and be merry, and don't worry, I'll bring another boar to them later and leave it outside the fence. I always pay my debts." He clarifies, though this time there is a hint of steel behind his voice, as though he is refering to some other incident, some other debt to be repaid. #image.fenrir

He hands you a slab of meat, and for the first time you notice the difficulty in his movements, as though he too is burdened by some unbearable weight.

{alterAbility(Body, 1)} The meat does you good: it feels like you haven't eaten in eons. He catches you looking at his tethers inbetween bites.

"Ah, this?" He looks at his arm. Too sharp by half this one, he interprets your every expression as though your thoughts were written on your brow.

"It is but a minor inconvenience." He assures you. The cloak slides back just enough for you to see the thin bindings that wrap around his arm, and across his chest, loops of some silken substance that bites painfully into his flesh. "I will be rid of it soon."

"In fact." He fixes you with an enquiring stare.

{wagered_laevateinn:
"You have already helped me with that." He brings out the Laevateinn; the moment you lay eyes on the cursed thing you feel worse. "This will be able to help me with all my troubles." #image.fenrir

"Now I could be greedy, like the Aesir, and demand some other boon from you instead, but I shan't." He smiles. "I suppose you seek another of your stones? Well, I know just where to find one."
->success
}
{MainInventory?Laevateinn:
"Perhaps you can be of help to me...I notice you have a certain spear in your possession, and it may prove useful in loosening these bonds - just a little mind, they bite you see, and I am tired of the pain."
- else:
"I believe you...or rather your lovely companion...might be of some help to me. I sense she's quite handy with her fingers, and I have no doubt she could help me loosen these bonds. Just a little mind, they bite you see, and I am tired of the pain."
}

You balk a bit at the suggestion. After all you don't know who bound him, or why.
*[And in return...?] #image.player

- Fenrir laughs, a joyous sound. #image.fenrir

"Oh, a man after my own heart! Well done! Yes, of course you must get something in return. Another wager if you will. Help me with my little problem, and I'll help you with yours."

*["Mine...] You begin to query. #image.player

- "Yes. Yours." He says, and gestures into the depths of the well upon which he sits. "I believe another one of those rocks is down there. It's probably too heavy for you to lift alone - even with the help of your little...friend." He adds, eyes flashing once more to Nyrna. 

"But together, with my bonds loosened? Well, we should manage just fine."

* [{RequireItem(Laevateinn)} Give him the mistletoe spear.]
->success
* [{RequireAbility(Follower, 3)} Let Nyrna help him.]
"You know not what you ask." Nyrna mumbles, as she appears before the wolf. "...no biting, Fenrir. He may not remember you, but I do." #image.nyrna
{alterAbility(Follower, -3)}
->success

=success
As the bonds fall off, the wolf suddenly leaps out and snaps at you! You only just manage to avoid his jaw. As he draws back, you realize the bonds are not simply loosened, but entirely off. He is free. #image.none

"Sorry, it's just my nature. I am the wolf, the eater of worlds. Maybe I could have been something else once, something gentler, something truer. But they took that fate from me, and this is what remains." #image.fenrir

"Thank you for the favour, friend. Now, let us retrieve this runestone of yours. Let none say I am not a wolf of my word."

Together, you lift the runestone from the well. How it got there is another question, but it does not seem to have been there for long. #image.none

"Now, I believe it is time I find my father." The wolf says. "We are past due a reunion."

Nyrna shudders. #image.nyrna

"The way out is through those cliffs over there, follow the path and you will come to a great forest. Go towards it, and you will find the way. I hope you find what you are looking for, friend." #image.fenrir

->runestone

=runestone
You have eyes and ears for nothing but the runestone, and your coming oblivion. Water drips off it as you read.
->runestone_main->
Not much left now, of you. Of the world. Of time.
~allowedLocation=Location8
->leave

=leave
->travel_main