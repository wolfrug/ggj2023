==helheim_descent_main

Hel is waiting for you on the other side of the gate, she crouches in the dust like a child, drawing strange figures into the black sand. 

"So, you made it. {helheim_bridge_main.lucet: Welcome.|And you have paid the price.}" She says idly. #image.hel

Beyond her lies Helheim, a bright city on the edge of a great river. White winged ships dance across the water, and bright pennants decorate the rooftops, fluttering in a cool breeze. 

You knew that it would be beautiful, but the sight of it is still enough to make your heart ache. 

*["Yes."] You tell her, as soon as you feel strong enough to speak. #image.player

"Does that mean you will let me pass through without incident?"

If she stops you you will have to find another way. But there is no <i>other</i> way, or you would have taken that path long ago.

Dusting her hands free of soil, she stands up and considers you. She is half your height, and yet something in her gaze makes you feel like you are the small one here. This is her realm, and you are but a visitor here.

"Without incident?" She repeats the phrase, the words rolling over her tongue like strange fruit. #image.hel

"Those aren't the words I'd choose. But certainly, I will let you pass. You have proven your worth by breaching the gate, and I will not stand in your way, or ask for any further penance."

"Instead, I bring you an offer. Will you consider it?" She regards you with one bright eye, and one black. Waiting, watchful.

**[An offer?]  #image.player

-You examine her cautiously, but there is no hint of malice in her face.

If anything she looks...sad.

"Stay." She says at last, and the words are like a knife to your heart. #image.hel

"Stay here, with me. Live, Uncle, and be remembered." 

He is down there you know?" She says, gesturing to the bright towers of the city below you. "You could see him again. Baldr... You could be together and wait for the end of days in a place without suffering or torment."

"Please, turn aside from this terrible path you have taken. Let me help you with your burden. Live, and let the past lie where it belongs. Forgive yourself and those who made you this way, and in so doing show them your defiance of your fate."

Out of the the corner of your eye you see Nyrna turn aside, head in her hands as her shoulders shake from weeping.

It would be so easy, to say yes.

You can imagine Baldr walking through those streets, laughing with street vendors, and watching the gulls wheeling in the sky at the waters edge. What would you say to each other upon meeting? What apologies could you offer? 

You could tell him it was all your fault. His death, the disintegration of the realms, everyone of the edge of war. You were too slow, too feeble, too much a coward. You could not stand up to his father and stop what was happening, even though you saw the telltale signs as plain as day. 

You could not save Baldr, who you loved more than anything. And you could not keep your promise to protect what you had built together, and keep the realms safe.

But you also know he wouldn't care about a single part of that. He would just smile at you, and welcome you into his arms, and whisper the words 'Welcome home, brother.'.

*[It is a sweet dream.] And you let it linger for a moment before shaking your head.

-"I cannot stay." #image.player

Hel nods, as though she always expected you to say that. The warmth leaves her face and she turns away from you.

"Then you must take this with you instead. I wish to no longer be cursed with it. It will be your burden to bear now." She does not look at you as she waves her hand, and suddenly a heavy iron chest appears before you, locked with nine locks. They open, one by one. #image.hel

"Take it, and then go. You may pass through the streets of my city, but all who you meet will turn away from you, for you do not belong here. I declare you outcast, nidlingr, vargr, unwanted, unremembered. Hurry to the docks, and a ferrymen will take you to your destination."

"But do not tarry. Do not seek to linger. Do not turn aside from your path, no matter what you see, or hear. Or you will be trapped in eternal torment, and reach the ending you so desperately seek."

* [Open the chest.] #image.none
{alterItem(Laevateinn, 1)}
It is the tip of a spear, made of mistletoe and sharpened to a point. You hear Nyrna gasp as you reach for it, knowing full well the curse it carries. But it is done. You made your decision.

When you look up, Hel is gone again. You doubt you will see her again.

* [Leave the chest.] #image.none
You have no interest in these games. Whatever curse lies within this chest is not yours to carry. You look at your niece, and slowly shake your head.

Hel's visage darkens. "Then may you be cursed with bad luck instead, until the end of your days." #image.hel
{AbilityDamage(Luck, Large)}

She disappears. You feel...drained.

- 
* [Time to go.]
->streets
=streets
You walk down the streets of Hel, every step heavy. {GetStack(Body)<3: You feel so tired. Perhaps you could simply rest at a fountain for a moment, regain your breath?} {GetStack(Mind)<3: You are so groggy you can barely function, but the sweet smell of flowers make you pause, your mind clearing. Could you not stop, for just a moment?}

Around you, the denizens of Hel all turn away from you, hiding their faces. Hope of catching his face among the crowd dwindles, even if you always knew that hope was foolish.

{MainInventory?Laevateinn:
The wand of mistletoe feels heavy in your pack. Slick with blood. Innocent no longer.
- else:
You sense someone looking at you, though, but every time you turn there is no-one there but downturned faces or backs.

And then, suddenly, you see it. Lying there, clearly left out for you. A flask of mead. {alterItem(Mead, 3)} You recognize it by smell. You feel warm, suddenly: even here, someone knows you. Someone is looking out for you.
{GetStack(Mind)<3: You take a swig of the mead, and at once feel your hugr return to you. {alterAbility(Mind, 3)}{alterItem(Mead, -1)}}
}

Out here the waters of the Hvelgemir have calmed and grown languid. It is a beautiful place. A beautiful city. It would not be so bad to while away ones days here, fishing in cool waters, and wandering through the streets of the colourful markets. A life without war, without struggle, without suffering.

Hel's parting words haunt you. But it is too late for regret.

Why is is that forgiveness the hardest thing of all to bear?

You find the ferryman by following the line of runestones lining the shore, each detailing the saga and legacy of those who died.

Yours stands proud above the others.
* [Approach.]
->runestone

=runestone
Here, someone makes sure to maintain the stones. This one, you notice, has been well loved. On top of it, placed like a gift, is a small golden band.
{alterItem(Draupnir, 1)}
Your heart breaks as you pick it up, and can almost imagine the warmth of the hand that put it there. 
->runestone_main->
"You are such a fool, Byleistr." Nyrna whispers as you board the ferry. Her voice is heavy. #image.nyrna
~allowedLocation=Location6
->leave

=leave
->travel_main