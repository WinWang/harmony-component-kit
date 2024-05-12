/**
 * @description:
 * @author WinWang
 * @version 1.0.0
 * @date 2024/05/12
 */
import { IServiceProvider } from './IServiceProvider';

export interface IMineService extends IServiceProvider {

  testMethod(): void

}