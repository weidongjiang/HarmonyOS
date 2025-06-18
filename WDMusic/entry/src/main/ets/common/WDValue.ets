import WDHomeListInfo from './WDHomeListInfo';

export default class WDValue {
  public list: Array<WDHomeListInfo>;

  constructor(list: Array<WDHomeListInfo>) {
    this.list = list;
  }
}