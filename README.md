# station
For this learning activity, you are going to get your station working for lab #4.  In the past, we have given you complete working code.  This time, we are going to give you a few hints, but make sure you know how to do things on your own. Make sure you pay attention in class and actually implement your code so that you wont struggle when the lab is due.

In lab #4, you are given the "StationInterface.h" file and a pdf that tells you what to do, but there is no main.cpp file provided.  So you will need to create the testing infrastructure for your code.  You will also need to create "Station.cpp" and "Station.h" files with your implementation.  You will need to use your linked list code as well, so you will need to include them in your implementation.

Lets start by creating "Station.h".  First copy the "StationInterface.h" content into "Station.h" and change the functions from virtual abstract functions to concrete functions that will be implemented in "Station.cpp".  

Next, copy the content of "Station.h" into "Station.cpp" and 
put stubs into each of the functions and print out the name of the function and the parameters that were passed to it.

Now you need to create a menu system to allow the user to test your code.  A good place to start is with the code given in chapter 6.  It should be very helpful in implementing your stack, queue and deque as well as in creating your menuing system.  If you look at "Maintain_Queue.cpp", you will notice that they have a menu system that is very similar to the one you will provide.
```c++
  string name;
  int choice_num = 0;
  string choices[] = {
    "push", "front", "pop", "size", "quit"};
  const int NUM_CHOICES = 5;
  
  // Perform all operations selected by user.
  while (choice_num < NUM_CHOICES - 1) {
    // Select the next operation.
    cout << "Select an operation on customer queue\n";
    for (int i = 0; i < NUM_CHOICES; i++) {
      cout << i << ": " << choices[i] << endl;
    }
    cin >> choice_num;
    switch (choice_num) {
    case 0:
      cout << "Enter new customer name\n";
      cin >> name;
      customers.push(name);
      break;
    case 1:
      cout << "Customer " << customers.front() 
           << " is next in line\n";
      break;
    case 2:
      cout << "Customer " << customers.front()
           << " removed from line\n";
      customers.pop();
      break;
    case 3:
      cout << "Size of line is " << customers.size() << endl;
      break;
    case 4:
      cout << "Leaving customer queue.\n"
           << "Number of customers in queue is " << customers.size() << endl;
      break;
    default:
      cout << "Invalid selection\n";
      break;
    }
  } // End while.
```
Notice that they create an array of options, then print out the array, get the users choice and use that choice in the switch statement to select the desired behavior.  You should do the same thing with your options:
```c++
    string choices[] = {
        "1. Add a car to the station",
        "2. Remove a car from the station",
        "3. Add a car from the station to a storage facility",
        "4. Remove a car from a storage facility and add it to the station",
        "5. Display the cars currently accessible in the station and storage facilities",
        "6. Quit"
    };
```

Notice that for option 3, you will need to create another set of choices to determine which storage facility to use:
```c++
    string storage[4] = {
        "1. Add a car to the stack",
        "2. Add a car to the queue",
        "3. Add a car to the dequeue left",
        "4. Add a car to the dequeue right"
    };
```
Test your code to make sure each function is being called appropriately in Station.cpp and then all you have to do is make each of the functions work correctly.
