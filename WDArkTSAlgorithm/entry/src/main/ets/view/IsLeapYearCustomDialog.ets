import { CommonConstants } from "../common/constants/Constants"
import CommonUtils from "../common/utils/CommonUtils"
import { isLeapYear } from '../common/utils/Method'

@CustomDialog
@Component
export struct IsLeapYearCustomDialog {
  IsPalindromicStringCustomDialogController: CustomDialogController
  @State content: string = '';

  build() {
    Column() {
      Column() {
        Text($r('app.string.ArkTS_Development_Case'))
          .height($r('app.float.button_height'))
          .font({ size: $r('sys.float.ohos_id_text_size_headline8') })
          .fontColor($r('sys.color.ohos_id_color_text_primary'))
          .margin({ top: $r('app.float.dialog_text_margin_top') })
        Text($r('app.string.Judgment_of_leap_year'))
          .font({ size: $r('sys.float.ohos_id_text_size_body2') })
          .fontColor($r('sys.color.ohos_id_color_text_secondary'))
          .margin({ left: $r('app.float.dialog_text_margin_left') })
      }
      .margin(HorizontalAlign.Center)
      .width(CommonConstants.PERCENT_FULL)
      .height($r('app.float.dialog_text_height'))

      TextInput({ placeholder: CommonConstants.LEAP_YEAR_INPUT })
        .margin({ top: $r('app.float.text_margin_top') })
        .height($r('app.float.dialog_textInput_height'))
        .showUnderline(true)
        .onChange((value: string) => {
          this.content = value
        })
      Button($r('app.string.IsLeapYear'))
        .width($r('app.float.dialog_button_width'))
        .margin({
          top: $r('app.float.text_margin_bottom'),
          bottom: $r('app.float.text_margin_top')
        })
        .onClick(() => {
          let result = isLeapYear(Number.parseInt(this.content))
          if (result) {
            CommonUtils.showToast(CommonConstants.LEAP_YEAR_YES)
          } else {
            CommonUtils.showToast(CommonConstants.LEAP_YEAR_NO)
          }
        })
    }
    .margin(HorizontalAlign.Center)
    .padding({
      left: $r('app.float.dialog_padding'),
      right: $r('app.float.dialog_padding')
    })
  }
}
