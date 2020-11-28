const navSlide = () => {
    const burger = document.querySelector('.burger');
    const nav = document.querySelector('.nav-links');
    const navLinks = document.querySelectorAll('.nav-links li');

    burger.addEventListener('click', () => {

        // For Toggle Nav 
        nav.classList.toggle('nav-active');



        // For Animate Links
        navLinks.forEach((link, index)=>{
            if(link.style.animation) {
                link.style.animation = '';
            } else {
                 link.style.animation = `navLinkFade 0.5s ease forwards ${index/ 5 + 0.5}s`;
            }
         });

         // For Burger Animation
         burger.classList.toggle('toggle');
    })



}

navSlide();