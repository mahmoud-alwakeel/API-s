import 'package:apis/cubit/user_cubit.dart';
import 'package:apis/user_details_screen.dart';
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

    // BlocProvider.of<UserCubit>(context).emitGetAllUsers();
    // BlocProvider.of<UserCubit>(context).emitCreateNewUser(UserModel(
    //   name: "m alwakeel",
    //   email: "mAlwakeel@gmail.com",
    //   gender: "male",
    //   status: "active",
    // ));
    BlocProvider.of<UserCubit>(context).emitDeleteUser(7328351);

  }

  List<UserModel> usersList = [];
  UserModel user = UserModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
        //   BlocBuilder<UserCubit, UserState>(
        //   builder: (context, state) {
        //     if (state is CreateNewUserState) {
        //       user = (state).newUser;
        //       return Center(
        //         child: Text("${user.email}"),
        //       );
        //     } else {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     }
        //   },
        // ),
        BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is DeleteUserState) {
              // user = (state).newUser;
              return Center(
                child: Text("User deleted successfuly"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
          // BlocBuilder<UserCubit, UserState>(
          //   builder: (context, state) {
          //     if (state is GetAllUsersState) {
          //       usersList = state.allUsersList;
          //       return ListView.builder(
          //           shrinkWrap: true,
          //           itemCount: usersList.length,
          //           itemBuilder: (context, index) {
          //             return GestureDetector(
          //               onTap: () {
          //                 Navigator.of(context)
          //                     .push(MaterialPageRoute(builder: (context) {
          //                   return UserDetailsScreen(
          //                     userId: usersList[index].id!,
          //                   );
          //                 }));
          //               },
          //               child: Container(
          //                 height: 50,
          //                 color: Colors.blue,
          //                 child: Center(
          //                   child: Text(usersList[index].name!),
          //                 ),
          //               ),
          //             );
          //           });
          //     } else {
          //       return const Center(child: CircularProgressIndicator());
          //     }
          //   },
          // ),
        ],
      ),
    );
  }
}
