import 'package:geolocator/geolocator.dart';

class Location
{
  double Latitude,Longitude;
  Future<void> getLocation() async
  {
    try
    {
      Position position=await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      Latitude=position.latitude;
      Longitude=position.longitude;
    }
    catch(e)
    {
      print(e);
    }
  }
}
