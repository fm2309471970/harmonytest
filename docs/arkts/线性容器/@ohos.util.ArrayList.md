# @ohos.util.ArrayList
### @ohos.util.ArrayList.has

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-arraylist-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__has)

:keyboard: 测试用例 1: 测试在最坏情况下（查找元素不存在的情况）ArrayList容器的has接口，ArrayList长度为500000 

```typescript
function test_has(loopCount: number): string {
  // test: ArrayList.has
  // desc: 测试在最坏情况下（查找元素不存在的情况）ArrayList容器的has接口，ArrayList长度为100000
  const test_id = 3;

  // prepare: setup objects to test
  let list = new ArrayList<number>();
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
  return `!${test_id}: ${averageTime} ms`;
}
```
:keyboard: 测试用例 2: 测试在最优情况下（查找元素为第一个）ArrayList容器的has接口，ArrayList长度为500000 

```typescript
function test_has2(loopCount: number): string {
  // test: ArrayList.has
  // desc: 测试在最优情况下（查找元素为第一个）ArrayList容器的has接口，ArrayList长度为5000000
  const test_id = 4;

  // prepare: setup objects to test
  let list = new ArrayList<number>();
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
  return `!${test_id}: ${averageTime} ms`;
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Huawei Phone] | 0.14 ms |
| 测试用例 2 | [Huawei Phone] | 0.00012 ms |

### @ohos.util.ArrayList.insert

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-arraylist-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__insert)

:keyboard: 测试用例 3: 测试ArrayList容器insert接口 

```typescript
function test_insert(loopCount: number): string {
  // test: ArrayList.insert
  // desc: 测试ArrayList容器insert接口
  const test_id = 2;

  // prepare: setup objects to test
  let list = new ArrayList<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    list.insert(0, i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}

```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [Huawei Phone] | 0.00012 ms |

### @ohos.util.ArrayList.add

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-arraylist-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__add)

:keyboard: 测试用例 4: 测试ArrayList容器add接口 

```typescript
function test_add(loopCount: number): string {
  // test: ArrayList.add
  // desc: 测试ArrayList容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let list = new ArrayList<number>();

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
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 4 | [Huawei Phone] | 0.00014 ms |

[Huawei Phone]: ../../device/#huawei-phone

### @ohos.util.ArrayList.remove

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-arraylist-0000001427585156-V2#ZH-CN_TOPIC_0000001523488842__remove)

:keyboard: 测试用例 5: 测试在最坏情况下（查找元素不存在的情况）ArrayList容器的remove接口，ArrayList长度为50000

```typescript
function test_remove(loopCount: number): string {
  // test: ArrayList.remove
  // desc: 测试在最坏情况下（查找元素不存在的情况）ArrayList容器的remove接口，ArrayList长度为50000
  const test_id = 5;

  // prepare: setup objects to test
  let list = new ArrayList<number>();
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
  return `!${test_id}: ${averageTime} ms`;
}
```
:keyboard: 测试用例 6: 测试在最优情况下（查找元素为第一个）ArrayList容器的remove接口，ArrayList长度为50000,每次都能找到 

```typescript
function test_remove2(loopCount: number): string {
  // test: ArrayList.remove
  // desc: 测试在最优情况下（查找元素为第一个）ArrayList容器的remove接口，ArrayList长度为50000,每次都能找到
  const test_id = 6;

  // prepare: setup objects to test
  let list = new ArrayList<number>();
  for (let i = 0; i < 50000; i++) {
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
  return `!${test_id}: ${averageTime} ms`;
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 5 | [Huawei Phone] | 0.0672 ms |
| 测试用例 6 | [Huawei Phone] | 0.01226 ms |

### @ohos.util.ArrayList.sort

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-arraylist-0000001427585156-V2#ZH-CN_TOPIC_0000001523488842__sort)

:keyboard: 测试用例 7: 测试ArrayList容器sort接口 

```typescript
function test_sort(loopCount: number): string {
  // test: ArrayList.sort
  // desc: 测试ArrayList容器sort接口
  const test_id = 7;

  // prepare: setup objects to test
  let list = new ArrayList<number>();
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
  return `!${test_id}: ${averageTime} ms`;
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 7 | [Huawei Phone] | 0.01502 ms |

[Huawei Phone]: ../../device