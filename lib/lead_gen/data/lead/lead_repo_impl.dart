import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';

import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/lead/chat_dto.dart';
import 'package:lead_gen/lead_gen/data/lead/lead_dto.dart';
import 'package:lead_gen/lead_gen/domain/lead/chat.dart';

import 'package:lead_gen/lead_gen/domain/lead/lead.dart';

import '../../domain/lead/lead_repository.dart';
import 'lead_data_source.dart';

class LeadRepositoryImpl extends LeadRepository{
  final LeadDataSource _leadDataSource;
  LeadRepositoryImpl(this._leadDataSource);

  @override
  Future<Either<ErrorMessage, Success>> addLead(Lead lead,DateTime reminderTime, BuildContext context) async{
    if(lead == const Lead()){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final leadDto = LeadDto.fromDomain(lead);

      final tryAddLead = await _leadDataSource.addLeadToServer(leadDto, reminderTime,context);

      return tryAddLead.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<ErrorMessage, Success>> addLeadChat(Lead lead, BuildContext context) async{
    if(lead == const Lead()){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final leadDto = LeadDto.fromDomain(lead);

      final tryAddLeadChat = await _leadDataSource.addLeadChatToServer(leadDto, context);

      return tryAddLeadChat.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<List<Lead>, List<Lead>>> getLeadsList(String type,int deptId,BuildContext context) async{
    final getLeadsList = await _leadDataSource.getLeads(type,deptId,context);

    return getLeadsList.fold((error){
      return Left(error);
    },(leadsList){
      return Right(leadsList.map((e) => const LeadDto().toDomain(e)).toList());
    });
  }

  @override
  Future<Either<ErrorMessage, List<Chat>>> getLeadChat(int leadId, BuildContext context) async{
    if(leadId.toString().isEmpty){
      return Left(ErrorMessage('Something went wrong'));
    }else{
      final tryGetLeadChat = await _leadDataSource.getLeadChatFromServer(leadId, context);

      return tryGetLeadChat.fold((error){
        return Left(error);
      },(leadChatList){
        return Right(leadChatList.map((e) => const ChatDto().toDomain(e)).toList());
      });
    }
  }

  @override
  Future<Either<ErrorMessage, Success>> updateLeadStatus(int leadId, int statusId, String message,
      BuildContext context) async{
    if(leadId.toString().isEmpty || statusId.toString().isEmpty){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final tryUpdateStatus = await _leadDataSource.updateLeadStatus(leadId, statusId, message, context);

      return tryUpdateStatus.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<List<Lead>, List<Lead>>> getArchiveLeads(String type, String subType, BuildContext context) async{
    final getLeads= await _leadDataSource.getArchiveLeads(type,subType,context);

    return getLeads.fold((error){
      return Left(error);
    },(leadsList){
      return Right(leadsList.map((e) => const LeadDto().toDomain(e)).toList());
    });
  }

  @override
  Future<Either<List<Lead>, List<Lead>>> getSearchedLeads(String custDetail, String type, String subType, BuildContext context) async{
    final getSearchedLeads= await _leadDataSource.getSearchedLeads(custDetail,type,subType,context);

    return getSearchedLeads.fold((error){
      return Left(error);
    },(leadsList){
      return Right(leadsList.map((e) => const LeadDto().toDomain(e)).toList());
    });
  }

  @override
  Future<Either<ErrorMessage, Success>> updateLeadDepts(int leadId, List<int> deptIds, BuildContext context) async{
    final result = await _leadDataSource.updateLeadDepartments(leadId, deptIds, context);

    return result.fold((error){
      return Left(error);
    },(success){
      return Right(success);
    });
  }

  @override
  Future<Either<ErrorMessage, Success>> updateLeadDescription(int leadId, String description,BuildContext context) async{
    if(leadId.toString().isEmpty){
      return Left(ErrorMessage("Something went wrong!"));
    } else {
      final result = await _leadDataSource.updateLeadDescript(leadId, description, context);

      return result.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }
}