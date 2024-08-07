INCLUDE globals.ink
“<color=\#0079C0>Siguiente, por favor.</color>” #speaker: Customs Agent
“<color=\#0079C0>¡Hola!” #speaker:Nomad
“<color=\#0079C0>¡Hola! ¿Cuál es el propósito de su viaje?</color>” #speaker: Customs Agent
“Umm” #speaker:Nomad
“<color=\#0079C0>¿Cuál es el propósito de su viaje?</color><br> It means, what is the purpose of your trip?” #speaker: Customs Agent
“Oh, to explore and get to know Valencia." #speaker:Nomad 
“Are you coming for the festival?”#speaker: Customs Agent 
“What festival?” #speaker:Nomad
“Fallas." #speaker: Customs Agent
“I’ve never heard of it.” #speaker:Nomad
“How long do you plan to stay in the country” #speaker: Customs Agent
* [<color=\#0079C0>Dos meses</color>]
   	"<color=\#0079C0>Dos meses</color>" #speaker:Nomad
   	"Two months?" #speaker: Customs Agent
   	"Yes, <color=\#0079C0>sí</color>."
  	"Can I see your return ticket?" #speaker: Customs Agent
    "<color=\#0079C0>Sí</color>, here you go." #speaker:Nomad
  	"<color=\#0079C0>Gracias.</color>" #speaker: Customs Agent
  	"Things look good, please enjoy your stay." #speaker: Customs Agent
  	"¡Gracias!" #speaker:Nomad
  	~ customsCheck = "yes"
    ->END
* [<color=\#0079C0>Dos horas</color>]
   	"<color=\#0079C0>Dos horas" #speaker:Nomad
    "Two hours?” #speaker: Customs Agent
    "Oh no, sorry how do you say two months?" #speaker:Nomad
    "<color=\#0079C0>Dos meses</color>" #speaker:Customs Agent
    "Can I see your return ticket?" #speaker: Customs Agent
    "<color=\#0079C0>Sí</color>, here you go." #speaker:Nomad
  	"<color=\#0079C0>Gracias.</color>" #speaker: Customs Agent
  	"Things look good, please enjoy your stay." #speaker: Customs Agent
    "¡Gracias!" #speaker:Nomad
    ~ customsCheck = "yes"
    ->END
* [<color=\#0079C0>Dos veces</color>]
   	"<color=\#0079C0>Dos veces</color>" #speaker:Nomad
    "<color=\#0079C0>¿Dos veces?</color> You've been here before?” #speaker: Customs Agent
    "No? Sorry I tried to look up a few things before we took off. What did I say?" #speaker:Nomad
    "<color=\#0079C0>Dos veces</color>, which means twice.” #speaker: Customs Agent
    "Sorry, I'll be staying for two months." #speaker:Nomad
    "<color=\#0079C0>Dos meses</color>. You were close." #speaker: Customs Agent
    "Please enjoy your stay, hopefully you will come back in the future." #speaker: Customs Agent
    "<color=\#0079C0>¡Gracias!</color>" #speaker:Nomad
    ~ customsCheck = "yes"
    ->END