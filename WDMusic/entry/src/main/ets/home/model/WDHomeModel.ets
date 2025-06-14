

export default class WDHomeModel {
  id: number;
  title: Resource;
  img: Resource;

  constructor(id: number, title: Resource, img: Resource) {
    this.id = id;
    this.title = title;
    this.img = img;
  }
}