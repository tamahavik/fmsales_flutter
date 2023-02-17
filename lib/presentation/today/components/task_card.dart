import 'package:flutter/material.dart';
import 'package:ufi/model/leads.dart';
import 'package:ufi/presentation/today/components/remark_uh.dart';
import 'package:ufi/presentation/today/components/task_header.dart';

class TaskCard extends StatelessWidget {
  final Leads _leads;

  const TaskCard({super.key, required Leads leads}) : _leads = leads;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onPrimary,
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
        child: Column(
          children: [
            TaskHeader(leads: _leads),
            RemarkUh(leads: _leads),
            Text(
              _leads.alamatGenerated,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


