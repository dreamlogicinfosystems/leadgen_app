import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/domain/status/status.dart';

abstract class StatusRepository{
  Future<Either<ErrorMessage,List<Status>>>getStatuses(BuildContext context);
}