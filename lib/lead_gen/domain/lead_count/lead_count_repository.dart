import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/domain/lead_count/lead_count.dart';

abstract class LeadCountRepository{
  Future<Either<ErrorMessage,LeadCount>> getLeadCount(BuildContext context);
}