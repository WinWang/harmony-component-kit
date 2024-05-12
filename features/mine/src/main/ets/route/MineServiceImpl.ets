/**
 * @description:
 * @author WinWang
 * @version 1.0.0
 * @date 2024/05/12
 */
import { IMineService, LogUtils } from '@ohos/common';

export class MineServiceImpl implements IMineService {

  private static instance: MineServiceImpl;

  private constructor() {
  }


  public static getInstance(): MineServiceImpl {
    if (!MineServiceImpl.instance) {
      MineServiceImpl.instance = new MineServiceImpl();
    }
    return MineServiceImpl.instance;
  }


  testMethod(): void {
    LogUtils.debug("调用我的模块方法")
  }
}