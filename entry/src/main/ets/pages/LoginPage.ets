@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Column() {
        Image($r('app.media.icon'))
          .width(80)
          .height(80)
          .margin(15)
        Text($r('app.string.LoginPage_label'))
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
        Text($r('app.string.LoginPage_desc'))
          .fontSize(14)
          .margin('10,0,0,0')
      }
      .justifyContent(FlexAlign.End)
      .alignItems(HorizontalAlign.Center)
      .width('100%')
      .height(300)
    }
  }
}