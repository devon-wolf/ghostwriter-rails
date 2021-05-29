const growTextArea = (element) => {
	if (element.scrollHeight > element.clientHeight) {
		element.style.height = element.scrollHeight + 'px';
	}
}

const documentBody = document.querySelector('.document-text');

documentBody.addEventListener('keyup', () => growTextArea(documentBody));