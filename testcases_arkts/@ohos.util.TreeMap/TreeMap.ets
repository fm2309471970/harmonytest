// 导入TreeMap模块
import TreeMap from '@ohos.util.TreeMap';
// 导入页面路由模块
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State setResult: string = ''
  @State getResult: string = ''
  @State removeResult: string = ''
  @State hasKeyBestResult: string = ''
  @State hasKeyWorstResult: string = ''
  @State hasValueBestResult: string = ''
  @State hasValueWorstResult: string = ''

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
          // this.setResult = test_set(50000);
          // this.getResult = test_get(50000);
          // this.removeResult = test_remove(50000);
          // this.hasKeyBestResult = test_hasKeyBest(50000);
          // this.hasKeyWorstResult = test_hasKeyWorst(50000);
          this.hasValueBestResult = test_hasValueBest(50000);
          this.hasValueWorstResult = test_hasValueWorst(50000);
        });

        // 嵌套展示测试结果的Column
        Column() {
          Text(`set测试结果: ${this.setResult}`).fontSize(20);
          Text(`get测试结果: ${this.getResult}`).fontSize(20);
          Text(`remove测试结果: ${this.removeResult}`).fontSize(20);
          Text(`hasKey最优情况测试结果: ${this.hasKeyBestResult}`).fontSize(20);
          Text(`hasKey最坏情况测试结果: ${this.hasKeyWorstResult}`).fontSize(20);
          Text(`hasValue最优情况测试结果: ${this.hasValueBestResult}`).fontSize(20);
          Text(`hasValue最坏情况测试结果: ${this.hasValueWorstResult}`).fontSize(20);
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}

function test_set(loopCount: number): string {
  // test: TreeMap.set
  // desc: 测试TreeMap容器set接口
  const test_id = 1;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.set(`key${i}`, i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_get(loopCount: number): string {
  // test: TreeMap.get
  // desc: 测试TreeMap容器get接口
  const test_id = 2;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 50000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.get(`key${i}`);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_remove(loopCount: number): string {
  // test: TreeMap.remove
  // desc: 测试TreeMap容器remove接口
  const test_id = 3;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 50000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.remove(`key${i}`);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasKeyBest(loopCount: number): string {
  // test: TreeMap.hasKey
  // desc: 测试在最优情况下（查找存在的第一个元素）TreeMap容器的hasKey接口，TreeMap长度为 50000
  const test_id = 4;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 50000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.hasKey('key0');
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasKeyWorst(loopCount: number): string {
  // test: TreeMap.hasKey
  // desc: 测试在最坏情况下（查找不存在的元素）TreeMap容器的hasKey接口，TreeMap长度为 50000
  const test_id = 5;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 50000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.hasKey('nonexistentKey');
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasValueBest(loopCount: number): string {
  // test: TreeMap.hasValue
  // desc: 测试在最优情况下（查找存在的第一个元素对应的值）TreeMap容器的hasValue接口，TreeMap长度为 50000
  const test_id = 6;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 5000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.hasValue(0);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

function test_hasValueWorst(loopCount: number): string {
  // test: TreeMap.hasValue
  // desc: 测试在最坏情况下（查找不存在的值）TreeMap容器的hasValue接口，TreeMap长度为 50000
  const test_id = 7;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 5000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.hasValue(100000);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}