import List from '@ohos.util.List';
// Index.ets
// 导入页面路由模块
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State addResult: string = ''
  @State insertResult: string = ''
  @State hasResult: string = ''
  @State has2Result: string = ''
  @State removeResult: string = ''
  @State remove2Result: string = ''
  @State sortResult: string = ''

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
          this.insertResult = test_insert(50000);
          this.hasResult = test_has(50000);
          this.has2Result = test_has2(50000);
          this.removeResult = test_remove(50000);
          this.remove2Result = test_remove2(50000);
          this.sortResult = test_sort(50000);
        });

        // 嵌套展示测试结果的Column
        Column() {
          Text(`add测试结果: ${this.addResult}`).fontSize(20);
          Text(`insert测试结果: ${this.insertResult}`).fontSize(20);
          Text(`has测试结果: ${this.hasResult}`).fontSize(20);
          Text(`has2测试结果: ${this.has2Result}`).fontSize(20);
          Text(`remove测试结果: ${this.removeResult}`).fontSize(20);
          Text(`remove2测试结果: ${this.remove2Result}`).fontSize(20);
          Text(`sort测试结果: ${this.sortResult}`).fontSize(20);
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}



function test_add(loopCount: number) {
  // test: @ohos.util.List.add
  // desc: 测试List容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let list = new List<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    list.add(1);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_insert(loopCount: number) {
  // test: @ohos.util.List.insert
  // desc: 测试List容器insert接口
  const test_id = 2;

  // prepare: setup objects to test
  let list = new List<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    list.insert(0,i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return (`!${test_id}: ${averageTime} ms`);
}

function test_has(loopCount: number) {
  // test: @ohos.util.List.has
  // desc: 测试在最坏情况下（查找元素不存在的情况）List容器的has接口，List长度为100000
  const test_id = 3;

  // prepare: setup objects to test
  let list = new List<number>();
  for (let i = 0; i < 100000; i++) {
    list.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    list.has(500000);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return (`!${test_id}: ${averageTime} ms`);
}

function test_has2(loopCount: number) {
  // test: @ohos.util.List.has
  // desc: 测试在最优情况下（查找元素为第一个）List容器的has接口，List长度为5000000
  const test_id = 4;

  // prepare: setup objects to test
  let list = new List<number>();
  for (let i = 0; i < 5000000; i++) {
    list.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    list.has(0);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return (`!${test_id}: ${averageTime} ms`);
}


function test_remove(loopCount: number) {
  // test: @ohos.util.List.remove
  // desc: 测试在最坏情况下（查找元素不存在的情况）List容器的remove接口，List长度为50000
  const test_id = 5;

  // prepare: setup objects to test
  let list = new List<number>();
  for (let i = 0; i < 50000; i++) {
    list.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    list.remove(50000);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return (`!${test_id}: ${averageTime} ms`);
}

function test_remove2(loopCount: number) {
  // test: @ohos.util.List.remove
  // desc: 测试在最优情况下（查找元素为第一个）List容器的remove接口，List长度为5000000
  const test_id = 6;

  // prepare: setup objects to test
  let list = new List<number>();
  for (let i = 0; i < 5000000; i++) {
    list.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    list.remove(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return (`!${test_id}: ${averageTime} ms`);
}

function test_sort(loopCount: number) {
  // test: @ohos.util.List.sort
  // desc: 测试List容器sort接口
  const test_id = 7;

  // prepare: setup objects to test
  let list = new List<number>();
  for (let i = loopCount; i > 0; i--) {
    list.add(i);
  }

  // test
  const startTime = new Date();
  list.sort((a: number, b: number) => a - b);
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return (`!${test_id}: ${averageTime} ms`);
}
