INCLUDE globals.ink
"Welcome to <i>aeropuerto de Valencia!</i>" #speaker:??? #layout:right
"Thank - oh wait..." #speaker:Player #layout:left
    * [Thank you]
    "Thank you!" #speaker:Player #layout:left
    "You're welcome, enjoy your stay." #speaker:??? #layout:right
    -> END
* [Merci]
    "<i>Merci!</i>" #speaker:Player #layout:left
    "Oh that's French, how do you say thank you in Spanish?" #speaker:Player #layout:left
    "<i>Gracias</i>" #speaker:??? #layout:right
    "<i>Gracias!</i>" #speaker:Player #layout:left
    -> END
* [Gracias]
    "<i>Gracias!</i>" #speaker:Player #layout:left
    -> END