import { promptAction } from "@kit.ArkUI";
import { CommonConstants } from '../constants/Constants';

export class CommonUtils {
  showToast(message: string) {
    promptAction.showToast({
      message: message,
      duration: CommonConstants.TOAST_TIME
    })
  }
}

let commonUtils = new CommonUtils();

export default commonUtils as CommonUtils;