INCLUDE globals.ink

<color=\#0079C0>¡Hola!</color>#speaker:Festival Organiser
<color=\#0079C0>¡Hola!</color>#speaker:Nomad
{ festivalExplained == "no": ->festival }
{ festivalExplained == "yes": ->recap }
=== festival ===
Welcome to Valencia! Are you here to experience our wonderful festival?#speaker:Festival Organiser
Ooh, a festival! Which festival?#speaker:Nomad
Fallas!#speaker:Festival Organiser
Oh, yes, definitely!! But... um... what is Fallas?#speaker:Nomad
Fallas is an annual celebration that takes place here in Valencia in commemoration of Saint Joesph. It takes place between the 1st to the 19th March, but the main days take place from the 15th to the 19th.#speaker:Festival Organiser
I see, how is it celebrated?#speaker:Nomad
People describe it as a huge street party! We have processions that run through the city, marching bands and plenty of visitors. Everyday, we have <color=\#0079C0>la Mascletà</color>, which is an incredible firework display!#speaker:Festival Organiser
Wow! This sounds amazing!#speaker:Nomad
It is! It all ends with  <color=\#0079C0>la Cremà</color>, where we burn the falles; gigantic figures made from paper, wood, wax and polystyrene. They take months to make, and are made by groups of people known as the <color=\#0079C0>Casal faller</color>.#speaker:Festival Organiser
Is it a popular festival?#speaker:Nomad
Oh most definitely. You won't be able to miss it, crowds come from all over the world! There's two days until it starts, so the city will be buzzing with excitement!#speaker:Festival Organiser
Amazing!! I can't wait.<color=\#0079C0>¡Gracias!</color> #speaker:Nomad
Anytime! Enjoy Valencia! #speaker:Festival Organiser
~ festivalExplained = "yes"
-> END

=== recap ===
Hello again! Did you want me to tell you all about Fallas again?#speaker:Festival Organiser
* [Yes please!]
->yes
* [No thank you.]
->no
=== yes ===
If you don't mind,  yes please!#speaker:Nomad
It would be my pleasure. #speaker:Festival Organiser
Fallas is an annual celebration that takes place here in Valencia in commemoration of Saint Joesph. It takes place between the 1st to the 19th March, but the main days take place from the 15th to the 19th.#speaker:Festival Organiser
I see, how is it celebrated?#speaker:Nomad
People describe it as a huge street party! We have processions that run through the city, marching bands and plenty of visitors. Everyday, we have <color=\#0079C0>la Mascletà</color>, which is an incredible firework display!#speaker:Festival Organiser
Wow! This sounds amazing!#speaker:Nomad
It is! It all ends with  <color=\#0079C0>la Cremà</color>, where we burn the falles; gigantic figures made from paper, wood, wax and polystyrene. They take months to make, and are made by groups of people known as the <color=\#0079C0>Casal faller</color>.#speaker:Festival Organiser
Is it a popular festival?#speaker:Nomad
Oh most definitely. You won't be able to miss it, crowds come from all over the world! There's two days until it starts, so the city will be buzzing with excitement!#speaker:Festival Organiser
Amazing!! I can't wait.<color=\#0079C0>¡Gracias!</color> #speaker:Nomad
Anytime! Enjoy Valencia! #speaker:Festival Organiser
->END
=== no ===
No problem! Come back if you have any questions.#speaker:Festival Organiser
->END
