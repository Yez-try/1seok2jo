
let cs_phone = document.getElementById("cs_phone")
let cs_email = document.getElementById("cs_email")


let chkphone = false;
let chkemail = false;

cs_phone.addEventListener("blur", function(){
    if(cs_phone.value.length>1){
        chkphone=true
    }
})
cs_email.addEventListener("blur", function(){
    if(cs_email.value.length>1){
        chkemail=true
    }
})

let csSubmit = document.getElementById("csSubmit")
let csSubmitBtn = document.getElementById("csSubmitBtn")

csSubmitBtn.addEventListener("click", function(){
    if(chkphone&chkemail){
        csSubmit.submit();
    }else{
        alert("모든 항목을 작성해주세요")
    }
})

