/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

$(document).ready(function () {
  $(window).on("scroll", function () {
    var px = $(window).scrollTop();
    if (px >= 56) {
      $("#navbarHome").addClass("navbarScrolled");
      $( "#logo, .nav-link" ).removeClass("text-white");
      $(".icons").css("color", "#332D2D");
    } else if (px < 56) {
      $("#navbarHome").removeClass("navbarScrolled");
      $( "#logo, .nav-link" ).addClass("text-white");
      $(".icons").css("color", "#FBFBFB");
    }
  });
});