import 'package:firstapp/components/app_text_field.dart';
import 'package:firstapp/components/toolbar.dart';
import 'package:firstapp/components/user_avater.dart';
import 'package:firstapp/config/app_strings.dart';
import 'package:firstapp/styles/app_colors.dart';
import 'package:firstapp/styles/app_text.dart';
import 'package:flutter/material.dart';

enum Genders { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Genders.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: 'Edit Profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  const UserAvater(
                    size: 180,
                  ),
                  Positioned(
                    bottom: 20,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Icon(
                        Icons.edit,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const AppTextField(hint: AppStrings.firstName),
              const SizedBox(
                height: 12,
              ),
              const AppTextField(hint: AppStrings.lastName),
              const SizedBox(
                height: 12,
              ),
              const AppTextField(hint: AppStrings.phoneNumber),
              const SizedBox(
                height: 12,
              ),
              const AppTextField(hint: AppStrings.location),
              const SizedBox(
                height: 12,
              ),
              const AppTextField(hint: AppStrings.birthday),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
                decoration: BoxDecoration(
                    color: AppColors.fieldColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.gender,
                        style: AppText.body1.copyWith(
                          fontSize: 12,
                        )),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                              visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity),
                              title: const Text(AppStrings.male),
                              value: Genders.male,
                              contentPadding: EdgeInsets.zero,
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = Genders.male;
                                });
                              }),
                        ),
                        Expanded(
                          child: RadioListTile(
                              visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity),
                              title: const Text(AppStrings.female),
                              value: Genders.female,
                              contentPadding: EdgeInsets.zero,
                              groupValue: gender,
                              onChanged: (onChanged) {
                                setState(() {
                                  gender = Genders.female;
                                });
                              }),
                        ),
                        Expanded(
                          child: RadioListTile(
                              visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity),
                              title: const Text(AppStrings.other),
                              value: Genders.other,
                              contentPadding: EdgeInsets.zero,
                              groupValue: gender,
                              onChanged: (onChanged) {
                                setState(() {
                                  gender = Genders.other;
                                });
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
