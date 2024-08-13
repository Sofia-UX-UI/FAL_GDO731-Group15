INCLUDE globals.ink
<color=\#0079C0>¡Hola!</color>#speaker:Merchant
<color=\#0079C0>¡Hola!</color>#speaker:Nomad
{ festivalExplained == "no": ->festival }
{ festivalExplained == "yes": ->recap }
=== festival ===
Welcome to Valencia! Are you here for the festival?#speaker:???
Ooh, a festival! What festival?#speaker:Nomad
<color=\#0079C0>¡Fallas!</color>#speaker:???
Sounds fun! But um... what is <color=\#0079C0>Fallas</color>?#speaker:Nomad
<color=\#0079C0>Fallas</color> is an annual celebration that takes place here in Valencia in commemoration of Saint Joseph.#speaker:???
How is it celebrated?#speaker:Nomad
It's like a huge street party! We have processions that run through the city and marching bands.#speaker:???
Everyday, we have <color=\#0079C0>la Mascletà</color>, which is an incredible firework display!#speaker:???
Amazing! I love fireworks!#speaker:Nomad
It ends with <color=\#0079C0>la Cremà</color>, where we burn the <color=\#0079C0>falles/color>.#speaker:???
They take months to make. People known as the <color=\#0079C0>fallero artists</color>make them.#speaker:???
<color=\#0079C0>Fallero artists</color> sounds like a cool title. Is that what you are?#speaker:Nomad
It is and I wear it proudly. If you have any more questions let me know.#speaker:Fallero Artist
<color=\#0079C0>¡Gracias!</color> #speaker:Nomad
Anytime! Enjoy Valencia and the festival!#speaker:Fallero Artist
~ festivalExplained = "yes"
-> END

=== recap ===
Did you have questions about <color=\#0079C0>Fallas</color>?#speaker:Fallero Artist
* [Yes]
    If you don't mind, yes please.#speaker:Nomad
    ->yes
* [No]
    ->no
=== yes ===
What would you like to know?#speaker:Fallero Artist
* [What is it?]
    Could you remind me what <color=\#0079C0>Fallas</color> is?#speaker:Nomad
    <color=\#0079C0>Fallas</color> is an annual celebration that takes place here in Valencia in commemoration of Saint Joseph.#speaker:Fallero Artist
    It's like a huge street party! We have processions that run through the city and marching bands.#speaker:Fallero Artist
    Everyday, we have <color=\#0079C0>la Mascletà</color>, which is an incredible firework display!#speaker:Fallero Artist
    It all ends with <color=\#0079C0>la Cremà</color>, where we burn the <color=\#0079C0>falles</color>.
    ->questions
* [When is it?]
    When does the festival take place?#speaker:Nomad
    It takes place between the 1st to the 19th March, but the main days take place from the 15th to the 19th.#speaker:Fallero Artist
    There's two days until it starts, so the city will be buzzing with excitement!#speaker:Fallero Artist
    ->questions
* [What is a falles?]
    <color=\#0079C0>Fallas</color> is the festival but what are <color=\#0079C0>falles</color>?#speaker:Nomad
    Gigantic figures made from paper, wood, wax and polystyrene.#speaker:Fallero Artist
    They take months to make. People known as the <color=\#0079C0>fallero artists</color>make them.#speaker:Fallero Artist
    ->questions
== questions ===
 Would you like to know anything else?#speaker:Fallero Artist
    * [Yes] 
        ->yes
    * [No]
        ->bye
=== bye ===
No. <color=\#0079C0>¡Gracias!</color> #speaker:Nomad
Anytime! Enjoy Valencia!#speaker:Fallero Artist
->END
=== no ===
No thank you. #speaker:Nomad
No problem! Come back if you have any questions.#speaker:Fallero Artist
->END
