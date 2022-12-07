import 'package:flutter/material.dart';

class TaskPanel extends StatelessWidget {
  const TaskPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade400,
                ),
                margin: new EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: const [
                    Flexible(
                      child: ListTile(
                        leading: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                        title: Text(
                          'Search dfgdfg',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        subtitle: Text(
                          'Search dfgfdgdsf',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.check_box,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade400,
                ),
                margin: new EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: const [
                    Flexible(
                      child: ListTile(
                        leading: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                        title: Text(
                          'Search dfgdfg',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        subtitle: Text(
                          'Search dfgfdgdsf',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.check_box,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade400,
                ),
                margin: new EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: const [
                    Flexible(
                      child: ListTile(
                        leading: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                        title: Text(
                          'Search dfgdfg',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        subtitle: Text(
                          'Search dfgfdgdsf',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.check_box,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
