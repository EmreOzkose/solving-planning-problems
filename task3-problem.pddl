
;; story: number of people want to send cargos to their friends. 
;; They have a lot of cargo to send. Let's help them.
;; A plane can carry just one cargo at a time. 

(define (problem task3) 
    (:domain task3-domain)
    
    (:objects cargo1 cargo2 cargo3 cargo4 cargo5 cargo6 cargo7 cargo8 cargo9 cargo10 cargo11 cargo12 cargo13 cargo14 cargo15 cargo16 cargo17 cargo18 cargo19 london roma wonderland wonderplane Emre Sude Erama Simyaner) 
    
    (:init 
        ;; decalare objects
        (person Emre)
        (person Sude)
        (person Erama)
        (person Simyaner)
        
        (cargo cargo1)
        (cargo cargo2)
        (cargo cargo3)
        (cargo cargo4)
        (cargo cargo5)
        (cargo cargo6)
        (cargo cargo7)
        (cargo cargo8)
        (cargo cargo9)
        (cargo cargo10)
        (cargo cargo11)
        (cargo cargo12)
        (cargo cargo13)
        (cargo cargo14)
        (cargo cargo15)
        (cargo cargo16)
        
        (cargo cargo17)
        (cargo cargo18)
        (cargo cargo19)
        
        (place london)
        (place roma)
        (place wonderland)
        (story_place roma)
        
        (plane wonderplane)
        
        (not (is-cargo-valid cargo1))   ;; too much heavy
        (not (is-cargo-valid cargo2))   ;; too much heavy
        (not (is-cargo-valid cargo3))   ;; too much heavy
        
        ;; where are cargos?
        (at cargo1 roma)
        (at cargo2 roma)
        (at cargo3 roma)
        
        (at cargo4 london)
        (at cargo5 london)
        (at cargo6 london)
        (at cargo7 london)
        (at cargo8 london)
        (at cargo9 london)
        (at cargo10 london)
        (at cargo11 london)
        (at cargo12 london)
        (at cargo13 london)
        (at cargo14 london)
        (at cargo15 london)
        (at cargo16 london)
        
        (at cargo17 roma)
        (at cargo18 roma)
        (at cargo19 roma)
        
        (at wonderplane roma)
        
        ;; decalare belonging of cargos
        (belong-to cargo1 Emre)
        (belong-to cargo2 Emre)
        (belong-to cargo3 Emre)
        
        (belong-to cargo4 Sude)
        (belong-to cargo5 Sude)
        (belong-to cargo6 Sude)
        (belong-to cargo7 Sude)
        (belong-to cargo8 Sude)
        (belong-to cargo9 Sude)
        (belong-to cargo10 Sude)
        (belong-to cargo11 Sude)
        (belong-to cargo12 Sude)
        (belong-to cargo13 Sude)
        (belong-to cargo14 Sude)
        (belong-to cargo15 Sude)
        (belong-to cargo16 Sude)
        
        (belong-to cargo17 Sude)
        (belong-to cargo18 Sude)
        (belong-to cargo19 Sude)
        
        ;; declare which cargo will be reached to which person
        (cargo_from_to Sude Erama cargo4)
        (cargo_from_to Sude Erama cargo5)
        (cargo_from_to Sude Erama cargo6)
        (cargo_from_to Sude Erama cargo7)
        (cargo_from_to Sude Erama cargo8)
        (cargo_from_to Sude Erama cargo9)
        (cargo_from_to Sude Erama cargo10)
        (cargo_from_to Sude Erama cargo11)
        (cargo_from_to Sude Erama cargo12)
        (cargo_from_to Sude Erama cargo13)
        (cargo_from_to Sude Erama cargo14)
        (cargo_from_to Sude Erama cargo15)
        (cargo_from_to Sude Erama cargo16)
        
        (cargo_from_to Sude Erama cargo17)
        (cargo_from_to Sude Erama cargo18)
        (cargo_from_to Sude Erama cargo19)
        
        ;; declare location of people
        (at Sude london)
        (at Emre roma)
        (at Simyaner wonderland)
        (at Erama wonderland)

    )
    
    (:goal (and 
                (is_reached cargo4)
                (is_reached cargo5)
                (is_reached cargo6)
                (is_reached cargo7)
                (is_reached cargo8)
                (is_reached cargo9)
                (is_reached cargo10)
                (is_reached cargo11)
                (is_reached cargo12)
                (is_reached cargo13)
                (is_reached cargo14)
                (is_reached cargo15)
                (is_reached cargo16)
                
                (not (is_reached cargo17))
                (not (is_reached cargo18))
                (not (is_reached cargo19))
                
                (at wonderplane wonderland)
            )
    )
 
)