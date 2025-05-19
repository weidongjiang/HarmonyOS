import { CommonConstants } from '../common/constants/Constants';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text($r('app.string.ArkTS_Development_Case'))
        .width(CommonConstants.PERCENT_NINETY)
        .margin({
          top: $r('app.float.text_margin_top'),
          bottom: $r('app.float.text_margin_bottom'),
          left: $r('app.float.text_margin_left'),
          right: $r('app.float.text_margin_right')
        })
        .font({
          size: $r('app.float.text_font_size'),
          weight: CommonConstants.FONT_WEIGHT_SEVEN_HUNDRED
        })
    }
  }
}