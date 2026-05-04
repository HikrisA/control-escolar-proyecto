document.getElementById('login-form').addEventListener('submit', function(e) {
    e.preventDefault();
    
    const email = document.querySelector('input[name="email"]').value.toLowerCase();
    
    if (email.includes('admin')) {
        window.location.href = 'views/admin/dashboard.html';
    } else if (email.includes('docente')) {
        window.location.href = 'views/docente/dashboard.html';
    } else {
        alert('Usuario no reconocido. Prueba con: admin, docente o alumno');
    }
});