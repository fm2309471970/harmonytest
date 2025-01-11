import Stack from '@ohos.util.Stack';
// Index.ets
// 导入页面路由模块
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State pushResult: string = ''
  @State peekResult: string = ''
  @State popResult: string = ''
  @State locateWorstResult: string = ''
  @State locateBestResult: string = ''

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
          this.pushResult = test_push(50000);
          this.peekResult = test_peek(50000);
          this.popResult = test_pop(50000);
          this.locateWorstResult = test_locateWorst(50000);
          this.locateBestResult = test_locateBest(50000);
        });

        // 嵌套展示测试结果的Column
        Column() {
          Text(`push测试结果: ${this.pushResult}`).fontSize(20);
          Text(`peek测试结果: ${this.peekResult}`).fontSize(20);
          Text(`pop测试结果: ${this.popResult}`).fontSize(20);
          Text(`locate最坏情况测试结果: ${this.locateWorstResult}`).fontSize(20);
          Text(`locate最优情况测试结果: ${this.locateBestResult}`).fontSize(20);
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}

function test_push(loopCount: number): string {
  // test: @ohos.util.Stack.push
  // desc: 测试Stack容器push接口
  const test_id = 1;

  // prepare: setup objects to test
  let stack = new Stack<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    stack.push(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_peek(loopCount: number): string {
  // test: @ohos.util.Stack.peek
  // desc: 测试Stack容器peek接口
  const test_id = 2;

  // prepare: setup objects to test
  let stack = new Stack<number>();
  for (let i = 0; i < 50000; i++) {
    stack.push(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    stack.peek();
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_pop(loopCount: number): string {
  // test: @ohos.util.Stack.pop
  // desc: 测试Stack容器pop接口
  const test_id = 3;

  // prepare: setup objects to test
  let stack = new Stack<number>();
  for (let i = 0; i < 50000; i++) {
    stack.push(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    stack.pop();
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_locateWorst(loopCount: number): string {
  // test: @ohos.util.Stack.locate
  // desc: 测试在最坏情况下（查找元素不存在的情况）Stack容器的locate接口，Stack长度为 50000
  const test_id = 4;

  // prepare: setup objects to test
  let stack = new Stack<number>();
  for (let i = 0; i < 50000; i++) {
    stack.push(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    stack.locate(50000);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_locateBest(loopCount: number): string {
  // test: @ohos.util.Stack.locate
  // desc: 测试在最优情况下（查找元素为第一个）Stack容器的locate接口，Stack长度为 50000
  const test_id = 5;

  // prepare: setup objects to test
  let stack = new Stack<number>();
  for (let i = 0; i < 50000; i++) {
    stack.push(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    stack.locate(0);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}