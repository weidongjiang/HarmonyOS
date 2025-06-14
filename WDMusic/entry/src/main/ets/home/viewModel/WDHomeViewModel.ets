import WDHomeModel from "../model/WDHomeModel";

export class WDHomeViewModel {
  getSwiperImages(): Array<Resource> {
    let swiperImages: Resource[] = [
      $r('app.media.fig1'),
      $r('app.media.fig2'),
      $r('app.media.fig3'),
      $r('app.media.fig4')
    ];
    return swiperImages
  }

  getFirstGridData(): Array<WDHomeModel> {
    let models: WDHomeModel[] = [
      new WDHomeModel(0, $r('app.string.my_love'), $r('app.media.love')),
      new WDHomeModel(1, $r('app.string.history_record'), $r('app.media.record')),
      new WDHomeModel(2, $r('app.string.message'), $r('app.media.message')),
      new WDHomeModel(3, $r('app.string.shopping_cart'), $r('app.media.shopping')),
      new WDHomeModel(4, $r('app.string.my_goal'), $r('app.media.target')),
      new WDHomeModel(5, $r('app.string.group'), $r('app.media.circle')),
      new WDHomeModel(6, $r('app.string.favorites'), $r('app.media.favorite')),
      new WDHomeModel(7, $r('app.string.recycle_bin'), $r('app.media.recycle'))
    ];
    return models
  }
}

export default new WDHomeViewModel()