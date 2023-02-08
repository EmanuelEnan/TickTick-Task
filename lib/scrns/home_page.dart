import 'package:flutter/material.dart';
import 'package:tick_tick_task/models/task_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(31, 183, 183, 183),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.52,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: [
                  Color.fromARGB(255, 82, 130, 27),
                  Color.fromARGB(255, 13, 88, 15),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
          ),
          SafeArea(
            child: SizedBox(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 22, right: 22),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Hi, Habib',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  Icons.handshake_rounded,
                                  color: Colors.yellow,
                                  size: 22,
                                ),
                              ],
                            ),
                            const Text(
                              'Let\'s explore your notes',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          radius: 17,
                          backgroundImage: AssetImage(
                            'assets/suit.jpg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 9,
                  // ),
                  Container(
                    margin: const EdgeInsets.all(18),
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.white.withOpacity(.3),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Welcome to TickTick Task',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            // const SizedBox(
                            //   height: 9,
                            // ),
                            const Text(
                              'Your one-stop app for task management, Simplify, track, and accomplish tasks with ease.',
                              style: TextStyle(color: Colors.white),
                            ),
                            // const SizedBox(
                            //   height: 13,
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton.icon(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                            width: 1, color: Colors.white),
                                        padding: const EdgeInsets.all(
                                            10), //border width and color
                                        elevation: 3, //elevation of button
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        backgroundColor: Colors.green,
                                      ),
                                      label: const Text(
                                        "Watch Video",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      icon:
                                          const Icon(Icons.play_arrow_rounded),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  Icons.task_rounded,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Reminder Task',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    // padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          margin: const EdgeInsets.only(left: 10),
                          height: 120,
                          width: 200,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, bottom: 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.task_rounded,
                                    color: Colors.yellow,
                                    size: 40,
                                  ),
                                  Text(
                                    'Online Class Routine',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text('Save Date: 10/12/2022'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 120,
                          width: 200,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, bottom: 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.task_rounded,
                                    color: Colors.green,
                                    size: 40,
                                  ),
                                  Text(
                                    'Office Work List',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text('Save Date: 10/12/2022'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 120,
                          width: 200,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, bottom: 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.task_rounded,
                                    color: Colors.blue,
                                    size: 40,
                                  ),
                                  Text(
                                    'Day Task',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text('Save Date: 10/12/2022'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'All Tasks',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                            color: Color.fromARGB(95, 105, 105, 105),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: allTask.length,
                      itemBuilder: (context, index) {
                        final item = allTask[index];
                        return Container(
                          margin: const EdgeInsets.only(
                            left: 18,
                            right: 18,
                          ),
                          height: 75,
                          child: Card(
                            child: Center(
                              child: ListTile(
                                leading: item.taskIcon,
                                title: Text(item.taskTitle),
                                subtitle: Text(item.taskDate),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
