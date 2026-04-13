import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_place_widget.dart' show AddPlaceWidget;
import 'package:flutter/material.dart';

class AddPlaceModel extends FlutterFlowModel<AddPlaceWidget> {
  ///  Local state fields for this page.

  String? placeName;

  String? placeAddress;

  String? placeCategory;

  String? placeDescription;

  String? placeOpeningHours;

  String? placeEventsSchedule;

  String? placeSpecialEvents;

  bool? placeIsFenced = false;

  String? placePhoto1;

  String? placePhoto2;

  String? placePhoto3;

  int? placeLat;

  int? placeLong;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TxtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  // State field(s) for TxtAddress widget.
  FocusNode? txtAddressFocusNode;
  TextEditingController? txtAddressTextController;
  String? Function(BuildContext, String?)? txtAddressTextControllerValidator;
  // State field(s) for TxtCat widget.
  FocusNode? txtCatFocusNode;
  TextEditingController? txtCatTextController;
  String? Function(BuildContext, String?)? txtCatTextControllerValidator;
  // State field(s) for TxtDescrip widget.
  FocusNode? txtDescripFocusNode;
  TextEditingController? txtDescripTextController;
  String? Function(BuildContext, String?)? txtDescripTextControllerValidator;
  // State field(s) for TxtOpenhs widget.
  FocusNode? txtOpenhsFocusNode;
  TextEditingController? txtOpenhsTextController;
  String? Function(BuildContext, String?)? txtOpenhsTextControllerValidator;
  // State field(s) for TxtEvSchedule widget.
  FocusNode? txtEvScheduleFocusNode;
  TextEditingController? txtEvScheduleTextController;
  String? Function(BuildContext, String?)? txtEvScheduleTextControllerValidator;
  // State field(s) for TxtSEvents widget.
  FocusNode? txtSEventsFocusNode;
  TextEditingController? txtSEventsTextController;
  String? Function(BuildContext, String?)? txtSEventsTextControllerValidator;
  // State field(s) for TxtLat widget.
  FocusNode? txtLatFocusNode;
  TextEditingController? txtLatTextController;
  String? Function(BuildContext, String?)? txtLatTextControllerValidator;
  // State field(s) for TxtLong widget.
  FocusNode? txtLongFocusNode;
  TextEditingController? txtLongTextController;
  String? Function(BuildContext, String?)? txtLongTextControllerValidator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  bool isDataUploading_uploadedPlacePhoto1 = false;
  FFUploadedFile uploadedLocalFile_uploadedPlacePhoto1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedPlacePhoto1 = '';

  bool isDataUploading_uploadedPlacePhoto2 = false;
  FFUploadedFile uploadedLocalFile_uploadedPlacePhoto2 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedPlacePhoto2 = '';

  bool isDataUploading_uploadedPlacePhoto3 = false;
  FFUploadedFile uploadedLocalFile_uploadedPlacePhoto3 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedPlacePhoto3 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtAddressFocusNode?.dispose();
    txtAddressTextController?.dispose();

    txtCatFocusNode?.dispose();
    txtCatTextController?.dispose();

    txtDescripFocusNode?.dispose();
    txtDescripTextController?.dispose();

    txtOpenhsFocusNode?.dispose();
    txtOpenhsTextController?.dispose();

    txtEvScheduleFocusNode?.dispose();
    txtEvScheduleTextController?.dispose();

    txtSEventsFocusNode?.dispose();
    txtSEventsTextController?.dispose();

    txtLatFocusNode?.dispose();
    txtLatTextController?.dispose();

    txtLongFocusNode?.dispose();
    txtLongTextController?.dispose();
  }
}
