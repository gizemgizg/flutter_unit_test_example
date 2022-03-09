# festivalproject


void main(){

  test("getData ", () async{
    final homeViewModel = HomeViewModel();
    final response = await homeViewModel.getData();
    expect(response is HomeScreenModel, true);
  });
}


![Simulator Screen Shot - iPhone 12 - 2022-03-09 at 23 21 58](https://user-images.githubusercontent.com/64318805/157529205-ff2c72a0-8e3b-4271-b475-93ec86cddf29.png)


