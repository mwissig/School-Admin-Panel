// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function slideoutStudents() {
  document.getElementById('studentsNav').classList.remove('hidden');
  document.getElementById('studentsNav').classList.add('reveal');
  closeCohorts();
  closeCourses();
}
function closeStudents() {
  document.getElementById('studentsNav').classList.remove('reveal');
  closeSearchOptionsStudent()
}

function slideoutCohorts() {
  document.getElementById('cohortsNav').classList.remove('hidden');
  document.getElementById('cohortsNav').classList.add('reveal');
  closeCourses();
  closeStudents();
}
function closeCohorts() {

  document.getElementById('cohortsNav').classList.remove('reveal');
}


function slideoutCourses() {
  document.getElementById('coursesNav').classList.remove('hidden');
  document.getElementById('coursesNav').classList.add('reveal');
  closeCohorts();
    closeStudents();
}
function closeCourses() {
  document.getElementById('coursesNav').classList.remove('reveal');
}




function revealSearchOptionsStudent() {
  document.getElementById('studentsSearchBar').classList.remove('hidden');
  document.getElementById('studentsSearchBar').classList.add('searchoptionsreveal');
}
function closeSearchOptionsStudent() {
  document.getElementById('studentsSearchBar').classList.add('hidden');
  document.getElementById('studentsSearchBar').classList.remove('searchoptionsreveal');
}
