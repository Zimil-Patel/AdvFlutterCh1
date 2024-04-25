import 'package:adv_flutter_ch1/stepper%20widget/screens/stepper%20horizontal/view/components/horizontal_stepper_app_bar.dart';
import 'package:adv_flutter_ch1/stepper%20widget/screens/stepper%20horizontal/view/components/text_input_box_outlined.dart';
import 'package:flutter/material.dart';
import '../../utils/global_values.dart';

class HorizontalStepper extends StatefulWidget {
  const HorizontalStepper({super.key});

  @override
  State<HorizontalStepper> createState() => _HorizontalStepperState();
}

class _HorizontalStepperState extends State<HorizontalStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: horizontalStepperAppBar(context),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
            backgroundColor: Colors.white,
          ),
        ),
        child: Stepper(
          elevation: 1,
          type: StepperType.horizontal,
          stepIconBuilder: (stepIndex, stepState) {
            if (stepIndex == GlobalValue.horizontalStepperIndex &&
                stepIndex <= 1) {
              return const Icon(
                Icons.edit,
                color: Colors.white,
                size: 14,
              );
            } else if (stepIndex == 2) {
              return const Icon(
                Icons.done,
                color: Colors.white,
                size: 14,
              );
            } else {
              return null;
            }
          },
          onStepContinue: () {
            setState(() {
              if (GlobalValue.horizontalStepperIndex < 2)
                GlobalValue.horizontalStepperIndex++;
            });
          },
          onStepCancel: () {
            setState(() {
              if (GlobalValue.horizontalStepperIndex > 0)
                GlobalValue.horizontalStepperIndex--;
            });
          },
          onStepTapped: (value) {
            setState(() {
              GlobalValue.horizontalStepperIndex = value;
            });
          },
          currentStep: GlobalValue.horizontalStepperIndex,
          steps: [
            //ACCOUNT
            Step(
                title: const Text('Personal'),
                content: Column(
                  children: [
                    const TextInputBoxOutlined(
                      iconData: Icons.person,
                      hintText: 'First Name',
                      textInputType: TextInputType.text,
                    ),
                    const TextInputBoxOutlined(
                      iconData: Icons.person,
                      hintText: 'Last Name',
                      textInputType: TextInputType.text,
                    ),
                    RadioMenuButton(
                        value: 0,
                        groupValue: 0,
                        onChanged: (value) {},
                        child: const Text(
                          'Male',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )),
                    RadioMenuButton(
                        value: 1,
                        groupValue: 0,
                        onChanged: (value) {},
                        child: const Text(
                          'Female',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
                isActive: true),
            //ADDRESS
            const Step(
                title: Text('Contact'),
                content: Column(
                  children: [
                    TextInputBoxOutlined(
                      hintText: 'Email',
                      textInputType: TextInputType.emailAddress,
                      iconData: Icons.email,
                    ),
                    TextInputBoxOutlined(
                      hintText: 'Address',
                      textInputType: TextInputType.streetAddress,
                      iconData: Icons.home,
                      maxLine: 5,
                    ),
                    TextInputBoxOutlined(
                      hintText: 'Mobile No',
                      textInputType: TextInputType.number,
                      iconData: Icons.call,
                    ),
                  ],
                ),
                isActive: true),
            //MOBILE NUMBER
            Step(
                title: const Text('Upload'),
                content: Text('Successfully Registered!', style: Theme.of(context).textTheme.bodyLarge,),
                isActive: true),
          ],
        ),
      ),
    );
  }
}
