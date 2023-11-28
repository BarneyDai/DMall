import Prompt from '@system.prompt'
import User from '../models/User'
import LoginViewModel from '../viewmodels/LoginViewModel'

@Component
export default struct LoginHeader {
  build() {
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
export struct LoginBody {
  loginViewModel: LoginViewModel;
  user: User;

  build() {
    Column() {
      TextInput({ placeholder: 'username' })
        .margin({ right: 30, left: 30 })
        .padding({ left: 0 })
        .border({ radius: 0, color: "#15000000", width: { top: 0, bottom: 1, left: 0, right: 0 } })
        .backgroundColor("#00000000")
        .type(InputType.Normal)
        .onChange((value: string) => {
          this.user.setUserName(value)
        })
      TextInput({ placeholder: 'password' })
        .margin({ top: 10, right: 30, left: 30 })
        .padding({ left: 0 })
        .backgroundColor("#00000000")
        .border({ radius: 0, color: "#15000000", width: { top: 0, bottom: 1, left: 0, right: 0 } })
        .type(InputType.Password)
        .onChange((value: string) => {
          this.user.setPassWord(value)
        })
      RelativeContainer() {
        Text("短信验证码登录")
          .fontColor("#35a3ff")
          .fontWeight(FontWeight.Bold)
          .fontSize(14)
          .id("Text1")
          .alignRules({
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
            right: { anchor: "__container__", align: HorizontalAlign.End }
          })
          .margin({ right: 30 })
          .height(35)
      }
      .width("100%")
      .height(35)

      Button("登录").width(350).height(40).margin({ top: 100 })
        .onClick(() => {
          if (this.loginViewModel.verifyAccount(this.user)) {
            Prompt.showToast({ message: "aaaa", duration: 2000 })
          }
        })

      Text("注册账号")
        .fontColor("#35a3ff")
        .fontWeight(FontWeight.Bold)
        .margin({ top: 15 })
        .fontSize(16)

      LoadingProgress().width(70).height(70).margin(15)
    }
    .margin({ top: 30 })
  }
}


@Component
export struct LoginFooter {
  @Builder getLoginButton(text: string, marginRight: number, marginLeft: number) {
    Button(text)
      .type(ButtonType.Circle)
      .margin({ right: marginRight, left: marginLeft })
      .size({ width: 50, height: 50 })
      .backgroundColor("#fff")
      .fontSize(14)
      .fontColor("#5000")
      .border({ width: 1, color: "#5000" })
      .padding(0)
  }

  build() {
    Column() {
      Text("其他方式登陆").fontColor("#66000000").fontSize(14)
      Row() {
        this.getLoginButton("方式1", 20, 40)
        this.getLoginButton("方式2", 20, 20)
        this.getLoginButton("方式3", 40, 20)
      }.margin({ top: 10 })
    }
  }
}
