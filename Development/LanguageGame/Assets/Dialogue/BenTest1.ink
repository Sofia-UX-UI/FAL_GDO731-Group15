VAR Friendship = 0 


-> Introduction
=== Introduction === 
You've put away your things and began to explore! You start by walking into a cute convenience store.
You want to ask about the best places to eat, so you walk over to the counter and speak to the person serving. #speaker:Player #portrait:Player_Temp #layout:left
    ->start
=== start ===
    "Hej, hur mår du?" <br> <i>"Hi, how are you?"</i> #speaker:Shopkeeper #portrait:Shopkeep_Temp #layout:right

    How do you reply?
* [Hi, I've only just got here, so I'm a little nervous...]
->beginner
* [Hej, jag mår bra tack, och du?]
->confident
=== confident ===
    "Hej, jag mår bra tack, och du?" <br> <i>"Hi, I'm good thank you, and you?"</i>#speaker:Player #portrait:Player_Temp #layout:left
    "Jag mår också bra tack! Hur kan jag hjälpa?" <br><i>"I'm good too thank you! How can I help?"</i> #speaker:Shopkeeper #portrait:Shopkeep_Temp #layout:right
    -> END
=== beginner === 
    "Hi, I've only just got here, so I'm a little nervous..." #speaker:Player #portrait:Player_Temp #layout:left
    "Oh, that's okay! Welcome to Stockholm. Did you want me to teach you some Swedish basics to get you started?  #speaker:Shopkeeper #portrait:Shopkeep_Temp #layout:right
    -> END 