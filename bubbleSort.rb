def bubbleSort(numberList)

    for element in 0...numberList.length-1
        for item in 0...numberList.length-1
            numberList[item], numberList[item+1] = numberList[item+1] , numberList[item] if numberList[item] > numberList[item+1]
        end
    end
    return numberList
end

def bubbleSortBy(stringList)
    
    for element in 0...stringList.length-1
        for item in 0...stringList.length-1
            stringList[item], stringList[item+1] = stringList[item+1] , stringList[item] if yield(stringList[item],stringList[item+1]) > 0
        end
    end
    return stringList
end

print bubbleSort([4,3,78,2,0,2])
puts ""

sortedList = bubbleSortBy(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end

print sortedList