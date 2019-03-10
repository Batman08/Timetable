import 'package:flutter/material.dart';

enum DayEnum {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

class DayEntryDTO {
  DayEnum day;
  String title;
  String descriptions;
  MaterialColor backgroundColor;

  DayEntryDTO(DayEnum day, String title, String descriptions, MaterialColor backgroundColor) {
    this.day = day;
    this.title = title;
    this.descriptions = descriptions;
    this.backgroundColor = backgroundColor;
  }
}

const Map<DayEnum, String> DayEnumName = {
  DayEnum.Monday: "Monday",
  DayEnum.Tuesday: "Tuesday",
  DayEnum.Wednesday: "Wednesday",
  DayEnum.Thursday: "Thursday",
  DayEnum.Friday: "Friday",
  DayEnum.Saturday: "Saturday",
  DayEnum.Sunday: "Sunday",
};
