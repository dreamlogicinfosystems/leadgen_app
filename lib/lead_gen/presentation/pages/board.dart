import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/presentation/core/custom_appbar.dart';
import '../widgets/add_board/body_page_body.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight*1),
          child: CustomAppBar(
              title: 'Boards',
              centerTitle: true,
              automaticallyImplyLeading: true,
              isBoardPage: true,
              iconColor: Colors.black
          )
      ),
      body: BoardPageBody(),
    );
  }
}
