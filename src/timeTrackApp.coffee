angular.module('timeTrackApp',[]).controller 'timeTrackController', ($scope) ->
    
    timeslot={intime:"10:00am", outtime:"06:00pm"};
    
    $scope.Weeks=[
        { name: "Sun", isAvail: false, timeTrackList: [timeslot]},
        { name: "Mon", isAvail: true, timeTrackList: [timeslot]},
        { name: "Tue", isAvail: true, timeTrackList: [timeslot]},
        { name: "Tue", isAvail: true, timeTrackList: [timeslot]},
        { name: "Wed", isAvail: true, timeTrackList: [timeslot]},
        { name: "Thu", isAvail: true, timeTrackList: [timeslot]},
        { name: "Fri", isAvail: true, timeTrackList: [timeslot]},
        { name: "Sat", isAvail: false, timeTrackList: [timeslot]}
        ]
    $scope.AddtimeSlot =(currentRow)-> 
        currentRow.timeTrackList.push({intime:'10:00am', outtime:'06:00pm'})
    
    $scope.removeRow = (dayItem, currentRow)-> 
        dayItem.timeTrackList.splice(dayItem.timeTrackList.indexOf(currentRow),1)
    
  