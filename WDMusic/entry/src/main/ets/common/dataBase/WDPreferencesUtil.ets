import { preferences } from "@kit.ArkData";
import { hilog } from "@kit.PerformanceAnalysisKit";
import { BusinessError } from "@kit.BasicServicesKit";

const KEY_APP_FONT_SIZE = 'appFontSize';
const TAG = 'WDPreferencesUtil';

export class WDPreferencesUtil {
  preference?: preferences.Preferences;

  getFontPreferences(context: Context) {
    this.preference = preferences.getPreferencesSync(context, { name: 'FontPreferences' });
    hilog.info(0x0000, TAG, 'creat success')
  }

  saveChangeFontSize(fontSize: number) {
    this.preference?.putSync(KEY_APP_FONT_SIZE, fontSize)
    this.preference?.flush((error: BusinessError) => {
      hilog.info(0x0000, TAG, 'flush fontSize' + fontSize + 'error' + error.code + error.message)
    })
  }

  getFontSize(): number {
    let size: number = 0
    size = this.preference?.getSync(KEY_APP_FONT_SIZE, 0) as number
    hilog.info(0x0000, TAG, 'getFontSize' + size)
    return size
  }

  isKeyExist(): boolean {
    let isKeyExist: boolean = false
    this.preference?.has(KEY_APP_FONT_SIZE).then(async (isExist: boolean) => {
      isKeyExist = isExist
    }).catch((error: Error) => {
      hilog.info(0x0000, TAG, 'isKeyExist error' + error)
    })
    return isKeyExist
  }
}

export default new WDPreferencesUtil();