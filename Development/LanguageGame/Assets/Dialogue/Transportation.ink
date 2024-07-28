INCLUDE globals.ink
"<i>¿Cómo puedo ayudarte?</i>" #speaker:??? #layout:right
"Ahh sorry I don't-" #speaker:Player #layout:left
"It's okay, how can I help you?" #speaker:??? #layout:right
"I'm looking to get into the city." #speaker:Player #layout:left
"You can take the bus, train, taxi, or ridesharing." #speaker:??? #layout:right
"I see signs but I'm not sure which one is which." #speaker:Player #layout:left
"Which one are you hoping to use?" #speaker:??? #layout:right
* [Bus]
->train
* [Train]
->train
* [Ridesharing]
->train
=== train ===
"Okay you are going to look for signs that say <i>metro</i>" #speaker:??? #layout:right
 "<i>Gracias</i>" #speaker:Player #layout:left
 -> END