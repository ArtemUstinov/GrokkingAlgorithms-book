// Title 1
// The binary search

let arrayOne = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512]
let arrayTwo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func binarySearch<T: Comparable>(_ list: [T], item: T) -> Int? {
    var low = 0
    var high = list.count - 1
    var middle = 0
    
    while low <= high {
        middle = low + high
        let guess = list[middle]
        if guess == item {
            return middle
        }
        
        if guess > item {
            high = middle - 1
        } else {
            low = middle + 1
        }
    }
    return nil
}

binarySearch(arrayTwo, item: 5)

// The console displays: 4


