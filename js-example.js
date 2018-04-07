var sampleCalendar = 
             [
             {date:'2017-03-11', event:['see a doctor']}, 
             {date:'2017-03-11', event:['see a doctor', 'go out with friends', 'shop for groceries']}, 
             {event: ['see a doctor', 'go out with friends']}
             ];

//add current date if no date exists
function checkDate(calendar) {
  
  
  for (var i = 0; i < calendar.length; i++) {
    if (calendar[i].date === undefined) {
      calendar[i].date = currentDate();
    }
  }
  
}


function numberEvents(calendar) {
  
  for (var i = 0; i < calendar.length; i++) {
    //check if calendar.event is an array and not a string;
    //check if the length of the array is greater than 1
    if (calendar[i].event instanceof Array && calendar[i].event.length > 1) {
      var eventNumber = 1;
      var length = (Object.keys(calendar[i].event).length);
      for (j = 0; j < length; j++) {
        calendar[i].event[j] = eventNumber + ': ' + calendar[i].event[j];
        eventNumber++;
      }
    }
  }
  
}

checkDate(sampleCalendar);

numberEvents(sampleCalendar);

console.log(sampleCalendar);


function currentDate() {
  var today = new Date();
  var dd = today.getDate();
  var mm = today.getMonth()+1; //January is 0!
  var yyyy = today.getFullYear();

  if(dd<10) {
      dd = '0'+dd
  } 

  if(mm<10) {
      mm = '0'+mm
  } 

  today = yyyy +'-' + mm + '-' + dd;
  
  return today;
}
