import taskpool from '@ohos.taskpool';
import { LogUtils } from '@ohos/common';

@Concurrent
function addTask(num1: number, num2: number): number {
  LogUtils.debug(`>>>>>${num1}>>>${num2}`)
  return num1 + num2;
}

async function mainTask(): Promise<void> {
  let task = new taskpool.Task(addTask, 1, 2);
  await taskpool.execute(task)
  LogUtils.debug('test', 'test')
}

@Entry
@Component
struct MainPage {
  build() {
    Row() {
      Column() {
        Button('taskPool').onClick(() => {
          mainTask()
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}