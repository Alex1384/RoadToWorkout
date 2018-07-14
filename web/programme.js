//this function will find today's date
function calendar() {
    var  day = ['Lundi','Mardi','Mercredi','Jeudi','Vendredi','Samedi', 'Dimanche']
    var month =['Janvier','Février','Mars','Avril','Mai','Juin','Juillet','Août','Septembre','Novembre','Décembre']
    var d = new Date();
    setText('calendar-day',day[d.getDay()]);
    setText('calendar-date',d.getDate());
    setText('calendar-month-year', month[d.getMonth()]+' '+(d.getFullYear()));

    setText('calendar-day2',day[0]);
    setText('calendar-day3',day[1]);
    setText('calendar-day4',day[2]);
    setText('calendar-day5',day[3]);
    setText('calendar-day6',day[4]);
    setText('calendar-day7',day[5]);
    setText('calendar-day8',day[6]);


}

//this function will set the text value of <p> tags
function setText(id, val) {
    if (val < 10) {
        val = '0' + val; //add leading of 0 iv val < 10
    }
    document.getElementById(id).innerHTML = val;
}

//call calendar() when page load
window.onload = calendar;

