import LightWeightSet from '@ohos.util.LightWeightSet';
// Index.ets
// 导入页面路由模块
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State addResult: string = ''
  @State removeResult: string = ''
  @State hasBestResult: string = ''
  @State hasWorstResult: string = ''

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
          this.removeResult = test_remove(50000);
          this.hasBestResult = test_hasBest(50000);
          this.hasWorstResult = test_hasWorst(50000);
        });

        // 嵌套展示测试结果的Column
        Column() {
          Text(`add测试结果: ${this.addResult}`).fontSize(20);
          Text(`remove测试结果: ${this.removeResult}`).fontSize(20);
          Text(`has最优情况测试结果: ${this.hasBestResult}`).fontSize(20);
          Text(`has最坏情况测试结果: ${this.hasWorstResult}`).fontSize(20);
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}

function test_add(loopCount: number): string {
  // test: @ohos.util.LightWeightSet.add
  // desc: 测试LightWeightSet容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let lightWeightSet = new LightWeightSet<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightSet.add(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_remove(loopCount: number): string {
  // test: @ohos.util.LightWeightSet.remove
  // desc: 测试LightWeightSet容器remove接口
  const test_id = 2;

  // prepare: setup objects to test
  let lightWeightSet = new LightWeightSet<number>();
  for (let i = 0; i < 50000; i++) {
    lightWeightSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightSet.remove(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasBest(loopCount: number): string {
  // test: @ohos.util.LightWeightSet.has
  // desc: 测试在最优情况下（查找存在的第一个元素）LightWeightSet容器的has接口，LightWeightSet长度为 50000
  const test_id = 3;

  // prepare: setup objects to test
  let lightWeightSet = new LightWeightSet<number>();
  for (let i = 0; i < 5000; i++) {
    lightWeightSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightSet.has(0);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasWorst(loopCount: number): string {
  // test: @ohos.util.LightWeightSet.has
  // desc: 测试在最坏情况下（查找不存在的元素）LightWeightSet容器的has接口，LightWeightSet长度为 50000
  const test_id = 4;

  // prepare: setup objects to test
  let lightWeightSet = new LightWeightSet<number>();
  for (let i = 0; i < 5000; i++) {
    lightWeightSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightSet.has(50000);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}