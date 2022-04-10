List<string> listColor=new List<string>();
listColor.add('Yellow');
listColor.add('white');
listColor.add('blue');
listColor.add('black');
listColor.add('red');
listColor.add('purple');
System.debug('listed colors are '+listColor);
System.debug(' there are '+listColor.size()+ ' colors');
Boolean hasRed=listColor.contains('red');
System.debug('list has red color? '+hasred);

//this is how we can get the last element in a list

System.debug(listColor[listColor.size()-1].toUpperCase()); //study this 
//how to get element number 5
string get5=listColor.get(5);
System.debug(get5.toUpperCase());
System.debug('all colors are '+listColor);

List<string> colorCodesList=new List<string>();
colorCodesList.add('#ff0900');
colorCodesList.add('#ff0980');
colorCodesList.add('#ff09796');
colorCodesList.add('#ff049490');
colorCodesList.add('#ff02340');
colorCodesList.add('#f2344900');

//how to check if two different lists are equal

System.debug('are the lists equal? '+colorCodesList.equals(listColor));
colorCodesList.addAll(listColor);
System.debug('color codes and colors are listed as '+colorCodesList);
