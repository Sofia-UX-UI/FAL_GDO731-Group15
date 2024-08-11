INCLUDE globals.ink
-> Introduction
=== Introduction ===
"Hola, is this the queue?#speaker:Nomad
->start
=== start ===
"Hola... ¿esta es la cola?"#speaker:Customer
"I'm sorry I don't know what you said."#speaker:Nomad
"It's what you asked."#speaker:Customer
"Ok, gracias.<br><i><color=\#666666>Ok, thanks.</i></color>"#speaker:Nomad
~ nextCustomer = "yes"
"Siguiente, por favor."#speaker:Barista
"Hola."#speaker:Customer
"Hola, ¿qué te apetece tomar?"#speaker:Barista
"Me gustaría un cappuccino con leche de avena, por favor."#speaker:Customer
"No hay problema. ¿Gustas algo de comer?"#speaker:Barista
"No gracias."#speaker:Customer
"Son 2.5 euros por favor. Pagas con efectivo o con tarjeta?"#speaker:Barista
"Con tarjeta por favor."#speaker:Customer
"Ok, puedes apoyar aquí la tarjeta. Listo, aquí tienes el café."#speaker:Barista
~ customerFinished = "yes"
->END