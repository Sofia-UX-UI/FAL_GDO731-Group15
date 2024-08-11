INCLUDE globals.ink
  { gateAgent == "no": ->start | ->checkBack }
=== start===
<color=\#0079C0>¡Hola, bienvenido al aeropuerto de Valencia!</color>#speaker:Gate Agent #voiceover:Welcome1
 ~ gateAgent = "yes"
Thank - oh wait...#speaker:Nomad
* [Thank you]
    ->englishty
* [Merci]
    <color=\#F15F5F><i>Merci!</i></color>#speaker:Nomad
    Oh that's French, how do you say <b>thank you</b> in Spanish?#speaker:Nomad
    ->gracias
* [Gracias]
    <color=\#0079C0>Gracias!</color>#speaker:Nomad
    <color=\#0079C0>De nada.</color>#speaker:Gate Agent
    ~ learnedThankYou = "yes"
    -> END
=== checkBack ===
Can I help you with something?#speaker:Gate Agent
 * [Yes]
    ->yes
 * [No]
    No.#speaker:Nomad
    ->END
=== yes ===
Yes please.#speaker:Nomad
What's your question?#speaker:Gate Agent
    * [Where do I go?]
            Head towards customs.#speaker:Gate Agent
            { learnedThankYou == "no": -> englishty | ->singlety }
    * [How do you say thank you?]
            { learnedThankYou == "no": ->thankYou | ->remind }
=== thankYou ===
How do you say thank you in Spanish?#speaker:Nomad
->gracias
=== remind ===
How do you say thank you again in Spanish?#speaker:Nomad
->gracias
=== englishty ===
    Thank you!#speaker:Nomad
    You're welcome, enjoy your stay.#speaker:Gate Agent
->END
=== gracias ===
    <color=\#0079C0>Gracias.</color>#speaker:Gate Agent
    <color=\#0079C0>¡Gracias!</color>#speaker:Nomad
    ~ learnedThankYou = "yes"
->END
===singlety === 
<color=\#0079C0>¡Gracias!</color>#speaker:Nomad
->END