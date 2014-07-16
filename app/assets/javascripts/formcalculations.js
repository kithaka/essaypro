
 //Set up an associative array 
 //The keys represent the filling type
 //The value represents the cost of the filling i.e. Lemon filling is $5,Dobash filling is $9
 //We use this this array when the user selects a filling from the form
 var level_prices= new Array();
 level_prices["None"]=0;
 level_prices["High School"]=28;
 level_prices["Undergraduate"]=35;
 level_prices["Master"]=42;
 level_prices["Ph.D."]=49;
	 
//This function finds the filling price based on the 
//drop down selection
//order deadline
var deadline_prices = new Array();
 deadline_prices["8hours"]=0;
 deadline_prices["12hours"]=3;
 deadline_prices["24hours"]=6;
 deadline_prices["48hours"]=9;
 deadline_prices["3days"]=12;
 deadline_prices["5days"]=15;
 deadline_prices["7days"]=18;
 deadline_prices["10days"]=21;
 deadline_prices["15days"]=21;


var order_spacing = new Array();
 order_spacing["doublespace"]=1;
 order_spacing["singlespace"]=2;

 //function to get order price
function getLevelPrice()
{
    var orderLevelPrice=0;
    //Get a reference to the form id="cakeform"
    var theForm = document.forms["priceform"];
    //Get a reference to the select id="filling"
     var selectedLevel = theForm.elements["level"];
     
    //set cakeFilling Price equal to value user chose
    //For example filling_prices["Lemon".value] would be equal to 5
    orderLevelPrice = level_prices[selectedLevel.value];

    //finally we return cakeFillingPrice
    return orderLevelPrice;
}

function getDeadlinePrice()
{
    var orderDeadlinePrice=0;
    //Get a reference to the form id="cakeform"
    var theForm = document.forms["priceform"];
    //Get a reference to the select id="filling"
     var selectedLevel = theForm.elements["deadline"];
     
    //set cakeFilling Price equal to value user chose
    //For example filling_prices["Lemon".value] would be equal to 5
    orderDeadlinePrice = deadline_prices[selectedLevel.value];

    //finally we return cakeFillingPrice
    return orderDeadlinePrice;
}

function getOrderSpacing()
{
    var orderSpacing=0;
    //Get a reference to the form id="cakeform"
    var theForm = document.forms["priceform"];
    //Get a reference to the select id="filling"
     var selectedLevel = theForm.elements["spacing"];
     
    //set cakeFilling Price equal to value user chose
    //For example filling_prices["Lemon".value] would be equal to 5
    orderSpacing = order_spacing[selectedLevel.value];

    //finally we return cakeFillingPrice
    return orderSpacing;
}
function getPages()
{
    var orderPages=0;
    //Get a reference to the form id="cakeform"
    var theForm = document.forms["priceform"];
    //Get a reference to the select id="filling"
     var selectedLevel = theForm.elements["pages"];
     
    //set cakeFilling Price equal to value user chose
    //For example filling_prices["Lemon".value] would be equal to 5
    orderPages =[selectedLevel.value];

    //finally we return cakeFillingPrice
    return orderPages;
}
     
function calculateTotal()
{
    //Here we get the total price by calling our function
    //Each function returns a number so by calling them we add the values they return together
    var orderPrice = (getLevelPrice() - getDeadlinePrice()) * getOrderSpacing() * getPages();

    if (orderPrice>0)
    {
    //display the result
    var divobj = document.getElementById('totalPrice');
    divobj.style.display='block';
    divobj.innerHTML = "$"+orderPrice;
}
else
{
    var divobj = document.getElementById('totalPrice');
    divobj.style.display='block';
    divobj.innerHTML = "$"+0;
}


}

function hideTotal()
{
    var divobj = document.getElementById('totalPrice');
    divobj.style.display='none';
}