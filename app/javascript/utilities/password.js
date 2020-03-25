document.addEventListener('turbolinks:load', function() {
    const password = document.querySelector('#user_password')
    const password_confirmation = document.querySelector('#user_password_confirmation')

    if (password && password_confirmation) {
        password.addEventListener('input', checkMatch)
        password_confirmation.addEventListener('input', checkMatch)
    }

    function checkMatch() {
        if (password.value && password_confirmation.value) {
            const valid = password.value == password_confirmation.value

            password_confirmation.classList.toggle('is-valid', valid)
            password_confirmation.classList.toggle('is-invalid', !valid)
        } else {
            password_confirmation.classList.remove('is-valid', 'is-invalid')
        }
    }
})
