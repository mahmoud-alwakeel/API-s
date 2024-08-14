import 'package:apis/cubit/user_cubit.dart';
import 'package:apis/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key, required this.userId});
  final int userId;

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  UserModel user = UserModel();
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UserCubit>(context).emitGetUserDetails(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User details screen"),
      ),
      body: Center(
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is GetUserState) {
              return Center(
                child: Text("${widget.userId}"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
