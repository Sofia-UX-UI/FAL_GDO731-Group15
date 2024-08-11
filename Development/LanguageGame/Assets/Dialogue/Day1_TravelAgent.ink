INCLUDE globals.ink
    { boardingPass == "no": ->start | ->alreadyPickedUp }
=== start ===
    "Hello, how can I help you today?"#speaker:Airline Agent
    "Hi, I'd like to book the next flight available." #speaker:Nomad
    "Oh? We have a number that you could board are you looking for something specific?" #speaker:Airline Agent
    "I'm looking for somewhere I can experience culture, food, and maybe learn a few words in a different language." #speaker:Nomad
    "Did you have a language in mind?" #speaker:Airline Agent
* [French]
->french
* [Spanish]
->spanish
* [Nevermind]
->nevermind
=== french ===
    "I do really like French pastries." #speaker:Nomad
    "I'm really sorry we don't have any flights aviable for French in this demo would Spanish be okay?" #speaker:Airline Agent
* [Yes]
->spanish
* [No]
->nevermind
    "Perfect!" #speaker:Nomad
    "Sure, please head through security. Boarding at Gate 15." #speaker:Airline Agent
    "Thank you." #speaker:Nomad
    "Enjoy your trip!" #speaker:Airline Agent
    ~ boardingPass = "yes"
    -> END
=== nevermind === 
    "I'm not sure, I need some time before making a decision." #speaker:Nomad
    "Okay. Speak to me again when you are ready." #speaker:Airline Agent
    "Thank you." #speaker:Nomad
    -> END
=== spanish === 
    "Anywhere that looks good to you, randomly pick if needed." #speaker:Nomad
    "Let me see... Do you have a visitor visa for any specific country?" #speaker:Airline Agent
    "No... I didn't think about getting something like that." #speaker:Nomad
    "I can work around it but I recommend looking into it. Did you want me to tell you where?" #speaker:Airline Agent
    "No thank you. I'd like to be surprised when I show up to the gate." #speaker:Nomad
    "Please head through security. Boarding at <color=\#5B81FF>Gate 14</color>." #speaker:Airline Agent
    "Thank you." #speaker:Nomad
    ~ boardingPass = "yes"
    -> END
    === alreadyPickedUp === 
    "Hello again, is there something I can help you with?" #speaker:Airline Agent
* [Where do I go next?]
    "I forgot where do I go next?" #speaker:Nomad
    "Please head through security. Boarding at <color=\#5B81FF>Gate 14</color>." #speaker:Airline Agent
    "Oh right, thank you." #speaker:Nomad
    ->END
* [Nevermind]
    "Nevermind, I'll be on my way." #speaker:Nomad
    -> END