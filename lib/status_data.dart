 import 'status.dart';
 
 class StatusData {
   List<Status> _statusBank = [
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '489  views', 'Yesterday 17:10'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '520  views', 'Yesterday 17:03'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '547  views', 'Yesterday 16:52'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '566  views', 'Yesterday 16:44'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '583  views', 'Yesterday 16:37'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '614  views', 'Yesterday 16:32'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '646  views', 'Yesterday 16:17'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '700  views', 'Yesterday 16:09'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '755  views', 'Yesterday 15:33'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '811  views', 'Yesterday 15:12'),
    Status('https://unsplash.com/photos/wOT_PEjU3LU', '1016 views', 'Yesterday 15:00'),
  ];

  int sizeOfStatusBank() {
    return _statusBank.length;
  }

  String getImgUrl(int statusIndex) {
    return _statusBank[statusIndex].imgurl;
  }

  String getTimePosted(int statusIndex) {
    return _statusBank[statusIndex].timePosted;
  }

  String getViews(int statusIndex) {
    return _statusBank[statusIndex].noOfViews;
  }
 }