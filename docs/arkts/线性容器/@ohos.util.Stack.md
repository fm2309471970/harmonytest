# @ohos.util.Stack

### @ohos.util.Stack.push

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-stack-0000001478181701-V2#ZH-CN_TOPIC_0000001574128397__push)

:keyboard: 测试用例 1: 测试Stack容器push接口

```typescript
function test_push(loopCount: number): string {
  // test: Stack.push
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Huawei Phone] | 0.00012 ms |

---

### @ohos.util.Stack.peek

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-stack-0000001478181701-V2#ZH-CN_TOPIC_0000001574128397__peek)

:keyboard: 测试用例 1: 测试Stack容器peek接口

```typescript
function test_peek(loopCount: number): string {
  // test: Stack.peek
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Huawei Phone] | 0.00012 ms |

---

### @ohos.util.Stack.pop

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-stack-0000001478181701-V2#ZH-CN_TOPIC_0000001574128397__pop)

:keyboard: 测试用例 1: 测试Stack容器pop接口

```typescript
function test_pop(loopCount: number): string {
  // test: Stack.pop
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Huawei Phone] | 0.0001 ms |

---

### @ohos.util.Stack.locate
:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-stack-0000001478181701-V2#ZH-CN_TOPIC_0000001574128397__locate)
#### 最坏情况



:keyboard: 测试用例 1: 测试Stack容器locate接口（最坏情况，查找元素不存在）

```typescript
function test_locateWorst(loopCount: number): string {
  // test: Stack.locate
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Huawei Phone] | 0.0163 ms |

---

#### 最优情况


:keyboard: 测试用例 2: 测试Stack容器locate接口（最优情况，查找元素为第一个）

```typescript
function test_locateBest(loopCount: number): string {
  // test: Stack.locate
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Huawei Phone] | 0.0001 ms |

[Huawei Phone]: ../../../device#huawei-phone

