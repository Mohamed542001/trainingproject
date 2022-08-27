part of'OnBoardingImports.dart';

class OnBoardingData{

  PageController boardController = PageController();
  bool isLast = false;

  List<OnBoardingModel> boarding = [
    OnBoardingModel(
        image: 'assets/images/onBoard.jpg',
        title: 'On Board 1 Title',
        body: 'On Board 1 Body'
    ),
    OnBoardingModel(
        image: 'assets/images/onBoard2.jpg',
        title: 'On Board 2 Title',
        body: 'On Board 2 Body'
    ),
    OnBoardingModel(
        image: 'assets/images/onBoard3.jpg',
        title: 'On Board 3 Title',
        body: 'On Board 3 Body'
    ),
  ];
}