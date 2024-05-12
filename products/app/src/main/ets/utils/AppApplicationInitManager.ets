/**
 * App初始化管理类
 */
import { BaseApplication, IApplication } from '@ohos/common';
import { HomeApplication } from '@ohos/home';
import { HotApplication } from '@ohos/hot';
import { MineApplication } from '@ohos/mine';
import { DiscoverApplication } from '@ohos/discover'


export class AppApplicationInitManger {
  private appInitArray: Array<IApplication> = new Array<IApplication>()
  private static instance: AppApplicationInitManger;
  private hasInitFlag = false

  private constructor() {
    this.addInitApplication()
  }

  public static getInstance(): AppApplicationInitManger {
    if (!AppApplicationInitManger.instance) {
      AppApplicationInitManger.instance = new AppApplicationInitManger();
    }
    return AppApplicationInitManger.instance;
  }

  private addInitApplication() {
    this.appInitArray.push(new BaseApplication())
    this.appInitArray.push(new HomeApplication())
    this.appInitArray.push(new DiscoverApplication())
    this.appInitArray.push(new HotApplication())
    this.appInitArray.push(new MineApplication())
  }

  public initAppApplication() {
    this.appInitArray.forEach((item) => {
      if (this.hasInitFlag === false) {
        item.init()
      }
    })
    this.hasInitFlag = true
  }
}