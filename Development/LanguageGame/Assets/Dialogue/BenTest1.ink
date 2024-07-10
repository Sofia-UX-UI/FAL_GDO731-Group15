VAR Friendship = 0 


-> Introduction
=== Introduction === 
You've put away your things and began to explore! You start by walking into a cute convenience store.
You want to ask about the best places to eat, so you walk over to the counter and speak to the person serving.
* [Start Conversation] 
    ->start
=== start ===
    Shopkeeper:
    "Hej, hur mår du?"
    "Hi, how are you?"
    How do you reply?
* [Hi, I've only just got here, so I'm a little nervous...]
    ->beginner
* [Hej, jag mår bra tack, och du?] 
    ->confident 
    
=== confident ===
    You:
    "Hej, jag mår bra tack, och du?"
    "Hi, I'm good thank you, and you?"
    ~Friendship = Friendship + 1
    
    Shopkeeper:
    "Jag mår också bra tack! Hur kan jag hjälpa?"
    "I'm good too thank you! How can I help?"
    
    -> END
    
=== beginner === 
    You: 
    "Hi, I've only just got here, so I'm a little nervous..."
    
    Shopkeeper:
    "Oh, that's okay! Welcome to Stockholm. Did you want meto teach you some Swedish basics to get you started?
    -> END 