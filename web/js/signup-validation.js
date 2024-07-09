document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("signupForm");
    const username = document.getElementById("username");
    const password = document.getElementById("newPassword");
    const confirm = document.getElementById("confirm");
    const fname = document.getElementById("fname");
    const lname = document.getElementById("lname");
    const address = document.getElementById("address");
    const bday = document.getElementById("bday");
    const mobile = document.getElementById("mobile");

    form.addEventListener("submit", function(event) {
        let valid = true;

        // Reset previous error messages
        document.getElementById("username_error").textContent = "";
        document.getElementById("password_error").textContent = "";
        document.getElementById("confirm_error").textContent = "";
        document.getElementById("fname_error").textContent = "";
        document.getElementById("lname_error").textContent = "";
        document.getElementById("address_error").textContent = "";
        document.getElementById("bday_error").textContent = "";
        document.getElementById("mobile_error").textContent = "";

        // Validate username
        if (username.value.trim() === "") {
            document.getElementById("username_error").textContent = "Username cannot be empty";
            valid = false;
        }

        // Validate password
        if (!isValidPassword(password.value.trim())) {
            document.getElementById("password_error").textContent = "Password must be 8 to 16 characters long and include at least one lowercase letter, one uppercase letter, and one digit";
            valid = false;
        }

        // Validate password confirmation
        if (password.value.trim() !== confirm.value.trim()) {
            document.getElementById("confirm_error").textContent = "Passwords do not match";
            valid = false;
        }

        // Validate first name
        if (fname.value.trim() === "") {
            document.getElementById("fname_error").textContent = "First name is required";
            valid = false;
        }

        // Validate last name
        if (!isValidName(lname.value.trim())) {
            document.getElementById("lname_error").textContent = "Last name is required and must contain at least 2 characters";
            valid = false;
        }

        // Validate address
        if (address.value.trim() === "") {
            document.getElementById("address_error").textContent = "Address cannot be empty";
            valid = false;
        }

        // Validate birthday
        if (bday.value.trim() === "") {
            document.getElementById("bday_error").textContent = "Birthday cannot be blank";
            valid = false;
        }

        // Validate mobile number
        if (!isValidMobile(mobile.value.trim())) {
            document.getElementById("mobile_error").textContent = "Mobile number is required and must be numeric with exactly 11 digits";
            valid = false;
        }

        if (!valid) {
            event.preventDefault(); // Prevent form submission if validation fails
        }
    });

    // Function to validate password criteria
    function isValidPassword(pw) {
        const regex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$/;
        return regex.test(pw);
    }

    // Function to validate last name
    function isValidName(name) {
        const regex = /^[a-zA-Z]{2,}$/;
        return regex.test(name);
    }

    // Function to validate mobile number
    function isValidMobile(number) {
        const regex = /^\d{11}$/;
        return regex.test(number);
    }
});
