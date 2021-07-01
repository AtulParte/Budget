//Email
function checkEmail() {

    var email = document.getElementById('email');
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
    blurt({
    title: 'Invalid Email',
    text: 'Pls try Again',
    type: 'error',

    okButtonText: 'Done',

    escapable: true
});
    email.focus;
    return false;
 }
}