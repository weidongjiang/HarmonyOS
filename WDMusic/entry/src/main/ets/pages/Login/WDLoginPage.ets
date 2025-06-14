import { promptAction } from '@kit.ArkUI';

@Extend(TextInput)
function inputStyle() {
  .placeholderColor('#99182431')
  .height('45')
  .fontSize('18')
  .backgroundColor('#F1F3F5')
  .width('328')
  .margin({
    top: 12
  })
}

@Extend(Line)
function lineStyle() {
  .width('328')
  .height('1')
  .backgroundColor('#33182431')
}

@Extend(Text)
function blueTextStyle() {
  .fontColor('#007DFF')
  .fontSize('14')
  .fontWeight(FontWeight.Medium)
}


@Entry
@Component
struct WDLoginPage {
  @State account: string = '';
  @State password: string = '';
  @State isShowProgress: boolean = false;
  private timeOutId: number = -1;
  pathStack: NavPathStack = new NavPathStack();

  @Builder
  imageButton(src: Resource) {
    Button({ type: ButtonType.Circle, stateEffect: true }) {
      Image(src)
    }
    .height('48')
    .width('48')
    .backgroundColor('F1F3F5')
  }

  login(result: boolean): void {
    if (this.account == '' || this.password == '') {
      promptAction.showToast({
        message: $r('app.string.input_empty_tips')
      })
    } else {
      this.isShowProgress = true
      if (this.timeOutId === -1) {
        this.timeOutId = setTimeout(() => {
          this.isShowProgress = false
          this.timeOutId = -1
          this.pathStack.pushPathByName('WDMainPage', null)
        }, 2000)
      }
    }
  }

  aboutToDisappear(): void {
    clearTimeout(this.timeOutId)
    this.timeOutId = -1
  }

  build() {
    Navigation(this.pathStack) {
      Column() {
        Image($r('app.media.logo'))
          .width('78')
          .height('78')
          .margin({
            top: '150',
            bottom: '8'
          })
        Text($r('app.string.login_page'))
          .fontSize('24')
          .fontWeight(FontWeight.Medium)
          .fontColor('#182431')
        Text($r('app.string.login_more'))
          .fontSize('12')
          .fontColor('#99182431')
          .margin({
            top: '8',
            bottom: '30'
          })
        TextInput({ placeholder: $r('app.string.account') })
          .type(InputType.Number)
          .maxLength(11)
          .inputStyle()
          .onChange((value: string) => {
            this.account = value
          })
        Line()
          .lineStyle()
        TextInput({ placeholder: $r('app.string.password') })
          .type(InputType.Password)
          .maxLength(8)
          .inputStyle()
          .onChange((value: string) => {
            this.password = value
          })
        Line()
          .lineStyle()

        Row() {
          Text($r('app.string.message_login'))
            .blueTextStyle()
          Text($r('app.string.other_login_method'))
            .blueTextStyle()
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('328')
        .margin({
          top: '8'
        })

        Button($r('app.string.login'), {
          type: ButtonType.Capsule
        })
          .width('328')
          .height('40')
          .fontSize('16')
          .fontWeight(FontWeight.Medium)
          .backgroundColor('#007DFF')
          .margin({
            top: '48',
            bottom: '12'
          })
          .onClick(() => {
            this.login(true)
          })
        Text($r('app.string.register_account'))
          .fontColor('#007DFF')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)


        Blank()
        Text($r('app.string.other_login_method'))
          .fontColor('#838D97')
          .fontSize('12')
          .fontWeight(FontWeight.Medium)
          .margin({
            top: '50',
            bottom: '12'
          })

        Row({ space: 20 }) {
          this.imageButton($r('app.media.login_method1'))
          this.imageButton($r('app.media.login_method2'))
          this.imageButton($r('app.media.login_method3'))
        }
        .margin({
          bottom: 20
        })
      }
      .padding({
        left: '12',
        right: '12',
        bottom: '24',
      })
      .backgroundColor('#F1F3F5')
      .width('100%')
      .height('100%')
    }
    .backgroundColor('#F1F3F5')
    .width('100%')
    .height('100%')
    .hideTitleBar(true)
    .hideToolBar(true)

  }
}