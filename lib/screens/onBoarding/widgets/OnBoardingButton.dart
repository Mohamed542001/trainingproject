part of 'OnBoardingWidgetsImports.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({Key? key, required this.onBoardingData})
      : super(key: key);
  final OnBoardingData onBoardingData;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.primary,
      onPressed: () {
        if(onBoardingData.isLast){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>const Login(),),
          );
        }else{
          onBoardingData.boardController
              .nextPage(
              duration: const Duration(
                microseconds: 750,
              ),
              curve: Curves.fastLinearToSlowEaseIn
          );
        }

      },
      child: const Icon(
        Icons.arrow_forward_ios,
      ),
    );
  }
}
