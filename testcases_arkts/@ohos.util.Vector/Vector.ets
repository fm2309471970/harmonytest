import Vector from '@ohos.util.Vector';
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
  @State hasWorstResult: string = ''
  @State hasBestResult: string = ''


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
          this.hasWorstResult = test_hasWorst(50000);
          this.hasBestResult = test_hasBest(50000);

        });

        // 嵌套展示测试结果的Column
        Column() {
          Text(`add测试结果: ${this.addResult}`).fontSize(20);
          Text(`insert测试结果: ${this.insertResult}`).fontSize(20);
          Text(`has最坏情况测试结果: ${this.hasWorstResult}`).fontSize(20);
          Text(`has最优情况测试结果: ${this.hasBestResult}`).fontSize(20);

        }
      }
      .width('100%')
    }
    .height('100%')
  }
}

function test_add(loopCount: number): string {
  // test: @ohos.util.Vector.add
  // desc: 测试Vector容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let vector = new Vector<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    vector.add(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_insert(loopCount: number): string {
  // test: @ohos.util.Vector.insert
  // desc: 测试Vector容器insert接口
  const test_id = 2;

  // prepare: setup objects to test
  let vector = new Vector<number>();
  for (let i = 0; i < 50000; i++) {
    vector.add(i);
  }
  const indexToInsert = 25000;

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    vector.insert(indexToInsert, i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasWorst(loopCount: number): string {
  // test: @ohos.util.Vector.has
  // desc: 测试在最坏情况下（查找元素不存在的情况）Vector容器的has接口，Vector长度为 50000
  const test_id = 3;

  // prepare: setup objects to test
  let vector = new Vector<number>();
  for (let i = 0; i < 50000; i++) {
    vector.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    vector.has(50000);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasBest(loopCount: number): string {
  // test: @ohos.util.Vector.has
  // desc: 测试在最优情况下（查找元素为第一个）Vector容器的has接口，Vector长度为 50000
  const test_id = 4;

  // prepare: setup objects to test
  let vector = new Vector<number>();
  for (let i = 0; i < 50000; i++) {
    vector.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    vector.has(0);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

