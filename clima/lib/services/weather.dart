import 'location.dart';
import 'networking.dart';

const apiKey = "882fa3b52b8cd05f1f1a2b5860663460";
const openWeatherMapUrl = "https://api.openweathermap.org/data/2.5/weather";

class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getLocationWeather() async {
    String url;
    double latitude, longitude;
    Location location = new Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    url =
        "$openWeatherMapUrl?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric#";
    NetworkHelper network = NetworkHelper(url);
    return await network.getData();
  }

  Future<dynamic> getCityWeather(String cityName) async {
    var url = "$openWeatherMapUrl?q=$cityName&appid=$apiKey&units=metric#";
    NetworkHelper network = NetworkHelper(url);
    return await network.getData();
  }
}
