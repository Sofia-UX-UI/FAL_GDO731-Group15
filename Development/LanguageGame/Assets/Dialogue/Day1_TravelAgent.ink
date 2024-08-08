INCLUDE globals.ink
    { boardingPass == "no": ->start | ->alreadyPickedUp }
=== start ===
    "Hi, I'd like to book the next flight available." #speaker:Nomad
    "Oh? We have a number that you could board is there somewhere specific?" #speaker:Airline Agent
* [Cheapest]
->cheapest
* [Anywhere]
->anywhere
* [Nevermind]
->nevermind
=== cheapest ===
    "I'm looking to stay on budget so nothing too expensive, maybe go with the cheapest that isn't inside our country." #speaker:Nomad
    "This seems like a good deal. They have a special tourist promotion." #speaker:Airline Agent
    "Perfect! I'd like to be surprised when I show up to the gate, if you don't mind." #speaker:Nomad
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
=== anywhere === 
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