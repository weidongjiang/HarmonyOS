import CommonConstants  from '../common/constant/CommonConstant'
@Entry
@Component
struct WDToDoListPage {
  build() {
    Text($r('app.string.page_title'))
      .fontSize($r('app.float.title_font_size'))
      .fontWeight(FontWeight.Bold)
      .width(CommonConstants.TITLE_WIDTH)
      .margin({
        top: $r('app.float.title_margin_top'),
        bottom: $r('app.float.title_margin_bottom')
      })
      .textAlign(TextAlign.Start)
  }
}