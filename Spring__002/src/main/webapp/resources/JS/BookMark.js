function BookMark(this_id){
     let spanTag = document.getElementById(this_id);
     console.log(this_id)
     
		$.ajax({
         	url : "${cpath}/jjim.do",
         	type:"get",
			data : {"this_id" : this_id},
			success: console.log("success"),
			error:console.log("error")
         });
         
	     if (spanTag.innerText == '★') {
	         spanTag.innerText = '☆'
	     }
	     else {
	         spanTag.innerText = '★'
	     }
 }
