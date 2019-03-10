import 'package:flutter/material.dart';
import 'package:timetable/DTOs/DayEntry.dart';

class TimetableMgr {
  List<DayEntryDTO> getDataFromStorage() {
    List<DayEntryDTO> result = new List();

    result.add(new DayEntryDTO(
        DayEnum.Monday, "Title 1", "Desription 1", Colors.green));
    result.add(new DayEntryDTO(
        DayEnum.Thursday, "Title 2", "Desription 1", Colors.green));
    result.add(new DayEntryDTO(
        DayEnum.Wednesday, "Title 3", "Desription 1", Colors.green));
    result.add(new DayEntryDTO(
        DayEnum.Monday, "Title 4", "Desription 1", Colors.blue));
    result.add(new DayEntryDTO(
        DayEnum.Monday, "Title 5", "Desription 1", Colors.green));
    result.add(
        new DayEntryDTO(DayEnum.Friday, "Title 6", "Desription 1", Colors.red));
    result.add(new DayEntryDTO(
        DayEnum.Monday, "Title 7", "Desription 1", Colors.green));
    result.add(new DayEntryDTO(
        DayEnum.Tuesday, "Title 8", "Desription 1", Colors.white));
    result.add(new DayEntryDTO(
        DayEnum.Monday, "Title 9", "Desription 1", Colors.green));
    result.add(new DayEntryDTO(
        DayEnum.Thursday, "Title 10", "Desription 1", Colors.black));
    result.add(new DayEntryDTO(
        DayEnum.Monday, "Title 11", "Desription 1", Colors.green));
    result.add(new DayEntryDTO(
        DayEnum.Tuesday, "Title 12", "Desription 1", Colors.brown));
    result.add(new DayEntryDTO(
        DayEnum.Monday, "Title 13", "Desription 1", Colors.green));
    result.add(new DayEntryDTO(
        DayEnum.Wednesday, "Title 14", "Desription 1", Colors.cyan));
    result.add(new DayEntryDTO(
        DayEnum.Monday, "Title 15", "Desription 1", Colors.green));

    return result;
  }

  List<DayEntryDTO> getFilteredData(
      List<DayEntryDTO> allData, DayEnum selectedDay) {
    List<DayEntryDTO> result = allData.where((i) => i.day == selectedDay);
    return result;
  }
}
