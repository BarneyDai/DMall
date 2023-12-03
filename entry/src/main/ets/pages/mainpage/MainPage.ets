import HomePage from './components/HomePage'
import MinePage from './components/MinePage'
import ShoppingCartPage from './components/ShoppingCartPage'
import WatchVideoPage from './components/WatchVideoPage'

@Entry
@Component
export default struct MainPage {
  private fontColor: string = '#182431'
  private selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  // private controller: TabsController = new TabsController()

  @Builder TabBuilder(index: number, resource: Resource, name: string) {
    Column() {
      Image(resource).width(20).height(20).margin({ top: 7 }).layoutWeight(1)
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(12)
        .fontWeight(this.currentIndex === index ? 500 : 400)
        .lineHeight(22)
        .margin({ bottom: 7 })
        .layoutWeight(1)
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        HomePage()
      }.tabBar(this.TabBuilder(0, $r('app.media.home'), '首页'))

      TabContent() {
        WatchVideoPage()
      }.tabBar(this.TabBuilder(1, $r('app.media.watchvideo'), '好看'))

      TabContent() {
        ShoppingCartPage()
      }.tabBar(this.TabBuilder(2, $r('app.media.shoppingcart'), '购物车'))

      TabContent() {
        MinePage()
      }.tabBar(this.TabBuilder(3, $r('app.media.mine'), '我的'))
    }
    .barMode(BarMode.Fixed)
    .animationDuration(400)
    .onChange((index: number) => {
      this.currentIndex = index
    })
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F5')

  }
}