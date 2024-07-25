INCLUDE globals.ink
-> Introduction
=== Introduction === 
    "Boarding pass and passport please." #speaker:Security Guard #layout:right
    ->start
=== start ===
    What should I do? 
* [Walk through]
->rude
* [Hand over documents]
->handover
* [Nevermind]
->nevermind
=== rude ===
    "You can't come through unless you show me your documents." #speaker:Security Guard #layout:right
    "Oh." #speaker:Player #layout:left
    ->start
=== handover === 
    "Of course here you are." #speaker:Player #layout:left
    "Okay. Speak to me again when you are ready." #speaker:Travel Agent #layout:right
    "Thank you." #speaker:Player #layout:left
    -> END 
=== nevermind === 
    "Anywhere that looks good to you, randomly pick if needed." #speaker:Player #layout:left
    "Let me see... Do you have a VISA for any specific country?" #speaker:Travel Agent #layout:right
    "No... I didn't think about getting something like that." #speaker:Player #layout:left
    "I can work around it but I recommend looking into it in the future. Did you want me to tell you where?" #speaker:Travel Agent #layout:right
    "No thank you. I'd like to be surprised when I show up to the gate." #speaker:Player #layout:left
    "Please drop your luggage off then head through security. Boarding at <color=\#5B81FF>Gate 14</color>." #speaker:Travel Agent #layout:right
    "Thank you." #speaker:Player #layout:left
    ~ boardingPass = "yes"
    -> END