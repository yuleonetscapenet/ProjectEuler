//
//  main.swift
//  Euler
//
//  Created by Leo Yu on 9/27/15.
//  Copyright © 2015 Leo Yu. All rights reserved.
//

import Foundation

func multi35( limit: Int) -> Int{
    var sum = 0 ;
    
    var index = 1;
    var mySet = Set<Int>();
    
    while ( index < limit )
    {
        let sum2 = index * 3;
        if sum2 >= limit
        {
            break;
        }
        mySet.insert(sum2);
        //sum += sum2;
        index++;
    }
    
    index = 1;
    while ( index < limit )
    {
        let sum2 = index * 5;
        if sum2 >= limit
        {
            break;
        }
        mySet.insert(sum2)
        //sum += sum2;
        index++;
    }
    
    for intNum in mySet
    {
        sum += intNum;
    }
    return sum;
}


func evenFN( limit : Int ) -> Double {
    var sum = 0.0;
    
    
    return sum;
}

print("Hello, World!")
let sum = multi35(1000);

print("sum is \(sum)");

