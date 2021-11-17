const ex02 = function(param){
    return new Promise(function(resolve, reject){
        //resolvve는 성공한 결과, reject는 실패

        setTimeout(function(){
            if(param === 'param-data'){
                //성공했을 경우, ex01함수의 변수에 어떤 데이터를 넣을지 작성
                resolve('ok');
            }else {
                //실패했을경우
                reject(new Error('fail'));
            }
        }, 2000);

    });
}

if(require.main == module){
    //지금 실행하는 파일이 ex02일때 아래 코드 실행된다.

//test01 : success
ex02('param-data')
    .then(function(res){
    console.log(res);
    })


//test02 : fail
ex02('param-datasdf')
    .catch(function(error){
    console.log(error);
    })



 /*   일반적으로.. 

ex02('....').then(res => {

}).catch(err => {

});
*/
console.log('wait....')

}else {

    module.exports = ex02;
}


