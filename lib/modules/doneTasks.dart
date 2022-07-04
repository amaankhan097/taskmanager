import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/shared/components.dart';
import 'package:task_manager/shared/cubit/cubit.dart';
import 'package:task_manager/shared/cubit/states.dart';

class doneTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (BuildContext context, state) =>

          taskBuilder(tasks: AppCubit.get(context).doneTasks)
      ,
      listener: (BuildContext context, AppStates state) {},
    );
  }
}