import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_quez/screens/Task7C/Task7CCubit/selected_radio_cubit.dart';

// ignore: must_be_immutable
class RadioButtonTask extends StatelessWidget {
  RadioButtonTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: BlocBuilder<SelectedRadioCubit, SelectedRadioState>(
          builder: (context, state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return RadioListTile(
                  value: index,
                  groupValue: context.read<SelectedRadioCubit>().selectedvalue,
                  onChanged: (theselected) {
                    //selectedvalue = theselected!;
                    context
                        .read<SelectedRadioCubit>()
                        .changedselected(theselected!);
                  },
                  title: Text("Radio ${index + 1}"),
                  subtitle: Text("Hello this is Radio num.${index + 1}"),
                );
              },
              itemCount: 20,
            );
          },
        ),
      ),
    );
  }
}
