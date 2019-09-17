const addClassToLink = (link) => {
  link.classList.add('black-text');
}

const removeClassFromLink = (link) => {
  link.classList.remove('black-text');
}


const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const bannerHeight = document.querySelector('.banner').scrollHeight;
  const navLinks = document.querySelectorAll('.nav-link');
  if (navbar) {
    window.addEventListener('scroll', () => {
      console.log(navLinks);
      if (window.scrollY >= bannerHeight) {
        navLinks.forEach(addClassToLink);
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navLinks.forEach(removeClassFromLink);
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
