==runestone_field_main
The ferryman leaves you on a desolate strip of beach, and you struggle up the slope and find that the hills beyond are strewn with iron-grey stones, rising from the ground like the shattered teeth of giants.

The wind is cold and biting, tugging at your cloak as you struggle up the barren pathway. {GetStack(Body)<3: It may be biting, but it is no longer the city of the Dead itself. You steel yourself against the wind, feeling more alive already. {alterAbility(Body, 1)}}

It takes you a while to realise they are all Runestones, or they were, once. You pause to read what runes remains, but the shapes have long since been obliterated by erosion and moss.

What stories lie upon this grave-land? Where they men like you, seeking penance, or justice? Or was this some sort of punishment, the aftermath of a great reckoning lost to history.

You find your stone at the top of the highest hill, though it is hunched and battered, as if it too has been weathered by great aeons of time. Suddenly the stone shifts, and rises up, reforming into the semblance of a man.

#image.player
*[You stand still, refusing to show your surprise.]
{alterAbility(Mind, 1)}
*[You ready yourself for a confrontation.]
{alterAbility(Body, 1)}

-"What manner of beast goes there?" You ask.

#image.none
"Beast?" The voice that comes from beneath the hood of the stone-cloak is low and full of lilting good humour. "What an interesting choice of words..." #image.fenrir_cloaked

"Forgive me if I startled you, stranger. The cloak tends to take on the aspect of its surroundings. I've found it to be useful for survival, but it can be alarming it you aren't used to it." 

You can't see his face under there, but you can hear the smile in his words. You relax a little. 

The question now is where is the Runestone. You're sure you felt its presence here, but the rock the stranger was sitting on it nothing but a shard.

"Looking for something?" The stranger asks. Cloak swirling around him as he moves to one side, the hood pointed in the same direction at your eyes.

#image.player
*[There should be a Runestone here somewhere. Have you seen it by chance?"]

- 

"He searches for a rock! In a field of rocks!" The stranger laughs, a rough sound compared to the silver of his speaking voice, almost a growl. #image.fenrir_cloaked

*[Do you mock me, sir?] #image.player

- "Mock you? Oh no! I would never. Let us just say that I enjoy the futility of your plight." He pauses to consider you. #image.fenrir_cloaked 

"I tell you what, perhaps I can be of help. This place–" He encapsulates the field with a sweeping gesture. "–is not what it seems. It is littered with old magic, rife with illusions, and I just so happen to be an expert in that area."

"Make a small wager with me, and I will assist you in your search. I'll even throw in a little something to sweeten the pot, and amulet for the weak and the weary. I have no use for it, but you look like you've seen better days."

"What do you say." He leans towards you, the empty cowl of the hood titled in anticipation.

*["You remind me of...someone."] #image.player

-You start to say their name, it is there on the very tip of your tongue. But whoever it is, or was, you can't for the life of you recall them. They were a mischief maker too, always a maker of wagers, a teller of tales. You feel a hollowness inside your chest, and press a hand to it in sudden pain. 

You are beginning to lose yourself.

The stranger regards you enigmatically. "Someone nice I hope." #image.fenrir_cloaked

//Etc, start a wager, he helps you uncover the location of the Runestone. WHAM BAM.

* ["Very well. What do we wager?"] #image.player
->wager
* [{RequireAbility(Follower, 8)} "No. I can find it myself."] #image.player
->nyrna

=nyrna
You look towards Nyrna, who gives you a long-suffering look, before ranging out.

The stranger shrugs. "You will find that this place is vast, and likes to hide its secrets. I should like to stay here and see how you do, though."

{AbilityCheck(Follower, 2):
After a while, Nyrna comes back, looking frustrated.

"Nothing, yet. I will try again." #image.nyrna
}
{AbilityCheck(Follower, 2):
Again and again you see her, moving from runestone to runestone. You try to help, but the field is too vast, and you can get no sense of what's where. #image.none
Your cloaked companion, in the meantime, makes small-talk. As if he cannot be quiet for a single moment.
}
{AbilityCheck(Follower, 2):
Finally, she reappears with good news. She asks you to follow her. As you do, the cloaked stranger hurries ahead. By the time you arrive at the runestone, he is already there, leaning against it.

"Told you I'd be able to help." #image.fenrir_cloaked

You brush past him, annoyed. #image.player
->runestone
}

=wager
He looks at you from under his cloak, and then produces a slender little amulet with an engraving of Sleipnir on it.

"I have this shiny little bauble, and...of course...the knowledge in my head." #image.fenrir_cloaked
~temp wageredItem = ()
"You should reciprocate with a shiny bauble of your own, I think. Unless you have something more valuable?"

* [{RequireItem(Draupnir)} You reluctantly fish out the ring.]
~wageredItem = Draupnir
* [{RequireItem(Vial)} Somehow you feel this vial is important to him.]
~wageredItem = Vial
* [{RequireItem(Feather)} Perhaps a feather from the cloak of Freyja.]
~wageredItem = Feather
* [{RequireItem(Mead)} A swig of the Mead of Poetry, perhaps?]
~wageredItem = Mead
* [{RequireItem(Laevateinn)} This cursed stick.]
~wageredItem = Laevateinn
* [{RequireItem(Lucet)} A lucet belonging to Hel.]
~wageredItem = Lucet

- You show him {DisplayName(wageredItem)}. He looks impressed.

"I accept." He says. I sense a smile. "...and for the game itself?"

* [{RequireAbility(Body, 5)} A game of toga-honk.]
The game of tug-of-war is one everyone plays, from children to adults. You each pull at one end of a knotted rope, and whoever pulls the other over the line first wins.
{AbilityCheck(Body, GetStack(Body)): You are equally matched, but you sense certain movements are constricting your mysterious opponent more than others. You use this to your advantage, and soon the field is yours.->success|You are equally matched; but he has tricks up his sleeve you never saw on the fields of Asgard. One such finally pulls you over the line.->fail(wageredItem)}
* [{RequireAbility(Mind, 5)} A game of Hnefatafl.]
The ancient board game, with the king encircled and in need of succor. Winning requires foresight and insight in equal amounts.
{AbilityCheck(Mind, GetStack(Mind)):  He is a cunning opponent, but clearly it was some time since last he played. You corner his king, and win.->success|He is a cunning opponent, his strategies catching you unaware. It does not take long for his king to sneak away.->fail(wageredItem)}
* [A simple game of luck. A toss of the coin.]
One would think the toss of a coin gives each side equal chances, but that is a fool's notion of luck. One's luck, hamingjar, is a resource, a force. The question is how well you have maintained yours.
{AbilityCheck(Luck, 10): The coin glitters in the air as it spins. You feel the threads of luck touch it. It lands in your favour.->success|The coin glitters in the air as it spins, but the way it lands is a foregone conclusion. Not in your favour.->fail(wageredItem)}

=success
The stranger does not seem perturbed at all by his loss. He takes it in his stride.

"Your prize." He says, handing you the {DisplayName(Bracteate)}. "Now follow me." #image.fenrir_cloaked
{alterItem(Bracteate, 1)}
He leads you through the field, unerringly, as if he had been expecting you and knew exactly where it was. But he does lead you to it.
->runestone
=fail(wageredItem)
"Alas." He says. "It seems luck did not smile upon you today." #image.fenrir_cloaked
{AbilityDamage(Luck, Small)}
{wageredItem:
- Draupnir:
You give him Draupnir, hoping against hope it would multiply. It does not. You do not want to part with it.
- Laevateinn:
As you hand him the wand, he can barely contain his excitement. You, however, feel only relief once it is out of your hands.
~wagered_laevateinn = true
- Vial:
He takes the Vial, but with a measure of hesitation. As if he wished to tell you something. But in the end he accepts it - carefully, like one would a holy object.
- Mead:
You mean to give him only a swig of the Mead, but he takes the whole thing. Of course.
~Mead_stack = 0
- Feather:
The moment the feather leaves your possession, you feel heavier. He look delighted; then he sniffs it, as if it might have some memory of a scent of its previous owner.
- Lucet:
You give him the lucet, wondering why you never returned it to your niece. Was it just to lose it in a wager? Your opponent seems pleased with it, however.
}
{alterItem(wageredItem, -1)}

He looks at it, then sighs. "None shall call me unfair, however. This is far more valuable a thing than the bauble I was wagering, so I will give you what you seek. Follow me." #image.fenrir_cloaked

You raise your eyebrows in surprise, but hurry after him as he heads in between the runestones.

Soon, even you can sense it.
->runestone

=runestone
It stands among its many cousins, weathered and battered but still legible. It pulls you towards it.
->runestone_main->
When you walk away, the stranger is gone as well.

"Where to?" Nyrna asks, hovering desolately near you. #image.nyrna

"We follow the shape of the land. That way. Down into the valley." #image.player 
~allowedLocation=Location7
->leave

=leave
->travel_main