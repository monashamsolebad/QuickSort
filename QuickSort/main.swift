//
//  main.swift
//  QuickSort
//
//  Created by Mona Shamsolebad on 2019-08-01.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

import Foundation

func quicksort(_ list: [Int]) -> [Int] {
    if list.count <= 1  { return list }
    
    let pivot = list[0]
    let less = list.filter { $0 < pivot }
    let equal = list.filter { $0 == pivot }
    let greater = list.filter { $0 > pivot }
  
    
    return quicksort(less) + equal + quicksort(greater)
}

var numbers = [42, 12, 88, 62, 63, 56, 1, 77, 88, 97, 97, 20, 45, 91, 62, 2, 15, 31, 59, 5]
var sorted = quicksort(numbers)
print(sorted)


