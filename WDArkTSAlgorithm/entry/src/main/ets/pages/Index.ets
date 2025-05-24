import { CommonConstants } from '../common/constants/Constants';
import { DaffodilsNumberCustomDialog } from '../view/DaffodilsNumberCustomDialog';
import { MultiplicationTableCustomDialog } from '../view/MultiplicationTableCustomDialog'
import Logger from '../common/utils/Logger'
import { multiplicationTable } from '../common/utils/Method'

@Entry
@Component
struct Index {
  daffodilsNumberCustomDialogController: CustomDialogController | null = new CustomDialogController({
    builder: DaffodilsNumberCustomDialog(),
    alignment: DialogAlignment.Center,
    offset: {dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y}
  });

  multiplicationTableCustomDialogController: CustomDialogController | null = new CustomDialogController({
    builder: MultiplicationTableCustomDialog(),
    alignment: DialogAlignment.Center,
    offset: {dx: CommonConstants.OFFSET_X, dy: CommonConstants.OFFSET_Y}
  });

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
      Column() {
        Button($r('app.string.DaffodilsNumber'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .onClick(() => {
            /// 水仙花
            this.daffodilsNumberCustomDialogController?.open()
          })
        Button($r('app.string.MultiplicationTable'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .margin({
            top: $r('app.float.button_margin_top')
          })
          .onClick(() => {
            /// 乘法表
            this.multiplicationTableCustomDialogController?.open()
            let result = multiplicationTable()
            for (let index = 0; index < result.length; index++) {
              let com = result[index]
              Logger.info(com.toString())
            }
          })
        Button($r('app.string.IsPalindromicString'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .margin({
            top:$r('app.float.button_margin_top')
          })
          .onClick(() => {
            ///回文字符
          })
        Button($r('app.string.StringReversal'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .margin({
            top: $r('app.float.button_margin_top')
          })
          .onClick(() => {
            /// 字符串反转
          })
        Button($r('app.string.IsLeapYear'))
          .width($r('app.float.button_width'))
          .height($r('app.float.button_height'))
          .margin({
            top: $r('app.float.button_margin_top')
          })
          .onClick(() => {
            /// 闰年判断
          })
      }
      .width(CommonConstants.PERCENT_FULL)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width(CommonConstants.PERCENT_FULL)
    .height(CommonConstants.PERCENT_FULL)
  }
}