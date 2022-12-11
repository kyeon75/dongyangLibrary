function count(type) {
	let book_num = document.getElementById("book_num");
	let book_price = document.getElementById("book_price");
	let total_price = document.getElementById("book_total_price")
	
	if (type === 'plus') {
		book_num.innerText = parseInt(book_num.innerText) + 1;
	} else if (type === 'minus' && book_num.innerText > 1) {
		book_num.innerText = parseInt(book_num.innerText) -1;
	}
	
	total_price.innerText = book_num.innerText*book_price.innerText
}

function checkSubmit() {
	let content = document.getElementById("review_content");
	if (content.value !== "") {
		document.getElementById("review_form").submit();
	}
}
const drawStar = (target) => {
    document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
}

window.onload = function() {
	for (let i=0; i<document.getElementsByClassName("book_review_score").length; i++) {
		let star_num = document.getElementsByClassName("book_review_score")[i].getElementsByClassName("star_num")[0].innerText
		document.getElementsByClassName("book_review_score")[i].getElementsByClassName(`star_ss`)[0].style.width = `${star_num * 10}%`;
	}
}