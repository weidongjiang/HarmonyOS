/*3位数水仙花数*/
export function daffodilsNumber(): number[] {
  let result: number[] = []
  for (let index = 100; index < 1000; index++) {
    let unitsDigit: number = index % 10;
    let tenthsDigit: number = Math.floor(index / 10) - Math.floor(index / 100) * 10;
    let hundredthsDigit: number = Math.floor(index / 100);
    if (index === unitsDigit * unitsDigit * unitsDigit + tenthsDigit * tenthsDigit * tenthsDigit +
      hundredthsDigit * hundredthsDigit * hundredthsDigit) {
      result.push(index)
    }
  }
  return result
}

export function multiplicationTable(): string[][] {
  let result: string[][] = [];
  for (let i = 0; i <= 9; i++) {
    let index: string[] = [];
    for (let j = 0; j <= 9; j++) {
      let temp: string = j + '*' + i + ' = ' + i * j;
      index.push(temp);
    }
    result.push(index);
  }
  return result
}

export function isPalindromicString(content: string): boolean {
  let result: boolean = true
  let i: number = 0;
  let j: number = content.length - 1;
  while (i <= j) {
    if (content.charAt(i) !== content.charAt(j)) {
      result = false;
      break;
    }
    i++;
    j--;
  }
  return result
}
