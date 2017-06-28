var choice1 = ['rock', 'paper', 'scissors']
var choice2 = Math.random();
if (choice2 < 0.34) {
  choice2 = "rock";
} else if(choice2 <= 0.67) {
  choice2 = "paper";
} else {
  choice2 = "scissors";
};

var choose = function(choice1, choice2) {
    if (choice1 === choice2) {
        return "The result is a tie!"
    }
    
    else if (choice1 === "rock") {
      function test(click){
    alert("You chose rock.");
  }
        if (choice2==="scissors") {
            return "Rock wins!";
            $('#p1Score').append(function();
              $(this).html("+1");
              )
        }
        else {
            return "Paper wins";
            $('#p2Score').append(function();
              $(this).html("+1");
              )
        }
    }
    
    else if (choice1 === "paper") {
      function test(click){
    alert("You chose paper.");
}
        if (choice2==="rock") {
            return "Paper wins!";
            $('#p1Score').append(function();
              $(this).html("+1");
              )
        }
        else {
            return "Scissors wins";
            $('#p2Score').append(function();
              $(this).html("+1");
              )
        }
    }
    
    else if (choice1 === "scissors") {
      function test(click){
    alert("You chose scissors.");
}
        if (choice2==="paper") {
            return "Scissors wins!";
            $('#p1Score').append(function();
              $(this).html("+1");
              )
        }
        else {
            return "Rock wins";
            $('#p2Score').append(function();
              $(this).html("+1");
              )
        }
    }
};
