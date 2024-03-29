import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { window } from '@kit.ArkUI';
import { LogUtils } from '@ohos/common';

export default class DefaultAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    LogUtils.info('Ability onCreate');
  }

  onDestroy(): void {
    LogUtils.info('Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability.
    LogUtils.info('Ability onWindowStageCreate');

    windowStage.loadContent('pages/MainPage', (err, data) => {
      if (err.code) {
        LogUtils.error('Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      LogUtils.info('Succeeded in loading the content. Data: %{public}s', JSON.stringify(data) ?? '');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources.
    LogUtils.info('Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground.
    LogUtils.info('Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background.
    LogUtils.info('Ability onBackground');

  }
}
