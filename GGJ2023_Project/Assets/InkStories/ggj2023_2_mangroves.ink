==mangroves_main
You venture further into the roots, and slowly a new landscape emerges. The mist disippates, giving way to a sweltering heat. 

The living roots of the tree have nested and burrowed here, spearing into the loamy soil where eddies of slow moving water flow and waver to form a sort of forest, green foliage and moss dripping from the canopy above.

*["Where are we?"] #image.player

-Your companion does not deign to answer, instead watching with fascination as an emerald green frog leaps across the sprawl of roots and splashes into a nearby stream.

Before long you are knee deep in brackish water, small biting things gnawing at you from above and below. 

You slap something on your neck, and wipe the sweat from your brow.

Somewhere in the distance, a wolf howls.

*[...]

//could get lost in the swamp. Three approaches to the hut of the witch.
-For some reason the sound chills you to the core. This does not seem like a place for wolves - or at least, no kind of wolf you'd like to meet.

Nyrna looks up, her back suddenly straight as an arrow, all her attention fixed on some point far ahead.

*["What is it? Do you sense something?"] 

"Shhh." She admonishes you in a whisper, and creeps ahead, the fringe of her headress swaying to and fro.

You freeze, motionless as the sounds of the swamp suddenly fall silent around you.

You see their eyes first, glowing with eye-shine in the shadows, and then a circle of grubby faces emerges from the greenery.

When the children see you, their smiles are the smiles of wolves.

-One steps forward, a little younger and a little wilder looking than the others, and there's something strangely familiar about his face. Those bright eyes, that wicked grin. Your brother looked like that when he was a small child.

Before you can react, he slides the fingers of his grubby hand into your palm, and starts tugging you toward the space where Nyrna vanished.

*[Follow.]

-Really, what choice do you have?

The wolf-children lead you through the tree-roots, their passage eerily silent as everything within the swamp falls quiet in their wake. They wear human skins now, their <i>hamr</i> that of normal men, but there is no mistaking what they truly are beneath.

At last you emerge in a clearing. A small wattle hut rests on a rounded hill above the swamp, smoke rising from the hole in the roof.

If Nyrna came this way, you cannot see her. Instead a woman waits beside the door.

"What have you found, my strays?" She asks them, her voice rich with music. #image.angrboda

It's been a long time since you last heard the language of your forefathers. You wonder if it could be...

*["Just a traveller, seeking the way forward."] #image.player
{alterAbility(Mind, 1)}
*["No-one you need fear, I mean no harm."] #image.player
{alterAbility(Body, 1)}
*[{RequireAbility(Luck, 5)} "Someone you know."] #image.player
{AbilityCheck(Luck, 10): You answer in the jotunn tongue, and as you do you realize she <i>does</i> know you. And you know her.{alterAbility(Luck, 2)}|Although you answer confidently in the language of the jotunn, she does not seem impressed. Suddenly you are unsure yourself.{AbilityDamage(Luck, Medium)}}

- If you thought that would endear you to her, you are strongly mistaken. If these children are wolves, then she is their mother.

Her smile is not one of welcome. But still she steps aside to reveal the dark entrance to the hut.

"Come in, then, and seek what you will." She offers. #image.angrboda

Is it a challenge or an invitation? #image.player

Either way. It would be rude to refuse.

*[Step inside.]

The furnishing is sparse, the most obvious and central object being a large, stone table, supported at each corner by cairns that look like they should topple.

You do not realize what the table-top is before you spot Nyrna's face, peering through a tear, looking down at the table. A runestone. #image.nyrna

"Something of yours?" The woman asks, handing out slices of meat to her wayward children. #image.angrboda

- (options)
* (mind) [{RequireAbility(Mind, 5)} Distract her with stories in order to get close.]
{AbilityCheck(Mind, 10): You attempt to distract her with stories of the ring-mail covered tables in Valhalla, pretending neutral interest in the rock. She seems amused, and does not stop you. ->runestone(mind)|You attempt to think of something, anything, one might say about tables, but come up short. The woman takes a bite out of some raw meat, looking at you. {AbilityDamage(Mind, Small)}}
->options
* (body) [{RequireAbility(Body, 6)} It is your runestone, and she stole it. Take it back.]
"Yes." You say, and step towards it. At once, she stands between you and it; she suddenly seems...larger. #image.player
{AbilityCheck(Body, 12): You wrestle like only two giants can. The house shudders and shakes, and her children cower in the corners. In the end, you are victorious. Never during the fight did you exchange a single word.->runestone(body)|You wrestle like only two giants can, the house shuddering and shaking. Her children cheer on her from the sides, grinning and hollering. In the end, she has the upper hand.}

After you yield, she simply nods at you, then returns to her meat.->failConvince

* (luck) [{RequireAbility(Luck, 7)} Tell her the truth, and hope for the best.]
{AbilityCheck(Luck, 14):
"It is my saga, on that runestone. I want it." #image.player

She looks at you without expression for a moment, then shrugs. When you approach it, she does not stop you.->runestone(luck)
- else:
You hesitate, unsure suddenly of how wise this is. "I came here for the runestone, yes." You say, finally. #image.player
"And how does that concern me?" She replies. You do not know how to answer that. #image.angrboda
->failConvince
}
* (follower) [{RequireAbility(Follower, 1)} Ask Nyrna for help.]
{AbilityCheck(Follower, 1):
You catch Nyrna's eye behind the jotunn-woman's back. You do not need to speak to communicate; and you do not need to hear her to know her frustration. #image.nyrna

A moment later, something falls in the back yard. The woman sits up, surprised, and after giving you a suspicious look goes out to investigate. #image.angrboda

Once she is gone, you go up to the runestone. #image.none
->runestone(follower)
}
->failConvince // This should never happen

=failConvince
You do not know what else to do. The woman finishes giving out little strips of meat to her children one by one, and once they are all gone back to the woods, she turns to you.

"You want the runestone." She says. "Because of the knowledge it holds, or because you want to destroy it?" #image.angrboda

* ["I want to destroy it."]
She looks at you, then shakes her head. "This makes you a Nithing. Not someone I want in my house, nor someone whose runestone I want as a table." #image.angrboda

She waves at the table. "Take it, then, and leave."

* ["My reasons are my own."]
She scoffs. "And if my children no longer have a table to eat from when you are done, who am I to blame?"

She turns away from you, clearly disgusted. "Take it then, whatever your reasons may be."
 - 
 ->runestone(failConvince)


=runestone(method)
You go to the runestone, wiping away dust and crumbs to read the text underneath. #image.none
->runestone_main->

{method==follower: The woman returns from outside to find her table gone. She does not look too surprised, however.}

"Unfortunate. It was a sturdy enough table." Angrboda shrugs, then looks at you. "I assume you are headed for the caves? I will tell my children not to bother you." #image.angrboda

"Thank you." #image.player

{method==failConvince:
You get the feeling she is doing you this favour for no other reason than wanting you as far away from her as possible, as soon as possible.
}
{method==body:
She smiles at you. "Not many have bested me in a wrestling match. I am of mind to reward you." #image.angrboda

She produces from a small pouch a single feather. You recognize it at once. She hands it to you. {alterItem(Feather, 1)}
}

"When you are down there, say hello to your brother for me." #image.angrboda

You look to her in surprise. "How did you know?" #image.player

She shrugs. "He talked of you often, and though we are strangers it's as it was with my wolves. Your eyes give you away." #image.angrboda

"Farewell, Byleistr. I doubt we will meet again."

* [Leave Angrboda's hut.] ->leave

=leave
~allowedLocation = Location3
You head in the direction she indicated. Around you, her children watch you all the way to the edge of the mangroves.
->travel_main