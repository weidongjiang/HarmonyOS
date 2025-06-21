import { preferences } from "@kit.ArkData";
import { hilog } from "@kit.PerformanceAnalysisKit";
import { BusinessError } from "@kit.BasicServicesKit";


const KEY_APP_FONT_SIZE = 'appFontSize';
const TAG = 'WDPreferencesUtil';
const HTAG = 0x0000;

export class WDPreferencesUtil {
  preference?: preferences.Preferences;

  getFontPreferences(context: Context) {
    this.preference = preferences.getPreferencesSync(context, { name: 'FontPreferences' });
    hilog.info(HTAG, TAG, 'creat success')
  }

  saveChangeFontSize(fontSize: number) {
    this.preference?.putSync(KEY_APP_FONT_SIZE, fontSize)
    this.preference?.flush((error: BusinessError) => {
      hilog.info(HTAG, TAG, 'flush' + error.code + error.message)
    })
  }

  getFontSize(): number {
    let size: number = 0
    size = this.preference?.getSync(KEY_APP_FONT_SIZE, 0) as number
    hilog.info(HTAG, TAG, 'getFontSize' + size)
    return size
  }

  isKeyExist(): boolean {
    let isKeyExist: boolean = false
    this.preference?.has(KEY_APP_FONT_SIZE).then(async (isExist: boolean) => {
      isKeyExist = isExist
    }).catch((error: Error) => {
      hilog.info(HTAG, TAG, 'isKeyExist error' + error)
    })
    return isKeyExist
  }
}

export default new WDPreferencesUtil()