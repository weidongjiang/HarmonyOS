import { router } from '@kit.ArkUI';
import { url } from '@kit.ArkTS';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
      Button() {
        Text('Next')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .type(ButtonType.Normal)
      .margin({
        top: 20
      })
      .backgroundColor(Color.Red)
      .width('40%')
      .height('5%')
      .onClick(() => {
        console.log('Succeeded in clicking the Next button')
        router.pushUrl({ url: 'pages/Second' }).then(() => {
          console.log('Succeeded in jumping to the second page')
        }).catch((err: BusinessError) => {
          console.error(' Code is ${err.code}, message is ${err.message}')
        })
      })
    }
    .height('100%')
    .width('100%')
  }
}