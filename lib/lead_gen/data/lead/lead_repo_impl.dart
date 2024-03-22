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
  Future<Either<ErrorMessage, Success>> addLead(Lead lead, BuildContext context) async{
    if(lead == const Lead()){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final leadDto = LeadDto.fromDomain(lead);

      final tryAddLead = await _leadDataSource.addLeadToServer(leadDto, context);

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
  Future<Either<List<Lead>, List<Lead>>> getLeadsList(String type,BuildContext context) async{
    final getLeadsList = await _leadDataSource.getLeads(type,context);

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
}