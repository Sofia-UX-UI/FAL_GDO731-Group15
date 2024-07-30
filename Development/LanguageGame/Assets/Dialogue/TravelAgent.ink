INCLUDE globals.ink
    { boardingPass == "no": ->start | ->alreadyPickedUp }
=== start ===
    "Hi, I'd like to book the next flight avaliable." #speaker:Player #layout:left
    "Oh? We have a number that you could board is there somewhere specific?" #speaker:Travel Agent #layout:right
    How should I reply? #speaker:Player #layout:left
* [Cheapest]
->cheapest
* [Anywhere]
->anywhere
* [Nevermind]
->nevermind
=== cheapest ===
    "I'm looking to stay on budget so nothing too expensive, maybe go with the cheapest that isn't inside our country." #speaker:Player #layout:left
    "This seems like a good deal. They have a special tourist promotion." #speaker:Travel Agent #layout:right
    "Perfect! I'd like to be surprised when I show up to the gate, if you don't mind." #speaker:Player #layout:left
    "Sure, please head through security. Boarding at <color=\#5B81FF>Gate 14</color>." #speaker:Travel Agent #layout:right
    "Thank you." #speaker:Player #layout:left
    "Enjoy your trip!" #speaker:Travel Agent #layout:right
    ~ boardingPass = "yes"
    -> END
=== nevermind === 
    "I'm not sure, I need some time before making a decision." #speaker:Player #layout:left
    "Okay. Speak to me again when you are ready." #speaker:Travel Agent #layout:right
    "Thank you." #speaker:Player #layout:left
    -> END
=== anywhere === 
    "Anywhere that looks good to you, randomly pick if needed." #speaker:Player #layout:left
    "Let me see... Do you have a VISA for any specific country?" #speaker:Travel Agent #layout:right
    "No... I didn't think about getting something like that." #speaker:Player #layout:left
    "I can work around it but I recommend looking into it in the future. Did you want me to tell you where?" #speaker:Travel Agent #layout:right
    "No thank you. I'd like to be surprised when I show up to the gate." #speaker:Player #layout:left
    "Please head through security. Boarding at <color=\#5B81FF>Gate 14</color>." #speaker:Travel Agent #layout:right
    "Thank you." #speaker:Player #layout:left
    ~ boardingPass = "yes"
    -> END
    === alreadyPickedUp === 
    "Hello again, is there something I can help you with?" #speaker:Travel Agent #layout:right
    How should I reply? #speaker:Player #layout:left
* [Where do I go next?]
    "I forgot where do I go next?" #speaker:Player #layout:left
    "Please head through security. Boarding at <color=\#5B81FF>Gate 14</color>." #speaker:Travel Agent #layout:right
    "Oh right, thank you." #speaker:Player #layout:left
    ->END
* [Nevermind]
    "Nevermind, I'll be on my way." #speaker:Player #layout:left
    -> END