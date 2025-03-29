struct preview{build(){Row() {
      Column() {
        Text(this.title)
          .height(19)
          .width('100%')
          .fontSize(14)
          .textAlign(TextAlign.Start)
          .textOverflow({overflow: TextOverflow.Ellipsis})
          .maxLines(1)
          .fontWeight(400)
          .margin({
            top: 4
          })
        Text(this.brief)
          .height(32)
          .width('100%')
          .fontSize(12)
          .textAlign(TextAlign.Start)
          .textOverflow({overflow: TextOverflow.Ellipsis})
          .maxLines(2)
          .fontWeight(400)
          .margin({top: 4})
      }
      .height('100%')
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
      .margin({right: 12})

      Image($r('app.media.enablement_pic1'))
        .objectFit(ImageFit.Cover)
        .height(64)
        .width(108)
        .borderRadius(16)
    }
    .height(88)
    .width('100%')
    .borderRadius(16)
    .backgroundColor(Color.White)
    .padding(12)
    .alignItems(VerticalAlign.Top)}}