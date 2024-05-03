/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//Input validation using regex.
const form = document.getElementById('form');

const fields = {
  username: {
    element: document.getElementById('username'),
    errorElement: document.getElementById('username_error'),
    check: /\w{4,12}/,
    errorMessage: "Username must be between 4 and 12 characters."
  },
  password: {
    element: document.getElementById('password'),
    errorElement: document.getElementById('password_error'),
    check: /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*\D)[A-Za-z\d\D]{8,16}$/,
    errorMessage: "Password must contain 8-16 characters, at least 1 uppercase letter, 1 lowercase letter, 1 number, and 1 special character."
  },
  confirm: {
    element: document.getElementById('confirm'),
    errorElement: document.getElementById('confirm_error'),
    errorMessage: "Passwords don't match."
  },
  fname: {
    element: document.getElementById('fname'),
    errorElement: document.getElementById('fname_error'),
    check: /^[A-Za-z]+$/,
    errorMessage: "First name is required."
  },
  mname: {
    element: document.getElementById('mname'),
    errorElement: document.getElementById('mname_error'),
    check: /^[A-Za-z]*$/,
    errorMessage: "Middle name should contain only letters."
  },
  lname: {
    element: document.getElementById('lname'),
    errorElement: document.getElementById('lname_error'),
    check: /^[A-Za-z]{2,}$/,
    errorMessage: "Last name is required and must contain at least 2 characters."
  },
  address: {
    element: document.getElementById('address'),
    errorElement: document.getElementById('address_error'),
    check: /^[a-zA-Z0-9\s]{2,}$/,
    errorMessage: "Address must contain only alphanumeric characters."
  },
  bday: {
    element: document.getElementById('bday'),
    errorElement: document.getElementById('bday_error'),
    check: /\d\d-\d\d-\d\d\d\d/,
    errorMessage: "Birthday must be in the format DD-MM-YYYY."
  },
  mobile: {
    element: document.getElementById('mobile'),
    errorElement: document.getElementById('mobile_error'),
    check: /^\d{11}$/,
    errorMessage: "Mobile number is required and must be numeric with exactly 11 digits."
  }
};

form.addEventListener('submit', (e) => {
  e.preventDefault();
  let isValid = true;

  for (const fieldName in fields) {
    const field = fields[fieldName];
    const value = field.element.value.trim();

    if (field.check && !value.match(field.check)) {
      field.errorElement.textContent = field.errorMessage;
      isValid = false;
    } else {
      field.errorElement.textContent = '';
    }

    if (fieldName === 'confirm' && value !== fields.password.element.value.trim()) {
      field.errorElement.textContent = field.errorMessage;
      isValid = false;
    }
  }

  if (isValid) {
    form.submit();
  }
});
