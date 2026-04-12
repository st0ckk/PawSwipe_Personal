import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_pawfile_widget.dart' show CreatePawfileWidget;
import 'package:flutter/material.dart';

class CreatePawfileModel extends FlutterFlowModel<CreatePawfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your doggo\'s name.';
    }

    return null;
  }

  // State field(s) for breed widget.
  FocusNode? breedFocusNode;
  TextEditingController? breedTextController;
  String? Function(BuildContext, String?)? breedTextControllerValidator;
  String? _breedTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your fur baby\'s  breed.';
    }

    return null;
  }

  // State field(s) for size widget.
  String? sizeValue;
  FormFieldController<String>? sizeValueController;
  // State field(s) for gender widget.
  FormFieldController<List<String>>? genderValueController;
  String? get genderValue => genderValueController?.value?.firstOrNull;
  set genderValue(String? val) =>
      genderValueController?.value = val != null ? [val] : [];
  // State field(s) for age widget.
  FormFieldController<List<String>>? ageValueController;
  String? get ageValue => ageValueController?.value?.firstOrNull;
  set ageValue(String? val) =>
      ageValueController?.value = val != null ? [val] : [];
  // State field(s) for energy widget.
  FormFieldController<List<String>>? energyValueController;
  String? get energyValue => energyValueController?.value?.firstOrNull;
  set energyValue(String? val) =>
      energyValueController?.value = val != null ? [val] : [];
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please add at least a small description of your pooch.';
    }

    return null;
  }

  bool isDataUploading_uploadDataUwl = false;
  FFUploadedFile uploadedLocalFile_uploadDataUwl =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataUwl = '';

  bool isDataUploading_uploadDataP9q = false;
  FFUploadedFile uploadedLocalFile_uploadDataP9q =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataP9q = '';

  bool isDataUploading_uploadDataMuc = false;
  FFUploadedFile uploadedLocalFile_uploadDataMuc =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataMuc = '';

  bool isDataUploading_uploadDataV85 = false;
  FFUploadedFile uploadedLocalFile_uploadDataV85 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataV85 = '';

  // State field(s) for distanceSlider widget.
  double? distanceSliderValue;
  // State field(s) for prefSize widget.
  List<String>? prefSizeValue;
  FormFieldController<List<String>>? prefSizeValueController;
  // State field(s) for prefEnergy widget.
  FormFieldController<List<String>>? prefEnergyValueController;
  List<String>? get prefEnergyValues => prefEnergyValueController?.value;
  set prefEnergyValues(List<String>? val) =>
      prefEnergyValueController?.value = val;
  // State field(s) for prefGender widget.
  FormFieldController<List<String>>? prefGenderValueController;
  List<String>? get prefGenderValues => prefGenderValueController?.value;
  set prefGenderValues(List<String>? val) =>
      prefGenderValueController?.value = val;
  // State field(s) for prefAge widget.
  FormFieldController<List<String>>? prefAgeValueController;
  List<String>? get prefAgeValues => prefAgeValueController?.value;
  set prefAgeValues(List<String>? val) => prefAgeValueController?.value = val;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PawfilesRecord? newPawfile;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    breedTextControllerValidator = _breedTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    breedFocusNode?.dispose();
    breedTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
