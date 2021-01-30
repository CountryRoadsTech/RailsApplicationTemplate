document.addEventListener("DOMContentLoaded", function() {
    document.getElementById('navigation-bar-toggle-button').onclick = function toggleNavigationBar() {
        const navigationBarContent = document.getElementById('navigation-bar-content')
        navigationBarContent.classList.toggle("hidden")
    }
})