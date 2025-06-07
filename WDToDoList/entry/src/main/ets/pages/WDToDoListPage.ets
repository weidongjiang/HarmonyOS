import CommonConstants  from '../common/constant/CommonConstant'
import WDToDoItem from '../common/view/WDToDoItem';
import WDDataModel from '../common/viewModel/WDDataModel';

@Entry
@Component
struct WDToDoListPage {
  private totalTasks: Array<Resource> = [];
  aboutToAppear(): void {
    this.totalTasks = WDDataModel.getData()
  }
  build() {
    Column({space: CommonConstants.COLUMN_SPACE}) {
      Text($r('app.string.page_title'))
        .fontSize($r('app.float.title_font_size'))
        .fontWeight(FontWeight.Bold)
        .width(CommonConstants.TITLE_WIDTH)
        .margin({
          top: $r('app.float.title_margin_top'),
          bottom: $r('app.float.title_margin_bottom')
        })
        .textAlign(TextAlign.Start)
      ForEach(this.totalTasks, (item: string) => {
        WDToDoItem({content:item})
      }, (item: string) => JSON.stringify(item))
    }
    .width(CommonConstants.FULL_LENGTH)
    .height(CommonConstants.FULL_LENGTH)
    .backgroundColor($r('app.color.page_background'))
  }
}