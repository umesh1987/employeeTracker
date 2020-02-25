//dependencies
const mysql = require("mysql");
const inquirer = require("inquirer");
const consoleTable = require("console.table");

//this function connect to local mysql server

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "employees_db"
});

// Initiate MySQL Connection.
connection.connect(function(err) {
    if (err) {
        console.error("error connecting: " + err.stack);
        return;
    }
    console.log("connected as id " + connection.threadId);
    questionsPromt();
});

/*
queryDb();

async function queryDb() {

    const connection = await mysql.createConnection({
        host: "localhost",
        port: 3306,
        user: "root",
        password: "",
        database: "employees_db"
    });

    const [employeeData] = await connection.query("select * from employees");
    console.table(employeeData);
    questionsPromt();
}
*/


// this function ask to user, what are going to do
function questionsPromt() {
    inquirer.prompt({
        type: "list",
        name: "toDoList",
        message: "What would you like to do?",
        choices: ["Add department.",
            "Assign new role.",
            "Add new employee.",
            "View department.",
            "View employee role.",
            "view employee.",
            "Remove employee",
            "Exit"
        ]

    }).then(function({ toDoList }) {
        //console.log(toDoList);

        switch (toDoList) {
            case "Add department.":
                console.log("add");

                addDepartment();

                break;

            case "Assign new role.":
                console.log("add role");

                assignNewRole();

                break;

            case "Add new employee.":
                console.log("add employee");

                addNewEmployee();

                break;

            case "View department.":
                console.log("view dept.");

                viewDepartment();

                break;

            case "View employee role.":
                console.log("view role");

                viewEmployeeRole();

                break;

            case "view employee.":
                //console.log("view employee");
                viewEmployee();

                break;

            case "Remove employee.":
                console.log("remove");

                removeEmployee();

                break;

            case "Exit.":
                //console.log("connection end");
                connection.end();

                break;

            default:
                break;
        }
    })
}

/*
"Add department.",
"Assign new role.",
"Add new employee.",
"View department.",
"View employee role.",
"view employee.",
"Remove employee",
"Exit"
*/


// add department function
// assigin new role

// view employee function
function viewEmployee() {

    var query = ("select * from employees")
    connection.query(query, function(err, res) {
        if (err) throw err;

        console.table(res);


        questionsPromt();
    })
}


//view dapartment
function viewDepartment() {

    var query = ("select * from department")
    connection.query(query, function(err, res) {
        if (err) throw err;

        console.table(res);


        questionsPromt();
    })
}


// View employee role
function viewEmployeeRole() {

    var query = ("select * from role")
    connection.query(query, function(err, res) {
        if (err) throw err;

        console.table(res);


        questionsPromt();
    })
}