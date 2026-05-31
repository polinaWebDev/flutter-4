import 'package:flutter/material.dart';

import 'data/counter_storage.dart';
import 'view/home_page.dart';
import 'viewmodel/counter_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final viewModel = CounterViewModel(CounterStorage());
  await viewModel.load();

  runApp(MyApp(viewModel: viewModel));
}

class MyApp extends StatelessWidget {
  final CounterViewModel viewModel;

  const MyApp({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(viewModel: viewModel),
    );
  }
}
