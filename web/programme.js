//this function will find today's date
function calendar() {
    var  day = ['Dimanche','Lundi','Mardi','Mercredi','Jeudi','Vendredi','Samedi']
    var month =['Janvier','Février','Mars','Avril','Mai','Juin','Juillet','Août','Septembre','Novembre','Décembre']
    var d = new Date();
    setText('calendar-day',day[d.getDay()]);
    setText('calendar-date',d.getDate());
    setText('calendar-month-year', month[d.getMonth()]+' '+(d.getFullYear()));

    setText('calendar-day2',day[1]);
    setText('calendar-day3',day[2]);
    setText('calendar-day4',day[3]);
    setText('calendar-day5',day[4]);
    setText('calendar-day6',day[5]);
    setText('calendar-day7',day[6]);
    setText('calendar-day8',day[0]);

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


//********************************* click on calendar one *******************//

function showProgrammeOnDay() {
    var x = document.getElementById("calendar-day").textContent;
    var a = document.getElementById("card1");
    var b = document.getElementById("card2");
    var c = document.getElementById("card3");
    var d = document.getElementById("card4");
    var e = document.getElementById("card5");
    var f = document.getElementById("card6");
    var g = document.getElementById("card7");

    var textMonday = "Lundi";
    var textTuesday = "Mardi";
    var textWednesday = "Mercredi";
    var textThursday = "Jeudi";
    var textFriday = "Vendredi";
    var textSaturday = "Samedi";
    var textSunday = "Dimanche";

    if (x === textMonday){
        a.style.display = "block";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "none";
        e.style.display = "none";
        f.style.display = "none";
        g.style.display = "none";

    }
    else if (x === textTuesday) {
        b.style.display = "block";
        a.style.display = "none";
        c.style.display = "none";
        d.style.display = "none";
        e.style.display = "none";
        f.style.display = "none";
        g.style.display = "none";

    }
    else if (x === textWednesday) {
        c.style.display = "block";
        a.style.display = "none";
        b.style.display = "none";
        d.style.display = "none";
        e.style.display = "none";
        f.style.display = "none";
        g.style.display = "none";

    }
    else if (x === textThursday) {
        d.style.display = "block";
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "none";
        e.style.display = "none";
        f.style.display = "none";
        g.style.display = "none";

    }
    else if (x === textFriday) {
        e.style.display = "block";
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "none";
        f.style.display = "none";
        g.style.display = "none";

    }
    else if (x === textSaturday) {
        f.style.display = "block";
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "none";
        e.style.display = "none";
        g.style.display = "none";


    }
    else if (x === textSunday) {
        g.style.display = "block";
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "none";
        e.style.display = "none";
        f.style.display = "none";

    }
}





