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

//= require turbolinks
//= require_tree .
var studentsSliderOpen = false;
var cohortsSliderOpen = false;
var coursesSliderOpen = false;
var staffSliderOpen = false;
var loginSliderOpen = false;

function slideoutLogin() {
  if (loginSliderOpen == false) {
    document.getElementById('loginbar').classList.remove('hidden');
    document.getElementById('loginbutton').classList.remove('shadow');
    document.getElementById('loginbar').classList.add('reveal');
    loginSliderOpen = true;
  } else {
    closeLogin();
    loginSliderOpen = false;
  }
}

function closeLogin() {
  document.getElementById('loginbar').classList.remove('reveal');
  loginSliderOpen = false;
  setTimeout(function(){ document.getElementById('loginbutton').classList.add('shadow'); }, 500);
}

function slideoutStaff() {
  if (staffSliderOpen == false) {
    document.getElementById('staffNav').classList.remove('hidden');
        document.getElementById('staffbutton').classList.remove('shadow');
    document.getElementById('staffNav').classList.add('reveal');
    closeCohorts();
    closeCourses();
    closeStudents();
    staffSliderOpen = true;
  } else {
    closeStaff();
    staffSliderOpen = false;
  }
}

function closeStaff() {
  document.getElementById('staffNav').classList.remove('reveal');
  staffSliderOpen = false;
  setTimeout(function(){ document.getElementById('staffbutton').classList.add('shadow'); }, 500);
}

function slideoutStudents() {
  if (studentsSliderOpen == false) {
    document.getElementById('studentsNav').classList.remove('hidden');
    document.getElementById('studentsNav').classList.add('reveal');
            document.getElementById('studentsbutton').classList.remove('shadow');
    closeCohorts();
    closeCourses();
    closeStaff();
    studentsSliderOpen = true;
  } else {
    closeStudents();
    studentsSliderOpen = false;
  }
}

function closeStudents() {
  document.getElementById('studentsNav').classList.remove('reveal');
  closeSearchOptionsStudent();
      closeStudentsSearchByName();
  closeNewStudent();
  studentsSliderOpen = false;
    setTimeout(function(){ document.getElementById('studentsbutton').classList.add('shadow'); }, 500);
}

function slideoutCohorts() {
  if (cohortsSliderOpen == false) {
    document.getElementById('cohortsNav').classList.remove('hidden');
    document.getElementById('cohortsNav').classList.add('reveal');
            document.getElementById('cohortsbutton').classList.remove('shadow');
    closeCourses();
    closeStudents();
    closeStaff();
    cohortsSliderOpen = true;
  } else {
    closeCohorts();
    cohortsSliderOpen = false;
  }
}

function closeCohorts() {
  document.getElementById('cohortsNav').classList.remove('reveal');
  closeNewCohort();
  cohortsSliderOpen = false;
    setTimeout(function(){ document.getElementById('cohortsbutton').classList.add('shadow'); }, 500);
}


function slideoutCourses() {
  if (coursesSliderOpen == false) {
    document.getElementById('coursesNav').classList.remove('hidden');
    document.getElementById('coursesNav').classList.add('reveal');
            document.getElementById('coursesbutton').classList.remove('shadow');
    closeCohorts();
    closeStudents();
    closeStaff();
    coursesSliderOpen = true;
  } else {
    closeCourses();
    coursesSliderOpen = false;
  }
}

function closeCourses() {
  document.getElementById('coursesNav').classList.remove('reveal');
  closeNewCourse();
  coursesSliderOpen = false;
    setTimeout(function(){ document.getElementById('coursesbutton').classList.add('shadow'); }, 500);
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
      closeStudentsSearchByName();
  studentsSearchBarOpen = false;
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
  newStudentBarOpen = false;
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
  newCourseBarOpen = false;
}


var studentsSearchByNameBarOpen = false;

function revealStudentsSearchByName() {
  if (studentsSearchByNameBarOpen == false) {
    document.getElementById('studentsSearchByNameBar').classList.remove('hidden');
    document.getElementById('studentsSearchByNameBar').classList.add('saerchbarreveal');
    studentsSearchByNameBarOpen = true;
  } else {
    studentsSearchByNameBarOpen = false;
    closeStudentsSearchByName();
  }
}

function closeStudentsSearchByName() {
  document.getElementById('studentsSearchByNameBar').classList.add('hidden');
  document.getElementById('studentsSearchByNameBar').classList.remove('saerchbarreveal');
  studentsSearchByNameBarOpen = false;
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
  newCohortBarOpen = false;
}
