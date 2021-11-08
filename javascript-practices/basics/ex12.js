/*
    Array 확장(Prototype기반의 확장) : List 메소드 추가
*/

Array.prototype.insert = function(index, value){
    if(value instanceof Array){
        //배열의 값일때 반복문을 통해 값을 꺼내 넣기
       // for(var i=0;i< value.length; i++){
        //    this.splice(index++, 0, value[i]);
        //}

        /* 오류나는 foreach문 this값을 가져올수 없음, 따라서 _this변수를 선언해 this값을 먼저 가져올 것
        var _this = this;
        value.forEach(function(e){
            _this.splice(index++,0,e);
        });
        */
        value.forEach(function(e){
            this.splice(index++, 0 ,e);
        }.bind(this)); 
        //this를 바인딩하는 방법

    }else{
    this.splice(index, 0, value);
    }
}

Array.prototype.remove = function(index){
    this.splice(index, 1);
}


//List로 사용하기

var a = [1,2,4];

console.log(a);
a.insert(2, 3);
console.log(a);

a.remove(3);
console.log(a);


a.insert(2,['a', 'b', 'c']);  //기대 [1,2,'a','b', 'c', 3]
console.log(a); //결과 [1,2,['a','b','c'], 3]

//따라서, 배열의 값인경우 하나씩 꺼내서 넣을 수 잇도록 insert 함수를 수정한다.


var f = function(param){
    console.log(this.name + ":" + param);
}

//f();
var o = {name: "nani"};
f.call(o, "nani@ngai.com");
f.apply(o);
