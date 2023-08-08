import 'package:coustom_drawer/Bi_2Page/maincopy.dart';
import 'package:coustom_drawer/Expandable%20Listview/main.dart';
import 'package:coustom_drawer/NewsApp/ui/home.dart';
import 'package:coustom_drawer/PassDataOnePageToOther/one_page.dart';
import 'package:coustom_drawer/Provider/To%20do%20list/main.dart';
import 'package:coustom_drawer/SharedPreperance/save_remove_value.dart';
import 'package:coustom_drawer/Widget/absorb_pointer.dart';
import 'package:coustom_drawer/Widget/alert_dialog.dart';
import 'package:coustom_drawer/Widget/aspect_ratio.dart';
import 'package:coustom_drawer/Widget/autocomplete.dart';
import 'package:coustom_drawer/Widget/bottom_sheet.dart';
import 'package:coustom_drawer/Widget/botton_navigation_bar.dart';
import 'package:coustom_drawer/Widget/card.dart';
import 'package:coustom_drawer/Widget/check_box.dart';
import 'package:coustom_drawer/Widget/colum_row.dart';
import 'package:coustom_drawer/Widget/continer.dart';
import 'package:coustom_drawer/Widget/coustom_app_bar.dart';
import 'package:coustom_drawer/Widget/cupertino_activity_indigator.dart';
import 'package:coustom_drawer/Widget/cupertino_alert_dialog.dart';
import 'package:coustom_drawer/Widget/data_table.dart';
import 'package:coustom_drawer/Widget/date_time_picker.dart';
import 'package:coustom_drawer/Widget/drawer.dart';
import 'package:coustom_drawer/Widget/drop_down_button.dart';
import 'package:coustom_drawer/Widget/expansion_panel.dart';
import 'package:coustom_drawer/Widget/expended_flex.dart';
import 'package:coustom_drawer/Widget/flexible.dart';
import 'package:coustom_drawer/Widget/fragment_tab_bar.dart';
import 'package:coustom_drawer/Widget/future_builder.dart';
import 'package:coustom_drawer/Widget/grid_view.dart';
import 'package:coustom_drawer/Widget/ink_well.dart';
import 'package:coustom_drawer/Widget/layout_builder.dart';
import 'package:coustom_drawer/Widget/list_tile.dart';
import 'package:coustom_drawer/Widget/list_view.dart';
import 'package:coustom_drawer/Widget/media_query.dart';
import 'package:coustom_drawer/Widget/page_view.dart';
import 'package:coustom_drawer/Widget/popup_menu_button.dart';
import 'package:coustom_drawer/Widget/radio_button.dart';
import 'package:coustom_drawer/Widget/range_date.dart';
import 'package:coustom_drawer/Widget/rich_text.dart';
import 'package:coustom_drawer/Widget/row.dart';
import 'package:coustom_drawer/Widget/simple_form_page.dart';
import 'package:coustom_drawer/Widget/slider.dart';
import 'package:coustom_drawer/Widget/sliver_app_bar.dart';
import 'package:coustom_drawer/Widget/stack.dart';
import 'package:coustom_drawer/Widget/statefull_builder.dart';
import 'package:coustom_drawer/Widget/stepper.dart';
import 'package:coustom_drawer/Widget/tab_bar.dart';
import 'package:coustom_drawer/Widget/table.dart';
import 'package:coustom_drawer/raratV_information_task/list_of_infor.dart';
import 'package:flutter/material.dart';

class AllWidgetNavigationClass extends StatelessWidget {
  const AllWidgetNavigationClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text('Absorb Pointer'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => AbsorbPointerClass()));
                },
              ),
              ListTile(
                title: Text('Aspect Ratio '),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => AspectRatioClass()));
                },
              ),
              ListTile(
                title: Text('Alert Dialog'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Alert_Dialog()));
                },
              ),
              ListTile(
                title: Text('Auto Complete'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => AutocompleteClass()));
                },
              ),
              ListTile(
                title: Text('Bottom Sheet'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => BottomSheetClass()));
                },
              ),
              ListTile(
                title: Text('Bottom Navigation Bar'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => BottomNavigationBarClass()));
                },
              ),
              ListTile(
                title: Text('Check Box '),
                onTap: () {
                  print("pressed");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => CheckBoxCla()));
                },
              ),
              ListTile(
                title: Text('Pass Data 1P to 2P'),
                onTap: () {
                  print("pressed");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => PassDataFirstPage1()));
                },
              ),
              ListTile(
                title: Text('Cupertino Activity Indigator'),
                onTap: () {
                  print("pressed");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) =>
                              CupertinoActivityIndigatorClass()));
                },
              ),
              ListTile(
                title: Text('Cupertino Alert Dialog / Button'),
                onTap: () {
                  print("pressed");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => CupertinoAlertDialogClass()));
                },
              ),
              ListTile(
                title: Text('Coloum Row'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ColoumRow()));
                },
              ),
              ListTile(
                title: Text('Card'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => CustomCard()));
                },
              ),
              ListTile(
                title: Text('Container'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ContainerClass()));
                },
              ),
              ListTile(
                title: Text('Drawer'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => DrawerClass()));
                },
              ),
              ListTile(
                title: Text('Data Table'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => DataTableClass()));
                },
              ),
              ListTile(
                title: Text('Drop Down Button'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => DropDownButtonClass()));
                },
              ),
              ListTile(
                title: Text('Expended Flex'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ExpendedFlex()));
                },
              ),
              ListTile(
                title: Text('Expansion Panel'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExpansionPanelClass()));
                },
              ),
              ListTile(
                title: Text('Expandable ListView'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExpandableListViewClass()));
                },
              ),
              ListTile(
                title: Text('Flexible'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => FlexibleClass()));
                },
              ),
              ListTile(
                title: Text('Future Builder'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => FutureBuilderClass()));
                },
              ),
              ListTile(
                title: Text('Grid ViewC'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => GridViewClass()));
                },
              ),
              ListTile(
                title: Text('Layout Builder'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => LayoutBuilderClass()));
                },
              ),
              ListTile(
                title: Text('Tab Bar / Fragment'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Tab_Bar()));
                },
              ),
              ListTile(
                title: Text('List Tile'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ListTileClass()));
                },
              ),
              ListTile(
                title: Text('List View'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ListViewClass()));
                },
              ),
              ListTile(
                title: Text('Media Query'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => MediaQueryClass()));
                },
              ),
              ListTile(
                title: Text('NewsApp'),
                onTap: () {
                  var title;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => HomePageForNews()));
                },
              ),
              ListTile(
                title: Text('Page View'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => PageViewClass()));
                },
              ),
              ListTile(
                title: Text('Radio Button'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => RadioButtonClass()));
                },
              ),
              ListTile(
                title: Text('Rich Text'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => RichTextClass()));
                },
              ),
              ListTile(
                title: Text('Row'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => RowClass()));
                },
              ),
              ListTile(
                title: Text('Stack'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => StackClass()));
                },
              ),
              ListTile(
                title: Text('Form / Edit Text'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SimpleFormPage()));
                },
              ),
              ListTile(
                title: Text('Custom AppBar'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => CustomAppBarClass()));
                },
              ),
              ListTile(
                title: Text('Bi_2Page'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => HomePage11()));
                },
              ),
              ListTile(
                title: Text('Date Time Picker'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => DateTimePickerClass()));
                },
              ),
              ListTile(
                title: Text('Ink Well'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => InkWellClass()));
                },
              ),
              ListTile(
                title: Text('Range Date'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => RangeDateClass()));
                },
              ),
              ListTile(
                title: Text('Sliver App Bar'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SliverAppBarClass()));
                },
              ),
              ListTile(
                title: Text('Slider'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => SliderClass()));
                },
              ),
              ListTile(
                title: Text('Stateful Builder'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => StatefullBuilderClass()));
                },
              ),
              ListTile(
                title: Text('Stepper '),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => StepperClass()));
                },
              ),
              ListTile(
                title: Text('Tab Bar'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => TabBarClass()));
                },
              ),
              ListTile(
                title: Text('Table'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => TableClass()));
                },
              ),
              ListTile(
                title: Text('Popup Menu Buttion'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => PoupMenuButtonClass()));
                },
              ),
              ListTile(
                title: Text('Provider for ToDoList'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => HomePageForTodo()));
                },
              ),
              Divider(color: Colors.redAccent),
              Text('SharedPreference', textAlign: TextAlign.center),
              Divider(color: Colors.redAccent),
              ListTile(
                title: Text('Save and Remove '),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) =>
                              SaveRemoveValueBySharedPreference()));
                },
              ),
              ListTile(
                title: Text('RahatVTask '),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => RahatVTask()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
