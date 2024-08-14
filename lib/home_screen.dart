import 'package:apis/cubit/user_cubit.dart';
import 'package:apis/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UserCubit>(context).emitGetAllUsers();
  }

  List<UserModel> usersList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              if (state is GetAllUsersState) {
                usersList = state.allUsersList;
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: usersList.length,
                    itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    color: Colors.blue,
                    child: Center(
                      child: Text(usersList[index].name!),
                    ),
                  );
                });
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )
        ],
      ),
    );
  }
}
