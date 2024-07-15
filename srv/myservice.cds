service MyService @(path: 'MyService') { //path to take full service name otherwise it will only take util it finds camil case
 
    function greetings(name:String(20)) returns String;
    function multiply(a:Int16, b:Int16) returns Integer;
 
}
