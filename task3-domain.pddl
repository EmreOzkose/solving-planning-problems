
;; Air Cargo Transportation

(define (domain task3-domain)
    (:requirements :strips)
    
    (:predicates
        (plane ?plane)              ;; plane object
        (cargo ?cargo)              ;; cargo object
        (place ?place)              ;; general place object
        (story_place ?place)        ;; current place
        (is-loaded ?what ?plane)    ;; cargo is in plane
        (is-cargo-valid ?cargo)     ;; cargo weight limit
        (person ?person)            ;; person object
        (belong-to ?cargo ?person)  ;; a cargo is assigned to a person
        (at ?object ?place)                         ;; 
        (cargo_from_to ?person ?person ?cargo)      ;; 
        (is_reached ?cargo)                         ;; result check
    )
    

    (:action cargo-check
        :parameters (?cargo)
        :precondition (and (cargo ?cargo))
        :effect (and (is-cargo-valid ?cargo) )
    )
    
    (:action cargo-load
        :parameters (?person ?cargo ?plane ?place)
        :precondition (and (cargo ?cargo) (plane ?plane) (place ?place) (person ?person) (is-cargo-valid ?cargo) (at ?cargo ?place) (at ?plane ?place) (at ?person ?place) (belong-to ?cargo ?person) )
        :effect (and (is-loaded ?cargo ?plane))
    )
    
    (:action fly
        :parameters (?plane ?from ?to)
        :precondition (and (plane ?plane) (place ?from) (place ?to) (at ?plane ?from) )
        :effect (and 
                (at ?plane ?to) 
                (not (at ?plane ?from))
                )
    )
    
    (:action cargo-unload
        :parameters (?cargo ?plane ?place)
        :precondition (and (cargo ?cargo) (plane ?plane) (is-loaded ?cargo ?plane) (at ?plane ?place) )
        :effect (and 
                    (not (is-loaded ?cargo ?plane))
                    (at ?cargo ?place)
                    (not (at ?cargo ?place))
                )
    )
    
    (:action take_cargo_back
        :parameters (?from_person ?cargo ?to_person ?plane ?cargo_place)
        :precondition (and (person ?from_person) 
                            (cargo ?cargo) 
                            (place ?cargo_place) 
                            (belong-to ?cargo ?from_person) 
                            (cargo_from_to ?from_person ?to_person ?cargo) 
                            (not (is-loaded ?cargo ?plane)) 
                            (at ?cargo ?cargo_place) 
                            (at ?plane ?cargo_place)
                            (at ?to_person ?cargo_place)
                            )
        :effect (and
            (is_reached ?cargo)
            
        )
    )
    
)