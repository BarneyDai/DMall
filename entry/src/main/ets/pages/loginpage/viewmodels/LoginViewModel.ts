import User from '../models/User';

export default class LoginViewModel {
  async verifyAccount(user: User): Promise<boolean> {
    if (user.getUserName() == 'aaaa' && user.getPassWord() == 'bbbb') {
      return true;
    } else {
      return false;
    }

  }
}