import { RouteService } from '@ohos/common'
import { MineServiceImpl } from '@ohos/mine';

export class ServiceProviderManager {
  private static instance: ServiceProviderManager;
  private hasInitFlag = false

  private constructor() {
  }

  public static getInstance(): ServiceProviderManager {
    if (!ServiceProviderManager.instance) {
      ServiceProviderManager.instance = new ServiceProviderManager();
    }
    return ServiceProviderManager.instance;
  }

  /**
   * 初始化模块调用
   */
  initServiceProvider() {
    if (this.hasInitFlag === false) {
      //初始化我的模块调用
      RouteService.getInstance().addService(RouteService.MINE_SERVICE_KEY, MineServiceImpl.getInstance())
    }
    this.hasInitFlag = true
  }
}