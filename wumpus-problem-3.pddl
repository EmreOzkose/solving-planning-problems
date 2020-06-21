(define (problem wumpus-c-3)
    (:domain wumpus-c)
    (:objects 
        sq-1-1 sq-1-2 sq-1-3 sq-1-4 sq-1-5 sq-1-6 
        sq-2-1 sq-2-2 sq-2-3 sq-2-4 sq-2-5 sq-2-6 
        sq-3-1 sq-3-2 sq-3-3 sq-3-4 sq-3-5 sq-3-6 
        sq-4-1 sq-4-2 sq-4-3 sq-4-4 sq-4-5 sq-4-6 
        sq-5-1 sq-5-2 sq-5-3 sq-5-4 sq-5-5 sq-5-6 
        sq-6-1 sq-6-2 sq-6-3 sq-6-4 sq-6-5 sq-6-6 
	    
	    the-gold 
	    the-arrow
	    agent 
	    wumpus1
	    wumpus2
	    wumpus3)
    
    (:init 
        ;; side-by-side squares
        (adj sq-1-1 sq-1-2) (adj sq-1-2 sq-1-1)
        (adj sq-1-2 sq-1-3) (adj sq-1-3 sq-1-2)
        (adj sq-1-3 sq-1-4) (adj sq-1-4 sq-1-3)
        (adj sq-1-4 sq-1-5) (adj sq-1-5 sq-1-4)
        (adj sq-1-5 sq-1-6) (adj sq-1-6 sq-1-5)
        
        (adj sq-2-1 sq-2-2) (adj sq-2-2 sq-2-1)
        (adj sq-2-2 sq-2-3) (adj sq-2-3 sq-2-2)
        (adj sq-2-3 sq-2-4) (adj sq-2-4 sq-2-3)
        (adj sq-2-4 sq-2-5) (adj sq-2-5 sq-2-4)
        (adj sq-2-5 sq-2-6) (adj sq-2-6 sq-2-5)
        
        (adj sq-3-1 sq-3-2) (adj sq-3-2 sq-3-1)
        (adj sq-3-2 sq-3-3) (adj sq-3-3 sq-3-2)
        (adj sq-3-3 sq-3-4) (adj sq-3-4 sq-3-3)
        (adj sq-3-4 sq-3-5) (adj sq-3-5 sq-3-4)
        (adj sq-3-5 sq-3-6) (adj sq-3-6 sq-3-5)
        
        (adj sq-4-1 sq-4-2) (adj sq-4-2 sq-4-1)
        (adj sq-4-2 sq-4-3) (adj sq-4-3 sq-4-2)
        (adj sq-4-3 sq-4-4) (adj sq-4-4 sq-4-3)
        (adj sq-4-4 sq-4-5) (adj sq-4-5 sq-4-4)
        (adj sq-4-5 sq-4-6) (adj sq-4-6 sq-4-5)
        
        (adj sq-5-1 sq-5-2) (adj sq-5-2 sq-5-1)
        (adj sq-5-2 sq-5-3) (adj sq-5-3 sq-5-2)
        (adj sq-5-3 sq-5-4) (adj sq-5-4 sq-5-3)
        (adj sq-5-4 sq-5-5) (adj sq-5-5 sq-5-4)
        (adj sq-5-5 sq-5-6) (adj sq-5-6 sq-5-5)
        
        (adj sq-6-1 sq-6-2) (adj sq-6-2 sq-6-1)
        (adj sq-6-2 sq-6-3) (adj sq-6-3 sq-6-2)
        (adj sq-6-3 sq-6-4) (adj sq-6-4 sq-6-3)
        (adj sq-6-4 sq-6-5) (adj sq-6-5 sq-6-4)
        (adj sq-6-5 sq-6-6) (adj sq-6-6 sq-6-5)
        
        ;; cross squares
        (adj sq-1-1 sq-2-1) (adj sq-2-1 sq-1-1)
        (adj sq-1-2 sq-2-2) (adj sq-2-2 sq-1-2)
        (adj sq-1-3 sq-2-3) (adj sq-2-3 sq-1-3)
        (adj sq-1-4 sq-2-4) (adj sq-2-4 sq-1-4)
        (adj sq-1-5 sq-2-5) (adj sq-2-5 sq-1-5)
        (adj sq-1-6 sq-2-6) (adj sq-2-6 sq-1-6)
        
        (adj sq-2-1 sq-3-1) (adj sq-3-1 sq-2-1)
        (adj sq-2-2 sq-3-2) (adj sq-3-2 sq-2-2)
        (adj sq-2-3 sq-3-3) (adj sq-3-3 sq-2-3)
        (adj sq-2-4 sq-3-4) (adj sq-3-4 sq-2-4)
        (adj sq-2-5 sq-3-5) (adj sq-3-5 sq-2-5)
        (adj sq-2-6 sq-3-6) (adj sq-3-6 sq-2-6)
        
        (adj sq-3-1 sq-4-1) (adj sq-4-1 sq-3-1)
        (adj sq-3-2 sq-4-2) (adj sq-4-2 sq-3-2)
        (adj sq-3-3 sq-4-3) (adj sq-4-3 sq-3-3)
        (adj sq-3-4 sq-4-4) (adj sq-4-4 sq-3-4)
        (adj sq-3-5 sq-4-5) (adj sq-4-5 sq-3-5)
        (adj sq-3-6 sq-4-6) (adj sq-4-6 sq-3-6)
        
        (adj sq-4-1 sq-5-1) (adj sq-5-1 sq-4-1)
        (adj sq-4-2 sq-5-2) (adj sq-5-2 sq-4-2)
        (adj sq-4-3 sq-5-3) (adj sq-5-3 sq-4-3)
        (adj sq-4-4 sq-5-4) (adj sq-5-4 sq-4-4)
        (adj sq-4-5 sq-5-5) (adj sq-5-5 sq-4-5)
        (adj sq-4-6 sq-5-6) (adj sq-5-6 sq-4-6)
        
        (adj sq-5-1 sq-6-1) (adj sq-6-1 sq-5-1)
        (adj sq-5-2 sq-6-2) (adj sq-6-2 sq-5-2)
        (adj sq-5-3 sq-6-3) (adj sq-6-3 sq-5-3)
        (adj sq-5-4 sq-6-4) (adj sq-6-4 sq-5-4)
        (adj sq-5-5 sq-6-5) (adj sq-6-5 sq-5-5)
        (adj sq-5-6 sq-6-6) (adj sq-6-6 sq-5-6)
        
        
        ;; pit-gold-wumpus-agent
        (is-agent agent)
        (at agent sq-1-1)
        
        (is-arrow the-arrow)
        (have agent the-arrow)
        
        (is-arrow the-arrow)
        (have agent the-arrow)
        
        (pit sq-1-2)
        (pit sq-2-4)
        (pit sq-3-1)
        (pit sq-3-2)
        (pit sq-5-2)
        (pit sq-5-3)
        (pit sq-4-3)
        
        (is-wumpus wumpus1)
        (at wumpus1 sq-3-3)
        (wumpus-in sq-3-3)
        
        (is-wumpus wumpus2)
        (at wumpus2 sq-2-3)
        (wumpus-in sq-2-3)
        
        (is-wumpus wumpus3)
        (at wumpus3 sq-3-4)
        (wumpus-in sq-3-4)
        
        (is-gold the-gold)
        (at the-gold sq-4-4)
    )
    
    
    (:goal (and 
            (have agent the-gold) 
            (at agent sq-1-1)
            (dead wumpus1)
            )
    )
)