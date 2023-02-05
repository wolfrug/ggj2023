==forest_main

Like the wolf said, as you follow the cliffs the way soon becomes clear. Your feet are heavy, your heart weary, and your hand aches where it was nipped by Fenrir's teeth, though the bite was barely hard enough to break the skin.

"Will you be okay?" #image.nyrna
 
Nyrna hovers over you like a worried mother hen. She too must be weary by now, {GetStack(Follower)<6: and if you pay attention you can see that the edges of her <i>sending</i> have grown thin and tattered, as though she is having more difficulty holding the illusion in place| although you can see no discernible difference in her <i>sending</i>, despite everything}.

#image.player
*[It'll all be over soon enough.]

You have no reassurance left to give.

*[Don't worry.]

You try to offer her a reassuring smile.

- A great opening appears in the cliffs ahead of you, stone-walls peeling back to reveal an ancient forest beyond. You walk under the great and silent trees, light drifting down from above. Everything is still and quiet, but when you look up you are greeted by the black stares of a hundred ravens. 

As soon as you see them they scream and scatter into the air, and it is then that you see the shapes left behind, the bodies spread-eagled and suspended from the branches, bound by long ropey vines that disappearing into the dark foliage above.

You know somehow that they are not dead, merely trapped somewhere between waking and dreaming, tethered somewhere between life and death.

"Those who sought forbidden knowledge are condemned to remain here, trapped forever in lightless dreaming . It is the Norns punishment for those who would defy them." Nyrna whispers. #image.nyrna

"So one day soon it could be you and I hanging from those boughs." You muse softly. #image.player

"More than likely. Yes. Does that frighten you Oath-breaker?" #image.nyrna

#image.player
*[Strangely, you find that it does not]
"There are greater things to fear than dreams." You tell her.
{alterAbility(Body, 1)}
It would be nice to rest a while in such a place.

*[You've come too far to end up in such a place.]
{alterAbility(Mind, 1)}
"Frighten? No, not that. But my path lies elsewhere."

- "Come, let us not tarry here."

The pull of the runestone grows stronger still, and you find it beneath the boughs of a great old tree, nestled within the bowl of its ancient roots. #image.none

You half-expect some monster to appear from the trees, some final challenge to stop you from the runestone.

{GetStack(Follower)>5:
->nyrnaEncounter
- else:
->runestone
}

=nyrnaEncounter
But as you step towards the stone, something <i>does</i> stop you. An invisible presence, all too familiar to you: Nyrna.

She stands between you and the stone, her presence like an impenetrable wall. #image.nyrna

"I can't let you do this. You have to stop." She says. "Do you even remember why any longer?" #image.player

- (sisyphus)
{GetStack(Follower)<3: ->finishNyrna}
* {CHOICE_COUNT() < 3} ["He was my responsibility. I was the eldest. I should have stopped him."] 
{alterAbility(Follower, -1)}
Nyrna groans in anger. "Loki was always going to be Loki. It was not your fault. He made his own decisions." #image.nyrna
->sisyphus
* {CHOICE_COUNT() < 3} ["It was unjust. I seek justice. For my family. For myself."]
{alterAbility(Follower, -1)}
Nyrna sighs. "Of course it was unjust. The Aesir are unjust, because the world is unjust. We are all merely reflections of the place we are from." #image.nyrna
->sisyphus
* {CHOICE_COUNT() < 3} ["I wish to change my destiny."]
{alterAbility(Follower, -1)}
Nyrna scoffs. "Your only destiny will be to be forgotten, completely. Is that the change you desire?"
->sisyphus
* {CHOICE_COUNT() < 3} ["I am doing it for my forgotten brother."]
{alterAbility(Follower, -1)}
Nyrna frowns. "Helblindi? But how? No-one even remembers him. No-one understands why he did what he did."
->sisyphus
* {CHOICE_COUNT() < 3} ["I started it. Now I must finish it."]
{alterAbility(Follower, -1)}
"You are a fool. An utter and complete fool. It is not too late yet." Nyrna looks at you, pleading.
->sisyphus
* {CHOICE_COUNT() < 3} ["My legacy is worth nothing, this is better."]
{alterAbility(Follower, -1)}
"You cannot know that. Everything else <i>will</i> be lost: belongings, life, riches. But not this. Not the memory of you." Nyrna shakes her head.
->sisyphus
* {CHOICE_COUNT() < 3} ["I have a plan. We have a plan. I know we do."]
{alterAbility(Follower, -1)}
"What in the nine realms are you talking about?" Nyrna cries out. "You can barely remember your own name, Byleistr."
->sisyphus
* {CHOICE_COUNT() < 3} ["I loved him."]
{alterAbility(Follower, -1)}
"And what do you think I do? Is <i>my</i> love worth nothing?" Nyrna cries out. You say nothing, because there is nothing you can say.
->sisyphus


=finishNyrna

* [There is nothing left to say.]

She collapses, completely spent. You wish you could help her up, you wish she would have succeeded. But even she can not stop this. #image.none

"I am sorry. I truly am." You say. #image.player

She does nothing to stop you as you go to the runestone.
->runestone

=runestone
->runestone_main->
"Do you know which way to go?" She asks, and you nod. You can feel its pull, and somehow  you <i>know</i> it will be by the well.#image.nyrna
~allowedLocation=Location9
->leave

=leave
->travel_main