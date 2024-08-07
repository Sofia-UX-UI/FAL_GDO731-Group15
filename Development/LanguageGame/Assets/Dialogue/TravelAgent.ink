INCLUDE globals.ink
    { boardingPass == "no": ->start | ->alreadyPickedUp }
=== start ===
    "Hi, I'd like to book the next flight avaliable." #speaker:Nomad #layout:left
    "Oh? We have a number that you could board is there somewhere specific?" #speaker:Travel Agent #layout:right
    How should I reply? #speaker:Nomad #layout:left
* [Cheapest]
->cheapest
* [Anywhere]
->anywhere
* [Nevermind]
->nevermind
=== cheapest ===
    "I'm looking to stay on budget so nothing too expensive, maybe go with the cheapest that isn't inside our country." #speaker:Nomad #layout:left
    "This seems like a good deal. They have a special tourist promotion." #speaker:Travel Agent #layout:right
    "Perfect! I'd like to be surprised when I show up to the gate, if you don't mind." #speaker:Nomad #layout:left
    "Sure, please head through security. Boarding at <color=\#5B81FF>Gate 14</color>." #speaker:Travel Agent #layout:right
    "Thank you." #speaker:Nomad #layout:left
    "Enjoy your trip!" #speaker:Travel Agent #layout:right
    ~ boardingPass = "yes"
    -> END
=== nevermind === 
    "I'm not sure, I need some time before making a decision." #speaker:Nomad #layout:left
    "Okay. Speak to me again when you are ready." #speaker:Travel Agent #layout:right
    "Thank you." #speaker:Nomad #layout:left
    -> END
=== anywhere === 
    "Anywhere that looks good to you, randomly pick if needed." #speaker:Nomad #layout:left
    "Let me see... Do you have a VISA for any specific country?" #speaker:Travel Agent #layout:right
    "No... I didn't think about getting something like that." #speaker:Nomad #layout:left
    "I can work around it but I recommend looking into it in the future. Did you want me to tell you where?" #speaker:Travel Agent #layout:right
    "No thank you. I'd like to be surprised when I show up to the gate." #speaker:Nomad #layout:left
    "Please head through security. Boarding at <color=\#5B81FF>Gate 14</color>." #speaker:Travel Agent #layout:right
    "Thank you." #speaker:Nomad #layout:left
    ~ boardingPass = "yes"
    -> END
    === alreadyPickedUp === 
    "Hello again, is there something I can help you with?" #speaker:Travel Agent #layout:right
    How should I reply? #speaker:Nomad #layout:left
* [Where do I go next?]
    "I forgot where do I go next?" #speaker:Nomad #layout:left
    "Please head through security. Boarding at <color=\#5B81FF>Gate 14</color>." #speaker:Travel Agent #layout:right
    "Oh right, thank you." #speaker:Nomad #layout:left
    ->END
* [Nevermind]
    "Nevermind, I'll be on my way." #speaker:Nomad #layout:left
    -> END