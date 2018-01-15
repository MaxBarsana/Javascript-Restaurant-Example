var runningTotal = 0;
var text1 = "<h3>You Ordered:</h3>";


function getReceipt() {
	// This initializes our string so it can get passed from  
	// function to function, growing line by line into a full receipt
	
	
	var sizeTotal = 0;
	var sizeArray = document.getElementsByClassName("size");
	for (var i = 0; i < sizeArray.length; i++) {

		
		if (sizeArray[i].checked) {
			
			var selectedSize = sizeArray[i].value;
			text1 = text1+selectedSize + "<br>";
			
		}
	}
	if (selectedSize === "Personal Pizza") {
		sizeTotal = 6;
	} else if (selectedSize === "Medium Pizza") {
		sizeTotal = 10;
	} else if (selectedSize === "Large Pizza") {
		sizeTotal = 14;
	} else if (selectedSize === "Extra Large Pizza") {
		sizeTotal = 16;
	}
	runningTotal = sizeTotal;
	getMeat(runningTotal,text1); 
	getCheese(runningTotal, text1);
	getCrust(runningTotal, text1);
	getSauce(runningTotal, text1);
	getVeggies(runningTotal, text1);
	
	
	document.getElementById("showText").innerHTML=text1;
	document.getElementById("totalPrice").innerHTML = "</h3>Total: <strong>$"+runningTotal+".00"+"</strong></h3>";
};


function getMeat() {
	var meatTotal = 0;
	var selectedMeat = [];
	var meatArray = document.getElementsByClassName("meats");
	for (var j = 0; j < meatArray.length; j++) {
		if (meatArray[j].checked) {
			selectedMeat.push(meatArray[j].value);
			console.log("selected meat: ("+meatArray[j].value+")");
			text1 = text1+meatArray[j].value+"<br>";
		}
	}
	var meatCount = selectedMeat.length;
	if (meatCount > 1) {
		meatTotal = (meatCount - 1);
	} else {
		meatTotal = 0;
	}
	runningTotal = (runningTotal + meatTotal);
	
};

function getCheese() {
	var cheeseTotal = 0;
	var cheeseArray = document.getElementsByClassName("cheese");
	for (var k = 0; k < cheeseArray.length; k++) {
		
		if (cheeseArray[k].checked) {
			var selectedCheese = cheeseArray[k].value;
			text1 = text1+selectedCheese + "<br>";
				}
			}
	if (selectedCheese === "Regular") {
		cheeseTotal = 0;
	} else if (selectedCheese === "No Cheese") {
		cheeseTotal = 0;
	} else if (selectedCheese === "Extra Cheese") {
		cheeseTotal = 3;
		
	}
		
		runningTotal = (runningTotal + cheeseTotal);
		console.log(runningTotal);
};


function getCrust() {
	var crustTotal = 0;
	var crustArray = document.getElementsByClassName("crust");
	for (var l = 0; l < crustArray.length; l++) {
		
		if (crustArray[l].checked) {
			var selectedCrust = crustArray[l].value;
			text1 = text1+selectedCrust + "<br>";
				}
			}
	if (selectedCrust === "Plain Crust") {
		crustTotal = 0;
	} else if (selectedCrust === "Garlic Butter Crust") {
		crustTotal = 0;
	} else if (selectedCrust === "Cheese Stuffed Crust") {
		crustTotal = 3;
	} else if (selectedCrust === "Spicy Crust") {
		crustTotal = 0;
	} else if (selectedCrust === "House Special Crust") {
		crustTotal = 0;
	}
		runningTotal = (runningTotal + crustTotal);
		console.log(crustTotal);
};



function getSauce() {
	var sauceTotal = 0;
	var sauceArray = document.getElementsByClassName("sauce");
	for (var m = 0; m < sauceArray.length; m++) {
		
		if (sauceArray[m].checked) {
			var selectedSauce = sauceArray[m].value;
			text1 = text1+selectedSauce + "<br>";
				}
			}
	if (selectedSauce === "Marinara sauce") {
		sauceTotal = 0;
	} else if (selectedSauce === "White sauce") {
		sauceTotal = 0;
	} else if (selectedSauce === "Barbeque sauce") {
		sauceTotal = 0;
	} else if (selectedSauce === "No Sauce") {
		sauceTotal = 0;
	} 
		runningTotal = (runningTotal + sauceTotal);
		console.log(sauceTotal);
};




function getVeggies() {
	var veggiesTotal = 0;
	var selectedVeggies = [];
	var veggiesArray = document.getElementsByClassName("veggies");
	for (var n = 0; n < veggiesArray.length; n++) {
		if (veggiesArray[n].checked) {
			selectedVeggies.push(veggiesArray[n].value);
			console.log("selected veggies: ("+veggiesArray[n].value+")");
			text1 = text1+veggiesArray[n].value+"<br>";
		}
	}
	var veggiesCount = selectedVeggies.length;
	if (veggiesCount > 1) {
		veggiesTotal = (veggiesCount - 1);
	} else {
		veggiesTotal = 0;
	}
	runningTotal = (runningTotal + veggiesTotal);
	console.log(veggiesTotal);
};


function removeButton() {
 var elem = document.getElementById('btnOrder');
 elem.parentNode.removeChild(elem);
}














