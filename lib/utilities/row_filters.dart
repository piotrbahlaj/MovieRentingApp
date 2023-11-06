import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowFilters extends StatefulWidget {
  const RowFilters({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RowFiltersState createState() => _RowFiltersState();
}

class _RowFiltersState extends State<RowFilters> {
  int _selectedFilterIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildFilterButton(0, 'Most popular'),
        _buildFilterButton(1, 'Latest'),
        _buildFilterButton(2, 'Your favorites'),
      ],
    );
  }

  Widget _buildFilterButton(int index, String text) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedFilterIndex = index;
        });
        // Add your onTap logic here
      },
      child: Text(
        text,
        style: GoogleFonts.lato(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: _selectedFilterIndex == index ? Colors.black : Colors.black45,
        ),
      ),
    );
  }
}
