import WDSettingModel from "../model/WDSettingModel"

export class WDSettingViewModel {
  getSettingListData(): Array<Array<WDSettingModel>> {
    let listData: WDSettingModel[][] = [
      [
        new WDSettingModel(0, $r('app.string.setting_list_news'), $r('app.media.news'), $r("app.string.setting_toggle"))
      ],
      [
        new WDSettingModel(1, $r('app.string.setting_list_font'), $r('app.media.data')),
        new WDSettingModel(2, $r('app.string.setting_list_menu'), $r('app.media.menu')),
      ],
      [
        new WDSettingModel(3, $r('app.string.clear_cache'), $r('app.media.storage')),
        new WDSettingModel(4, $r('app.string.setting_list_privacy'), $r('app.media.person_shield')),
      ],
      [
        new WDSettingModel(5, $r('app.string.setting_list_about'), $r('app.media.about'))
      ]
    ];
    return listData
  }
}

export default new WDSettingViewModel()