import 'package:adv_flutter_ch1/stepper%20widget/screens/utils/global_values.dart';
import 'package:flutter/material.dart';
import 'components/text_input_box_underlined.dart';
import 'components/vertical_stepper_app_bar.dart';
import 'components/view_entry_button.dart';

class VerticalStepper extends StatefulWidget {
  const VerticalStepper({super.key});

  @override
  State<VerticalStepper> createState() => _VerticalStepperState();
}

class _VerticalStepperState extends State<VerticalStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const ViewEntryButton(),
      appBar: verticalStepperAppBar(context),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blue
          ),
        ),
        child: Stepper(
          stepIconBuilder: (stepIndex, stepState) =>
          stepIndex <= GlobalValue.verticalStepperIndex ? const Icon(
            Icons.done, color: Colors.white, size: 14,) : null,
          onStepContinue: () {
            setState(() {
              if (GlobalValue.verticalStepperIndex < 2) GlobalValue.verticalStepperIndex++;
            });
          },
          onStepCancel: () {
            setState(() {
              if (GlobalValue.verticalStepperIndex > 0) GlobalValue.verticalStepperIndex--;
            });
          },
          onStepTapped: (value) {
            setState(() {
              GlobalValue.verticalStepperIndex = value;
            });
          },
          currentStep: GlobalValue.verticalStepperIndex,
          steps: [
            //ACCOUNT
            Step(title: const Text('Account'),
                content: const TextInputBox(hintText: 'Account Number',
                  textInputType: TextInputType.number,),
                isActive: GlobalValue.verticalStepperIndex >= 0 ? true : false),
            //ADDRESS
            Step(title: const Text('Address'),
                content: const TextInputBox(hintText: 'Address',
                  textInputType: TextInputType.streetAddress,),
                isActive: GlobalValue.verticalStepperIndex >= 1 ? true : false),
            //MOBILE NUMBER
            Step(title: const Text('Mobile Number'),
                content: const TextInputBox(hintText: 'Mobile Number',
                  textInputType: TextInputType.number,),
                isActive: GlobalValue.verticalStepperIndex >= 2 ? true : false),
          ],
        ),
      ),
    );
  }


}



