# Introduction
This project is based on a smart car that whenever it goes out of the lane
(a color different than the black is detected ), 
a warning message should be displayed on the screen 
(the message “ALERT ” is displayed on the FPGA board ).
In addition , The car also stops when it detects an obstacle in front of it (The motor stops rotating).

# Parts Used

• 2 sensors


• 1 5V motor


• MAX 10 FPGA on DE10-LITE


• Breadboard



• Transistor


• Set of jumpers


# Code Explanation


# Inputs


-The line track (responsible to detect if the car goes out of
the lane and it comes from the first sensor )
-Obstacle (responsible to detect if there is an obstacle in
front of the car and it comes from the second sensor)


# Outputs


-The motor control signal that controls the motor rotation
(whether to stop or rotate)
- 5 segments to display the word “ALERT” each is a vector
of 7 bits


# Architecture


-Inside the architecture , there is a process that is activated
whenever a change in the 2 input signals is detected .If no
obstacle was detected (obstacle=’1’ as it set to be active
low ) , the motor control signal will rotate normally
,otherwise , if an obstacle is detected ,motor control signal
will stop rotating .
- The other condition is concerned with the line track sensor
if the car did not go out of its lane , all the segments will be
off ( ‘1’ as it set to be active low ) ,otherwise, the 5
segments are assigned to display the word “ALERT” by
turning on the corresponding LEDs (set to ‘0’ )

