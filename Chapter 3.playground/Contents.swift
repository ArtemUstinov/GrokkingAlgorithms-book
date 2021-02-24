// Recursive functions:

func downCount(number: Int) {
    print(number)
    if number <= 1 {
        return
    } else {
        downCount(number: number - 1)
    }
}

downCount(number: 3)

// The console displays: 3, 2, 1



func greetTwo(name: String) {
    print("What's up, \(name) ?")
}

func bye() {
    print("Bye bye!")
}

func greet(name: String ) {
    print("Hello, \(name)!")
    greetTwo(name: name)
    print("Getting ready to say bye...")
    bye()
}

greet(name: "Mike")

/* The console displays:
    Hello Mike!
    What's up, Mike?
    Getting ready to say bye...
    Bye bye!
*/



func factorial(number: Int) -> Int {
    if number == 1 {
        return 1
    } else {
        print(number)
        return number * factorial(number: number-1)
    }
}

factorial(number: 4)

// The console displays: 24
