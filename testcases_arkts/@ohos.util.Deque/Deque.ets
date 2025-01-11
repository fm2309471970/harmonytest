import Deque from '@ohos.util.Deque';
// Index.ets
// 导入页面路由模块
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State insertFrontResult: string = ''
  @State insertEndResult: string = ''
  @State hasWorstResult: string = ''
  @State hasBestResult: string = ''
  @State popFirstResult: string = ''
  @State popLastResult: string = ''

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
          // this.insertFrontResult = test_insertFront(50000);
          // this.insertEndResult = test_insertEnd(50000);
          this.hasWorstResult = test_hasWorst(50000);
          this.hasBestResult = test_hasBest(50000);
          // this.popFirstResult = test_popFirst(50000);
          // this.popLastResult = test_popLast(50000);
        });

        // 嵌套展示测试结果的Column
        Column() {
          Text(`insertFront测试结果: ${this.insertFrontResult}`).fontSize(20);
          Text(`insertEnd测试结果: ${this.insertEndResult}`).fontSize(20);
          Text(`has最坏情况测试结果: ${this.hasWorstResult}`).fontSize(20);
          Text(`has最优情况测试结果: ${this.hasBestResult}`).fontSize(20);
          Text(`popFirst测试结果: ${this.popFirstResult}`).fontSize(20);
          Text(`popLast测试结果: ${this.popLastResult}`).fontSize(20);
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}

function test_insertFront(loopCount: number): string {
  // test: @ohos.util.Deque.insertFront
  // desc: 测试Deque容器insertFront接口
  const test_id = 1;

  // prepare: setup objects to test
  let deque = new Deque<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.insertFront(1);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_insertEnd(loopCount: number): string {
  // test: @ohos.util.Deque.insertEnd
  // desc: 测试Deque容器insertEnd接口
  const test_id = 2;

  // prepare: setup objects to test
  let deque = new Deque<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.insertEnd(1);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

// function test_hasWorst(loopCount: number): string {
//   // test: @ohos.util.Deque.has
//   // desc: 测试在最坏情况下（查找元素不存在的情况）Deque容器的has接口，Deque长度为100000
//   const test_id = 3;
//
// // prepare: setup objects to test

function test_hasWorst(loopCount: number): string {
  // test: @ohos.util.Deque.has
  // desc: 测试在最坏情况下（查找元素不存在的情况）Deque容器的has接口，Deque长度为 50000
  const test_id = 3;

  // prepare: setup objects to test
  let deque = new Deque<number>();
  for (let i = 0; i < 50000; i++) {
    deque.insertEnd(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.has(50000);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasBest(loopCount: number): string {
  // test: @ohos.util.Deque.has
  // desc: 测试在最优情况下（查找元素为第一个）Deque容器的has接口，Deque长度为 5000000
  const test_id = 4;

  // prepare: setup objects to test
  let deque = new Deque<number>();
  for (let i = 0; i < 50000; i++) {
    deque.insertEnd(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.has(0);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_popFirst(loopCount: number): string {
  // test: @ohos.util.Deque.popFirst
  // desc: 测试Deque容器popFirst接口
  const test_id = 5;

  // prepare: setup objects to test
  let deque = new Deque<number>();
  for (let i = 0; i < loopCount; i++) {
    deque.insertEnd(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.popFirst();
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_popLast(loopCount: number): string {
  // test: @ohos.util.Deque.popLast
  // desc: 测试Deque容器popLast接口
  const test_id = 6;

  // prepare: setup objects to test
  let deque = new Deque<number>();
  for (let i = 0; i < loopCount; i++) {
    deque.insertEnd(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.popLast();
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}