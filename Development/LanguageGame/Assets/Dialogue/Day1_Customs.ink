INCLUDE globals.ink
<color=\#0079C0>Siguiente, por favor.</color>#speaker:Customs Agent
<color=\#0079C0>¡Hola!</color>#speaker:Nomad
<color=\#0079C0>¡Hola! ¿Cuál es el propósito de su viaje?</color>#speaker:Customs Agent #voiceover:Customs1
Umm#speaker:Nomad
<color=\#0079C0>¿Cuál es el propósito de su viaje?</color><br> It means, what is the purpose of your trip?#speaker:Customs Agent
Oh, to explore and get to know Valencia.#speaker:Nomad 
How long do you plan to stay in the country?#speaker:Customs Agent
* [<color=\#0079C0>Dos meses</color>]
   	<color=\#0079C0>Dos meses</color>#speaker:Nomad
   	Two months?#speaker:Customs Agent
   	Yes, <color=\#0079C0>sí</color>.
    ->returnTicket
* [<color=\#0079C0>Dos horas</color>]
   	<color=\#0079C0>Dos horas #speaker:Nomad
    Two hours? #speaker:Customs Agent
    Oh no, sorry.<br>How do you say two months? #speaker:Nomad
    <color=\#0079C0>Dos meses</color> #speaker:Customs Agent
    <color=\#0079C0>Dos meses</color>, sorry about the confusion. #speaker:Nomad
    ->returnTicket
* [<color=\#0079C0>Dos veces</color>]
   	<color=\#0079C0>Dos veces</color> #speaker:Nomad
    <color=\#0079C0>¿Dos veces?</color><br>You've been here before? #speaker:Customs Agent
    No? Sorry I tried to look up a few things before we took off.<br>What did I say? #speaker:Nomad
    <color=\#0079C0>Dos veces</color>, which means twice. #speaker: Customs Agent
    Sorry, I'll be staying for two months. #speaker:Nomad
    <color=\#0079C0>Dos meses</color>. Two months. <br> You were close. #speaker:Customs Agent
    Please enjoy your stay, hopefully Valencia will charm you. #speaker:Customs Agent
    <color=\#0079C0>¡Gracias!</color> #speaker:Nomad
    ~ customsCheck = "yes"
    ->END
    === returnTicket ===
    Can I see your return ticket?#speaker:Customs Agent
    <color=\#0079C0>Sí</color>, here you go.#speaker:Nomad
  	<color=\#0079C0>Gracias.</color>#speaker:Customs Agent
  	Things look good, please enjoy your stay.#speaker:Customs Agent
  	<color=\#0079C0>¡Gracias!</color>#speaker:Nomad
  	~ customsCheck = "yes"
    ->END