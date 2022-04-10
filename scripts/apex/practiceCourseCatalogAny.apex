List<String> courseCatalog=new List<String>();
courseCatalog.add('English 1');
courseCatalog.add('Algebra 1');
courseCatalog.add('Biology');
courseCatalog.add('World Geo');
courseCatalog.add('Psychology');
courseCatalog.add('US History');
courseCatalog.add('Physics');

system.debug('we offer '+courseCatalog);
System.debug('there are '+courseCatalog.size()+' course in the catalog');
System.debug('Does that catalog have Biology? '+courseCatalog.contains('Biology'));
System.debug('the last course in the catalog is '+courseCatalog[courseCatalog.size()-1].toUpperCase());


List<String> courseIDs=new List<String>();
courseIDs.add('KT82929');
courseIDs.add('YT83939');
courseIDs.add('ERDJ929');
courseIDs.add('IWWO93');
courseIDs.add('JSKSL92');
courseIDs.add('NSJSKJ9');
courseIDs.add('MSJK939');

System.debug('are the course names and course IDs same??? '+courseIDs.equals(courseCatalog));
courseIDs.addAll(courseCatalog);
System.debug('here are all the IDs and the course names '+courseIDs);





