# Airport Challenge

```
        ______
        _\____\___
=  = ==(____MA____)
          \_____\___________________,-~~~~~~~`-.._
          /     o o o o o o o o o o o o o o o o  |\_
          `~-.__       __..----..__                  )
                `---~~\___________/------------`````
                =  ===(_________)
```

This programme controls the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off.

## Getting Started

Clone this repo
- `git clone git@github.com:Mintar89/airport-challenge.git`

Install Dependencies
- `gem install bundle` (if not already installed)
- `bundle install`

Head to the root folder
- `cd airport-challenge`

Kick things off with

 ```Shell
$ irb
> require './lib/airport.rb'
```

## You are an air traffic controller

It's your job to ensure the safety of millions. Luckily the system implements a number of safety guards, making catastrophes far less likely.


## Messages

- Instantiate airports: `airport_name = Airport.new`
- Instantiate planes: `plane_name = Plane.new`
- Land planes: `airport_name.land(plane_name)`
- Take off planes: `airport_name.take_off(plane_name)`

_Note: Planes start off in the air - as if they have just entered your airspace and appeared on your radar._

```
 % irb
3.0.0 :001 > require "./lib/airport.rb"
 => true 
3.0.0 :002 > Heathrow = Airport.new
 => #<Airport:0x0000000144b04088 @hangar=[], @capacity=10, @weather=#<Weather:0x0000000144b04010>> 
3.0.0 :003 > Boeing = Plane.new
 => #<Plane:0x0000000144abe0b0 @location=:airborne> 
3.0.0 :004 > Airbus = Plane.new
 => #<Plane:0x000000012600cb58 @location=:airborne> 
3.0.0 :005 > Heathrow.land(Boeing)
 => :grounded 
3.0.0 :006 > Heathrow.take_off(Boeing)
 => :airborne 
3.0.0 :007 > Heathrow.land(Airbus)
 => :grounded 
```
## User Stories

```
As an air traffic controller 
So I can get passengers to a destination 
I want to instruct a plane to land at an airport

As an air traffic controller 
So I can get passengers on the way to their destination 
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

As an air traffic controller 
To ensure safety 
I want to prevent landing when the airport is full 

As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate

As an air traffic controller 
To ensure safety 
I want to prevent takeoff when weather is stormy 

As an air traffic controller 
To ensure safety 
I want to prevent landing when weather is stormy 
```

#### Designing Objects ####

1.

| Object: | Airport | | | |
| ------- | ------- | - | - | - |
| **Attributes:** | Planes | Capacity | Weather |
| **Methods:** | Land | Take off | Full? | In airport? | 


2. 

| Object: | Plane | | | |
| ------- | ----- | - | - | - |
| **Attributes:** | Location |
| **Methods:** | Land | Take off | Grounded | Flying |

3. 

| Object: | Weather | |
| ------- | ----- | - |
| **Attributes:** | Sunny | Stormy |
| **Methods:** | Stormy? |
