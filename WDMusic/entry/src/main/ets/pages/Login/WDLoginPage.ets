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
  @Builder
  imageButton(src: Resource) {
    Button({ type: ButtonType.Circle, stateEffect: true }) {
      Image(src)
    }
    .height('48')
    .width('48')
    .backgroundColor('F1F3F5')
  }

  // @Builder
  // imageButton(src: Resource) {
  //   Button({ type: ButtonType.Circle, stateEffect: true }) {
  //     Image(src)
  //   }
  //   .height('48vp')
  //   .width('48vp')
  //   .backgroundColor('#F1F3F5')
  // }

  build() {
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
      Line()
        .lineStyle()
      TextInput({ placeholder: $r('app.string.password') })
        .type(InputType.Password)
        .maxLength(8)
        .inputStyle()
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
}