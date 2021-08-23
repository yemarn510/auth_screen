import 'package:auth_screen/constants.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/person.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                )
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('SIGN IN', style: Theme.of(context).textTheme.headline5,),
                      Text('SIGN UP', style: Theme.of(context).textTheme.button,)
                    ],
                  ),
                  const Spacer(),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(Icons.alternate_email, color: kPrimaryColor),
                        ),
                        Expanded(child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email Address",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.lock, color: kPrimaryColor),
                      ),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:Border.all(
                              color: Colors.white,
                            )
                          ),
                          child: Icon(
                            Icons.android,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),

                        const SizedBox(width: 20,),

                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:Border.all(
                                color: Colors.white,
                              )
                          ),
                          child: Icon(
                            Icons.chat,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),

                        const Spacer(),

                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor ,
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          )
                        )
                      ],
                    ),
                  )

                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
