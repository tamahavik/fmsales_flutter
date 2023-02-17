import 'package:flutter/material.dart';
import 'package:ufi/enums/task_menu_enum.dart';
import 'package:ufi/model/leads.dart';

class TaskCard extends StatelessWidget {
  final Leads _leads;

  const TaskCard({super.key, required Leads leads}) : _leads = leads;

  @override
  Widget build(BuildContext context) {
    TaskMenuEnum? selected;
    return Card(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        _leads.custName,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        _leads.statusTask,
                        style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        _leads.dataSourceName.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 20,
                        child: PopupMenuButton<TaskMenuEnum>(
                          icon: Icon(Icons.more_vert, color: Theme.of(context).colorScheme.onSurfaceVariant,),
                          initialValue: selected,
                          onSelected: (value) {
                            selected = value;
                          },
                          itemBuilder: (context) =>
                          <PopupMenuEntry<TaskMenuEnum>>[
                            const PopupMenuItem<TaskMenuEnum>(
                              value: TaskMenuEnum.call,
                              child: Text('Call'),
                            ),
                            const PopupMenuItem<TaskMenuEnum>(
                              value: TaskMenuEnum.navigate,
                              child: Text('Navigate'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _leads.custNo.isEmpty
                        ? _leads.mobileNoOne
                        : '${_leads.custNo} | ${_leads.mobileNoOne}',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      'Priority: ${_leads.priority}',
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: true,//_leads.remarkUh.isEmpty ? false : true,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                padding: const EdgeInsets.all(5),
                width: double.infinity,
                color: Colors.amber[300],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pesan UH :',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'HasilFu UH : ${_leads.hasilFuUh}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'Remark UH : ${_leads.remarkUh}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                _leads.alamatGenerated,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
