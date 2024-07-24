import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_page_unified_widget.dart'
    show EditProfilePageUnifiedWidget;
import 'package:flutter/material.dart';

class EditProfilePageUnifiedModel
    extends FlutterFlowModel<EditProfilePageUnifiedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for University widget.
  FocusNode? universityFocusNode;
  TextEditingController? universityTextController;
  String? Function(BuildContext, String?)? universityTextControllerValidator;
  // State field(s) for Program widget.
  FocusNode? programFocusNode;
  TextEditingController? programTextController;
  String? Function(BuildContext, String?)? programTextControllerValidator;
  // State field(s) for Reqhours widget.
  FocusNode? reqhoursFocusNode;
  TextEditingController? reqhoursTextController;
  String? Function(BuildContext, String?)? reqhoursTextControllerValidator;
  // State field(s) for StartDate widget.
  FocusNode? startDateFocusNode;
  TextEditingController? startDateTextController;
  String? Function(BuildContext, String?)? startDateTextControllerValidator;
  // State field(s) for EndDate widget.
  FocusNode? endDateFocusNode;
  TextEditingController? endDateTextController;
  String? Function(BuildContext, String?)? endDateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    universityFocusNode?.dispose();
    universityTextController?.dispose();

    programFocusNode?.dispose();
    programTextController?.dispose();

    reqhoursFocusNode?.dispose();
    reqhoursTextController?.dispose();

    startDateFocusNode?.dispose();
    startDateTextController?.dispose();

    endDateFocusNode?.dispose();
    endDateTextController?.dispose();
  }
}
