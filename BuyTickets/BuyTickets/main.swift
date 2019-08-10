class Solutions {
    func waitingTime(tickets: [Int], p: Int) -> Int {
        
        guard tickets.count > 0 else {
            return 0
        }
        
        var tickets = tickets
        var alexPos = p
        var time = 0
        
        //    print( tickets )
        
        while tickets.count > 0 {
            //next turn
            time += 1
            //person goes to window
            var person = tickets.removeFirst()
            alexPos -= 1
            //take the money
            person -= 1
            
            //if they need more tickets, go to end of line
            if person > 0 {
                tickets.append( person )
            }
            
            //if alex is at the window, and the person at the window is out of money
            //game over
            if alexPos == -1 && person == 0 {
                return time
            }
            
            if alexPos < 0 {
                alexPos = tickets.count - 1
            }
            
        }
        return time
    }
    
    
    
    //this is a terrible brute force attempt, but at least i know the answer is right.
    func proof(tickets: [Int], p: Int ) -> Int {
        var time = 0
        var ticketHolders = [ (TicketsNeeded: Int,  isAlex: Bool ) ]()
        
        for e in tickets.enumerated() {
            let th = (TicketsNeeded: e.element, isAlex: p == e.offset  )
            ticketHolders.append( th )
            
        }
        
        
        
        while ticketHolders.count > 0 {
            
            
            //         print( ticketHolders, time  )
            //first person in line goes to counter
            var personHeadOfLine = ticketHolders.removeFirst()
            personHeadOfLine.TicketsNeeded -= 1
            time += 1
            
            if personHeadOfLine.TicketsNeeded > 0 {
                ticketHolders.append(personHeadOfLine)
            } else if personHeadOfLine.isAlex {
                //            print("me alread", personHeadOfLine, time )
                return time
            }
            
            //        print( time )
            
        }
        print("do i ever get here?")
        return time
    }
    
    
    func fast(tickets: [Int], p: Int ) -> Int {
        var time = tickets[p]
        
        let peopleInFront = tickets[0..<p]
        let peopleInBack = tickets[(p+1)..<tickets.count]
        
        for num in peopleInFront {
            if num < tickets[p] { time += num }
            else { time += tickets[p] }
        }
        
        for num in peopleInBack {
            if num < tickets[p] { time += num }
            else { time += tickets[p] - 1}
        }
        
        return time
    }
    
    func faster(tickets: [Int], p: Int ) -> Int {
        let ticketsAlexNeeds = tickets[p]
        var time = ticketsAlexNeeds
        
        for (i, t) in tickets.enumerated() where i != p {
            if t < ticketsAlexNeeds {
                time += t
            } else {
                time += i < p ? ticketsAlexNeeds : ticketsAlexNeeds - 1
            }
        }
        
        return time
    }
    
    
    func fasterMaybe(tickets: [Int], p: Int ) -> Int {

        var time = tickets[p]
        
        for (i, t) in tickets.enumerated() where i != p {
            if t < tickets[p] {
                time += t
            } else {
                time += i < p ? tickets[p] : tickets[p] - 1
            }
        }
        
        return time
    }
    
    func fasterImprovement(tickets: [Int], p: Int ) -> Int {
        
        var time = tickets[p]
        for i in 0..<tickets.count where i != p  {
            if tickets[i] < tickets[p] {
                time += tickets[i]
            } else {
                time += i < p ? tickets[p] : tickets[p] - 1
            }
        }
        
        return time
    }
    
    //but after a certain size it slows...like over 1 trillion
    func fasterGreased(tickets: [Int], p: Int ) -> Int {
        
        var time = tickets[p]
        for i in 0..<tickets.count where i != p {
            time += tickets[i] < tickets[p] ? tickets[i] : i < p ? tickets[p] : tickets[p] - 1
        }
        
        return time
    }
    
    
    func crazy(tickets: [Int], p: Int ) -> Int {
        
        var time = tickets[p]
        for i in 0..<tickets.count where i != p {
            time += tickets[i] < tickets[p] ? tickets[i] : i < p ? tickets[p] : tickets[p] - 1
        }
        
        return time
    }
    
    func asWhile(tickets: [Int], p: Int ) -> Int {
        
        var time = tickets[p]
        var i = 0
        
        while i < tickets.count  {
            if i == p { i += 1; continue }
            time += tickets[i] < tickets[p] ? tickets[i] : i < p ? tickets[p] : tickets[p] - 1
            i += 1
        }
     
        return time
        
    }
    
}
