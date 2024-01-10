import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttery/bloc/home/bloc/home_bloc.dart';
import 'package:fluttery/presentation/main_screen.dart';
import 'package:fluttery/repository/home_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<HomeRepository>(
          create: (context) => HomeRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (BuildContext context) =>
                HomeBloc(homeRepository: HomeRepository()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: true,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MainScreen(),
        ),
      ),
    );
  }
}
