"use strict";

class EditInPlace {

  constructor() {
    this.slugText   = document.getElementById('slug-text');
    this.titleText  = document.getElementsByTagName('h1')[0];

    document.addEventListener('click', this.onClick.bind(this));
    document.addEventListener('keyup', this.onKeyUp.bind(this));
  }

  onKeyUp(e) {
    if(e.target.id === 'post_title') {
      let pageTitle = e.target.value;
      this.slugText.innerHTML = Helper.parameterize(pageTitle);
      this.titleText.innerHTML = pageTitle;
    }
  }

  onClick(e) {
    if(e.target.classList.contains('pencil-icon-wrapper')) {
      e.target.parentNode.parentNode.classList.add('on');
    } else if(e.target.classList.contains('close-icon-wrapper')) {
      e.target.parentNode.parentNode.classList.remove('on');
    } else if(e.target.classList.contains('check-icon-wrapper')) {
      e.target.parentNode.parentNode.classList.remove('on');
    }
  }

}
