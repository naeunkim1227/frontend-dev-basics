const ex01 = function(param, callback){    
    //
    //비동기 코드
    //파일 시스템 접근, 네트워크 통신, SQL to DB, setTimer
    //

    setTimeout(function(){
        if(param === 'param-data'){
            //성공했을 경우, ex01함수의 변수에 어떤 데이터를 넣을지 작성
            callback(null , 'ok');
        }else {
            //실패했을경우
            callback(new Error('fail'), null);
        }
    }, 2000);

}


//test01: success

//$.ajax와 같은 기능을 하는 함수
ex01('param-data', function(error,res){
    if(error){
        console.error(error);
    }else{
        console.log(res);
    }
})

//test02: fail
ex01('param-error', function(error,res){
    if(error){
        console.error(error);
    }else{
        console.log(res);
    }
})



console.log("wait......")