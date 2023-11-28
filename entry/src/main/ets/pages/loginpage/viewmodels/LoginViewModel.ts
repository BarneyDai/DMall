import User from '../models/User';

export default class LoginViewModel {
  verifyAccount(user: User): boolean {
    if (user.getUserName() == 'aaaa' && user.getPassWord() == 'bbbb') {
      return true;
    } else {
      return false;
    }

  }
}