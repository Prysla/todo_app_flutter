import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:my_todo_app1/create_todo_view.dart';

import 'create_todo_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 243, 243, 1),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Center(
              child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/2253275/pexels-photo-2253275.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          )),
          title: const Text(
            "My Task",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(Icons.filter_list, color: Colors.black),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.search, color: Colors.black),
            SizedBox(
              width: 15,
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: const [
            TodoWidget(
              task: "Family's Trip to Finland",
              discription: "The family's trip to finland next summer",
              paint: Colors.pink,
              icon: Icons.notifications_active,
              time: "Yesterday",
              poster: Colors.pink,
            ),
            TodoWidget(
              task: "Plan Susan's Birthday",
              discription: "",
              paint: Colors.blue,
              icon: Icons.notifications_outlined,
              time: "Today 11:30",
              poster: Colors.blue,
            ),
            TodoWidget(
              task: "Groceries for dinner",
              discription:
                  "Get tomatoes lettuce, potatoes, green beans,cream and beef fillet.Also buy red wine at John's Wine Shop",
              paint: Colors.blue,
              icon: Icons.notifications_outlined,
              time: "Today 15:15pm",
              poster: Colors.blue,
            ),
            TodoWidget(
              task: "Port project",
              discription: "Send presentation to Bill",
              paint: Colors.grey,
              icon: Icons.notifications_outlined,
              time: "Tomorrow",
              poster: Colors.grey,
            ),
            TodoWidget(
              task: "Take jacket for cleaning",
              discription: "",
              paint: Colors.grey,
              icon: Icons.notifications_outlined,
              time: "Fri 30, Oct",
              poster: Colors.grey,
            ),
            TodoWidget(
              task: "Fix dad's PC",
              discription:
                  "Install the latest update and check the wireless connection",
              paint: Colors.white,
              icon: Icons.notifications_outlined,
              time: "",
              poster: Colors.grey,
            ),
            TodoWidget(
              task: "Trip to Stockholm",
              discription: "Talk to Monica about this trip",
              paint: Colors.white,
              icon: Icons.notifications_outlined,
              time: "",
              poster: Colors.grey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CreateToDo();
          }));
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            showBarModalBottomSheet(
                context: context,
                builder: (context) {
                  return ListView(
                    children: const [
                      TodoWidget(
                        task: "Family's Trip to Finland",
                        discription: "The family's trip to finland next summer",
                        paint: Colors.green,
                        icon: Icons.notifications_off,
                        time: "Yesterday",
                        poster: Colors.green,
                      ),
                    ],
                  );
                });
          },
          child: Card(
            color: const Color.fromRGBO(220, 229, 238, 1),
            // color: Colors.blue[50],
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const [
                  Icon(Icons.check_circle),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Completed"),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(Icons.arrow_drop_down),
                  Spacer(),
                  Text("24")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// this is the widget that contains the todo task
class TodoWidget extends StatelessWidget {
  const TodoWidget({
    Key? key,
    required this.task,
    required this.discription,
    required this.paint,
    required this.icon,
    required this.time,
    required this.poster,
  }) : super(key: key);
  final String task;
  final String discription;
  final Color paint;
  final IconData icon;
  final String time;
  final Color poster;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Card(
        elevation: 10,
        child: ListTile(
          leading: Icon(
            Icons.check_circle_outline,
            color: poster,
          ),
          title: Text(task),
          subtitle: Text(
            discription,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: paint,
              ),
              Text(
                time,
                style: TextStyle(
                  color: paint,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
