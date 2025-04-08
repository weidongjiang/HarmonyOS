


function factorial(n: number): number {
  if (n < 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

function test1() {

  /// 变量
  let ha: string = 'hello'
  /// 常量
  const he: String = 'he'
  let a: number = factorial(20)
  /// 超长数字
  let bigInt: bigint = BigInt('9999999999999999999999999999999999999999999')

  let abc: String = "adb "
  /// 模板字面量
  let abccd = `这是 ${abc}`

  console.log('test log:' + bigInt.toString())
  console.log('test log:' + abccd)

  let array: String[] = ['a', 'b', 'c']
  console.log('test log:' + array)

}

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  build() {

    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'test1';
          test1()
        })
    }
    .height('100%')
    .width('100%')

  }
}

