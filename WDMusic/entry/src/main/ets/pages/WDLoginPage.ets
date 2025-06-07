@Entry
@Component
struct WDLoginPage {
  @State message: string = 'WDLoginPage';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('WDLoginPageHelloWorld')
        .fontSize($r('app.float.setting_account_fontSize'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}