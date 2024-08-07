INCLUDE globals.ink
"<color=\#0079C0>¿Cómo puedo ayudarte?</color>" #speaker:???
"Ahh sorry I don't-" #speaker:Nomad
"It's okay, how can I help you?"<br><color=\#666666>¿Cómo puedo ayudarte?</color> #speaker:???
"I'm looking to get into the city." #speaker:Nomad
"You can take the bus, train, or taxi." #speaker:???
"I see signs but I'm not sure which one is which." #speaker:Nomad
"Which one are you hoping to use?" #speaker:???
* [Bus]
->bus
* [Train]
->train
* [Ridesharing]
->ridesharing
=== bus ===
"Okay you are going to look for signs that say <color=\#0079C0>autobus</color>" #speaker:???
 "<color=\#0079C0>Gracias</color>" #speaker:Nomad
 -> END
 === train ===
"Okay you are going to look for signs that say <color=\#0079C0>metro</color>" #speaker:???
 "<color=\#0079C0>Gracias</color>" #speaker:Nomad
 -> END
 === ridesharing ===
"Okay you are going to look for signs that say <color=\#0079C0>RIDESHARING</color>" #speaker:???
 "<color=\#0079C0>Gracias</color>" #speaker:Nomad
 -> END