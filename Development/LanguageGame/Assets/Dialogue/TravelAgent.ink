-> Introduction
=== Introduction === 
Hi, I'd like to book the next flight avaliable. #speaker:Player #portrait:Player_Temp #layout:left
    ->start
=== start ===
    "Oh? We have a number that you could board is there somewhere specific?" #speaker:Travel Agent #portrait:Shopkeep_Temp #layout:right

    How do you reply?
* [Whatever is the cheapest.]
->cheapest
* [Whatever gets me there fastest]
->fastest
* [No, anywhere that looks good to you.]
->anywhere
=== cheapest ===
    "I'm looking to stay on budget so nothing too expensive, maybe go with the cheapest that isn't inside our country."#speaker:Player #portrait:Player_Temp #layout:left
    "This seems like a good deal. They have a special tourist promotion." #speaker:Travel Agent #portrait:Shopkeep_Temp #layout:right
    "Perfect! I'd like to be surprised when I show up to the gate, if you don't mind."#speaker:Player #portrait:Player_Temp #layout:left
     "Sure, please drop your luggage off then head through security. Boarding at Gate 14." #speaker:Travel Agent #portrait:Shopkeep_Temp #layout:right
      "Thank you."#speaker:Player #portrait:Player_Temp #layout:left
    -> END
=== fastest === 
    "I'm looking to get to wherever really quickly." #speaker:Player #portrait:Player_Temp #layout:left
    "Oh, you might have a better chance staying in country then."  #speaker:Travel Agent #portrait:Shopkeep_Temp #layout:right
    "Quick-ish then... I don't want to spend most of my vacation getting to the location. Otherwise anything that looks good." #speaker:Player #portrait:Player_Temp #layout:left
    "Hmm what about S-"  #speaker:Travel Agent #portrait:Shopkeep_Temp #layout:right
    "No don't tell me, let it be a surprise at the gate." #speaker:Player #portrait:Player_Temp #layout:left
    "Okay... Please drop your luggage off then head through security. Boarding at Gate 14."  #speaker:Travel Agent #portrait:Shopkeep_Temp #layout:right
     "Thank you."#speaker:Player #portrait:Player_Temp #layout:left
    -> END 
=== anywhere === 
    "Anywhere that looks good to you, randomly pick if needed." #speaker:Player #portrait:Player_Temp #layout:left
    "Let me see... Do you have a VISA for any specific country?" #speaker:Travel Agent #portrait:Shopkeep_Temp #layout:right
    "No... I didn't think about getting something like that." #speaker:Player #portrait:Player_Temp #layout:left
    "I can work around it but I recommend looking into it in the future. Did you want me to tell you where?" #speaker:Travel Agent #portrait:Shopkeep_Temp #layout:right
    "No thank you. I'd like to be surprised when I show up to the gate."#speaker:Player #portrait:Player_Temp #layout:left
     "Please drop your luggage off then head through security. Boarding at Gate 14." #speaker:Travel Agent #portrait:Shopkeep_Temp #layout:right
     "Thank you."#speaker:Player #portrait:Player_Temp #layout:left
    -> END