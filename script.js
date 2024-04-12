// Automatically submit the form when a number is entered or pasted
document.addEventListener('DOMContentLoaded', function() {
    var numberInput = document.getElementById('nisn');
    numberInput.focus();
    numberInput.addEventListener('input', function() {
        if (/^\d+$/.test(numberInput.value)) { // Check if the input consists of digits only
            numberInput.form.submit(); // Programmatically submit the form
        }
    });
});
function toggleMenu() {
            var menu = document.getElementById("menu");
            var menuIcon = document.querySelector(".menu-icon");

            // Toggle the active class on the menu and the menu icon
            menu.classList.toggle("active");
            menuIcon.classList.toggle("active");
        }