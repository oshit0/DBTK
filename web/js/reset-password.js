document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("resetForm");
    const username = document.getElementById("username");
    const newPassword = document.getElementById("newPassword");
    const confirm = document.getElementById("confirm");

    form.addEventListener("submit", function(event) {
        let valid = true;

        // Reset previous error messages
        document.getElementById("username_error").textContent = "";
        document.getElementById("password_error").textContent = "";
        document.getElementById("confirm_error").textContent = "";

        // Validate username
        if (username.value.trim() === "") {
            document.getElementById("username_error").textContent = "Username cannot be empty!";
            valid = false;
        }

        // Validate password
        if (!isValidPassword(newPassword.value.trim())) {
            document.getElementById("password_error").textContent = "Password must be 8 to 16 characters long and include at least one lowercase letter, one uppercase letter, and one digit";
            valid = false;
        }

        if (newPassword.value.trim() !== confirm.value.trim()) {
            document.getElementById("confirm_error").textContent = "Passwords do not match";
            valid = false;
        }

        if(confirm.value.trim() === ""){
            document.getElementById("confirm_error").textContent = "Confirm password must not be empty!";
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
});
