//
//  main.swift
//  addTwoNumbers
//
//  Created by Tom Grant on 8/20/19.
//  Copyright © 2019 Tom Grant. All rights reserved.
//

import Foundation


// Definition for singly-linked list.


public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
        self.next = nil
      }
 }



class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let dummyHead = ListNode( 0 ) // allso used to store carry
        var p = l1, q = l2, curr = dummyHead, r = 0
        
        while p != nil || q != nil || dummyHead.val > 0 {
            (dummyHead.val, r) = ((p?.val ?? 0) + (q?.val ?? 0) + dummyHead.val).quotientAndRemainder(dividingBy: 10)
            curr.next = ListNode( r )
            curr = curr.next! // we know this exist because we just set it above.
            p = p?.next
            q = q?.next
        }
        
        return dummyHead.next
    }
}


//class Solution {
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//
//        var head : ListNode?
//        var tail : ListNode?
//
//        var p1 = l1, p2 = l2
//        var tailLeft = true
//        var carry = 0
//        var c = 0
//
//        while tailLeft, c < 10 {
//            let v1 = p1?.val ?? 0
//            let v2 = p2?.val ?? 0
//            let sum = v1 + v2 + carry
//            let (q,r) = sum.quotientAndRemainder(dividingBy: 10)
//            let node = ListNode( r )
//            carry = q
//
//            if head == nil {
//                head = node
//            }
//
//            tail?.next = node
//            tail = node
//
//            p1 = p1?.next
//            p2 = p2?.next
//
//            tailLeft = p1 != nil || p2 != nil
//
//            c += 1
//        }
//
//        if carry != 0 {
//            tail?.next = ListNode( 1 )
//        }
//
//        return head
//    }
//}


let l1 : ListNode? = ListNode(1)

l1!.next = ListNode(1)
l1!.next!.next = ListNode(1)

let l2 : ListNode? = ListNode(1)
l2!.next = ListNode(1)
l2?.next!.next = ListNode(1)


print( l1! )

let result = Solution().addTwoNumbers(l1, l2)

print( result )
