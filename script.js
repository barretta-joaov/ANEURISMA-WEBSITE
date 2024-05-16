var navbar = document.getElementById('div_navbar')

if (window.scrollY > 640){
    navbar.classList.add('fixa');
} else {
    navbar.classList.remove('fixa');
}
