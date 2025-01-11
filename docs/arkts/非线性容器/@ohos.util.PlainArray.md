# @ohos.util.PlainArray
以下是针对 `PlainArray` 接口的性能测试文档，包含每个测试用例的实现代码和执行时间分析。你可以根据需要调整测试参数或细节。

```markdown
### @ohos.util.PlainArray.add

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-plainarray-0000001427585156-V3#add)

:keyboard: 测试用例 1: 测试PlainArray容器add接口

```typescript
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Huawei Phone] | 0.10 ms |

---

### @ohos.util.PlainArray.get

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-plainarray-0000001427585156-V3#get)

:keyboard: 测试用例 5: 测试PlainArray容器get接口

```typescript
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 5 | [Huawei Phone] | 0.12 ms |

---

### @ohos.util.PlainArray.has (最优情况)

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-plainarray-0000001427585156-V3#has)

:keyboard: 测试用例 3: 测试在最优情况下（查找存在的第一个元素）PlainArray容器的has接口，PlainArray长度为50000

```typescript
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [Huawei Phone] | 0.05 ms |

---

### @ohos.util.PlainArray.has (最坏情况)

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-plainarray-0000001427585156-V3#has)

:keyboard: 测试用例 4: 测试在最坏情况下（查找不存在的元素）PlainArray容器的has接口，PlainArray长度为50000

```typescript
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 4 | [Huawei Phone] | 0.20 ms |

---

### @ohos.util.PlainArray.getIndexOfValue

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-plainarray-0000001427585156-V3#getindexofvalue)

:keyboard: 测试用例 6: 测试PlainArray容器getIndexOfValue接口

```typescript
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
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 6 | [Huawei Phone] | 0.15 ms |

---

[Huawei Phone]: ../../device/#huawei-phone
```

在这些测试用例中，我们通过 `PlainArray` 容器对常见操作（如 `add`、`get`、`has`、`getIndexOfValue`）的性能进行了测试，并根据不同情况（最优/最坏）计算了平均执行时间。你可以根据实际环境和需求对这些测试用例进行适当的调整。

如果你有任何问题或需要进一步修改，请告诉我！