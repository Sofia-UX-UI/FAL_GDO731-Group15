INCLUDE globals.ink
-> Introduction
=== Introduction ===
 <color=\#0079C0>Hola, ¿qué te apetece tomar?</color>#speaker:Barista
->start
=== start ===
<color=\#0079C0>¡Hola!</color>#speaker:Nomad
<color=\#0079C0>¿Qué puedo conseguirte?</color>#speaker:Barista
Sorry, I'm learning. I would like a cappuccino please.#speaker:Nomad
<color=\#0079C0>Sí, claro.</color>Yes, of course.#speaker:Barista
How would I order that in Spanish for next time?#speaker:Nomad
<color=\#0079C0>Me gustaría un cappuccino por favor.</color>#speaker:Barista
<color=\#0079C0>Me gustaría un cappuccino por favor.</color>#speaker:Nomad
<color=\#0079C0>Sí.</color>What type of milk would you like?#speaker:Barista
* [Oat]
->oat
* [Cow]
->cow
* [Almond]
->almonds
=== oat ===
Oat milk if you have it.#speaker:Nomad
<color=\#0079C0>¿Con leche de avena? No hay problema.</color>#speaker:Barista
->paying
=== cow ===
Regular milk please.#speaker:Nomad
<color=\#0079C0>¿Con leche de vaca? No hay problema.</color>#speaker:Barista
->paying
=== almonds ===
Almond milk if possible.#speaker:Nomad
<color=\#0079C0>¿Con leche de almendras? No hay problema.</color>#speaker:Barista
->paying
=== paying === 
<color=\#0079C0>Por favor.</color>#speaker:Nomad
Would you like something to eat?#speaker:Barista
<color=\#0079C0>No gracias</color>, but I would like a glass of water.#speaker:Nomad
Sure. It's 2.5 euros <color=\#0079C0>por favor</color>. Are you paying by cash or card?#speaker:Barista
Card.#speaker:Nomad
Ok, you can place your card here and here is your <color=\#0079C0>café</color> and <color=\#0079C0>agua</color>.#speaker:Barista
<color=\#0079C0>¡Gracias!</color>#speaker:Nomad
~ nomadOrderFinished = "yes"
->END 