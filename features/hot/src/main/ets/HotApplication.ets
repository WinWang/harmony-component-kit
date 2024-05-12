import { IApplication, LogUtils } from '@ohos/common';

export class HotApplication implements IApplication {
  init(): void {
    LogUtils.debug("HotApplication模块初始化")
  }
}