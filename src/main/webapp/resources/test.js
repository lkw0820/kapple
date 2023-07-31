
var detailService = (function(){
	function get(suppl_no,callback,error){
		$.ajax({
			type:"get",
			url:"/modal/"+suppl_no+".json",
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error:function(xhr,status,e){
				if(error){
					error(e);
				}	
			}
		});
	}//get
	
	return{
		get:get
	};
	
})();