import 'package:flutter/material.dart';

class TableWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowHeight: 0.0,
      dataRowHeight: 30,
      dividerThickness: 0.0,
      columnSpacing: 15.0,
      columns: <DataColumn>[
        DataColumn(label: SizedBox.shrink()),
        DataColumn(label: SizedBox.shrink()),
        DataColumn(label: SizedBox.shrink()),
        DataColumn(label: SizedBox.shrink()),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              '1',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'Sinamangal tube well',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'sinamangal',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              MaterialButton(
                height: 24,
                minWidth: 90,
                onPressed: () {},
                child: Text(
                  'Not Operating',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            )
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              '2',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'Sinamangal tube well',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'sinamangal',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              MaterialButton(
                height: 24,
                minWidth: 95,
                onPressed: () {},
                child: Text(
                  'Operating',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              '3',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'Sinamangal tube well',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'sinamangal',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              MaterialButton(
                height: 24,
                minWidth: 95,
                onPressed: () {},
                child: Text(
                  'Operating',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              '4',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'Sinamangal tube well',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'sinamangal',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              MaterialButton(
                height: 24,
                minWidth: 95,
                onPressed: () {},
                child: Text(
                  'Operating',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
