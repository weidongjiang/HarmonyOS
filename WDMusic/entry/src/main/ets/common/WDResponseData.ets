import WDValue from "./WDValue";

export default class WDResponseData {
  public code: string;
  public value: WDValue;

  constructor(code: string, value: WDValue) {
    this.code = code;
    this.value = value;
  }
}