System.debug('cars runnign at max speed is '+car.carsRunningAtMaxSpeed);
Car bm= new Car();
bm.carColor='black';
System.debug('car color is '+ bm.carColor);
bm.switchOn();

Car lm=new Car();
lm.carColor='red';
System.debug('car color is '+lm.carColor);

// becasuse it is private, it cannot be accessed from out of the class.
//lm.maxSpeedKMPerHour();

lm.drive();
lm.drivingAtMaxSpeed();
System.debug('2) cars running at max speed is '+car.carsRunningAtMaxSpeed);
System.debug('cars runnign at max speed is '+car.carsRunningAtMaxSpeed);
System.debug('cars runnign at max speed is '+car.carsRunningAtMaxSpeed);

system.debug(car.usage());