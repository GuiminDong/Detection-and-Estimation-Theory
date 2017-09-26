You are to simulate a virtural robot that follows the three paths below.  You will estimate and track the robot's location using a Partical Filter and also using a Kalman Filter.

Path 1:
Initial position: xpos = 25, ypos = 9, theta = pi/2
movement commands (r, theta):  (6, pi/2), (6, -pi/2), (4,0), (8, pi/2), (5, pi/2), (5, 0), (10, -pi/2), (4, pi/2), (4,0), (5, pi/2), (5, 0), (5, 0)

Path 2:
Initial position: xpos = 2, ypos = 5, theta = 0
movement commands (r, theta): (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0)


Path 3:
Initial position: xpos = 2, ypos = 2, theta = 0
movement commands (r, theta): (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0), (2,0)
track the robots using an Extendend Kalman Filter.  Use the true initial position of the robot as the initial state and an identity matrix as the initial covariance Sigma0.  You will need to estimate the linearization of the sensor function numerically.  Also, for the first path also try differnt initial guesses of position and orientation to try to find out how far away you can be and still be able to track the robot.
