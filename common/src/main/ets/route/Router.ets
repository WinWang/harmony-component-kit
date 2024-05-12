import router from '@ohos.router';
import { LogUtils } from '../utils/LogUtils';

export class Router {
  static push(url: string, params?: Object) {
    router.pushUrl({ url: url, params: params }, router.RouterMode.Standard, (err) => {
      if (err) {
        LogUtils.error(`[路由跳转]>pushUrl failed, code is ${err.code}, message is ${err.message}`);
        return;
      }
      LogUtils.info('pushUrl success' + url);
    })
  }

  static replace(url: string, params?: Object) {
    router.replaceUrl({ url: url, params: params }, router.RouterMode.Standard, (err) => {
      if (err) {
        LogUtils.error(`[路由跳转]>replaceUrl failed, code is ${err.code}, message is ${err.message}`);
        return;
      }
      LogUtils.info('pushUrl success' + url);
    })
  }
}