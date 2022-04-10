MAP<string, string> teachCourse= new Map<String,String>();
teachCourse.put('Biology', 'Mr. Valsh');
teachCourse.put('Science', 'Ms. Dora');
teachCourse.put('English 1', 'Mr. Dell');
teachCourse.put('World Geo', 'Mr. Bakis');
teachCourse.put('World History', 'Mr. Forlksi');
teachCourse.put('6th Grade Art', 'Mrs. Valsh');
teachCourse.put('GT Comp', 'Mr. Kisali');
teachCourse.put('AP Chemistry ', 'Ms. Lirastu');


Map<String,Integer> classroom=new Map<String,Integer>();
classroom.put('Mr. Dell', 104);
classroom.put('Ms. Jolie', 123);

system.debug(teachCourse.keySet());
System.debug(teachCourse.values());
System.debug('does this school teach GT Comp? '+teachCourse.containsKey('GT Comp'));
System.debug('teacher who is teaching Biology is '+teachCourse.get('Biology'));
System.debug('are the two maps the same? '+teachCourse.equals(classroom));
system.debug('size of the course list is '+ teachCourse.size()+ ' and size of the classroom list is '+classroom.size());
system.debug('here is the course and teacher lists : '+teachCourse);
System.debug(' here is the list of classrooms and the teachers who use those rooms '+classroom);

