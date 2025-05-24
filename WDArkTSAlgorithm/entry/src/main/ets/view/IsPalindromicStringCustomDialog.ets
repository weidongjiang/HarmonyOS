import { CommonConstants } from "../common/constants/Constants"
import CommonUtils from "../common/utils/CommonUtils";
import { isPalindromicString } from '../common/utils/Method'


@CustomDialog
@Component
export struct IsPalindromicStringCustomDialog {
  IsPalindromicStringCustomDialogController: CustomDialogController
  @State content: string = '';
  @State result: Boolean = false;

  build() {
    Column() {
      Column() {
        Text($r('app.string.ArkTS_Development_Case'))
          .font({ size: $r('sys.float.ohos_id_text_size_headline8') })
          .fontColor($r('sys.color.ohos_id_color_text_primary'))
          .margin({
            top: $r('app.float.dialog_text_margin_top')
          })
        Text($r('app.string.IsPalindromicString'))
          .font({ size: $r('sys.float.ohos_id_text_size_body2') })
          .fontColor($r('sys.color.ohos_id_color_badge_red'))
          .margin({
            left: $r('app.float.dialog_text_margin_left')
          })
      }
      .alignItems(HorizontalAlign.Center)
      .width(CommonConstants.PERCENT_FULL)
      .height($r('app.float.dialog_text_height'))

      TextInput({ placeholder: CommonConstants.STRING_INPUT })
        .margin({ top: $r('app.float.dialog_padding') })
        .height($r('app.float.dialog_textInput_height'))
        .showUnderline(true)
        .onChange((value: string) => {
          this.content = value;
        })

      Button($r('app.string.IsPalindromicString'))
        .width($r('app.float.dialog_button_width'))
        .margin({
          top: $r('app.float.button_margin_bottom'),
          bottom: $r('app.float.dialog_padding')
        })
        .onClick(() => {
          this.result = isPalindromicString(this.content);
          if (this.result) {
            CommonUtils.showToast(CommonConstants.PALINDROMIC_STRING_YES);
          } else {
            CommonUtils.showToast(CommonConstants.PALINDROMIC_STRING_NO)
          }
        })

    }
    .alignItems(HorizontalAlign.Center)
    .padding({
      left: $r('app.float.dialog_padding'),
      right: $r('app.float.dialog_padding'),
      bottom: $r('app.float.dialog_padding')
    })
  }
}
