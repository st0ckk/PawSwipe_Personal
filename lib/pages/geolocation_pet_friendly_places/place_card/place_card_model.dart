import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'place_card_widget.dart' show PlaceCardWidget;
import 'package:flutter/material.dart';

class PlaceCardModel extends FlutterFlowModel<PlaceCardWidget> {
  ///  Local state fields for this component.

  bool? isLiked = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
