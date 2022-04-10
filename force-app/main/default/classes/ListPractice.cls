public class ListPractice {
   
   public static list<Planets> planetsList=new List<Planets>();

    public string addPlanet(string planet, string planetNumber, string numberofMoons ) {
       String returnMessage='';

        if(planet !=null && planet != ''){
            Planets p= new Planets();
            p.planet=planet;
            p.planetNumber=planetNumber;
            p.numberofMoons=numberofMoons;

        planetsList.add(p);
      returnMessage='planet added successfully';
    }
    else {
        returnMessage= 'planet without name cannot be added to the list';
    }
    return returnMessage;
}
}