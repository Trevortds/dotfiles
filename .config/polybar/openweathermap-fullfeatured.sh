#!/bin/sh

. /home/trevor/.config/polybar/.env

get_icon() {
    case $1 in
        01d) icon="";;
        01n) icon="";;
        02d) icon="";;
        02n) icon="";;
        03*) icon="";;
        04*) icon="";;
        09d) icon="";;
        09n) icon="";;
        10d) icon="";;
        10n) icon="";;
        11d) icon="";;
        11n) icon="";;
        13d) icon="";;
        13n) icon="";;
        50d) icon="";;
        50n) icon="";;
        *) icon="";
    esac

    echo $icon
}

get_duration() {

    osname=$(uname -s)

    case $osname in
        *BSD) date -r "$1" -u +%H:%M;;
        *) date --date="@$1" -u +%H:%M;;
    esac

}

KEY="$OWMKEY"
CITY=""
UNITS="imperial"
SYMBOL="°"


location=$(curl -sf https://location.services.mozilla.com/v1/geolocate?key=geoclue)

if [ ! -z "$location" ]; then
    location_lat="$(echo "$location" | jq '.location.lat')"
    location_lon="$(echo "$location" | jq '.location.lng')"

    weather_info=$(curl -sf "http://api.openweathermap.org/data/2.5/onecall?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS")
    # current=$(curl -sf "http://api.openweathermap.org/data/2.5/weather?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS")
    # forecast=$(curl -sf "http://api.openweathermap.org/data/2.5/forecast?APPID=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS&cnt=1")
fi


if [ ! -z "$weather_info" ]; then
    current_temp=$(echo "$weather_info" | jq ".current.temp" | cut -d "." -f 1)
    current_icon=$(echo "$weather_info" | jq -r ".current.weather[].icon")

    forecast_temp=$(echo "$weather_info" | jq ".hourly[1].temp" | cut -d "." -f 1)
    forecast_icon=$(echo "$weather_info" | jq -r ".hourly[1].weather[].icon")


    if [ "$current_temp" -gt "$forecast_temp" ]; then
        trend=""
    elif [ "$forecast_temp" -gt "$current_temp" ]; then
        trend=""
    else
        trend=""
    fi


    sun_rise=$(echo "$weather_info" | jq ".current.sunrise")
    sun_set=$(echo "$weather_info" | jq ".current.sunset")
    now=$(date +%s)

    if [ "$sun_rise" -gt "$now" ]; then
        daytime=" $(get_duration "$(($sun_rise-$now))")"
    elif [ "$sun_set" -gt "$now" ]; then
        daytime=" $(get_duration "$(($sun_set-$now))")"
    else
        daytime=" $(get_duration "$(($sun_rise-$now))")"
    fi

    echo "$(get_icon "$current_icon") $current_temp$SYMBOL  $trend  $(get_icon "$forecast_icon") $forecast_temp$SYMBOL   $daytime"
fi

