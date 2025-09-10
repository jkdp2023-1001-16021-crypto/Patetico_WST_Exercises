// JavaScript and jQuery Exercises

//Native JS:

//1
document.getElementById("demo").innerText = "Hello JavaScript!";

//2
document.getElementById("box").style.backgroundColor = "lightyellow";


//3
document.getElementById("btn").onclick = function(){
    document.getElementById("demo").style.display = "none";
};

//4
document.getElementById("btn").onclick = function(){
    document.getElementById("demo").style.display = "block";
};

//5
document.getElementById("btn").onclick = function(){
    let el = document.getElementById("demo");
    if(el.style.display == "none") {
        el.style.display = "block";
    } else {
        el.style.display = "none";
    }
};

//6
document.getElementById("demo").classList.add("highlight");

//7
document.getElementById("demo").classList.remove("highlight");

//8
document.getElementById("btn").onclick = function(){
    document.getElementById("demo").classList.toggle("highlight");
};

//9
document.getElementById("myImg").src = "new.jpg";

//10
let value = document.getElementById("name").value;
console.log(val);

//11
document.getElementById("name").value = "Kai Patetico";

//12
document.getElementById("demo").innerHTML += "Extra text!";

//13
document.getElementById("demo").innerHTML = "Start" +
document.getElementById("demo").innerHTML;

//14
document.getElementById("box").style.transition = "opacity 1s";
document.getElementById("box").style.opacity = 0;

//15
let box = document.getElementById("box");
box.style.transition = "opacity 1s";
box.style.opacity = 1;

//16
document.getElementById("panel").style.maxHeight = "0px";

//17
document.getElementById("panel").style.maxHeight = "200px";

//18
let el = document.getElementById("demo");
el.style.color = "white";
el.style.backgroundColor = "black";

//19
document.getElementById("demo").onmouseover = function(){
    this.style.color = "red";
};

//20
document.getElementById("demo").onclick = function(){
    this.innerText = "You clicked me! Omg!";
};


//jQuery:

//1
$("#demo") .text("Hello jQuery!");

//2
$("#box") .css("background-color", "lightyellow");

//3
$("#btn").click(function(){
    $("#demo").hide();
});

//4
$("#btn").click(function(){
    $("#demo").show();
}
)

//5
$("#btn").click(function(){
    $("#demo").toggle();
});

//6
$("#demo").addClass("highlight");

//7
$("#demo").removeClass("highlight");

//8
$("#btn").click(function(){
    $("#demo").toggleClass("highlight");
});

//9
$("#myImg").attr("src", "new.jpg");

//10
let val = $("#name").val();
console.log(val);

//11
$("#name").val("Kai Patetico");

//12
$("#demo").append("Extra text!");

//13
$("#demo").prepend("Start");

//14
$("#box").fadeOut();

//15
$("#demo").fadeIn();

//16
$("#panel").slideUp();

//17
$("#panel").slideDown();

//18
$("#demo").css({
    "color" : "white",
    "background-color" : "black"
});

//19
$("#demo").mouseover(function(){
    $(this).css("color", "red");
});

//20
$("#demo").click(function(){
    $(this).text("You clicked me! Omg!");
});