import LoginHeader, { LoginBody, LoginFooter } from './components/LoginPageComponents'
import User from './models/User';
import LoginViewModel from './viewmodels/LoginViewModel';

@Entry
@Component
export default struct LoginPage {
  @State message: string = 'Hello World'
  loginViewModel: LoginViewModel = new LoginViewModel();
  user: User = new User('', '')

  build() {
    Column() {
      LoginHeader()
      LoginBody({ loginViewModel: this.loginViewModel, user: this.user })
      LoginFooter()
    }
  }
}