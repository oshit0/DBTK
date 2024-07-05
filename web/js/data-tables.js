/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//Some Initialization requirement for data tables.
$(document).ready(function () {
  $('#inventoryTable').DataTable();
  new DataTable('#usersTable', {
    scrollX: true
  });
});

