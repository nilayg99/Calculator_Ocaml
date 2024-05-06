let rec a () =
  print_endline "Select operation:";
  print_endline "1. Add";
  print_endline "2. Subtract";
  print_endline "3. Multiply";
  print_endline "4. Divide";

  print_string "Enter your option number: ";
  let operate = read_int () in

  print_string "Type your first number : ";
  let num1 = read_int () in

  print_string "Type your second number : ";
  let num2 = read_int () in

  if operate <> 1 && operate <> 2 && operate <> 3 && operate <> 4 then
    (print_endline "Invalid operation";
    a ())
  else 
    if operate = 1 then
      let add = num1 + num2 in (*Addition*)
      print_string ("Result after Addition: " ^ string_of_int add) 
    else if operate = 2 then
      let subtract = num1 - num2 in (*Subtraction*)
      print_string ("Result after Subtraction: " ^ string_of_int subtract)
    else if operate = 3 then
      let multiply = num1 * num2 in (*Multiplication*)
      print_string ("Result after Multiplication: " ^ string_of_int multiply)
    else if operate = 4 then
      if num2 = 0 then
        let rec b () =
          print_string "Enter a valid number: ";
          let num2 = read_int () in
          if num2 = 0 then
            b ()
          else
            let divide = num1 / num2 in
            print_endline ("Result after Division: " ^ string_of_int divide) (*Division*)
        in
        b ()
      else
        print_endline "Error while executing.";
        a ()

let () = a () (* Execute the function 'a()'*)