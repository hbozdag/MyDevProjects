public class Cat {

    public string name='';
    public string color='';
   

//parameterized constructor. 

public Cat(string name, string color){
    this.name=name;
    this.color=color;
}
   /*
   parameterless constructor.
   same name with the class.
   does not return antything.
   */
    public Cat() {
System.debug('constructor called. created a cat.');

    }

    
}
