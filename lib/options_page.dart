import 'package:flutter/material.dart';
// Column Max Axis Alignment
import 'column_max_axis_start.dart';
import 'column_max_axis_center.dart';
import 'column_max_axis_end.dart';
import 'column_max_axis_space_around.dart';
import 'column_max_axis_space_between.dart';
import 'column_max_axis_space_evenly.dart';

// Column Cross Axis Alignment
import 'column_cross_axis_start.dart';
import 'column_cross_axis_center.dart';
import 'column_cross_axis_end.dart';
import 'column_cross_axis_stretch.dart';
import 'column_cross_axis_baseline.dart';

// Row Max Axis Alignment
import 'row_max_axis_start.dart';
import 'row_max_axis_center.dart';
import 'row_max_axis_end.dart';
import 'row_max_axis_space_around.dart';
import 'row_max_axis_space_between.dart';
import 'row_max_axis_space_evenly.dart';

// Row Cross Axis Alignment
import 'row_cross_axis_start.dart';
import 'row_cross_axis_center.dart';
import 'row_cross_axis_end.dart';
import 'row_cross_axis_stretch.dart';
import 'row_cross_axis_baseline.dart';


class ChooserPage extends StatelessWidget {
  const ChooserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_OptionGroup> groups = [
      _OptionGroup(
        title: 'Column Max Axis Alignment',
        options: [
          _Option('Column Max: Start', const ColumnMaxAxisStartPage()),
          _Option('Column Max: Center', const ColumnMaxAxisCenterPage()),
          _Option('Column Max: End', const ColumnMaxAxisEndPage()),
          _Option('Column Max: Space Around', const ColumnMaxAxisSpaceAroundPage()),
          _Option('Column Max: Space Between', const ColumnMaxAxisSpaceBetweenPage()),
          _Option('Column Max: Space Evenly', const ColumnMaxAxisSpaceEvenlyPage()),
        ],
      ),
      _OptionGroup(
        title: 'Column Cross Axis Alignment',
        options: [
          _Option('Column Cross: Start', const ColumnCrossAxisStartPage()),
          _Option('Column Cross: Center', const ColumnCrossAxisCenterPage()),
          _Option('Column Cross: End', const ColumnCrossAxisEndPage()),
          _Option('Column Cross: Stretch', const ColumnCrossAxisStretchPage()),
          _Option('Column Cross: Baseline', const ColumnCrossAxisBaselinePage()),
        ],
      ),
      _OptionGroup(
        title: 'Row Max Axis Alignment',
        options: [
          _Option('Row Max: Start', const RowMaxAxisStartPage()),
          _Option('Row Max: Center', const RowMaxAxisCenterPage()),
          _Option('Row Max: End', const RowMaxAxisEndPage()),
          _Option('Row Max: Space Around', const RowMaxAxisSpaceAroundPage()),
          _Option('Row Max: Space Between', const RowMaxAxisSpaceBetweenPage()),
          _Option('Row Max: Space Evenly', const RowMaxAxisSpaceEvenlyPage()),
        ],
      ),
      _OptionGroup(
        title: 'Row Cross Axis Alignment',
        options: [
          _Option('Row Cross: Start', const RowCrossAxisStartPage()),
          _Option('Row Cross: Center', const RowCrossAxisCenterPage()),
          _Option('Row Cross: End', const RowCrossAxisEndPage()),
          _Option('Row Cross: Stretch', const RowCrossAxisStretchPage()),
          _Option('Row Cross: Baseline', const RowCrossAxisBaselinePage()),
        ],
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Ferrer Task 3'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: groups.map((group) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                    child: Text(
                      group.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  ...group.options.map((opt) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => opt.page),
                          );
                        },
                        child: Text(
                          opt.label,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 15),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _OptionGroup {
  final String title;
  final List<_Option> options;

  _OptionGroup({required this.title, required this.options});
}

class _Option {
  final String label;
  final Widget page;

  _Option(this.label, this.page);
}