const usuariosDummy = [
    { id: 1, nombre: "Juan Pérez", email: "juan@admin.com", rol: "Admin" },
    { id: 2, nombre: "Maria Lopez", email: "maria@profe.com", rol: "Docente" }
];

function renderTable() {
    const tbody = document.getElementById('tabla-usuarios-body');
    if(!tbody) return;

    tbody.innerHTML = usuariosDummy.map(user => `
        <tr>
            <td>${user.id}</td>
            <td>${user.nombre}</td>
            <td>${user.email}</td>
            <td><span class="badge badge-${user.rol.toLowerCase()}">${user.rol}</span></td>
            <td>
                <button class="btn-edit">✏️</button>
                <button class="btn-delete">🗑️</button>
            </td>
        </tr>
    `).join('');
}

document.addEventListener('DOMContentLoaded', renderTable);

// Función para abrir el modal
function openModal() {
    const modal = document.getElementById('userModal');
    modal.style.display = 'flex'; // Cambiamos de 'none' a 'flex' para centrarlo
}

// Función para cerrar el modal
function closeModal() {
    const modal = document.getElementById('userModal');
    modal.style.display = 'none';
}

// Cerrar el modal si el usuario hace clic fuera de la caja blanca
window.onclick = function(event) {
    const modal = document.getElementById('userModal');
    if (event.target == modal) {
        closeModal();
    }
}

// Lógica para "Guardar" un nuevo usuario (Simulado)
document.getElementById('addUserForm')?.addEventListener('submit', function(e) {
    e.preventDefault();
    
    // Aquí puedes capturar los datos para ver que funciona
    const formData = new FormData(this);
    console.log("Nuevo usuario:", Object.fromEntries(formData));
    
    alert("Usuario guardado localmente (Simulado)");
    closeModal();
    this.reset(); // Limpia el formulario
});