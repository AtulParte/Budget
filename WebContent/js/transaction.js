function updateDue() {

    var total = parseInt(document.getElementById("balance").value);
    var trans = parseInt(document.getElementById("cost").value);

    // to make sure that they are numbers
    if (!total) { total = 0; }
    if (!trans) { trans = 0; }

    var ansD = document.getElementById("remainingval");
    ansD.value = total - trans;
}