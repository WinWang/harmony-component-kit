/**
 * @description:
 * @author WinWang
 * @version 1.0.0
 * @date 2024/05/12
 */
import { RoutePath, Router, RouteService } from '@ohos/common'

@Component
export struct HomePage {
  build() {
    Column() {
      Text("首页")
      Button('调用我的模块测试').onClick(() => {
        RouteService.getInstance().getMineService().testMethod()
      })
      Button('跳转我的模块测试').onClick(() => {
        Router.push(RoutePath.ModuleMine.MineTestPage)
      })
    }

  }
}