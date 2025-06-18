import WDHomeListInfo from "../../common/WDHomeListInfo";
import WDValue from "../../common/WDValue";
import WDHomeModel from "../model/WDHomeModel";
import { WDHomeListRCPUtils } from "../viewModel/WDHomeListRCPUtils";
import wdHomeViewModel from "../viewModel/WDHomeViewModel";
import { common } from "@kit.AbilityKit";

@Component
export default struct WDHomeView {
  private swiperController: SwiperController = new SwiperController();
  private context = this.getUIContext().getHostContext() as common.UIAbilityContext
  private applicationInfo = this.context.getApplicationContext()
  private cacheDir = this.applicationInfo.filesDir
  @State httpGridItems: Array<WDHomeListInfo> = [];
  @State pictureUri: string = '';

  async aboutToAppear(): Promise<void> {

    let rcpUtil: WDHomeListRCPUtils = new WDHomeListRCPUtils();
    await rcpUtil.postHomeListRCPRequsst().then((value: Array<WDHomeListInfo>) => {
      this.httpGridItems = value;
    })
    await rcpUtil.getJianTouRCPRequest(this.cacheDir).then((value: string) => {
      this.pictureUri = value;
    })
    rcpUtil.destroySession()
  }

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
                    .margin({ top: 4 })
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