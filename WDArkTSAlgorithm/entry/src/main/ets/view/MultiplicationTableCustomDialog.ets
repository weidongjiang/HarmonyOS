import { CommonConstants } from "../common/constants/Constants";


@Component
export struct MultiplicationTableCustomDialog {
  IsPalindromicStringCustomDialogController?: CustomDialogController

  build() {
    Column() {
      Column() {
        Text($r('app.string.ArkTS_Development_Case'))
          .height($r('app.float.dialog_text_height'))
          .font({size: $r('sys.float.ohos_id_text_size_headline8')})
          .fontColor($r('sys.color.ohos_id_color_text_primary'))
          .margin({
            top: $r('app.float.dialog_text_margin_top')
          })
        Text($r('app.string.Multiplication_Table_Title'))
          .font({size: $r('sys.float.ohos_id_text_size_body2')})
          .fontColor($r('sys.color.ohos_id_color_text_secondary'))
          .margin({
            left: $r('app.float.dialog_text_margin_left')
          })
      }
      .alignItems(HorizontalAlign.Center)
      .width(CommonConstants.PERCENT_FULL)
      .height($r('app.float.dialog_text_height'))
    }
    .alignItems(HorizontalAlign.Center)
    .padding({
      left: $r('app.float.dialog_padding'),
      right: $r('app.float.dialog_padding'),
      bottom: $r('app.float.dialog_padding')
    })
  }
}

// Column() {
//   Column() {
//     Text($r('app.string.ArkTS_Development_Case'))
//       .height($r('app.float.button_height'))
//       .font({ size: $r('sys.float.ohos_id_text_size_headline8') })
//       .fontColor($r('sys.color.ohos_id_color_text_primary'))
//       .margin({ top: $r('app.float.dialog_text_margin_top') })
//     Text($r('app.string.Multiplication_Table_Title'))
//       .font({ size: $r('sys.float.ohos_id_text_size_body2') })
//       .fontColor($r('sys.color.ohos_id_color_text_secondary'))
//       .margin({ left: $r('app.float.dialog_text_margin_left') })
//   }
//   .alignItems(HorizontalAlign.Center)
//   .width(CommonConstants.PERCENT_FULL)
//   .height($r('app.float.dialog_text_height'))
//
//   Text($r('app.string.check_info_in_log'))
//     .font({ size: $r('sys.float.ohos_id_text_size_body1') })
//     .fontColor($r('sys.color.ohos_id_color_text_primary'))
//     .margin({ top: $r('app.float.dialog_padding') })
// }
// .alignItems(HorizontalAlign.Center)
// .padding({
//   left: $r('app.float.dialog_padding'),
//   right: $r('app.float.dialog_padding'),
//   bottom: $r('app.float.dialog_padding')
// })