import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a title
      appBar: AppBar(
        title: const Text(
          "SizedBox Example", // Title of the AppBar
          style: TextStyle(color: Colors.white), // White text color
        ),
      ),
      
      // Main body of the widget
      body: Center(
        // Table widget to create a tabular layout
        child: Table(
          // Adds a black border to the table and its cells
          border: TableBorder.all(color: Colors.black, width: 3),
          
          // Define the width of each column
          columnWidths: const {
            0: FixedColumnWidth(100), // Column 0 has a fixed width of 100 pixels
            1: FlexColumnWidth(), // Column 1 adjusts flexibly to fill the space
            2: FractionColumnWidth(0.3), // Column 2 occupies 30% of the total width
          },
          
          // Rows in the table
          children: const [
            // First row - header row
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0), // Adds padding inside the cell
                  child: Text(
                    'Header 1', // Header for column 1
                    style: TextStyle(fontWeight: FontWeight.bold), // Bold text
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Header 2', // Header for column 2
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Header 3', // Header for column 3
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            
            // Second row - data row
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Row 1, Col 1'), // Data for row 1, column 1
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Row 1, Col 2'), // Data for row 1, column 2
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Row 1, Col 3'), // Data for row 1, column 3
                ),
              ],
            ),
            
            // Third row - data row
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Row 2, Col 1'), // Data for row 2, column 1
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Row 2, Col 2'), // Data for row 2, column 2
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Row 2, Col 3'), // Data for row 2, column 3
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
