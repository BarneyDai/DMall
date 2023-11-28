export default class User {
  private userName: string
  private passWord: string

  constructor(userName: string, passWord: string) {
    this.userName = userName;
    this.passWord = passWord;
  }

  getUserName(): string {
    return this.userName;
  }

  setUserName(userName: string) {
    this.userName = userName;
  }

  getPassWord(): string {
    return this.passWord;
  }

  setPassWord(passWord: string) {
    this.passWord = passWord;
  }
}