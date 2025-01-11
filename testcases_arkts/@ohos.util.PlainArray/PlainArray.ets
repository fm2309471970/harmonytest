// 导入PlainArray模块
import PlainArray from '@ohos.util.PlainArray';
// 导入页面路由模块
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State addResult: string = ''
  @State getResult: string = ''
  @State hasBestResult: string = ''
  @State hasWorstResult: string = ''
  @State getIndexOfValueResult: string = ''

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
        // 跳转按钮绑定onClick事件，点击时执行相关测试函数并记录结果
        .onClick(() => {
          console.log(`点击成功`);
          this.addResult = test_add(50000);
          this.getResult = test_get(50000);
          this.hasBestResult = test_hasBest(50000);
          this.hasWorstResult = test_hasWorst(50000);
          this.getIndexOfValueResult = test_getIndexOfValue(50000);
        });

        // 嵌套展示测试结果的Column
        Column() {
          Text(`add测试结果: ${this.addResult}`).fontSize(20);
          Text(`get测试结果: ${this.getResult}`).fontSize(20);
          Text(`has最优情况测试结果: ${this.hasBestResult}`).fontSize(20);
          Text(`has最坏情况测试结果: ${this.hasWorstResult}`).fontSize(20);
          Text(`getIndexOfValue测试结果: ${this.getIndexOfValueResult}`).fontSize(20);
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}

function test_add(loopCount: number): string {
  // test: PlainArray.add
  // desc: 测试PlainArray容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let plainArray = new PlainArray<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    plainArray.add(i, i);  // 这里假设 value 与 key 相同，可根据实际需求修改
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_get(loopCount: number): string {
  // test: PlainArray.get
  // desc: 测试PlainArray容器get接口
  const test_id = 5;

  // prepare: setup objects to test
  let plainArray = new PlainArray<number>();
  for (let i = 0; i < 50000; i++) {
    plainArray.add(i, i);  // 这里假设 value 与 key 相同，可根据实际需求修改
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    plainArray.get(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasBest(loopCount: number): string {
  // test: PlainArray.has
  // desc: 测试在最优情况下（查找存在的第一个元素）PlainArray容器的has接口，PlainArray长度为 50000
  const test_id = 3;

  // prepare: setup objects to test
  let plainArray = new PlainArray<number>();
  for (let i = 0; i < 50000; i++) {
    plainArray.add(i, i);  // 这里假设 value 与 key 相同，可根据实际需求修改
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    plainArray.has(0);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasWorst(loopCount: number): string {
  // test: PlainArray.has
  // desc: 测试在最坏情况下（查找不存在的元素）PlainArray容器的has接口，PlainArray长度为 50000
  const test_id = 4;

  // prepare: setup objects to test
  let plainArray = new PlainArray<number>();
  for (let i = 0; i < 50000; i++) {
    plainArray.add(i, i);  // 这里假设 value 与 key 相同，可根据实际需求修改
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    plainArray.has(100000);  // 假设一个大概率不存在的元素作为最坏情况测试
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_getIndexOfValue(loopCount: number): string {
  // test: PlainArray.getIndexOfValue
  // desc: 测试PlainArray容器getIndexOfValue接口
  const test_id = 6;

  // prepare: setup objects to test
  let plainArray = new PlainArray<number>();
  for (let i = 0; i < 50000; i++) {
    plainArray.add(i, i);  // 这里假设 value 与 key 相同，可根据实际需求修改
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    plainArray.getIndexOfValue(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}