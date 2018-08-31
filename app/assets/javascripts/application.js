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
var studentsSliderOpen = false;
var cohortsSliderOpen = false;
var coursesSliderOpen = false;


function slideoutStudents() {
  if (studentsSliderOpen == false) {
    document.getElementById('studentsNav').classList.remove('hidden');
    document.getElementById('studentsNav').classList.add('reveal');
    closeCohorts();
    closeCourses();
    studentsSliderOpen = true;
  } else {
    closeStudents();
    studentsSliderOpen = false;
  }
}

function closeStudents() {
  document.getElementById('studentsNav').classList.remove('reveal');
  closeSearchOptionsStudent();
  closeNewStudent();
}

function slideoutCohorts() {
  if (cohortsSliderOpen == false) {
    document.getElementById('cohortsNav').classList.remove('hidden');
    document.getElementById('cohortsNav').classList.add('reveal');
    closeCourses();
    closeStudents();
    cohortsSliderOpen = true;
  } else {
    closeCohorts();
    cohortsSliderOpen = false;
  }
}

function closeCohorts() {
  document.getElementById('cohortsNav').classList.remove('reveal');
  closeNewCohort();
}


function slideoutCourses() {
  if (coursesSliderOpen == false) {
    document.getElementById('coursesNav').classList.remove('hidden');
    document.getElementById('coursesNav').classList.add('reveal');
    closeCohorts();
    closeStudents();
    coursesSliderOpen = true;
  } else {
    closeCourses();
    coursesSliderOpen = false;
  }
}

function closeCourses() {
  document.getElementById('coursesNav').classList.remove('reveal');
  closeNewCourse();
}

var studentsSearchBarOpen = false;

function revealSearchOptionsStudent() {
  if (studentsSearchBarOpen == false) {
    document.getElementById('studentsSearchBar').classList.remove('hidden');
    document.getElementById('studentsSearchBar').classList.add('searchoptionsreveal');
    studentsSearchBarOpen = true;
    closeNewStudent();
  } else {
    studentsSearchBarOpen = false;
    closeSearchOptionsStudent();

  }
}

function closeSearchOptionsStudent() {
  document.getElementById('studentsSearchBar').classList.add('hidden');
  document.getElementById('studentsSearchBar').classList.remove('searchoptionsreveal');
}


var newStudentBarOpen = false;

function revealNewStudent() {
  if (newStudentBarOpen == false) {
    document.getElementById('newStudentBar').classList.remove('hidden');
    document.getElementById('newStudentBar').classList.add('creatorreveal');
    newStudentBarOpen = true;
    closeSearchOptionsStudent();
  } else {
    newStudentBarOpen = false;
    closeNewStudent();
  }
}

function closeNewStudent() {
  document.getElementById('newStudentBar').classList.add('hidden');
  document.getElementById('newStudentBar').classList.remove('creatorreveal');
}

var newCourseBarOpen = false;

function revealNewCourse() {
  if (newCourseBarOpen == false) {
    document.getElementById('newCourseBar').classList.remove('hidden');
    document.getElementById('newCourseBar').classList.add('creatorreveal');
    newCourseBarOpen = true;
  } else {
    newCourseBarOpen = false;
    closeNewCourse();
  }
}

function closeNewCourse() {
  document.getElementById('newCourseBar').classList.add('hidden');
  document.getElementById('newCourseBar').classList.remove('creatorreveal');
}

var newCohortBarOpen = false;

function revealNewCohort() {
  if (newCohortBarOpen == false) {
    document.getElementById('newCohortBar').classList.remove('hidden');
    document.getElementById('newCohortBar').classList.add('creatorreveal');
    newCohortBarOpen = true;
  } else {
    newCohortBarOpen = false;
    closeNewCohort();
  }
}

function closeNewCohort() {
  document.getElementById('newCohortBar').classList.add('hidden');
  document.getElementById('newCohortBar').classList.remove('creatorreveal');
}
