function count(type) {
	var resultElement = document.getElementById("resultbox");
	
	let num = resultElement.innerText;
	
	if(type === 'plus') {
	number = parseInt(num) + 1;
	}else if(type === 'minus') {
		number = parseInt(num) -1;
	}
	
	resultElement.innerText = number;
}

