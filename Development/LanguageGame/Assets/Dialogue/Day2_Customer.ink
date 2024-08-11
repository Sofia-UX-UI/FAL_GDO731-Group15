INCLUDE globals.ink
-> Introduction
=== Introduction ===
<color=\#0079C0>Hola</color>, is this the queue?#speaker:Nomad
->start
=== start ===
<color=\#0079C0>Hola... ¿esta es la cola?</color>#speaker:Customer
I'm sorry I don't know what you said.#speaker:Nomad
It's what you asked.#speaker:Customer
<color=\#0079C0>Ok, gracias.</color>#speaker:Nomad
~ nextCustomer = "yes"
<color=\#0079C0>Siguiente, por favor.</color>#speaker:Barista
<color=\#0079C0>Hola.</color>#speaker:Customer
<color=\#0079C0>Hola, ¿qué te apetece tomar?</color>#speaker:Barista
<color=\#0079C0>Me gustaría un cappuccino con leche de avena, por favor.</color>#speaker:Customer
<color=\#0079C0>Son 2.5 euros por favor.</color>#speaker:Barista
<color=\#0079C0>Gracias.</color>#speaker:Customer
~ customerFinished = "yes"
->END