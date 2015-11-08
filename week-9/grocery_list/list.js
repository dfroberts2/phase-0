var newItem = document.getElementById("new_item");
var htmlList = document.getElementById("list");
var nameList = document.getElementById("name_list");
var title = document.getElementById("title");
var deleteItem = document.getElementById("delete_item");
var updateItem = document.getElementById("update_item");
var list = {};

newItem.addEventListener("click", add);
newItem.addEventListener("click", display);
nameList.addEventListener("click", name);
deleteItem.addEventListener("click", deleteI);
deleteItem.addEventListener("click", display);
updateItem.addEventListener("click", updateI);
updateItem.addEventListener("click", display);


function add() {
    var itemToAdd = prompt("what would you like to add to the list?");
    var qtyToAdd = prompt("how many?");
	list[itemToAdd] = qtyToAdd;
}

function display() {
    htmlList.innerHTML="";
    for (var item in list) {
    	htmlList.innerHTML += "<li><input type='checkbox' class = 'checkbox' value = " + item + ">" + item + ", " + list[item] + "</input></li>";
    }
}

function name() {
	var listToName = prompt("what is the name of your list?");
	title.innerHTML = listToName;
}

function deleteI() {
	var itemToDelete = document.querySelector('.checkbox:checked').value;
	delete list[itemToDelete];
}

function updateI(){
	var itemToUpdate = document.querySelector('.checkbox:checked').value;
	var newQty = prompt("how many now?");
	list[itemToUpdate] = newQty;
}