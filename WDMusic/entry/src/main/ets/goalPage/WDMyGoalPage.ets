
@Builder
export function WDMyGoalPageBuilder() {
  WDMyGoalPage()
}

@Entry
@Component
struct WDMyGoalPage {
  @State message: string = 'Hello World';

  build() {
    NavDestination() {
      Text(this.message)
        .id('WDMyGoalPageHelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
  }
}