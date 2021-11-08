/* Array 메소드 */

var colors = ['black' , 'white', 'yellow'];
var fruits = ['apple', 'mango', 'banana'];

//concat 
var a1 = fruits.concat(colors);
console.log(a1);


//pop, push : stack 지원
var color = colors.pop();
console.log(color);
console.log(colors);

colors.push('red');
console.log(colors);

//join
var str = fruits.join(":");
console.log(str);

//reverse
console.log(fruits);
fruits.reverse();
console.log(fruits);

//shift
var numbers = [1000,3000,2000,4000,5000];
var number = numbers.shift();
console.log(number);
console.log(numbers);

//sort
numbers.sort();
console.log(numbers);

//slics
var numbers = numbers.slice(1,3);
console.log(numbers);

//splice
// index부터 count개를 삭제 후, 삭제된 요소를 반환한다.
console.log(fruits);
var fruits2 = fruits.splice(0,2);
console.log(fruits2, fruits);

var a1 = [0,1,2,3,4];


//1에서부터 3개를 자르고, 그 자리에 10을 넣는다.
var a2 = a1.splice(1,3,10);
console.log(a2, a1);

