import '../models/eTaskStatus.dart';

eTaskStatus ConvertToETaskStatus(dynamic status){
  switch(status){
    case 'eTaskStatus.UNFINISHED':
      status = eTaskStatus.UNFINISHED;
      break;
    case 'eTaskStatus.FINISHED':
      status = eTaskStatus.FINISHED;
      break;
    case 'eTaskStatus.PAUSED':
      status = eTaskStatus.PAUSED;
      break;
    default:
      status = eTaskStatus.UNFINISHED;
      break;
  }
  return status;
}