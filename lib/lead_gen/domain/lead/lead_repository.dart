import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/domain/lead/chat.dart';

import 'lead.dart';

abstract class LeadRepository{
  Future<Either<ErrorMessage,Success>> addLead(Lead lead,DateTime reminderTime,BuildContext context);

  Future<Either<ErrorMessage,Success>> addLeadChat(Lead lead,BuildContext context);

  Future<Either<List<Lead>,List<Lead>>> getLeadsList(String type,int deptId,BuildContext context);

  Future<Either<List<Lead>,List<Lead>>> getArchiveLeads(String type,String subType,BuildContext context);

  Future<Either<ErrorMessage,List<Chat>>> getLeadChat(int leadId,BuildContext context);

  Future<Either<List<Lead>,List<Lead>>> getSearchedLeads(String custDetail,String type,String subType,BuildContext context);

  Future<Either<ErrorMessage,Success>> updateLeadStatus(int leadId,int statusId,String message,
      BuildContext context
  );

  Future<Either<ErrorMessage, Success>> updateLeadDepts(int leadId,List<int> deptIds,BuildContext context);
}