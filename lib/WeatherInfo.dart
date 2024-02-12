class WeatherInfo {
  String? city;
  int? temperature;
  String? condition;
  int? humidity;
  double? windSpeed;

  WeatherInfo(
      {this.city,
        this.temperature,
        this.condition,
        this.humidity,
        this.windSpeed});

  WeatherInfo.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    temperature = json['temperature'];
    condition = json['condition'];
    humidity = json['humidity'];
    windSpeed = json['windSpeed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['temperature'] = this.temperature;
    data['condition'] = this.condition;
    data['humidity'] = this.humidity;
    data['windSpeed'] = this.windSpeed;
    return data;
  }
}