根据您提供的代码段2，以下是生成的代码段1格式文档：

---

# @ohos.util.TreeSet

### @ohos.util.TreeSet.add

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-treeset-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__add)

:keyboard: 测试用例 1: 测试TreeSet容器add接口

```typescript
function test_add(loopCount: number): string {
  // test: TreeSet.add
  // desc: 测试TreeSet容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let treeSet = new TreeSet<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeSet.add(i);
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
| 测试用例 1 | [Huawei Phone] | 0.16 ms |

---

### @ohos.util.TreeSet.remove

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-treeset-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__remove)

:keyboard: 测试用例 2: 测试TreeSet容器remove接口

```typescript
function test_remove(loopCount: number): string {
  // test: TreeSet.remove
  // desc: 测试TreeSet容器remove接口
  const test_id = 2;

  // prepare: setup objects to test
  let treeSet = new TreeSet<number>();
  for (let i = 0; i < 50000; i++) {
    treeSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeSet.remove(i);
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
| 测试用例 2 | [Huawei Phone] | 0.22 ms |

---

### @ohos.util.TreeSet.has

#### 最优情况

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-treeset-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__has)

:keyboard: 测试用例 1: 测试在最优情况下（查找存在的第一个元素）TreeSet容器的has接口

```typescript
function test_hasBest(loopCount: number): string {
  // test: TreeSet.has
  // desc: 测试在最优情况下（查找存在的第一个元素）TreeSet容器的has接口，TreeSet长度为 50000
  const test_id = 3;

  // prepare: setup objects to test
  let treeSet = new TreeSet<number>();
  for (let i = 0; i < 50000; i++) {
    treeSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeSet.has(0);
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
| 测试用例 1 | [Huawei Phone] | 0.13 ms |

---

#### 最坏情况

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-treeset-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__has)

:keyboard: 测试用例 2: 测试在最坏情况下（查找不存在的元素）TreeSet容器的has接口

```typescript
function test_hasWorst(loopCount: number): string {
  // test: TreeSet.has
  // desc: 测试在最坏情况下（查找不存在的元素）TreeSet容器的has接口，TreeSet长度为 50000
  const test_id = 4;

  // prepare: setup objects to test
  let treeSet = new TreeSet<number>();
  for (let i = 0; i < 50000; i++) {
    treeSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeSet.has(100000);
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
| 测试用例 2 | [Huawei Phone] | 0.20 ms |

---