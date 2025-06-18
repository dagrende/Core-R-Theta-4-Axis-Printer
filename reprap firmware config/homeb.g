M400              ; Wait for current moves to finish
M913 X50          ; drop motor current
M569 P1 V1        ; put driver 1 into stealth chop mode
M569 P2 V1        ; put driver 2 into stealth chop mode
M400
G91               ; relative positioning

G1 H2 X-10 B-10 F5000 ; go back a few mm
G1 H1 B300 F5000     ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X-10 B-10 F5000 ; go back a few mm
G1 H1 B300 F5000   

G90               ; absolute positioning
M400
M913 X100 B100    ; return current to 100%
M569 P1 V4000     ; put driver 1 into spread cycle mode
M569 P2 V4000     ; put driver 2 into spread cycle mode
M400
G92 B90