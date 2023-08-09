window.addEventListener('message', (event) => {
    switch (event.data.action) {
        case 'openUI':
            document.body.style.display = 'flex';
            break;
        case 'closeUI':
            document.body.style.display = 'none';
            break;
    }
});

document.getElementById('closeButton').addEventListener('click', () => {
    fetch('https://ud-uitemplate/exit', { method: 'POST' });
});

