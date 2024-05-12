import { IApplication, LogUtils } from '@ohos/common';

export class MineApplication implements IApplication {
  init(): void {
    LogUtils.debug("MineApplication模块初始化")
  }
}