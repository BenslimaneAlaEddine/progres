import 'package:flutter/material.dart';
import 'package:progres/home.dart';

class LoginL extends StatelessWidget {
  const LoginL({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginF(
      size: size,
    );
  }
}

class LoginF extends StatefulWidget {
  const LoginF(
      {super.key,
      required this.size}); // lokan hna madernach required talaelina err
  // pcq size lazm tkon eandha valeur pcq fl dec rana dayrin "Size size;" machi "Size? size"
  final Size size;

  @override
  LoginS createState() => LoginS();
}

class LoginS extends State<LoginF> {
  GlobalKey<FormState> form = GlobalKey();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3D3D3),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: widget.size.width < widget.size.height
                ? widget.size.width * 0.4
                : widget.size.height * 0.1,
            left: widget.size.width / 2 - (widget.size.width * 0.7 / 2),
            right: widget.size.width / 2 - (widget.size.width * 0.7 / 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: widget.size.width * 0.3,
                  width: widget.size.width * 0.7,
                  child: Image.asset(
                    "images/progres.png",
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                height: widget.size.height * 0.1,
              ),
              const Text("Progiciel de Gestion Intégré"),
              const Text("بوابة الطالب"),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: form,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller,
                      validator: (val) {
                        if (val!.length > 3) {
                          return "Valid";
                        } else {
                          return "Invalid";
                        }
                      },
                      style: const TextStyle(height: 1),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          label: const Row(
                            children: [
                              Icon(Icons.account_circle),
                              Text("ادخل رقم التسجيل")
                            ],
                          ),
                          border: OutlineInputBorder(
                              borderSide:  BorderSide.none,
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: const TextStyle(height: 1),
                      decoration: InputDecoration(
                        filled: true,
                          fillColor: Colors.white,

                          label: const Row(
                            children: [
                              Icon(Icons.key),
                              Text("ادخل كلمة المرور")
                            ],
                          ),
                          border: OutlineInputBorder(
                              borderSide:  BorderSide.none,
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        form.currentState!.validate();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context){
                          return const Home();
                        })
                      );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              const WidgetStatePropertyAll(Colors.green),
                          padding: WidgetStatePropertyAll(EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                            left: widget.size.width / 2 -
                                (widget.size.width * 0.7 / 2),
                            right: widget.size.width / 2 -
                                (widget.size.width * 0.7 / 2),
                          ))),
                      child: const Text(
                        "تسجيل الدخول",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("وزارة التعليم العالي والبحث العلمي"),
              const SizedBox(
                height: 10,
              ),
              const Text("جميع الحقوق محفوظة © 2024"),
            ],
          ),
        ),
      ),
    );
  }
}
