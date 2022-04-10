public class Car {

//public variable defined directly inside class
//this can be accessed outside of class

public string carColor='';
public string carName='';
public static Integer carsRunningAtMaxSpeed=0;

//private class
//this can only be accessed withing the class

private Integer  maxSpeedKMPerHour=150;

    //method demo
    public void switchOn(){
        system.debug('starting the car');

    }

    public void drive(){
        System.debug('driving '+carName);

    }

    public void drivingAtMaxSpeed(){
        string drivingDescription=' driving '+' at '+maxSpeedKMPerHour+'km/h';

        //static variable is accessible in non-static method
        carsRunningAtMaxSpeed++;
        System.debug(drivingDescription);
    }

    public void carDescription(){

    //print all the car charactristics

    }

    public static string usage(){
        string use ='Car is used for transportation';
        use +=' and fashion';
        return use;
    }
  
}
