INCLUDE globals.ink
    { boardingPass == "no": ->start | ->alreadyPickedUp }
=== start ===
    Hello, how can I help you today?#speaker:Airline Agent
    Hi, I'd like to book the next flight available.#speaker:Nomad
    Oh? We have a number that you could board are you looking for something specific?#speaker:Airline Agent
    I'm looking for somewhere I can experience culture, food, and maybe learn a few words in a different language.#speaker:Nomad
    Did you have a language in mind?#speaker:Airline Agent
* [French]
->french
* [Spanish]
->spanish
* [Nevermind]
->nevermind
=== french ===
    I do really like French pastries.#speaker:Nomad
    I'm really sorry we don't have any flights available for France would Spain be okay?<br> <i><color=\#CCCCCC>[Not available in this demo]</i></color>#speaker:Airline Agent
    * [Yes]
    ->spanish
    * [No]
    ->nevermind
=== nevermind === 
    I'm not sure, I need some time before making a decision.#speaker:Nomad
    Okay. Speak to me again when you are ready.#speaker:Airline Agent
    Thank you.#speaker:Nomad
    -> END
=== spanish === 
    I know a few words in Spanish from songs, maybe that's a good one to explore.#speaker:Nomad
    Great! We have a flight leaving for Valencia shortly. Would you like a ticket there? #speaker:Airline Agent
    Perfect! I've always wanted to visit The City of Arts and Sciences there.#speaker:Nomad
    Sure, here is your ticket. Please head through security, you're at boarding at Gate 15.#speaker:Airline Agent
    Thank you.#speaker:Nomad
    Enjoy your trip!#speaker:Airline Agent
    ~ boardingPass = "yes"
    -> END
    === alreadyPickedUp === 
    Hello again, is there something I can help you with?#speaker:Airline Agent
* [Where do I go next?]
    I forgot where do I go next?#speaker:Nomad
    Please head through security. Boarding at Gate 15.#speaker:Airline Agent
    Oh right, thank you.#speaker:Nomad
    ->END
* [Nevermind]
    Nevermind, I'll be on my way.#speaker:Nomad
    -> END