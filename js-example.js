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

//add linebreaks and opening and closing quotations
function formatCalendar(calendar) {
  var calendarStr = "";
  
  for (var i = 0; i < calendar.length; i++) {
    calendarStr = calendarStr + '    ' + calendar[i].date + '\\n';
    for (var j = 0; j < calendar[i].event.length; j++) {
      calendarStr = calendarStr + '        ' + calendar[i].event[j] + '\\n';
    }
  }
  
  //remove the last linebreak from the string
  calendarStr = '\\n' + calendarStr.slice(0,-2);
  
  console.log(calendarStr);
  
}


function numberEvents(calendar) { 
  for (var i = 0; i < calendar.length; i++) {
    //check if calendar.event is an array and not a string;
    //check if the length of the array is greater than 1
    if (calendar[i].event instanceof Array && calendar[i].event.length > 0) {
      var eventNumber = 0;
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

formatCalendar(sampleCalendar);


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
