Planets pl=new Planets();
pl.planet='Earth';
pl.planetNumber='3';
pl.numberofMoons='1';
System.debug('My planet is '+pl.planet+ ' and its number is '+ pl.planetNumber+ ' and it has ' +pl.numberofMoons+ ' moon');

Planets fav=new Planets();
fav.planet='Mars';
fav.planetNumber='4';
fav.numberofMoons='2';
System.debug('My favorite planet is '+fav.planet+ ' and its number is '+ fav.planetNumber+ ' and it has ' +fav.numberofMoons+ ' moons');

ListPractice lp=new ListPractice();

lp.addPlanet('Jupiter', '1', '3');
lp.addPlanet('earth', '4', '1');
lp.addPlanet('venus', '4', '1');
system.debug(ListPractice.planetsList);

