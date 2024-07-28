window.addEventListener('message', (event) => {
    switch (event.data.action) {
        case 'openUI':
            document.body.style.display = 'flex';
            break;
        case 'closeUI':
            document.body.style.display = 'none';
            break;
        case 'showMessage':
            document.getElementById('message').innerText = event.data.message;
            break;
    }
});

document.getElementById('closeButton').addEventListener('click', () => {
    fetch('https://ud-ui-template/exit', { method: 'POST' });
});