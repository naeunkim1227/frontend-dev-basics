/*
6. 구조분해
*/

const user = {
    firstName: '뽀',
    lastName: '로로',
    email: 'fsff@go.com'
};

/* 
let firstName = user.firstName
let lastName = user.lastName
를 다음과 같이 작성가능하다.
({firstName, lastName} = user);
*/

let {firstName,lastName} = user;

console.log(firstName, lastName);

f = function({firstName, lastName}){}

console.log(firstName, lastName);

f(user);


//ex02 - Default Value
const goods = {
    name: 'TV',
    price: 10000,
    stockCount: 30
}


let {name,price, countStock=0, stockCount=0} = goods;
console.log(name, price, countStock, stockCount);
//값이 정해져 있지 않을 경우 디폴트 값으로 출력된다.

// ex03 - 구조분해해야 할 객체의 속성과 변수 이름이 다를때,
const person = {
    name: '루피',
    country: '남극'
}

const {name: fullName,  country: place} = person;

console.log(fullName, place);

//변수이름을 작성하여, 변수로 출력가능하다.




//ex04 - 내부객체(Nested Object)의 구조분해
const student = {
    name: '둘리',
    age: 10,
    score: {
        math: 90,
        korean: 70,
        science: 100
    }

}


const {name: studentName, score: {math=0, korean = 0, science=0, music = 0}} = student;
console.log(`${studentName}의 성적
수학: ${math}
음악: ${music}
`
);




//ex05 - 함수의 파라미터
const averageScore = function({name: studentName, score:  {math=0, korean = 0, science=0}})
{
    console.log(`${studentName}의 평균은 ${(math + korean + science) / 3} 입니다.`)
};

averageScore(student);


//ex06 - 배열