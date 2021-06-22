# borris_bikes

Project emulating Santander Cycles system.
A Makers Week 1 pair programming challenge.

* **Languages used**: Ruby
* **Testing frameworks**: RSpec

### User stories
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.


```

### Functional Representation of User Stories

Objects  | Messages
------------- | -------------
Station  | inistialize array, release_bike - raise error if empty, dock(bike) - raise error if full, view_bike, capacity limit(with flexibility)
Bike | working?
### Domain Model

```
Bike <-- checks bike working --> true/false
Station <-- initialize --> adds bikes
Station <-- checks if bike is empty --> release_bike/raises error
Station <-- checks if station is full (requirerd capacity limit) --> docks bike/raises error
Station <-- view bikes available --> lists bikes docked

```