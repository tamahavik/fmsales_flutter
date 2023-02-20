import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ufi/components/empty_container.dart';
import 'package:ufi/model/leads.dart';
import 'package:ufi/presentation/today/bloc/today_bloc.dart';
import 'package:ufi/presentation/today/components/task_card.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  List<Leads> _leads = [];

  void _stateController(BuildContext context, TodayState state) {
    state.maybeMap(
      orElse: () {},
      success: (value) => _leads = value.leads,
    );
  }

  Widget _buildView() {
    if (_leads.isEmpty) {
      return const EmptyContainer();
    }
    return ListView.builder(
      dragStartBehavior: DragStartBehavior.down,
      itemCount: _leads.length,
      itemBuilder: (context, index) => TaskCard(
        leads: _leads[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async =>
          context.read<TodayBloc>().add(const TodayEvent.pullToRefresh()),
      color: Theme.of(context).colorScheme.primaryContainer,
      displacement: 20,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: BlocListener<TodayBloc, TodayState>(
          listener: _stateController,
          child: BlocBuilder<TodayBloc, TodayState>(
            builder: (context, state) {
              return _buildView();
            },
          ),
        ),
      ),
    );
  }
}
