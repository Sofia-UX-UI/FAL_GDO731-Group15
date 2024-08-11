INCLUDE globals.ink
{ boardingPass == "no": ->noPass | ->yesPass }
=== noPass ===
    Boarding pass and passport please.#speaker:Security
    Oh I don't have a boarding pass yet.#speaker:Nomad
    Please return to the agent.#speaker:Security
    -> END
=== yesPass ===
    Hello. Boarding pass and passport please.#speaker:Security
    Of course, here you are.#speaker:Nomad
    Valencia? Good choice - please enjoy your trip.#speaker:Security
    Thank you.#speaker:Nomad
    ~ securityCheck = "yes"
    -> END