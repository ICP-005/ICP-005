import Debug "mo:base/Debug";
import Float "mo:base/Float";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Buffer "mo:base/Buffer";
import Text "mo:base/Text";




// actor HelloWorld {
//   stable var balance : Float = 100;
//   public func checkbalance(amount: Float): async Float{
//     return amount;
//   };
//   public func topUp(amount: Float): async Float{
//     balance := amount + balance;
//     return balance;
//   };
// };



//   stable var array : [Text] = [""];
//   public func printArrays(list: [Text]): async [Text]{
//     return list;
//   };

//   for (i in array.vals()){
//     Debug.print(debug_show(i));
//   };

//   // let numbers = Buffer.Buffer<Nat>(10);
//   // numbers.add(9);
//   // numbers.remove(0);


// };

// actor numberChecker{
//   public func isPrime(number : Int){
//     if (number <= 1) 
//     return false;
//     // for (int)
//   };
// };




actor HelloWorld {

  public func isEven(number : Nat): async Bool{
     var even : Bool = false;
    if (number % 2 == 0){
       even := true;
    };
     return even;
  };
  public func isOdd(number : Nat): async Bool{
     var odd : Bool = false;
    if (number % 2 != 0){
       odd := true;
    };
     return odd;
  };
  
  public func isPrime(n : Nat) : async Bool {
    if (n <= 1){
        false
    } else if (n <= 3){
        true
    } else if (n % 2 == 0 ){
        false
    }else if(n % 3 == 0){
      false
    } 
    else {
        var i = 5;
        while (i * i <= n) {
            if ((n % i == 0) or (n % (i + 2) == 0)) {
                return false;
            };
            i += 6;
        };
        true
    }
  }
};

import Debug  "mo:base/Debug";
import Float "mo:base/Float";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Buffer "mo:base/Buffer";
import Text "mo:base/Text";
import Array "mo:base/Array";




// actor HelloWorld {
//   stable var balance : Float = 100;
//   public func checkbalance(amount: Float): async Float{
//     return amount;
//   };
//   public func topUp(amount: Float): async Float{
//     balance := amount + balance;
//     return balance;
//   };
// };



//   stable var array : [Text] = [""];
//   public func printArrays(list: [Text]): async [Text]{
//     return list;
//   };

//   for (i in array.vals()){
//     Debug.print(debug_show(i));
//   };

//   // let numbers = Buffer.Buffer<Nat>(10);
//   // numbers.add(9);
//   // numbers.remove(0);


// };

// actor numberChecker{
//   public func isPrime(number : Int){
//     if (number <= 1) 
//     return false;
//     // for (int)
//   };
// };




// actor HelloWorld {

//   public func isEven(number : Nat): async Bool{
//      var even : Bool = false;
//     if (number % 2 == 0){
//        even := true;
//     };
//      return even;
//   };
//   public func isOdd(number : Nat): async Bool{
//      var odd : Bool = false;
//     if (number % 2 != 0){
//        odd := true;
//     };
//      return odd;
//   };
  
//   public func isPrime(n : Nat) : async Bool {
//     if (n <= 1){
//         false
//     } else if (n <= 3){
//         true
//     } else if (n % 2 == 0 ){
//         false
//     }else if(n % 3 == 0){
//       false
//     } 
//     else {
//         var i = 5;
//         while (i * i <= n) {
//             if ((n % i == 0) or (n % (i + 2) == 0)) {
//                 return false;
//             };
//             i += 6;
//         };
//         true
//     };
//   };
// };




// actor TodoList {
//     private stable var todos : [Text] = [];
    
//      // Create: Add a new todo item
//     public func addTodo(task : Text) : async Bool {
//         // Check if task is empty
//         if (task == "") {
//             return false;
//         };
        
//         // Add task to array
//         todos := Array.append<Text>(todos, [task]);
//         return true;
//     };
    
//     // Update: Modify a todo item at specific index
//     public func updateTodo(index : Nat, newTask : Text) : async Bool {
//         if (index < todos.size()) {
//             let updatedTodos = Array.tabulate<Text>(todos.size(), func(i : Nat) : Text {
//                 if (i == index) { newTask } else { todos[i] }
//             });
//             todos := updatedTodos;
//             return true;
//         };
//         return false;
//     };

//     // Read: Get all todo items
//     public query func getTodos() : async [Text] {
//         return todos;
//     };

//     // Sort todos alphabetically 
//     public func sortTodos() : async Bool {
//         if (todos.size() == 0) {
//             return false;
//         };
        
//         // Sort array in place
//         todos := Array.sort<Text>(todos, Text.compare);
//         return true;
//     };

//     // Get number of todos
//     public query func getTodosCount() : async Nat {
//         return todos.size();
//     };
// };




actor Dbank{
    // initial Amount
    stable var accbalance: Float = 150;
    public func checkBalance(): async Float{
      return accbalance;
    };
    // Adding money to the initial amount
    public func topUp( amount: Float) : async(Float) {
      accbalance := accbalance + amount;
      return  accbalance;
    };
    // Deducting money from account
    public func withdraw(amount:Float): async(Float){
      if (amount == accbalance){
        return 0;
        }
      // checking if we over withdraw more than the initial amount 
      else if(amount > accbalance and accbalance == 0){
        return -amount;
        
      }
      else{
        accbalance:=accbalance-amount;     
        return amount;
      } 
    };
};