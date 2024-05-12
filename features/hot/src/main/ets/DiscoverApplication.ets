import { IApplication, LogUtils } from '@ohos/common';

export class DiscoverApplication implements IApplication {
  init(): void {
    LogUtils.debug("DiscoverApplication模块初始化")
  }
}