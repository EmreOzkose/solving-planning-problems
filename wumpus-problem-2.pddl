(define (problem wumpus-c-2)
    (:domain wumpus-c)
    (:objects sq-1-1 sq-1-2 sq-1-3 sq-1-4 sq-1-5
	    sq-2-1 sq-2-2 sq-2-3 sq-2-4 sq-2-5
	    sq-3-1 sq-3-2 sq-3-3 sq-3-4 sq-3-5
	    
	    the-gold 
	    the-arrow
	    agent 
	    wumpus1
	    wumpus2)
    
    (:init 
        ;; side-by-side squares
        (adj sq-1-1 sq-1-2) (adj sq-1-2 sq-1-1)
        (adj sq-1-2 sq-1-3) (adj sq-1-3 sq-1-2)
        (adj sq-1-3 sq-1-4) (adj sq-1-4 sq-1-3)
        (adj sq-1-4 sq-1-5) (adj sq-1-5 sq-1-4)
        
        (adj sq-2-1 sq-2-2) (adj sq-2-2 sq-2-1)
        (adj sq-2-2 sq-2-3) (adj sq-2-3 sq-2-2)
        (adj sq-2-3 sq-2-4) (adj sq-2-4 sq-2-3)
        (adj sq-2-4 sq-2-5) (adj sq-2-5 sq-2-4)

        (adj sq-3-1 sq-3-2) (adj sq-3-2 sq-3-1)
        (adj sq-3-2 sq-3-3) (adj sq-3-3 sq-3-2)
        (adj sq-3-3 sq-3-4) (adj sq-3-4 sq-3-3)
        (adj sq-3-4 sq-3-5) (adj sq-3-5 sq-3-4)
        
        ;; cross squares
        (adj sq-1-1 sq-2-1) (adj sq-2-1 sq-1-1)
        (adj sq-1-2 sq-2-2) (adj sq-2-2 sq-1-2)
        (adj sq-1-3 sq-2-3) (adj sq-2-3 sq-1-3)
        (adj sq-1-4 sq-2-4) (adj sq-2-4 sq-1-4)
        (adj sq-1-5 sq-2-5) (adj sq-2-5 sq-1-5)
        
        (adj sq-3-1 sq-2-1) (adj sq-2-1 sq-3-1)
        (adj sq-3-2 sq-2-2) (adj sq-2-2 sq-3-2)
        (adj sq-3-3 sq-2-3) (adj sq-2-3 sq-3-3)
        (adj sq-3-4 sq-2-4) (adj sq-2-4 sq-3-4)
        (adj sq-3-5 sq-2-5) (adj sq-2-5 sq-3-5)
        
        ;; pit-gold-wumpus-agent
        (pit sq-1-2)
        (pit sq-2-4)
        (pit sq-3-1)
        
        (is-gold the-gold)
        (at the-gold sq-2-5)
        
        (is-agent agent)
        (at agent sq-1-1)
        
        (is-arrow the-arrow)
        (have agent the-arrow)
        
        (is-wumpus wumpus1)
        (at wumpus1 sq-3-3)
        (wumpus-in sq-3-3)
        
        (is-wumpus wumpus2)
        (at wumpus2 sq-2-3)
        (wumpus-in sq-2-3)
    )
        
    
    (:goal (and 
            (have agent the-gold) 
            (at agent sq-1-1)
            (dead wumpus1)
            )
    )
)