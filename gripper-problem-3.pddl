
;; carrying 4 objects and bringing them to start room

(define (problem gripper-2) 
    (:domain gripper-domain)
    
    (:objects room11 room12 room13 room21 room22 room33 ball1 ball2 ball3 ball4 ball5 ball6 ball7 left right) 
    
    (:init 
        (room room11) 
        (room room12)
        (room room13)
        (room room21)
        (room room22)
        (room room33)
        
        (ball ball1) 
        (ball ball2)
        (ball ball3)
        (ball ball4)
        (ball ball5)
        (ball ball6)
        (ball ball7)
        
        (gripper left) 
        (gripper right)
        
        (at-robby room11)
        
        (free left)
        (free right)
        
        (at ball1 room11) 
        (at ball2 room12)
        (at ball3 room12)
        (at ball4 room13)
        (at ball5 room21)
        (at ball6 room22)
        (at ball7 room33)
    )
    
    (:goal (and 
            (at ball1 room22) 
            (at ball2 room22) 
            (at ball3 room22) 
            (at ball4 room22) 
            (at ball5 room33)
            (at ball6 room33)
            (at ball7 room33)
            (at-robby room22)
            (free left)
            (free right)
            )
    )
 
)