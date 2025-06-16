
export default class WDSettingModel {
  id: number;
  title: Resource;
  img: Resource;
  other?: Resource;

  constructor(id: number, title: Resource, img: Resource, other?: Resource) {
    this.id = id;
    this.title = title;
    this.img = img;
    this.other = other;
  }
}