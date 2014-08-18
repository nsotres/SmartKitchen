var Homer = {
    name: "Homer J. Simpson",
    cell: "(312)888-2483",
    work: "(312)666-7743",
    email: "homersimpson@fox.com",
    currentHealthProblem: ["Cholesterol", "High Blood Pressue"],
    planNum: "442-88438-266"
}

var Marge = {
    name: "Marge B. Simpson",
    cell: "(312)844-2773",
    work: "None",
    email: "margesimpson@fox.com",
    currentHealthProblem: ["None"],
    planNum: "442-88438-267"
}

var Bart = {
    name: "Bart Simpson",
    cell: "(312)844-2772",
    work: "None",
    email: "bartsimpson@fox.com",
    currentHealthProblem: ["None"],
    planNum: "442-88438-268"
}

var Lisa = {
    name: "Lisa Simpson",
    cell: "(312)844-2771",
    work: "None",
    email: "lisasimpson@fox.com",
    currentHealthProblem: ["None"],
    planNum: "442-88438-269"
}

var Maggie = {
    name: "Maggie Simpson",
    cell: "(312)844-2770",
    work: "None",
    email: "maggiesimpson@fox.com",
    currentHealthProblem: ["None"],
    planNum: "442-88438-261"
}


function loadInfo(id) {
    var people;
    switch(id) {
    case 1:
        people = Homer;
        break;
    case 2:
        people = Marge;
        break;
    case 3:
        people = Bart;
        break;
    case 4:
        people = Lisa;
        break;
    case 5:
        people = Maggie;
        break;
    }

    title.text = people.name;
    cellText.text = people.cell;
    workText.text = people.work;
    emailText.text = people.email;
    healthProblem1Text.text = people.currentHealthProblem[0];
    planNumText.text = people.planNum;
}

function initialize() {
    title.text = Homer.name;
    cellText.text = Homer.cell;
    workText.text = Homer.work;
    emailText.text = Homer.email;
    healthProblem1Text.text = Homer.currentHealthProblem[0];
    healthProblem2Text.text = Homer.currentHealthProblem[1];
    planNumText.text = Homer.planNum;
}


var HomerS = {

 name: "Homer J Simpson",
 phone: "123-456-4444",
 doc1: "Dr. Hibbert"
}
