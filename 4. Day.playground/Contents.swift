import UIKit

// For loops

let count = 1...10

for number in count {
    print("Number is \(number)")
    
}

let albums = ["Red","1989","Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// While loops

var number2 = 1

while number2 <= 20 {
    print(number2)
    number2 += 1
}

// Repeat loops

var num = 1
repeat {
    print(num)
    num += 1
}while num <= 20

print("Ready or not, here I come!")




repeat {
    print("This is false")
} while false
            
// Exiting loops

var countDown = 10

while countDown >= 0{
    print(countDown)
    countDown -= 1
}

print("Blast off!")

var countDown2 = 10

while countDown2 >= 0{
    print(countDown2)
    if countDown2 == 4 {
        print("I'm bored. Lets go now!")
        break
    }
    countDown2 -= 1
}

// Exiting multiple loops

for i in 1...5{
    for j in 1...10{
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10{
    for j in 1...10{
        let product2 = i * j
        print("\(i) * \(j) is \(product2)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product2 = i * j
        print ("\(i) * \(j) is \(product2)")

        if product2 == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Skipping items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}


// Infinite Loops

var counter = 0

while true {
    print("")
    counter += 1

    if counter == 10 {
        break
    }
}
