import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item_widget.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';
import 'package:tinkoff_helper/presentation/features/expert/screens/expert_settings_screen.dart';

class ExpertScreen extends StatelessWidget {
  const ExpertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const tabElementsStyle = TextStyle(fontWeight: FontWeight.bold);
    final loaderController = getIt<LoaderController>();
    final bloc = context.read<ExpertBloc>();

    return BlocConsumer<ExpertBloc, ExpertState>(
      listener: (context, state) {
        state.maybeWhen(
          inProgress: (_, __) => loaderController.startLoading(),
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
        );
      },
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 400,
            child: CardItemWidget(
                label: const Text(
                  'Эксперт',
                  style: tabElementsStyle,
                ),
                content: [
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Новых рекомендаций:', style: tabElementsStyle),
                      Text('142',
                          style: tabElementsStyle.copyWith(
                            color: false ? Colors.black : Colors.red,
                          )),
                      ElevatedButton(onPressed: () {}, child: const Icon(Icons.playlist_add_check_rounded)),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber, // Background color
                        ),
                        child: const Icon(Icons.add),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber, // Background color
                        ),
                        child: const SizedBox(width: 64, child: Icon(Icons.refresh)),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExpertSettingsScreen(),
                          ),
                        ).then((newBalancer) {
                          print('!!!! Returned balancer: $newBalancer');
                          print('!!!! State balancer: ${state.balancer}');
                          if (newBalancer != state.balancer) {
                            bloc.add(ExpertEvent.calculateNewBalancer(balancer: newBalancer));
                          }
                        }),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber, // Background color
                        ),
                        child: const Icon(Icons.settings),
                      ),
                    ],
                  ),
                ]),
          ),
          Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(alignment: Alignment.center, width: 20, child: const Text('#', style: tabElementsStyle)),
                  Container(
                      alignment: Alignment.center, width: 118, child: const Text('Тикер', style: tabElementsStyle)),
                  Container(
                      alignment: Alignment.center,
                      width: 118,
                      child: const Text('Наименование', style: tabElementsStyle)),
                  Container(
                      alignment: Alignment.center,
                      width: 118,
                      child: const Text('Количество', style: tabElementsStyle)),
                  Container(
                      alignment: Alignment.center,
                      width: 118,
                      child: const Text('Рекомендовано', style: tabElementsStyle)),
                  Container(
                      alignment: Alignment.center, width: 118, child: const Text('Инфо', style: tabElementsStyle)),
                  Container(
                      alignment: Alignment.center, width: 118, child: const Text('Действие', style: tabElementsStyle)),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 0),
                color: const Color(0xFFECECEC),
                width: 900,
                height: 380,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      ...List.generate(
                        ///TODO: do this
                        50,
                        (index) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
                          color: index % 2 == 0 ? Colors.yellowAccent : Colors.yellow,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 20,
                                height: 30,
                                child: Text((index + 1).toString(), style: tabElementsStyle),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 118,
                                child: const Text('33333', style: tabElementsStyle),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 118,
                                child: const Text('33333', style: tabElementsStyle),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 118,
                                child: const Text(
                                  '33333',
                                  style: tabElementsStyle,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 118,
                                child: const Text(
                                  '33333',
                                  style: tabElementsStyle,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 118,
                                child: const Text(
                                  '33333',
                                  style: tabElementsStyle,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 118,
                                child: Text('33333',
                                    style: tabElementsStyle.copyWith(
                                      color: index >= 2 ? const Color(0xFF00AA00) : Colors.red,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
