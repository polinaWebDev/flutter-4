import 'package:flutter/material.dart';

import '../viewmodel/counter_view_model.dart';

class HomePage extends StatelessWidget {
  final CounterViewModel viewModel;

  const HomePage({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Счётчик'),
      ),
      body: Center(
        child: ListenableBuilder(
          listenable: viewModel,
          builder: (context, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Тыков на кнопку'),
                Text(
                  '${viewModel.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.increment,
        tooltip: 'Увеличить',
        child: const Icon(Icons.add),
      ),
    );
  }
}
