import { IApplication } from './IApplication';
import { LogUtils } from './utils/LogUtils';

export class BaseApplication implements IApplication {
  init(): void {
    LogUtils.debug("BaseApplication初始化")
  }
}