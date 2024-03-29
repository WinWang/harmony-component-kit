import hilog from "@ohos:hilog";
export class LogUtils {
    static PREFIX: string = 'testTag';
    static DOMAIN: number = 0x1111;
    static FORMAT: string = '%{public}s, %{public}s';
    static debug(...args: string[]): void {
        hilog.debug(LogUtils.DOMAIN, LogUtils.PREFIX, LogUtils.FORMAT, args);
    }
    static info(...args: string[]): void {
        hilog.info(LogUtils.DOMAIN, LogUtils.PREFIX, LogUtils.FORMAT, args);
    }
    static warn(...args: string[]): void {
        hilog.warn(LogUtils.DOMAIN, LogUtils.PREFIX, LogUtils.FORMAT, args);
    }
    static error(...args: string[]): void {
        hilog.error(LogUtils.DOMAIN, LogUtils.PREFIX, LogUtils.FORMAT, args);
    }
}
