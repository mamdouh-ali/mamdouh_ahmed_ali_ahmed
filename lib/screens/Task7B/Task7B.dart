import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_quez/screens/Task7B/Task7BCubit/showhide_pass_cubit.dart';

class SHowhidepassScreen extends StatelessWidget {
  const SHowhidepassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: BlocBuilder<ShowhidePassCubit, ShowhidePassState>(
            builder: (context, state) {
              return TextField(
                obscureText: context.read<ShowhidePassCubit>().passObscure,
                decoration: InputDecoration(
                    suffix:
                        context.read<ShowhidePassCubit>().passObscure == true
                            ? InkWell(
                                onTap: () => context
                                    .read<ShowhidePassCubit>()
                                    .showHidePassword(),
                                child: Icon(Icons.visibility_off))
                            : InkWell(
                                onTap: () => context
                                    .read<ShowhidePassCubit>()
                                    .showHidePassword(),
                                child: Icon(Icons.visibility))),
              );
            },
          ),
        ),
      ),
    );
  }
}
