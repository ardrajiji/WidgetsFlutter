import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {

  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  // Function to pick a date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  // Function to pick a time
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  // Function to validate and submit
  void _submitDateTime() {
    if (selectedDate == null || selectedTime == null) {
      _showSnackbar("Please select both date and time.");
      return;
    }

    // Combine selected date and time into a DateTime object
    final DateTime combinedDateTime = DateTime(
      selectedDate!.year,
      selectedDate!.month,
      selectedDate!.day,
      selectedTime!.hour,
      selectedTime!.minute,
    );

    // compare with current date and time
    if (combinedDateTime.isBefore(DateTime.now())) {
      _showSnackbar("The selected date and time are in the past. Please select a future date and time.");
    }
   else {
      _showSnackbar("Submitted successfully: ${DateFormat('yyyy-MM-dd HH:mm').format(combinedDateTime)}");
    }
  }

  // Function to show a snackbar
  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Program'),
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Text(
              selectedDate == null
                  ? "No Date Selected"
                  : "Selected Date: ${DateFormat('yyyy-MM-dd').format(selectedDate!)}",
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text("Select Date"),
            ),
            const SizedBox(height: 20),


            Text(
              selectedTime == null
                  ? "No Time Selected"
                  : "Selected Time: ${selectedTime!.format(context)}",
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: const Text("Select Time"),
            ),
            const SizedBox(height: 50),


            ElevatedButton(
              onPressed: _submitDateTime,
              child: const Text("Submit"),
            ),
          ],
        ),
        
      )
    );
  }
}