/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const username = document.getElementById('username');
const password = document.getElementById('password');
const confirm = document.getElementById('confirm');
const fname = document.getElementById('fname');
const mname = document.getElementById('mname');
const lname = document.getElementById('lname');
const address = document.getElementById('address');
const bday = document.getElementById('bday');
const mobile = document.getElementById('mobile');
const form = document.getElementById('form');

const username_error = document.getElementById('username_error');
const password_error = document.getElementById('password_error');
const confirm_error = document.getElementById('confirm_error');
const fname_error = document.getElementById('fname_error');
const mname_error = document.getElementById('mname-error');
const lname_error = document.getElementById('lname_error');
const address_error = document.getElementById('address_error');
const bday_error = document.getElementById('bday_error');
const mobile_error = document.getElementById('mobile_error');
form.addEventListener('submit', (e) =>
{
    var username_check = /\w{4,12}/;

    if (!username.value.match(username_check))
    {
        e.preventDefault();
        username_error.innerHTML = "Username must be more than 4 character and maximum of 12 character ";
    }

    var password_check = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*\D)[A-Za-z\d\D]{8,16}$/;

    if (!password.value.match(password_check))
    {
        e.preventDefault();
        password_error.innerHTML = "Password must contain 8-16 character, at least 1 capital letter, 1 small letter, 1 number, and 1 special character";
    }

    if (confirm.value !== password.value)
    {
        e.preventDefault();
        confirm_error.innerHTML = "Password doesn't match";
    }

    var fname_check = /^[A-Za-z]+$/;

    if (!fname.value.match(fname_check))
    {
        e.preventDefault();
        fname_error.innerHTML = "First name is required";
    }

    var mname_check = /^[A-Za-z]*$/;

    if (!mname.value.match(mname_check))
    {
        e.preventDefault();
        mname_error.innerHTML = "Letters only";
    }

    var lname_check = /^[A-Za-z]{2,}$/;

    if (!lname.value.match(lname_check))
    {
        e.preventDefault();
        lname_error.innerHTML = "Last name is required and must contain at least 2 characters";
    }

    var address_check = /^[a-zA-Z0-9\s]{2,}$/;

    if (!address.value.match(address_check)) {
        e.preventDefault();
        address_error.innerHTML = "Address must contain only alphanumeric characters";
    }

    var bday_check = /\d\d-\d\d-\d\d\d\d/;

    if (!bday.value.match(bday_check)) {
        e.preventDefault();
        bday_error.innerHTML = "Birthday must be in the format MM-DD-YYYY";
    }

    var mobile_check = /^\d{11}$/;

    if (!mobile.value.match(mobile_check)) {
        e.preventDefault();
        mobile_error.innerHTML = "Mobile number must be numeric and contain exactly 11 digits";
    }
});


