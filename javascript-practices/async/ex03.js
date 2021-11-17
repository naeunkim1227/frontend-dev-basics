const ex02 = require('./ex02');

const ex03 = async function(param){
  
  try{
    //ex02를 실행하기 위해서 await를 작성
    const res =  await ex02(param);
    console.log(res);

  }catch(err){
      console.error(err);
  }
}


ex03('param-data');
ex03('param-data22');
console.log("wait....")



//ex02.js의 ex02함수도 필요하고, 이를 실행하는 코드도 필요하다. require를 사용할 경우 그냥 ex02가 실행이 된다.
//ex02가 돌아가는 함수의 틀이 필요하다..?