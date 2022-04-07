import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nitv_flutter_test/core/app_config/flavor.dart';
import 'package:nitv_flutter_test/core/di/get_injectable.dart';
import 'package:nitv_flutter_test/repository/i_news_repo.dart';
import 'package:nitv_flutter_test/ui/news/cubit/news_cubit.dart';
import 'package:nitv_flutter_test/ui/news/news_screen.dart';

void main() {
  FlavorConfig.appFlavor = Flavor.development;
  configureDependencies(env: FlavorConfig.flavorString);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NITV Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'NITV Flutter Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsCubit>(
      create: (_) => NewsCubit(
        newsRepo: locator.get<NewsRepo>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const NewsScreen(),
      ),
    );
  }
}
