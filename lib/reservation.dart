import 'package:flutter/material.dart';

class ReservationClass extends StatelessWidget {
  const ReservationClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Image(
                  image: AssetImage("assets/image/reservation.png"),
                  width: 200,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  "Thank you for Reservation",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Times New Roman",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "You have booked a table for 2 persons on 30, Sep 2023, 08:00 PM",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "Poppins"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Home'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
