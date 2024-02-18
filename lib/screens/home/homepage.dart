import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Cloth_Cylcle/bloc/login_bloc.dart';
import 'package:Cloth_Cylcle/screens/home/components/error_message.dart';
import 'package:Cloth_Cylcle/screens/home/components/loading.dart';
import 'package:Cloth_Cylcle/screens/home/home_screen.dart';
import 'package:Cloth_Cylcle/screens/init_screen.dart';
import 'package:Cloth_Cylcle/screens/sign_in/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      if (state is LoginInitial) {
        return LoginForm();
      } else if (state is LoginLoading) {
        return LoadingIndicator();
      } else if (state is LoginSuccess) {
        return InitScreen();
      } else if (state is LoginFailure) {
        return ErrorMessage(message: state.error);
      } else {
        return Container();
      }
    });
  }
}
