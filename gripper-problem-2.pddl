
;; carrying 4 objects and bringing them to start room

(define (problem gripper-2) 
    (:domain gripper-domain)
    
    (:objects rooma roomb roomc roomd ball1 ball2 ball3 ball4 left right) 
    
    (:init 
        (room rooma) 
        (room roomb)
        (room roomc)
        (room roomd)
        
        (ball ball1) 
        (ball ball2)
        (ball ball3)
        (ball ball4)
        
        (gripper left) 
        (gripper right)
        
        (at-robby rooma)
        
        (free left) 
        (free right)
        
        (at ball1 rooma) 
        (at ball2 roomb)
        (at ball3 roomc)
        (at ball4 roomd)
    )
    
    (:goal (and (at ball1 rooma) (at ball2 rooma) (at ball3 rooma) (at ball4 rooma) (at-robby rooma)))
 
)