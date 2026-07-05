window.MathJax = {};

const main = document.body.querySelector('main');
let texHTML = '';

function insertTexHTML() {
	MathJax.typesetClear?.([main]);
	main.innerHTML = texHTML;
	MathJax.typesetPromise?.([main]);
}

const books = new Map([
	['?AD', 'Algorithm Design'],
	['?CGT', 'Combinatorics and Graph Theory'],
	['?GICT', 'Geometry with an Introduction to Cosmic Topology'],
	['?IEAC', 'Introduction to Enumerative and Analytic Combinatorics'],
	['?ILO', 'Introduction to Linear Optimization']
]);

const h1 = document.body.querySelector('h1');

function loadExercises(bookID) {
	if (!books.has(bookID)) {
		bookID = '?GICT';
	}
	h1.textContent = books.get(bookID);
	document.head.querySelector('script')?.remove();
	const script = document.createElement('script');
	script.src = `./${bookID.slice(1)}.js`;
	script.addEventListener('load', insertTexHTML);
	document.head.appendChild(script);
	history.replaceState({}, '', bookID);
}

document.getElementById('mathjax').addEventListener('load', () => loadExercises(location.search));

const menu = document.getElementById('list-of-books');
for (const [bookID, bookTitle] of books) {
	const a = document.createElement('a');
	a.href = bookID;
	a.textContent = bookTitle;
	const li = document.createElement('li');
	li.appendChild(a);
	li.addEventListener('click', e => {
		if (e.altKey || e.ctrlKey || e.metaKey || e.shiftKey) {
			return;
		}
		e.preventDefault();
		if (bookID !== location.search) {
			loadExercises(bookID);
		}
	});
	menu.appendChild(li);
}

const details = document.getElementById('list-container');
const mq = matchMedia('screen and (width > 600px)');
details.open = mq.matches;
mq.addEventListener('change', e => details.open = e.matches);
