import 'package:flutter/material.dart';
import 'package:ufi/model/leads.dart';
import 'package:ufi/presentation/today/components/menu_button.dart';

class TaskHeader extends StatelessWidget {
  const TaskHeader({
    super.key,
    required Leads leads,
  }) : _leads = leads;

  final Leads _leads;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
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
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _leads.custNo.isEmpty
                        ? _leads.mobileNoOne
                        : '${_leads.custNo} | ${_leads.mobileNoOne}',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Priority: ${_leads.priority}',
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        const MenuButton(),
      ],
    );
  }
}