INCLUDE globals.ink
<color=\#0079C0>¿Cómo puedo ayudarte?</color>#speaker:Airport Staff
Ahh sorry I don't-#speaker:Nomad
It's okay, how can I help you?#speaker:Airport Staff
I'm looking to get into the city.#speaker:Nomad
You can take the bus, taxi, or subway.#speaker:Airport Staff
I see signs but I'm not sure which one is which or where to go.#speaker:Nomad
Which one are you hoping to use?#speaker:Airport Staff
* [Bus]
->bus
* [Taxi]
->taxi
* [Subway]
->subway
=== bus ===
I think the bus.#speaker:Nomad
Okay. Look for signs that say <color=\#0079C0>autobús</color>. You want to take bus 150 to the city center.#speaker:Airport Staff
 <color=\#0079C0>¡Gracias!</color>#speaker:Nomad
 -> END
 === taxi ===
Taxi might be easiest.#speaker:Nomad
Okay you are going to look for signs that say <color=\#0079C0>taxi</color>#speaker:Airport Staff
 <color=\#0079C0>¡Gracias!</color>#speaker:Nomad
 -> END
 === subway ===
Subway or also known as the tube?#speaker:Nomad
Okay you are going to look for signs that say <color=\#0079C0>Metrovalencia</color> on the ground floor.#speaker:Airport Staff
 <color=\#0079C0>¡Gracias!</color>#speaker:Nomad
 -> END