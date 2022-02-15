import 'package:flutter/material.dart';
import 'package:sport_finder/ui/locations/location_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sport_finder/ui/shared/widgets/drawer/custom_drawer.dart';

class FindingView extends StatefulWidget {
  const FindingView({Key? key}) : super(key: key);

  @override
  _FindingViewState createState() => _FindingViewState();
}

class _FindingViewState extends State<FindingView> {
  late GoogleMapController mapController;
  double lat = -5.825849264738977;
  double lng = -35.21002536505401;

  Set<Marker> marcadores = {};
  late BitmapDescriptor mapMarker;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  void setCustomMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'imagens/estadio.png');
  }

  _onMapCreated(GoogleMapController controller){
    setState(() {
      marcadores.add(
          Marker(
              markerId: const MarkerId("marcador-ufrn"),
              position: const LatLng(-5.835786283340537, -35.200946525256384),
              infoWindow: const InfoWindow(
                  title: 'Campo de Futebol - UFRN'
              ),
              icon: mapMarker,
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LocationView("Campo de Futebol - UFRN")
                    )
                )
              }
          )
      );
    });
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          child: const Icon(
            FontAwesomeIcons.bars,
            color: Colors.black,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          backgroundColor: Colors.white,
        );
      }),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        onTap: (position) {
          print(position);
        },
        initialCameraPosition: CameraPosition(
            target: LatLng(lat, lng),
            zoom: 14.0
        ),
        markers: marcadores,
      ),
    );
  }
}
