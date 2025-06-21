import WDPreferencesUtil from "../../common/dataBase/WDPreferencesUtil"

@CustomDialog
export struct WDSliderCustomDialog {
  WDSliderCustomDialogController: CustomDialogController
  @StorageLink('fontSizeOffset') fontSizeOffset: number = 0
  @State currentValue: number = 0

  aboutToAppear(): void {
    let size = WDPreferencesUtil.getFontSize()
    this.fontSizeOffset = size
  }

  build() {
    Column() {
      Text('字体大小调节')
        .font({
          size: '20',
          weight: 500
        })
        .textAlign(TextAlign.Center)
        .opacity(0.9)
        .width('312')
        .height('27')
        .margin({
          top: '15',
          bottom: '15',
          left: '24',
          right: '24'
        })
      Row() {
        Text('A')
          .fontSize('12')
          .margin({ left: '4', right: '4' })
        Slider({
          value: this.fontSizeOffset,
          min: -4,
          max: 4
        })
          .width('304')
          .onChange((value: number) => {
            this.currentValue = value
          })

        Text('A')
          .fontSize(20)
          .fontWeight(700)
          .margin({ left: '4', right: '4' })
      }

      Row() {
        Button('取消')
          .width('156')
          .height('41')
          .margin({
            left: 16,
            right: 16
          })
          .backgroundColor('#0d000000')
          .fontColor('#0A59F7')
          .onClick(() => {
            this.WDSliderCustomDialogController.close()
          })

        Button('确认')
          .width('156')
          .height(41)
          .margin({ right: 16 })
          .backgroundColor('#0d000000')
          .fontColor('#0A59F7')
          .onClick(() => {
            WDPreferencesUtil.saveChangeFontSize(this.currentValue)
            this.fontSizeOffset = this.currentValue
            this.WDSliderCustomDialogController.close()
          })

      }
      .width('100%')
      .margin({
        top: '15',
        bottom: '15'
      })
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .width('360')
    .backgroundColor('#ffffff')
    .borderRadius('16')
  }
}