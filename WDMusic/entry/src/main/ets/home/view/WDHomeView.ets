import wdHomeViewModel  from "../viewModel/WDHomeViewModel";

@Component
export default struct WDHomeView {
  private swiperController: SwiperController = new SwiperController();

  build() {
    Column() {
      Text($r('app.string.mainPage_tabTitles_home'))
        .width('100%')
        .margin({
          top: '48',
          bottom: '12'
        })
        .fontWeight(700)
        .fontSize(26)

      Scroll() {
        Swiper(this.swiperController) {
          ForEach(wdHomeViewModel.getSwiperImages(), (img: Resource) => {
            Image(img)
              .width('100%')
              .height('30%')
              .borderRadius(16)
          }, (img: Resource) => JSON.stringify(img.id))
        }
        .autoPlay(true)



      }
      .height(660)
      .scrollBar(BarState.Off)
      .align(Alignment.TopStart)
    }
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .width('100%')
  }
}