INCLUDE globals.ink
{ boardingPass == "no": ->noPass | ->yesPass }
=== noPass ===
    "Boarding pass and passport please." #speaker:Security #layout:right
    "Oh I don't have those yet." #speaker:Nomad #layout:left
    "Please return to the agent." #speaker:Security #layout:right
    -> END
=== yesPass ===
    "Boarding pass and passport please." #speaker:Security #layout:right
    "Of course here you are." #speaker:Nomad #layout:left
    "Okay. Please enjoy your trip." #speaker:Security #layout:right
    "Thank you." #speaker:Nomad #layout:left
    ~ securityCheck = "yes"
    -> END