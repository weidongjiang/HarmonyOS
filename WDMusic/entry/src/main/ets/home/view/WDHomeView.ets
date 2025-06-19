import WDHomeListInfo from "../../common/WDHomeListInfo";
import WDValue from "../../common/WDValue";
import WDHomeModel from "../model/WDHomeModel";
import { WDHomeListRCPUtils } from "../viewModel/WDHomeListRCPUtils";
import wdHomeViewModel from "../viewModel/WDHomeViewModel";
import { common } from "@kit.AbilityKit";
import { hilog } from "@kit.PerformanceAnalysisKit";

const DOMAIN = 0x0000;

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

          Text($r('app.string.home_list'))
            .fontSize(18)
            .fontWeight(700)
            .width('100%')
            .margin({
              top: '18',
              bottom: '8'
            })

          List() {
            ForEach(this.httpGridItems, (item: WDHomeListInfo) => {
              ListItem() {
                Row() {
                  Image(item.indexNavPic)
                    .width('130')
                    .height('80')
                    .objectFit(ImageFit.TOP_START)
                    .borderRadius('8')
                    .margin({right: '12'})

                  Column() {
                    Text(item.activityName)
                      .width('190')
                      .textOverflow({overflow: TextOverflow.Ellipsis})
                      .maxLines(1)
                      .fontSize('16')
                      .fontWeight(FontWeight.Medium)
                    Text(item.theme)
                      .width('190')
                      .textOverflow({overflow: TextOverflow.Ellipsis})
                      .maxLines(2)
                      .fontSize('12')
                      .fontColor('#99182431')
                      .margin({top: '8'})

                    Row() {
                      Image(this.pictureUri)
                        .width('20')
                        .opacity(0.5)
                    }
                    .width('170')
                    .margin({top: '10'})
                    .justifyContent(FlexAlign.End)
                    .alignItems(VerticalAlign.Bottom)
                  }
                  .alignItems(HorizontalAlign.Start)
                }
                .width('100%')
                .padding({
                  top: '12',
                  left: '12',
                  bottom: '12',
                  right: '12'
                })
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .margin({bottom: '8'})
              .borderRadius('16')
              .backgroundColor('#ffffff')
              .align(Alignment.TopStart)
              .width('100%')
              .onClick(() => {
                hilog.debug(DOMAIN, 'testTad', item.activityName)
              })
            }, (item: WDHomeListInfo) => JSON.stringify(item))
          }
          .scrollBar(BarState.Off)
          .width('100%')

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
