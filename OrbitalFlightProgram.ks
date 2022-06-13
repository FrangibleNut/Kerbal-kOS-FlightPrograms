
// optimized for Craft 4

clearScreen.

set throttle to 1.

// countdown

print "counting down:".
from {local countdown is 5.} until countdown = 0 step {set countdown to countdown - 1.} do {
    print " - - - " + countdown.
    wait 1.
} 

clearScreen.

stage.

// gravity turn

set steering to heading(90,90). until ship:altitude > 1000.

if ship:altitude >= 1000 and ship:altitude < 2000. { 
    set steering to heading(90,85).
    print round(ship:apoapsis,0) at (0,16). 
    wait until ship:altitude >= 2000.
}

if ship:altitude >= 2000 and ship:altitude < 3000. { 
    set steering to heading(90,80).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 3000.
}

if ship:altitude >= 3000 and ship:altitude < 4000. {
    set steering to heading(90,75).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 4000.
}

if ship:altitude >= 4000 and ship:altitude < 5000. {   
    set steering to heading(90,70).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 5000.
}
     
if ship:altitude >= 5000 and ship:altitude < 6000. {
    set steering to heading(90,65).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 6000.
} 

if ship:altitude >= 6000 and ship:altitude < 7000. {
    set steering to heading(90,60).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 7000.
}

if ship:altitude >= 7000 and ship:altitude < 8000. {
    set steering to heading(90,55).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 8000.
}     

if ship:altitude >= 8000 and ship:altitude < 9000. {
    set steering to heading(90,50).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 9000.
}

if ship:altitude >= 9000 and ship:altitude < 20000. {
    set steering to heading(90,45).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 20000.
}

if ship:altitude >= 20000 and ship:altitude < 21000. {
    set steering to heading(90,40).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 21000.
}

if ship:altitude >= 21000 and ship:altitude < 22000. {
    set steering to heading(90,35).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 22000.
}

if ship:altitude >= 22000 and ship:altitude < 23000. {
    set steering to heading(90,30).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 23000.
} 

if ship:altitude >= 23000 and ship:altitude < 24000. {
    set steering to heading(90,25).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 24000.
}

if ship:altitude >= 24000 and ship:altitude < 25000. { 
    set steering to heading(90,20).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 25000.
}
     
if ship:altitude >= 25000. {
    set steering to heading(90,15).
    print round(ship:apoapsis,0) at (0,16).
    wait until ship:altitude >= 26000.
}

if ship:apoapsis < 150000 set throttle to 1. until ship:apoapsis >= 150000.

if ship:apoapsis >= 150000 set throttle to 0. 

// orbital insertion
  

