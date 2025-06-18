import { rcp } from "@kit.RemoteCommunicationKit";
import { fileIo, fileUri } from "@kit.CoreFileKit";
import { BusinessError } from "@kit.BasicServicesKit";
import { hilog } from "@kit.PerformanceAnalysisKit";
import WDHomeListInfo from "../../common/WDHomeListInfo";
import WDResponseData from "../../common/WDResponseData";


const TAG: string = 'RCPUtils';
const list_source: string = 'https://svc-drcn.developer.huawei.com/community/servlet/consumer/' +
  'partnerActivityService/v1/developer/activity/terminalActivities/list';

export class WDHomeListRCPUtils {
  rcpSession: rcp.Session;

  constructor() {
    this.rcpSession = rcp.createSession();
  }

  destroySession() {
    this.rcpSession.close()
  }

  async getJianTouRCPRequest(cacheDir: string): Promise<string> {
    let responsePictureUri: string = '';

    await this.rcpSession.get('https://developer.huawei.com/system/modules/org.opencms.portal.template.core/' +
      'resources/harmony/img/jiantou_right.svg')
      .then((response) => {
        let filePath = cacheDir + '/test.svg';
        let file = fileIo.openSync(filePath, fileIo.OpenMode.CREATE | fileIo.OpenMode.READ_WRITE);
        responsePictureUri = fileUri.getUriFromPath(filePath);
        fileIo.writeSync(file.fd, response.body);
        fileIo.closeSync(file.fd);
      }).catch((error: BusinessError) => {
        hilog.error(0x0000, TAG, 'err: err code is' + error.code + ',' + ' err message is' + JSON.stringify(error))
      });

    return responsePictureUri;
  }

  async postHomeListRCPRequsst(): Promise<WDHomeListInfo[]> {
    let responseData: Array<WDHomeListInfo> = [];
    let requestContent: rcp.RequestContent = {
      'status': '1',
      'belong': '1',
      'language': 'cn',
      'needTop': '1',
      'displayChannel': [1, 3],
      'count': 4,
      'pagestart': 1,
      'type': '1,4,5,6'
    }

    await this.rcpSession.post(list_source, requestContent).then((response) => {
      let result: WDResponseData = response.toJSON() as WDResponseData;
      responseData = result.value.list;
    }).catch((error: BusinessError) => {
      hilog.error(0x0000, TAG, 'err: err code is' + error.code + ',' + ' err message is' + JSON.stringify(error))
    })
    return responseData;
  }
}
