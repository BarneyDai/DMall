@Component
export default struct LoginHeader{
  build(){
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
        .margin({ top: 10 })
    }
    .justifyContent(FlexAlign.End)
    .alignItems(HorizontalAlign.Center)
    .width('100%')
    .height(300)
  }
}

@Component
export struct LoginBody{
  build(){
    Column() {
      TextInput({ placeholder: 'username' })
        .margin({ right: 30, left: 30 })
        .padding({ left:0 })
        .border({ radius: 0, color: "#15000000", width: { top: 0, bottom: 1, left: 0, right: 0 } })
        .backgroundColor("#00000000")
        .type(InputType.Normal)
      TextInput({ placeholder: 'password' })
        .margin({ top: 10, right: 30, left: 30 })
        .padding({ left:0 })
        .backgroundColor("#00000000")
        .border({ radius: 0, color: "#15000000", width: { top: 0, bottom: 1, left: 0, right: 0 } })
        .type(InputType.Password)
      RelativeContainer() {
        Text("短信验证码登录")
          .fontColor("#35a3ff")
          .fontWeight(FontWeight.Bold)
          .fontSize(14)
          .id("Text1")
          .alignRules({
            top: { anchor: "__container__", align: VerticalAlign.Top },
            left: { anchor: "__container__", align: HorizontalAlign.Start }
          })
          .margin({ left: 30 })
          .height(35)
        Text("忘记密码")
          .fontWeight(FontWeight.Bold)
          .fontColor("#35a3ff")
          .fontSize(14)
          .id("Text2")
          .alignRules({
            top: { anchor: "__container__", align: VerticalAlign.Top },
            right: { anchor: "__container__", align: HorizontalAlign.End }
          })
          .margin({ right: 30 })
          .height(35)
      }
      .width("100%")
      .height(35)
      .margin({right: 30, left: 30 })
    }
    .margin({ top: 30 })
  }
}
