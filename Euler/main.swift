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
    var sum = 2.0;
    var sumArray : [Double] = [];
    
    sumArray.insert(1.0, atIndex: 0);
    sumArray.insert(2.0, atIndex: 1);
    
    //empty set
    var mySet = Set<Double>();
    
    for  var i = 2; i < limit; i++
    {
        let t1 = sumArray[i-1] + sumArray[i-2];
        if  t1 > Double(limit)
        {
            //calculate the sum
            for doubleNum in mySet
            {
                sum += doubleNum;
            }
            return sum;
        }
        
        if (t1 % 2 == 0 )
        {
            mySet.insert(t1);
        }
        
        sumArray.insert(t1, atIndex: i);
        
    }
    
    return sum;
}

//
//mark - begin main
//
print("Hello, World!")
let sum = multi35(1000);
print("sum is \(sum)");

let evenSum = evenFN(4000000);
print("evenSum is \(evenSum)");

