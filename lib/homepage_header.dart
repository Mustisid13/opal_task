import 'package:flutter/material.dart';
import 'custom_dropdown.dart';

const kTitleTextStyle = TextStyle(fontSize: 28, color: Colors.white);

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/truck.jpg",
        ),
        Container(
          padding: const EdgeInsets.all(10),
          color: Colors.blue.shade900.withOpacity(0.7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    flex: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Browse over 5000+ products...",
                          prefixIcon: const Icon(Icons.search,color: Colors.red,),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60))),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 70,
                      height: 55,
                      child:  const Icon(Icons.favorite_border,color:Colors.red),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "EXPLORE",
                style: kTitleTextStyle,
              ),
              Text(
                "SPARE PARTS",
                style: kTitleTextStyle.copyWith(
                  fontWeight: FontWeight.bold, letterSpacing: 2,fontSize: 35,),
              ),
              const Text(
                'FOR YOUR TRUCK.',
                style: kTitleTextStyle,
              ),
// grid of drop downs
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CustomDropDown(name: 'Select Year',),
                        CustomDropDown(name: "Select Make",),
                      ],
                    ),
                    Row(
                      children: const [
                        CustomDropDown(name: "Select Model",),
                        CustomDropDown(name: "Select Departments",),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.red.shade700),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Let's Find Out your Matach",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.red,
                        size: 20,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}