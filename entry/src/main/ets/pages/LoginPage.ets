
import LoginHeader, { LoginBody, LoginFooter } from './components/LoginPageComponents'
@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      LoginHeader()
      LoginBody()
      LoginFooter()
    }
  }
}