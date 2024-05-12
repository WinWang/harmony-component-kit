import { HashMap } from '@kit.ArkTS';
import { IMineService } from './IMineService';
import { IServiceProvider } from './IServiceProvider';

/**
 * 跨模块调用service类
 */
export class RouteService {
  /**组件模块保存Key-Start****/
  static readonly HOME_SERVICE_KEY = "HOME_SERVICE_KEY"
  static readonly DISCOVER_SERVICE_KEY = "DISCOVER_SERVICE_KEY"
  static readonly HOT_SERVICE_KEY = "HOT_SERVICE_KEY"
  static readonly MINE_SERVICE_KEY = "MINE_SERVICE_KEY"
  /**组件模块保存Key-End****/

  private serviceMap = new HashMap<string, IServiceProvider>()
  private static instance: RouteService;

  private constructor() {
  }

  public static getInstance(): RouteService {
    if (!RouteService.instance) {
      RouteService.instance = new RouteService();
    }
    return RouteService.instance;
  }

  /**
   * 初始化service
   * @param key
   * @param serviceProvider
   */
  public addService(key: string, serviceProvider: IServiceProvider) {
    this.serviceMap.set(key, serviceProvider)
  }

  /**
   * 获取我的模块服务
   * @returns
   */
  public getMineService(): IMineService {
    return this.serviceMap.get(RouteService.MINE_SERVICE_KEY) as IMineService
  }
}