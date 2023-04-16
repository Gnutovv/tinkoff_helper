import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/common/loader/loader_widget.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/common/widgets/app_button.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/add_position_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';

class AddExpertPositionScreen extends StatelessWidget {
  const AddExpertPositionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddPositionBloc>(
        create: (context) => AddPositionBloc(), child: const _AddExpertPositionScreen());
  }
}

class _AddExpertPositionScreen extends StatelessWidget {
  const _AddExpertPositionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loaderController = getIt<LoaderController>();
    final tickerController = TextEditingController();
    final bloc = context.read<AddPositionBloc>();

    return BlocConsumer<AddPositionBloc, AddPositionState>(
      listener: (context, state) {
        state.maybeWhen(
          inProgress: () => loaderController.startLoading(),
          orElse: () => loaderController.stopLoading(),
        );
        state.mapOrNull(
          error: (state) => showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text(state.message),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          ),
          got: (state) => Navigator.of(context).pop(state.expertPosition),
        );
      },
      builder: (context, state) => Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text('Tinkoff Helper'),
            ),
            body: Center(
              child: CardItemWidget(
                width: 400,
                label: const Text('Добавление новой позиции', style: TextStyle(fontWeight: FontWeight.bold)),
                content: [
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Укажите тикет новой позиции:'),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          decoration: const InputDecoration(
                            labelText: 'ABCD',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.blue),
                          ),
                          controller: tickerController,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  AppButton(
                    onPressed: () => bloc.add(AddPositionEvent.getPositionByTicker(
                      ticker: tickerController.text.toUpperCase(),
                      balancer: context.read<ExpertBloc>().state.balancer,
                    )),
                    child: const Icon(Icons.download),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(child: LoaderWidget(controller: getIt<LoaderController>())),
        ],
      ),
    );
  }
}
