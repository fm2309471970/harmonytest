import Queue from '@ohos.util.Queue';
// Index.ets
// 导入页面路由模块
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State addResult: string = ''
  @State popResult: string = ''
  @State getFirstResult: string = ''

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold);
        // 添加按钮，以响应用户点击
        Button() {
          Text('test')
            .fontSize(30)
            .fontWeight(FontWeight.Bold);
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        // 跳转按钮绑定onClick事件，点击时跳转到第二页
        .onClick(() => {
          console.log(`点击成功`);
          this.addResult = test_add(50000);
          this.popResult = test_pop(50000);
          this.getFirstResult = test_getFirst(50000);
        });

        // 嵌套展示测试结果的Column
        Column() {
          Text(`add测试结果: ${this.addResult}`).fontSize(20);
          Text(`pop测试结果: ${this.popResult}`).fontSize(20);
          Text(`getFirst测试结果: ${this.getFirstResult}`).fontSize(20);
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}

function test_add(loopCount: number): string {
  // test: @ohos.util.Queue.add
  // desc: 测试Queue容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let queue = new Queue<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    queue.add(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_pop(loopCount: number): string {
  // test: @ohos.util.Queue.pop
  // desc: 测试Queue容器pop接口
  const test_id = 2;

  // prepare: setup objects to test
  let queue = new Queue<number>();
  for (let i = 0; i < loopCount; i++) {
    queue.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    queue.pop();
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_getFirst(loopCount: number): string {
  // test: @ohos.util.Queue.getFirst
  // desc: 测试Queue容器getFirst接口
  const test_id = 3;

  // prepare: setup objects to test
  let queue = new Queue<number>();
  for (let i = 0; i < loopCount; i++) {
    queue.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    queue.getFirst();
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}