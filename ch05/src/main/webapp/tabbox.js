// DOM Level 2 Event 처리: HTML element의 event 속성에 Listener를 등록하는 방식
// 2) JavaScript Code(DOM API) 로만 작성하기


var tabBox = {
	init: function() {
		window.addEventListener("load", this.onWindowLoad.bind(this));
	},
	onTabClicked: function(){
		//unselect
			var listSelected = document.getElementsByClassName("selected");
			if (listSelected.length === 1) {
				listSelected[0].className = '';
			}

			//select
			this.className = "selected";
	},
	onWindowLoad : function(){
			var divTabBox = document.getElementsByClassName("tab-box")[0];
			var ul = divTabBox.childNodes[1];
			console.log(this);
			var liTabs = ul.getElementsByTagName("li");

			for (var i = 0; i < liTabs.length; i++) {
				liTabs[i].addEventListener("click", tabBox.onTabClicked);
			}
			
			console.log(this);
	}
	

}