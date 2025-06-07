import CommonConstants from '../constant/CommonConstant'

export class WDDataModel {
  public tasks: Array<Resource> = CommonConstants.TODO_DATA

  getData(): Array<Resource> {
    return this.tasks
  }
}

export default new WDDataModel()