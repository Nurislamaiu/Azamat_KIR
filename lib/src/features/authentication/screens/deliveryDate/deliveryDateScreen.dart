import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kirazamat/src/constans/text_strings.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../constans/color_strings.dart';
import '../cardScreen/kilem/widget/circle.dart';
import '../widget/appbar/appbar_widgets.dart';
import '../widget/navbar/navbar.dart';

class DeliveryDateScreen extends StatelessWidget {
  const DeliveryDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton(),
      bottomNavigationBar: bottomNavigatorBar(),
      resizeToAvoidBottomInset: false,
      backgroundColor: tDefaultColor,
      body: Column(
        children: [
          AppBarWidget(),
          Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              color: tWhiteColor,
              child: Column(
                children: [
                  KilemCircle(),
                ],
              )),
          Expanded(child: CalendarScreen())
        ],
      ),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat1 = CalendarFormat.month;
  CalendarFormat _calendarFormat2 = CalendarFormat.month;
  DateTime _focusedDay1 = DateTime.now();
  DateTime _focusedDay2 = DateTime.now();
  DateTime? _selectedDay1;
  DateTime? _selectedDay2;
  String? _selectedTimeSlot1;
  String? _selectedTimeSlot2;

  final List<String> _timeSlots1 = [
    '10:00-12:00',
    '12:00-14:00',
    '14:00-16:00',
    '16:00-18:00',
    '18:00-20:00',
    '20:00-22:00'
  ];
  final List<String> _timeSlots2 = [
    '10:00-12:00',
    '12:00-14:00',
    '14:00-16:00',
    '16:00-18:00',
    '18:00-20:00',
    '20:00-22:00'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: tWhiteColor, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: tButtonColor,
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(tWhereToGet,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: tWhiteColor)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: tWhiteColor,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(5),
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: tWhiteColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: tButtonColor, width: 1)),
                              child: TextField(
                                style: TextStyle(
                                    fontFamily: 'italic',
                                    fontSize: 12,
                                    color: tDarkColor,
                                    fontWeight: FontWeight.w500),
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: tAddress,
                                  labelStyle: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ),
                          TableCalendar(
                            daysOfWeekStyle: DaysOfWeekStyle(
                              weekdayStyle: TextStyle(fontSize: 12),
                              weekendStyle: TextStyle(fontSize: 12),
                            ),
                            headerStyle: HeaderStyle(
                                titleTextStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                    color: tDarkColor)),
                            rowHeight: 30,
                            firstDay: DateTime.utc(2024, 1, 1),
                            lastDay: DateTime.utc(2024, 12, 31),
                            calendarStyle: CalendarStyle(
                                defaultTextStyle: TextStyle(fontSize: 12),
                                disabledTextStyle: TextStyle(fontSize: 12),
                                holidayTextStyle: TextStyle(fontSize: 12),
                                outsideTextStyle: TextStyle(fontSize: 12),
                                rangeEndTextStyle: TextStyle(fontSize: 12),
                                weekendTextStyle: TextStyle(fontSize: 12),
                                rangeStartTextStyle: TextStyle(fontSize: 12),
                                weekNumberTextStyle: TextStyle(fontSize: 12),
                                selectedTextStyle:
                                    TextStyle(fontSize: 12, color: tWhiteColor),
                                todayTextStyle:
                                    TextStyle(fontSize: 12, color: tWhiteColor),
                                todayDecoration: BoxDecoration(
                                    color: tButtonColor.withOpacity(0.7),
                                    shape: BoxShape.circle),
                                selectedDecoration: BoxDecoration(
                                    color: tButtonColor,
                                    shape: BoxShape.circle)),
                            focusedDay: _focusedDay1,
                            calendarFormat: CalendarFormat.twoWeeks,
                            availableGestures: AvailableGestures.none,
                            selectedDayPredicate: (day) {
                              return isSameDay(_selectedDay1, day);
                            },
                            onDaySelected: (selectedDay, focusedDay) {
                              if (selectedDay.isAfter(
                                  DateTime.now().subtract(Duration(days: 1)))) {
                                setState(() {
                                  _selectedDay1 = selectedDay;
                                  _focusedDay1 =
                                      focusedDay; // обновить также `_focusedDay`
                                });
                              }
                            },
                            enabledDayPredicate: (day) {
                              return day.isAfter(
                                  DateTime.now().subtract(Duration(days: 1)));
                            },
                            onFormatChanged: (format) {
                              setState(() {
                                _calendarFormat1 = format;
                                if (format == CalendarFormat.week) {
                                  _focusedDay1 = _focusedDay1.add(Duration(
                                      days: 14 - (_focusedDay1.weekday % 7)));
                                }
                              });
                            },
                            onPageChanged: (focusedDay) {
                              _focusedDay1 = focusedDay;
                            },
                          ),
                          SizedBox(height: 20.0),
                          Text('Выберите время доставки:',
                              style: TextStyle(fontSize: 12.0)),
                          SizedBox(height: 10.0),
                          Wrap(
                            spacing: 8.0,
                            children: _timeSlots1.map((timeSlot) {
                              return Container(
                                width:
                                    (MediaQuery.of(context).size.width - 58) /
                                        3,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _selectedTimeSlot1 = timeSlot;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        _selectedTimeSlot1 == timeSlot
                                            ? tButtonColor
                                            : tWhiteColor,
                                    side: BorderSide(color: tButtonColor),
                                    minimumSize: Size(0, 0),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                  ),
                                  child: Text(timeSlot,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color:
                                                  _selectedTimeSlot1 == timeSlot
                                                      ? tWhiteColor
                                                      : tDarkColor)),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              decoration: BoxDecoration(
                  color: tWhiteColor, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: tButtonColor,
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(tWhereToDeliver,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: tWhiteColor)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: tWhiteColor,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(5),
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: tWhiteColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: tButtonColor, width: 1)),
                              child: TextField(
                                style: TextStyle(
                                    fontFamily: 'italic',
                                    fontSize: 12,
                                    color: tDarkColor,
                                    fontWeight: FontWeight.w500),
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: tAddress,
                                  labelStyle: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ),
                          TableCalendar(
                            daysOfWeekStyle: DaysOfWeekStyle(
                              weekdayStyle: TextStyle(fontSize: 12),
                              weekendStyle: TextStyle(fontSize: 12),
                            ),
                            headerStyle: HeaderStyle(
                                titleTextStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                    color: tDarkColor)),
                            rowHeight: 35,
                            firstDay: DateTime.utc(2024, 1, 1),
                            lastDay: DateTime.utc(2024, 12, 31),
                            calendarStyle: CalendarStyle(
                                defaultTextStyle: TextStyle(fontSize: 12),
                                disabledTextStyle: TextStyle(fontSize: 12),
                                holidayTextStyle: TextStyle(fontSize: 12),
                                outsideTextStyle: TextStyle(fontSize: 12),
                                rangeEndTextStyle: TextStyle(fontSize: 12),
                                weekendTextStyle: TextStyle(fontSize: 12),
                                rangeStartTextStyle: TextStyle(fontSize: 12),
                                weekNumberTextStyle: TextStyle(fontSize: 12),
                                selectedTextStyle:
                                    TextStyle(fontSize: 12, color: tWhiteColor),
                                todayTextStyle:
                                    TextStyle(fontSize: 12, color: tWhiteColor),
                                todayDecoration: BoxDecoration(
                                    color: tButtonColor.withOpacity(0.7),
                                    shape: BoxShape.circle),
                                selectedDecoration: BoxDecoration(
                                    color: tButtonColor,
                                    shape: BoxShape.circle)),
                            focusedDay: _focusedDay2,
                            calendarFormat: CalendarFormat.twoWeeks,
                            availableGestures: AvailableGestures.none,
                            selectedDayPredicate: (day) {
                              return isSameDay(_selectedDay2, day);
                            },
                            onDaySelected: (selectedDay, focusedDay) {
                              if (selectedDay.isAfter(
                                  DateTime.now().subtract(Duration(days: 1)))) {
                                setState(() {
                                  _selectedDay2 = selectedDay;
                                  _focusedDay2 =
                                      focusedDay; // обновить также `_focusedDay`
                                });
                              }
                            },
                            enabledDayPredicate: (day) {
                              return day.isAfter(
                                  DateTime.now().subtract(Duration(days: 1)));
                            },
                            onFormatChanged: (format) {
                              setState(() {
                                _calendarFormat2 = format;
                                if (format == CalendarFormat.week) {
                                  _focusedDay2 = _focusedDay2.add(Duration(
                                      days: 14 - (_focusedDay2.weekday % 7)));
                                }
                              });
                            },
                            onPageChanged: (focusedDay) {
                              _focusedDay2 = focusedDay;
                            },
                          ),
                          SizedBox(height: 20.0),
                          Text('Выберите время доставки:',
                              style: TextStyle(fontSize: 12.0)),
                          SizedBox(height: 10.0),
                          Wrap(
                            spacing: 8.0,
                            children: _timeSlots2.map((timeSlot) {
                              return Container(
                                width:
                                    (MediaQuery.of(context).size.width - 58) /
                                        3,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _selectedTimeSlot2 = timeSlot;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        _selectedTimeSlot2 == timeSlot
                                            ? tButtonColor
                                            : tWhiteColor,
                                    side: BorderSide(color: tButtonColor),
                                    minimumSize: Size(0, 0),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                  ),
                                  child: Text(timeSlot,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              color:
                                                  _selectedTimeSlot2 == timeSlot
                                                      ? tWhiteColor
                                                      : tDarkColor)),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_selectedDay1 != null &&
                        _selectedDay2 != null &&
                        _selectedTimeSlot1 != null &&
                        _selectedTimeSlot2 != null) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Выбранные даты и время'),
                          content: Text(
                            'Забрать товар: ${_selectedDay1!.day}.${_selectedDay1!.month}.${_selectedDay1!.year} - $_selectedTimeSlot1\n'
                            'Доставить товар: ${_selectedDay2!.day}.${_selectedDay2!.month}.${_selectedDay2!.year} - $_selectedTimeSlot2',
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Закрыть'),
                            ),
                          ],
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Ошибка'),
                          content: Text('Пожалуйста, выберите все даты и время.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Закрыть'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Text(
                    tProceedToPayment,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: tWhiteColor),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }
}
