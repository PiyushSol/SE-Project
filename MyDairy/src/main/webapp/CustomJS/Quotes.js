let realdata = "";
const quotes = document.getElementById('quotes');
const author = document.getElementById('author');
const newquote = document.getElementById('newquote');
let quotesData = '';
const getNewQuotes = () => {
	let rnum = Math.floor(Math.random() * 20);
	quotesData = realdata[rnum];
	quotes.innerText = `${quotesData.text}`;
	quotesData.author == null ? author.innerText = UnKnown : author.innerText = `${quotesData.author}`;
};

const getQuotes = async () => {
	const api = "https://type.fit/api/quotes";
	try{
		let data = await fetch(api);
		realdata = await data.json();
		getNewQuotes();
	}
	catch (error) {

	}

};

newquote.addEventListener('click', getNewQuotes);
getQuotes();