INCLUDE globals.ink
  { gateAgent == "no": ->start | ->checkBack }
=== start===
"<color=\#0079C0>¡Hola, bienvenido al aeropuerto de Valencia!</color>" #speaker:Gate Agent #voiceover: Welcome1
 ~ gateAgent = "yes"
"Thank - oh wait..." #speaker:Nomad
    * [Thank you]
    "Thank you!" #speaker:Nomad
    "You're welcome, enjoy your stay." #speaker:Gate Agent #voiceover: Welcome2
    -> END
* [Merci]
    "<color=\#F15F5F><i>Merci!</i></color>" #speaker:Nomad
    "Oh that's French, how do you say thank you in Spanish?" #speaker:Nomad
    "<color=\#0079C0>Gracias.</color>" #speaker:Gate Agent
    "<color=\#0079C0>¡Gracias!</color>" #speaker:Nomad
    ~ learnedThankYou = "yes"
    -> END
* [Gracias]
    "<color=\#0079C0>Gracias!</color>" #speaker:Nomad
    "<color=\#0079C0>De nada.</color>" #speaker:Gate Agent
    ~ learnedThankYou = "yes"
    -> END
=== checkBack ===
"Can I help you with something? #speaker:Gate Agent
 * [Yes]
    { learnedThankYou == "no": ->thankYou | ->remind }
    ->END
 * [No]
    "No." #speaker:Nomad
    ->END
=== thankYou ===
"How do you say thank you in Spanish?" #speaker:Nomad
"<color=\#0079C0>¡Gracias!</color>" #speaker:Gate Agent
"<color=\#0079C0>¡Gracias!</color>" #speaker:Nomad
 ~ learnedThankYou = "yes"
->END 
=== remind ===
"How do you say thank you again in Spanish?" #speaker:Nomad
"<color=\#0079C0>¡Gracias!</color>" #speaker:Gate Agent
"<color=\#0079C0>¡Gracias!</color>" #speaker:Nomad
->END
