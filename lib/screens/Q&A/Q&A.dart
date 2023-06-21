import 'package:flutter/material.dart';

class QA extends StatefulWidget {
  static String routeName = 'Q&A';

  @override
  _QA createState() => _QA();
}

class _QA extends State<QA> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF345FB4),
          centerTitle: true,
          title: Text(
            'Question & Answer',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          leading: ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_left_sharp),
            label: const Text('Back'),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Color(0xFF345FB4),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    //1
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('How much does it cost to study at Univeristy?', style : TextStyle(
                        fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),




                    //2
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('What are the courses offered?', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),






//3
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('What are the admission requirements?', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),





//4
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('How can I apply for admission to the Univeristy?', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
//5
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Is the Univeristy accepting professional certificates?', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),






                    //6
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('What are the subjects I study at the Univeristy?', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //7
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Is there accommodation for out-of-town students?', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //8
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('Can I visit the Univeristy?', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                 

                    //9
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('How do I register?', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    //10
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF345FB4),
                      ),
                      child: Center(
                        child: ExpansionTile(
                          title: Text('What can I do after graduating from college?', style : TextStyle(
                              fontSize: 18 ),),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              child: Text(
                               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis pulvinar nunc. Ut mi sem, consectetur eu aliquam nec, egestas a mi. Morbi ultricies massa eget lacinia aliquet. Integer nec sodales est, eu porta purus. Sed placerat augue sit amet leo luctus convallis. Quisque scelerisque ipsum nulla, in facilisis odio bibendum ut. Quisque scelerisque nisi ut lacus rhoncus, eu sagittis magna laoreet. Sed ut tellus id arcu dapibus tincidunt. Aliquam nec tincidunt velit. Duis tellus augue, convallis a ullamcorper eget, condimentum ac eros. Donec convallis a velit id tristique.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
