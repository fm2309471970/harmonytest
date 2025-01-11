import ArrayList from '@ohos.util.ArrayList';

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

//!end

test_add(500000);
test_insert(50000);
test_has(50000);
test_has2(50000);
test_remove(5000000);
test_remove2(5000000);
test_sort(5000000);

//Result
/*
!1: 0.00014 ms
!2: 0.00012 ms
!3: 0.00012 ms
!4: 0.14 ms
!5: 0.01226 ms
!6: 0.0672 ms
!7: 0.01502 ms
 */