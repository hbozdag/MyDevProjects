
Map<string, List<string>> activitiesMap=new Map<string, List<string>>();

List<string> morningActivities= new List<String>{'Morning Walk', 'Workout', 'Read Newspaper', 'Start Office'};
activitiesMap.put('Morning', morningActivities);
List<string> noonActivities= new List<String>{'Office Work', 'Lunch', 'Power Nap'};
activitiesMap.put('Noon', noonActivities);
List<string> eveningActivities= new List<String>{'Continue Office Work'};
activitiesMap.put('Evening', eveningActivities);
List<string> nightActivities= new List<String>{'Family Time', 'Dinner', 'Night Walk'};
activitiesMap.put('Night', nightActivities);

system.debug('number of activities that is planned for evening is '+eveningActivities.size());
System.debug('any activity is planned for morning? '+activitiesMap.containskey('Morning'));


for (string eachKey : activitiesMap.keySet()) {
    List<string> activitiesList=activitiesMap.get(eachKey);
    if(activitiesList.size()>=3){
         System.debug('Load should be reduced and number of activities should be reduced for ' + eachKey);

    } else if(activitiesList.size()<=2 && activitiesList.size()>0){
          System.debug('More Activities can be planned for ' + eachKey);
    }else{
        System.debug('Please plan some activities for ' + eachKey);
    }
    
}




//Extra Assignment Part 1 → Advanced Maps
//1. Create another Map named as 'activitiesMap' which will have all the activities you are planning to do in each part of the day. Like Below:
//Morning => 'Morning Walk', 'Workout', 'Read Newspaper', 'Start Office' 
//Noon => 'Office Work', 'Lunch', 'Power Nap'
//Evening => 'Continue Office Work'
//Night => 'Family Time', 'Dinner', 'Night Walk'
Map<string, List<string>> activitesMap = new Map<string, List<string>>();

List<String> morningActivities = new List<String>{'Morning Walk', 'Workout', 'Read Newspaper', 'Start Office'};
activitesMap.put('Morning', morningActivities);
// System.debug('morningActivities => ' + morningActivities);
// System.debug('activitesMap => ' + activitesMap);
List<String> noonActivities = new List<String>{'Office Work', 'Lunch', 'Power Nap'};
activitesMap.put('Noon', noonActivities);
// System.debug('activitesMap => ' + activitesMap);
List<String> eveningActivities = new List<String>{'Continue Office Work'};
activitesMap.put('Evening', eveningActivities);
// System.debug('activitesMap => ' + activitesMap);
List<String> nightActivities = new List<String>{'Family Time', 'Dinner', 'Night Walk'};
activitesMap.put('Night', nightActivities);
System.debug('activitesMap => ' + activitesMap);

//2. Check how many activities you have planned for evening.
List<String> activitiesPlannedForEvening = activitesMap.get('Evening');
System.debug('Activities Planned in evenning ' + activitiesPlannedForEvening.size());

//3. Check if you have planned any activity for morning or not.
System.debug('Activities Planned for morning or not => ' + activitesMap.containsKey('Morning'));

//4. Now refer the activitiesMap, Write a logic to implement the following:
//If less than 2 and more than 0 activities are planned give a message - "More Activities can be planned for "[Part of the day]
//If more than 4 activities are planned give a message - "Load should be reduced and number of activities should be reduced for "[Part of the day]
//If no activities found, then - "Please plan some activities for "[part of the day]

for(string  eachKey : activitesMap.keySet()){
    List<String> activitiesList = activitesMap.get(eachKey);
    if (activitiesList.size()>=3) {
        System.debug('Load should be reduced and number of activities should be reduced for ' + eachKey);
    } else if(activitiesList.size()<=2 && activitiesList.size()>0){
        System.debug('More Activities can be planned for ' + eachKey);
    } else {
        System.debug('Please plan some activities for ' + eachKey);
    }
}

