// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/components/button/primary.dart';
import 'package:mobile/components/header.dart';
import 'package:mobile/components/inputs/date_input.dart';
import 'package:mobile/components/inputs/default_input.dart';
import 'package:mobile/components/layouts/empty.dart';
import 'package:mobile/feats/auth/bloc/user_cubit/user_cubit.dart';
import 'package:mobile/feats/main/entities/patient/patient.dart';
import 'package:mobile/feats/main/api/update_patient_endpoint.dart';
import 'package:mobile/feats/main/bloc/patients_list_cubit/patients_list_cubit.dart';
import 'package:mobile/locator.dart';
import 'package:mobile/utils/utils.dart';

class PatientDetailScreen extends StatefulWidget {
  final String id;

  const PatientDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<PatientDetailScreen> createState() => _PatientDetailScreenState();
}

class _PatientDetailScreenState extends State<PatientDetailScreen> {
  bool loading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String name = "", lastName = "", patronymic = "", consultations = "", diagnosis = "", operations = "";
  late DateTime birthday;

  late final Patient patient;

  @override
  void initState() {
    super.initState();
    patient = (context.read<PatientsListCubit>().state as IdlePatientsListState)
        .patients
        .firstWhere((element) => element.id == widget.id);
  }

  void handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();
    setState(() => loading = true);
    final newPatient = patient.copyWith(
      name: name,
      lastName: lastName,
      patronymic: patronymic,
      birthday: birthday,
      consultations: consultations.isEmpty ? null : consultations,
      diagnosis: diagnosis.isEmpty ? null : diagnosis,
      operations: operations.isEmpty ? null : operations,
    );
    final either = await locator<UpdatePatientEndpoint>()(newPatient);
    await either.fold(
      (failure) async => showError(context, failure.message),
      (patient) async {
        await context.read<PatientsListCubit>().load();
        AutoRouter.of(context).pop();
      },
    );

    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return EmptyLayout(
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header("??????????????"),

              // Form
              Input(
                label: "??????????????",
                hint: "?????????????? ?????????????? ????????????????",
                initialValue: patient.lastName,
                validator: (v) => v!.isEmpty ? "?????? ???????? ??????????????????????" : null,
                onSaved: (v) => lastName = v!,
              ),
              const SizedBox(height: 20),
              Input(
                label: "??????",
                hint: "?????????????? ?????????????? ????????????????",
                initialValue: patient.name,
                validator: (v) => v!.isEmpty ? "?????? ???????? ??????????????????????" : null,
                onSaved: (v) => name = v!,
              ),
              const SizedBox(height: 20),
              Input(
                label: "????????????????",
                hint: "?????????????? ???????????????? ????????????????",
                initialValue: patient.patronymic,
                validator: (v) => v!.isEmpty ? "?????? ???????? ??????????????????????" : null,
                onSaved: (v) => patronymic = v!,
              ),
              const SizedBox(height: 20),
              DateInput(
                label: "???????? ????????????????",
                hint: "???????????????? ???????? ???????????????? ????????????????",
                initialValue: patient.birthday,
                validator: (v) => v == null
                    ? "?????? ???????? ??????????????????????"
                    : DateTime.now().add(const Duration(days: 1)).isBefore(v)
                        ? "???????????????? ???????? ????????????????"
                        : null,
                onSaved: (v) => birthday = v!,
              ),
              const SizedBox(height: 20),
              Input(
                label: "??????????????????????????",
                hint: "?????????????? ????????????????????????",
                initialValue: patient.consultations,
                onSaved: (v) => consultations = v!,
                minLines: 7,
                maxLines: 20,
              ),
              const SizedBox(height: 20),
              Input(
                label: "????????????????",
                hint: "?????????????? ????????????????",
                initialValue: patient.diagnosis,
                onSaved: (v) => diagnosis = v!,
                minLines: 7,
                maxLines: 20,
              ),
              const SizedBox(height: 20),
              Input(
                label: "????????????????",
                hint: "?????????????? ????????????????",
                initialValue: patient.operations,
                onSaved: (v) => operations = v!,
                minLines: 7,
                maxLines: 20,
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                text: "??????????????????",
                onTap: handleSubmit,
                loading: loading,
                fullWidth: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
