==helheim_bridge_main
The Gjallarbru lies before you, an impossible arch over the roaring chasm that is the river Gjoll - the last divide between you and the realm of death.

A cloaked woman awaits you on the bridge, looking down at the icy waters as though deep in thought.

"Perhaps she's the guardian of this place." Nyrna says as you make your careful approach. "I've heard a fierce giantess stands guard upon the bridge before death's gate. #image.nyrna

But there is something about the figure that gives you pause. Some strange familiarity...#image.none

She turns to face you, and you stumble to a halt in shock.#image.hel

It has been a long time since you last saw your niece, and you find her much changed from the bright, carefree girl you used to play with in the fields outside Breidablik.

Catching your expression, Hel smiles crookedly, the flesh on the unmarred half of her face tugging painfully to the side - and on the other half her teeth exposed in a shocking leer, the skin blue and dead.

"Does my face shock you Uncle?" She presses a gloved hand to her cheek, her eyes glittering like knives as she watches your reaction. 

"A small momento from your precious All-father. Though I suppose even you have fallen out with him now. How sad. I would weep, if I remembered how."

*["Hel."] #image.player

-You say her name, somehow unable to say anything else.

Her face twists strangely, and she turns away from you, once more gazing down into the waters of the Gjoll.#image.hel

"No time for niceties, Uncle. I'm afraid this isn't a personal call, but rather a matter of life or death. And time is of the essence." 

"You've been doing so well, leaving a swathe of destruction in your wake without a single thought to those left behind." She taps the side of her head. "You think you are all alone in this world. Some discarded broken thing. But there are still people in your life who know you, who remember how you used to be."

"Even I am feeling the effects of your unravelling, a blurring at the edges of my recollection. Carry on, and soon I won't remember you at all. Even your face has grown unfamiliar. But we are family. Still." Her laugh is full of bitterness.

*["Will you stand in my way?"] #image.player

-A cold trickle of fear runs down your spine at the thought. If she will not let you pass, you aren't confident in your ability to best her. She always was the most fearsome of your brothers many children. It's why you loved her best.

"Stop you? Could I? Is there enough yet remaining of the man you used to be to make it worth my while?" #image.hel

"Then perhaps I will. Yes, I will think on it a while."

*["What of now? What will you have of me?"] #image.player

"Oh, nothing too frightening. A simple transaction. You wish to gain access to my lands, but you do not belong here, Uncle. You must pay for your passage, or turn back." #image.hel

She points at the gate behind her. "Best of luck." Between your eyes turning towards the gate and back to where she was, she disappears. This is her queendom, and she makes the rules. To Nagrind, then.

->helheim_nagrind

* [{RequireItem(Lucet)} "I found something of yours."] #image.player
->lucet

=lucet
{alterItem(Lucet, -1)} {alterAbility(Luck, 3)}
You hand her the lucet you found along the shores of Nastrond. She takes it from you, eyes widening.

"I thought this lost. Nanna used to teach me how to weave back before..." She stops, her lips thin. #image.hel

"Go, then, uncle. Pass through. But quickly." She waves her hand, and the gate Nagrind opens. You open your mouth to thank her, but she is already gone.
->helheim_nagrind.runestone

==helheim_nagrind
Nagrind, the famed gates of Helheim loom before you, spiky and austere. You think you can make out inscriptions on the barricade, black lettering that writhes before your eyes defying all attempts to read it - but you think you catch the meaning.

'The way is shut.'

'Only the dead may pass through here.'

And for better or worse, you are as yet one of the living.

"What now?" Nyrna asks you with a long suffering air. "Have you finally run out of bright ideas?" #image.nyrna
 
 - (options)
* {GetStack(Body)<1} [{RequireAbility(Body, 0)} "For better or worse, I might as well be dead."]
You walk towards the gate, your body barely held together. The gate creaks open.
->runestone
* {GetStack(Mind)<1} [{RequireAbility(Mind, 0)} "My thoughts are all but gone, either way."]
As you walk towards the gate, your mind an empty shell of what it once was, the gates creak open.
->runestone
* [{RequireAbility(Body, 1)} It requires a sacrifice, that is all.]
{AbilityCheck(Body, 20):
{AbilityDamage(Body, Medium)} 
- else:
{AbilityDamage(Body, Large)} 
}
You walk towards the gate, and as you do, you feel your life drain from you, the closer you get. You are not sure if you are among the living or the dead any more when you pass through.
->runestone
* [{RequireAbility(Mind, 1)} Death of body, death of mind. It is the same.]
{AbilityCheck(Mind, 20):
{AbilityDamage(Mind, Medium)} 
- else:
{AbilityDamage(Mind, Large)} 
}
You clear your mind, or it is cleared for you. You walk, like a draugr, through the gate, that creaks open for you.
->runestone

=runestone
On the other side of the gate, leaning amongst many of its kind, you find your runestone. As if waiting for you to pass the gate. You wipe it clean from dust.
->runestone_main->
Who is this person? Why do we care?
~allowedLocation=Location5
->leave

=leave
->travel_main