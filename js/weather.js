function getWeather(id) {
    var doc = new XMLHttpRequest();
    doc.onreadystatechange = function() {
       if (doc.readyState === doc.DONE) {
           if(doc.responseText === "" || doc.responseText == null) {
               console.log("Weather data error");
               return;
           }
           var jsonObject = eval('(' + doc.responseText + ')');
           if(id === 0)
               loadValueWeatherNow(jsonObject);
           else
               loadValueWeatherLater(jsonObject);
        }
    }
    // Get the weather data from request API
    doc.open("GET", "http://api.wunderground.com/api/33ea487a2aa56089/hourly/q/IL/Chicago.json");
    doc.send();
}

function loadValueWeatherNow(jsonObject) {
    temperatureNowText.text = jsonObject.hourly_forecast[0].temp.english + "° F";
    weatherIconNow.source = jsonObject.hourly_forecast[0].icon_url;
}

function loadValueWeatherLater(jsonObject) {
    temperatureLaterText.text = jsonObject.hourly_forecast[1].temp.english + "° F";
    weatherIconLater.source = jsonObject.hourly_forecast[1].icon_url;
}
