import WDHomeModel from "../model/WDHomeModel";
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
        Column() {
          Swiper(this.swiperController) {
            ForEach(wdHomeViewModel.getSwiperImages(), (img: Resource) => {
              Image(img)
                .width('100%')
                .height('30%')
                .borderRadius(16)
            }, (img: Resource) => JSON.stringify(img.id))
          }
          .autoPlay(true)

          Grid() {
            ForEach(wdHomeViewModel.getFirstGridData(), (item: WDHomeModel, index: number) => {
              GridItem() {
                Column() {
                  Image(item.img)
                    .width(40)
                    .height(40)
                  Text(item.title)
                    .fontSize(12)
                    .margin({top: 4})
                }
              }
            }, (item: WDHomeModel) => JSON.stringify(item.id))
          }
          .backgroundImage($r('app.media.backgroundImage'))
          .backgroundImageSize({
            width: '100%',
            height: '156'
          })
          .columnsTemplate('1fr 1fr 1fr 1fr')
          .rowsTemplate('1fr 1fr')
          .columnsGap(8)
          .rowsGap(12)
          .margin({
            top: '12'
          })
          .padding({
            top: '12',
            bottom: '12'
          })
          .height('156')
          .backgroundColor(Color.White)
          .borderRadius(16)
        }
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