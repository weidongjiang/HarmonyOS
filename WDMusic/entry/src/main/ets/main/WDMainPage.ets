import WDHomeView from '../home/view/WDHomeView'
import WDSetting from '../setting/view/WDSettingView'

@Builder
export function WDMainPageBuilder() {
  WDMainPage()
}

@Entry
@Component
struct WDMainPage {
  @State currentIndex: number = 0;
  private tabsController: TabsController = new TabsController();

  @Builder
  TabBuilder(title: Resource, index: number, selectImg: Resource) {
    Column() {
      SymbolGlyph(selectImg)
        .fontSize('24')
        .renderingStrategy(SymbolRenderingStrategy.MULTIPLE_OPACITY)
        .symbolEffect(new BounceSymbolEffect(EffectScope.WHOLE, EffectDirection.UP),
          this.currentIndex === index ? true : false)
        .fontColor(this.currentIndex === index ? ['#0a59f7'] : ['#66000000'])
      Text(title)
        .margin({
          top: '4'
        })
        .fontSize(10)
        .fontWeight(500)
        .fontColor(this.currentIndex === index ? '#0a59f7' : '#66000000')
    }
    .backgroundColor('#F1F3F5')
    .justifyContent(FlexAlign.Center)
    .height('56')
    .width('100%')
    .onClick(() => {
      this.currentIndex = index
      this.tabsController.changeIndex(this.currentIndex)
    })
  }

  build() {
    NavDestination() {
      Tabs({
        barPosition: BarPosition.End,
        controller: this.tabsController
      }) {
        TabContent() {
          WDHomeView()
        }
        .padding({
          left: '12',
          right: '12'
        })
        .backgroundColor('F1F3F5')
        .tabBar(this.TabBuilder($r('app.string.Tab_Bar_One'), 0, $r('sys.symbol.house_fill')))

        TabContent() {
          WDSetting()
        }
        .padding({
          left: '12',
          right: '12'
        })
        .backgroundColor('F1F3F5')
        .tabBar(this.TabBuilder($r('app.string.Tab_Bar_Two'), 1, $r('sys.symbol.person_crop_circle_fill_1')))
      }
      .margin({
        bottom: 64
      })
      .width('100%')
      .height('100%')
      .barHeight('80')
      .barMode(BarMode.Fixed)
      .onChange((index: number) => {
        this.currentIndex = index;
      })
    }
    .height('100%')
    .hideTitleBar(true)
    .backgroundColor('#F1F3F5')
  }
}
