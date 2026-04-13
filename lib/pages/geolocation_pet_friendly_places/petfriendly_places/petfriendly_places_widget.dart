import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/geolocation_pet_friendly_places/place_card/place_card_widget.dart';
import 'package:flutter/material.dart';
import 'petfriendly_places_model.dart';
export 'petfriendly_places_model.dart';

/// Create a page for a location selector bottom sheet modal in FlutterFlow.
///
/// White background, rounded top 24px, 70% screen height. Header 60px:
/// "Select Park Location" dark blue (#2D3E50) bold 18px centered, X close
/// icon gray 24x24px top-right, drag handle gray 40x4px at top. Search bar
/// 16px margin: light gray (#F5F5F5) 44px height radius 22px, search icon
/// left 20x20px, "Search parks..." placeholder 15px, current location button
/// blue circle 36x36px right. Google Maps widget flex expand below, paw print
/// markers dark blue, selected marker yellow 32x32px, user location blue dot
/// with pulse. Selected card above button: white radius 12px elevation 2
/// padding 12px, park name dark blue bold 16px, address gray 13px, distance
/// with icon 12px, "Pet-friendly" badge light blue. Send button fixed bottom
/// 16px margin: dark blue 52px height "Send Location" white bold 16px radius
/// 26px elevation 4, gray when disabled.
class PetfriendlyPlacesWidget extends StatefulWidget {
  const PetfriendlyPlacesWidget({super.key});

  static String routeName = 'PetfriendlyPlaces';
  static String routePath = '/petfriendlyPlaces';

  @override
  State<PetfriendlyPlacesWidget> createState() =>
      _PetfriendlyPlacesWidgetState();
}

class _PetfriendlyPlacesWidgetState extends State<PetfriendlyPlacesWidget> {
  late PetfriendlyPlacesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PetfriendlyPlacesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PlacesRecord>>(
      stream: queryPlacesRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFFFFD93D),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<PlacesRecord> petfriendlyPlacesPlacesRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFFFD93D),
            body: SafeArea(
              top: true,
              child: Builder(
                builder: (context) {
                  final places = petfriendlyPlacesPlacesRecordList.toList();

                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: places.length,
                    separatorBuilder: (_, __) => SizedBox(height: 16.0),
                    itemBuilder: (context, placesIndex) {
                      final placesItem = places[placesIndex];
                      return PlaceCardWidget(
                        key: Key('Keyfwq_${placesIndex}_of_${places.length}'),
                        placeDoc: placesItem,
                        onFavoriteToggle: () async {
                          _model.isFavorite = !(_model.isFavorite ?? true);
                          safeSetState(() {});
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
