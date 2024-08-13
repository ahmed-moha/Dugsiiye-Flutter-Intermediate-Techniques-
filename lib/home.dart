import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Responsive UI"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        "Hello, Dugsiiye",
                      ),
                      content: SingleChildScrollView(
                        child: Column(children: const [Text("Dugsiiye is here")]),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          child: const Text("Ok"),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          child: const Text("Cancel"),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("Show Dailoge"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  const Text("Dugsiiye is here"),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "Name",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "Username",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                },
                child: const Text("Show Bottom Sheet"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  var date = await showTimePicker(
                    context: context,
                   initialTime: TimeOfDay.now(),
                   
                  );
                    print(date);
                },
              
                child: const Text("Show datepicker"),
              ),
            ),
          ],
        ));
    // body: SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       const SizedBox(
    //         height: 50,
    //       ),
    //       Container(
    //         margin: const EdgeInsets.only(left: kPagingTouchSlop),
    //         width:isPortrait? size.width / 2:size.height/2,
    //         height:isPortrait? size.height / 3 :size.width/3,
    //         decoration: BoxDecoration(
    //             color: Colors.grey.shade100,
    //             border: Border.all(color: Colors.black12),
    //             borderRadius: BorderRadius.circular(16)),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Expanded(
    //               child: Stack(
    //                 children: [
    //                   Container(
    //                     width: double.infinity,
    //                     padding: const EdgeInsets.all(5),
    //                     child: ClipRRect(
    //                       borderRadius: BorderRadius.circular(12),
    //                       child: Image.asset(
    //                         "assets/img.jpg",
    //                         fit: BoxFit.cover,
    //                       ),
    //                     ),
    //                   ),
    //                   Positioned(
    //                     top: 20,
    //                     left: 20,
    //                     child: Container(
    //                       padding: const EdgeInsets.all(5),
    //                       decoration: const BoxDecoration(
    //                         color: Colors.pink
    //                       ),
    //                       child: const Text("for rent",style: TextStyle(color: Colors.white),),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ),
    //             Expanded(
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric(horizontal: 16),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     const SizedBox(
    //                       height: 8,
    //                     ),
    //                     const Text(
    //                       "Ellite Hotel",
    //                       maxLines: 2,
    //                       overflow: TextOverflow.ellipsis,
    //                     ),
    //                     const SizedBox(
    //                       height: 8,
    //                     ),
    //                     const Text(
    //                       "\$360 ",
    //                       style: TextStyle(
    //                           fontSize: 16, fontWeight: FontWeight.bold),
    //                     ),
    //                     const SizedBox(
    //                       height: 8,
    //                     ),
    //                     Row(
    //                       children: const [
    //                         Icon(
    //                           IconlyLight.location,
    //                         ),
    //                         SizedBox(
    //                           width: 8,
    //                         ),
    //                         Expanded(
    //                             child: Text(
    //                           "Mogadishu, Somalia ",
    //                           maxLines: 1,
    //                           overflow: TextOverflow.ellipsis,
    //                         ))
    //                       ],
    //                     ),
    //                     const Spacer(),
    //                     const Text("Floor: 3"),
    //                     const SizedBox(
    //                       height: 8,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // ));
  }
}
