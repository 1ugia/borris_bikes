# borris_bikes

Project emulating Santander Cycles system.
A Makers Week 1 pair programming challenge.

* **Languages used**: Ruby
* **Testing frameworks**: RSpec

### Functional Representation of User Stories

Objects  | Messages
------------- | -------------
Station  | inistialize array, release_bike, dock(bike), view_bike
Bike | working?
### Domain Model

```
Bike <-- checks bike working --> true/false
Station <-- initialize --> adds bikes
Station <-- checks if bike is empty --> release_bike
Station <-- checks if station is full --> docks bike
Station <-- view bikes available --> lists bikes docked

```