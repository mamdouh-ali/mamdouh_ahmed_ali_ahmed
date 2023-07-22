import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_quez/screens/Task7/Task7ACubit/task7_cubit.dart';

List<String> fastFilterContent = [
  "waiting",
  "in Progress",
  "Completed",
  "Canceled",
  "Delivered",
  "Undefined"
];

class Task7Screen extends StatelessWidget {
  const Task7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...fastFilterContent.asMap().entries.map((output) {
                  return BlocBuilder<Task7Cubit, Task7State>(
                    builder: (context, state) {
                      return InkWell(
                        onTap: () {
                          context
                              .read<Task7Cubit>()
                              .Updatefilterbar(output.key);
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(4),
                          child: Text(output.value),
                          decoration: BoxDecoration(
                              color:
                                  context.read<Task7Cubit>().index == output.key
                                      ? Colors.red
                                      : Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      );
                    },
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
