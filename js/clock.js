function updateTime() {
    timeText.text = getFormattedDateTime("hh:mm");
    var date = getFormattedDateTime("MM/dd/yyyy");
    var day = getDay(new Date().getDay());
    dateText.text = day + "  " + date;
}

function getFormattedDateTime(format) {
    var date = new Date
    return Qt.formatDateTime(date, format)
}

function getDay(day) {
    switch(day) {
    case 0:
        return "SUN";
    case 1:
        return "MON";
    case 2:
        return "TUE";
    case 3:
        return "WED";
    case 4:
        return "THU";
    case 5:
        return "FRI";
    case 6:
        return "SAT";
    }
}
