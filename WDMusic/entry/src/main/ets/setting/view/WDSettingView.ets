import wdSettingViewModel from '../vewModel/WDSettingViewModel'
import WDSettingModel from '../model/WDSettingModel'
import { WDSliderCustomDialog } from '../view/WDSliderCustomDialog'

@Component
export default struct WDSetting {
  WDSliderCustomDialogController: CustomDialogController = new CustomDialogController({
    builder: WDSliderCustomDialog({}),
    alignment: DialogAlignment.Bottom,
    customStyle: true,
    offset: { dx: 0, dy: -25 }
  });
  pathStack: NavPathStack = new NavPathStack();

  @Builder
  settingCell(item: WDSettingModel) {
    Row() {
      Row({}) {
        Image(item.img)
          .height('22')
          .margin({
            left: '16',
            right: '12'
          })
        Text(item.title)
          .fontSize('16')
      }

      if (item.other === undefined) {
        Image($r('app.media.right_grey'))
          .width('12')
          .height('24')
      } else {
        Toggle({ type: ToggleType.Switch, isOn: false })
      }
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .padding({
      left: '8',
      right: '22'
    })
    .onClick(() => {
      if (item.id === 1) {
        this.WDSliderCustomDialogController.open()
      } else if (item.id === 3) {
        this.pathStack.pushPathByName('WDMyGoalPage', null);
      }
    })
  }

  build() {
    Scroll() {
      Column({ space: 12 }) {
        Text($r('app.string.mainPage_tabTitles_mine'))
          .width('100%')
          .margin({
            top: '48',
            bottom: '12'
          })
          .fontSize(26)
          .fontWeight(700)

        Row() {
          Image($r('app.media.account'))
            .width('48')
            .height('48')
          Column() {
            Text($r('app.string.setting_account_name'))
              .fontSize('20')
            Text($r('app.string.setting_account_email'))
              .fontSize('12')
              .margin({
                top: '4'
              })
          }
          .alignItems(HorizontalAlign.Start)
          .margin({
            left: '12'
          })
        }
        .width('100%')
        .alignItems(VerticalAlign.Center)

        List({ space: '12' }) {
          ForEach(wdSettingViewModel.getSettingListData(), (item: WDSettingModel[]) => {
            ListItemGroup() {
              ForEach(item, (itemData: WDSettingModel, currentIndex) => {
                ListItem() {
                  this.settingCell(itemData)
                }
                .height('48')
              })
            }
            .divider({
              strokeWidth: '1',
              color: '0d000000',
              startMargin: '42',
              endMargin: '42'
            })
            .backgroundColor('#ffffff')
            .borderRadius('16')
          }, (item: WDSettingModel) => JSON.stringify(item))
        }
        .scrollBar(BarState.Off)
        .width('100%')
        .padding({
          top: '4',
          bottom: '4'
        })

        Blank()

        Button($r('app.string.setting_button'), { type: ButtonType.Capsule })
          .width('90%')
          .height('40')
          .fontSize('16')
          .fontColor('#FA2A2D')
          .fontWeight(FontWeight.Medium)
          .backgroundColor('#E5E8EA')
          .margin({
            bottom: '16'
          })

      }
      .height('100%')
      .width('100%')
    }
    .width('100%')
    .height('100%')
    .scrollBar(BarState.Off)
    .align(Alignment.Start)
  }
}
