import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../domain/maintenance/maintenance.dart';

class MaintenancePopUpDialog extends StatefulWidget {
  final Maintenance maintenanceInfo;
  const MaintenancePopUpDialog({super.key, required this.maintenanceInfo});

  @override
  State<MaintenancePopUpDialog> createState() => _MaintenancePopUpDialogState();
}

class _MaintenancePopUpDialogState extends State<MaintenancePopUpDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20,left: 10),
                child: Image.asset("assets/images/splash.png",width: 130),
              ),
              DefaultTextStyle(
                  style: Theme.of(context).textTheme.bodyMedium!,
                  child: Html(
                      data: widget.maintenanceInfo.message
                  )
              ),
              widget.maintenanceInfo.isCompulsory==1? const SizedBox() : const SizedBox(height: 20),
              Visibility(
                visible: widget.maintenanceInfo.isCompulsory==1? false: true,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xFFC2E90B),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: const Center(
                      child: Text("Cancel",style:
                        TextStyle(decoration: TextDecoration.none,fontSize: 15,color: Colors.black)
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
