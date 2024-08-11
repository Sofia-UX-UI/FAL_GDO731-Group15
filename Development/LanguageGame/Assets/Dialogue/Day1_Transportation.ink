INCLUDE globals.ink
"<color=\#0079C0>¿Cómo puedo ayudarte?</color>" #speaker:???
"Ahh sorry I don't-" #speaker:Nomad
"It's okay, how can I help you?"<br><color=\#666666>¿Cómo puedo ayudarte?</color> #speaker:???
"I'm looking to get into the city." #speaker:Nomad
"You can take the bus, taxi, or subway." #speaker:???
"I see signs but I'm not sure which one is which or where to go." #speaker:Nomad
"Which one are you hoping to use?" #speaker:???
* [Bus]
->bus
* [Taxi]
->taxi
* [Subway]
->subway
=== bus ===
"I think the bus." #speaker:Nomad
"Okay you are going to look for signs that say <color=\#0079C0>autobús</color>. Bus number 150 goes to the city center." #speaker:???
"Bus 150 will get me into Valencia?" #speaker:Nomad
"Line 150 takes you to the center of Valencia with stops in towns of Mislata, Quart de Poblet and Manises." #speaker:???
 "<color=\#0079C0>¡Gracias!</color>" #speaker:Nomad
 -> END
 === taxi ===
"Taxi might be easiest." #speaker:Nomad
"Okay you are going to look for signs that say <color=\#0079C0>taxi</color>." #speaker:???
"Any idea how much it might cost?" #speaker:Nomad
"Depends where you are heading. The airport is in a suburban area, you will be charged 5,40 euros extra." #speaker:???
 "<color=\#0079C0>¡Gracias!</color>" #speaker:Nomad
 -> END
 === subway ===
"Subway or also known as the tube?" #speaker:Nomad
"Okay you are going to look for signs that say <color=\#0079C0>Metrovalencia</color> on the ground floor of the regional flight terminal." #speaker:???
"Are there multiple lines?" #speaker:Nomad
"Line 3 connects the airport with the city center. It also has stops in the university area and northern part of the city." #speaker:???
 "<color=\#0079C0>¡Gracias!</color>" #speaker:Nomad
 -> END