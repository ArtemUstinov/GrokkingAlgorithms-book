// Selection sort:

let arrayOne = [1, 5, 2, 7, 10]
let arrayTwo = [1]

func findSmallestElementIndex<T: Comparable>(array: [T]) -> Int {
    
    var smallestElement = array[0]
    var smallestElementIndex = 0
    
    if array.count == 1 {
        return 0
    }
    
    for index in (1...array.count - 1) {
        if array[index] < smallestElement {
            smallestElement = array[index]
            smallestElementIndex = index
        }
    }
    return smallestElementIndex
}

func selectionSort<T: Comparable>(array: [T]) -> [T] {
    
    var newArray: [T] = []
    var mutableArray = array
    
    for _ in (0...array.count - 1) {
        let smallestIndex = findSmallestElementIndex(array: mutableArray)
        newArray.append(mutableArray[smallestIndex])
        mutableArray.remove(at: smallestIndex)
    }
    return newArray
}

selectionSort(array: arrayOne)

// The console displays of arrayOne: [1, 2, 5, 7, 10]
// The console displays of arrayTwo: [1]

