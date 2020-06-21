(define (problem wumpus-c-4)
    (:domain wumpus-c)
    (:objects 
        sq-1-1 sq-1-2 sq-1-3 sq-1-4 sq-1-5 sq-1-6 sq-1-7 sq-1-8 
        sq-2-1 sq-2-2 sq-2-3 sq-2-4 sq-2-5 sq-2-6 sq-2-7 sq-2-8 
        sq-3-1 sq-3-2 sq-3-3 sq-3-4 sq-3-5 sq-3-6 sq-3-7 sq-3-8 
        sq-4-1 sq-4-2 sq-4-3 sq-4-4 sq-4-5 sq-4-6 sq-4-7 sq-4-8 
        sq-5-1 sq-5-2 sq-5-3 sq-5-4 sq-5-5 sq-5-6 sq-5-7 sq-5-8 
        sq-6-1 sq-6-2 sq-6-3 sq-6-4 sq-6-5 sq-6-6 sq-6-7 sq-6-8 
        sq-7-1 sq-7-2 sq-7-3 sq-7-4 sq-7-5 sq-7-6 sq-7-7 sq-7-8 
        sq-8-1 sq-8-2 sq-8-3 sq-8-4 sq-8-5 sq-8-6 sq-8-7 sq-8-8 
	    
	    the-gold 
	    the-arrow
	    the-arrow1
	    the-arrow2
	    the-arrow3
	    the-arrow4
	    the-arrow5
	    the-arrow6
	    the-arrow7
	    the-arrow8
	    the-arrow9
	    the-arrow10
	    
	    
	    agent 
	    
	    wumpus12
        wumpus13
        wumpus14
        wumpus15
        wumpus16
        wumpus17
        wumpus18
        
        wumpus21
        wumpus22
        wumpus23
        wumpus24
        wumpus25
        wumpus26
        wumpus27
        wumpus28
        
        wumpus31
        wumpus32
        wumpus33
        wumpus34
        wumpus35
        wumpus36
        wumpus37
        wumpus38
        
        wumpus41
        wumpus42
        wumpus43
        wumpus44
        wumpus45
        wumpus46
        wumpus47
        wumpus48
        
        wumpus51
        wumpus52
        wumpus53
        wumpus54
        wumpus55
        wumpus56
        wumpus57
        wumpus58
        
        wumpus61
        wumpus62
        wumpus63
        wumpus64
        wumpus65
        wumpus66
        wumpus67
        wumpus68
        
        wumpus71
        wumpus72
        wumpus73
        wumpus74
        wumpus75
        wumpus76
        wumpus77
        wumpus78
        
        wumpus81
        wumpus82
        wumpus83
        wumpus84
        wumpus85
        wumpus86
        wumpus87
        wumpus88
	    )
    
    (:init 
        ;; side-by-side squares
        (adj sq-1-1 sq-1-2) (adj sq-1-2 sq-1-1)
        (adj sq-1-2 sq-1-3) (adj sq-1-3 sq-1-2)
        (adj sq-1-3 sq-1-4) (adj sq-1-4 sq-1-3)
        (adj sq-1-4 sq-1-5) (adj sq-1-5 sq-1-4)
        (adj sq-1-5 sq-1-6) (adj sq-1-6 sq-1-5)
        (adj sq-1-6 sq-1-7) (adj sq-1-7 sq-1-6)
        (adj sq-1-7 sq-1-8) (adj sq-1-8 sq-1-7)
        
        (adj sq-2-1 sq-2-2) (adj sq-2-2 sq-2-1)
        (adj sq-2-2 sq-2-3) (adj sq-2-3 sq-2-2)
        (adj sq-2-3 sq-2-4) (adj sq-2-4 sq-2-3)
        (adj sq-2-4 sq-2-5) (adj sq-2-5 sq-2-4)
        (adj sq-2-5 sq-2-6) (adj sq-2-6 sq-2-5)
        (adj sq-2-6 sq-2-7) (adj sq-2-7 sq-2-6)
        (adj sq-2-7 sq-2-8) (adj sq-2-8 sq-2-7)
        
        (adj sq-3-1 sq-3-2) (adj sq-3-2 sq-3-1)
        (adj sq-3-2 sq-3-3) (adj sq-3-3 sq-3-2)
        (adj sq-3-3 sq-3-4) (adj sq-3-4 sq-3-3)
        (adj sq-3-4 sq-3-5) (adj sq-3-5 sq-3-4)
        (adj sq-3-5 sq-3-6) (adj sq-3-6 sq-3-5)
        (adj sq-3-6 sq-3-7) (adj sq-3-7 sq-3-6)
        (adj sq-3-7 sq-3-8) (adj sq-3-8 sq-3-7)
        
        (adj sq-4-1 sq-4-2) (adj sq-4-2 sq-4-1)
        (adj sq-4-2 sq-4-3) (adj sq-4-3 sq-4-2)
        (adj sq-4-3 sq-4-4) (adj sq-4-4 sq-4-3)
        (adj sq-4-4 sq-4-5) (adj sq-4-5 sq-4-4)
        (adj sq-4-5 sq-4-6) (adj sq-4-6 sq-4-5)
        (adj sq-4-6 sq-4-7) (adj sq-4-7 sq-4-6)
        (adj sq-4-7 sq-4-8) (adj sq-4-8 sq-4-7)
        
        (adj sq-5-1 sq-5-2) (adj sq-5-2 sq-5-1)
        (adj sq-5-2 sq-5-3) (adj sq-5-3 sq-5-2)
        (adj sq-5-3 sq-5-4) (adj sq-5-4 sq-5-3)
        (adj sq-5-4 sq-5-5) (adj sq-5-5 sq-5-4)
        (adj sq-5-5 sq-5-6) (adj sq-5-6 sq-5-5)
        (adj sq-5-6 sq-5-7) (adj sq-5-7 sq-5-6)
        (adj sq-5-7 sq-5-8) (adj sq-5-8 sq-5-7)
        
        (adj sq-6-1 sq-6-2) (adj sq-6-2 sq-6-1)
        (adj sq-6-2 sq-6-3) (adj sq-6-3 sq-6-2)
        (adj sq-6-3 sq-6-4) (adj sq-6-4 sq-6-3)
        (adj sq-6-4 sq-6-5) (adj sq-6-5 sq-6-4)
        (adj sq-6-5 sq-6-6) (adj sq-6-6 sq-6-5)
        (adj sq-6-6 sq-6-7) (adj sq-6-7 sq-6-6)
        (adj sq-6-7 sq-6-8) (adj sq-6-8 sq-6-7)
        
        (adj sq-7-1 sq-7-2) (adj sq-7-2 sq-7-1)
        (adj sq-7-2 sq-7-3) (adj sq-7-3 sq-7-2)
        (adj sq-7-3 sq-7-4) (adj sq-7-4 sq-7-3)
        (adj sq-7-4 sq-7-5) (adj sq-7-5 sq-7-4)
        (adj sq-7-5 sq-7-6) (adj sq-7-6 sq-7-5)
        (adj sq-7-6 sq-7-7) (adj sq-7-7 sq-7-6)
        (adj sq-7-7 sq-7-8) (adj sq-7-8 sq-7-7)
        
        (adj sq-8-1 sq-8-2) (adj sq-8-2 sq-8-1)
        (adj sq-8-2 sq-8-3) (adj sq-8-3 sq-8-2)
        (adj sq-8-3 sq-8-4) (adj sq-8-4 sq-8-3)
        (adj sq-8-4 sq-8-5) (adj sq-8-5 sq-8-4)
        (adj sq-8-5 sq-8-6) (adj sq-8-6 sq-8-5)
        (adj sq-8-6 sq-8-7) (adj sq-8-7 sq-8-6)
        (adj sq-8-7 sq-8-8) (adj sq-8-8 sq-8-7)
        
        ;; cross squares
        (adj sq-1-1 sq-2-1) (adj sq-2-1 sq-1-1)
        (adj sq-1-2 sq-2-2) (adj sq-2-2 sq-1-2)
        (adj sq-1-3 sq-2-3) (adj sq-2-3 sq-1-3)
        (adj sq-1-4 sq-2-4) (adj sq-2-4 sq-1-4)
        (adj sq-1-5 sq-2-5) (adj sq-2-5 sq-1-5)
        (adj sq-1-6 sq-2-6) (adj sq-2-6 sq-1-6)
        (adj sq-1-7 sq-2-7) (adj sq-2-7 sq-1-7)
        (adj sq-1-8 sq-2-8) (adj sq-2-8 sq-1-8)
        
        (adj sq-2-1 sq-3-1) (adj sq-3-1 sq-2-1)
        (adj sq-2-2 sq-3-2) (adj sq-3-2 sq-2-2)
        (adj sq-2-3 sq-3-3) (adj sq-3-3 sq-2-3)
        (adj sq-2-4 sq-3-4) (adj sq-3-4 sq-2-4)
        (adj sq-2-5 sq-3-5) (adj sq-3-5 sq-2-5)
        (adj sq-2-6 sq-3-6) (adj sq-3-6 sq-2-6)
        (adj sq-2-7 sq-3-7) (adj sq-3-7 sq-2-7)
        (adj sq-2-8 sq-3-8) (adj sq-3-8 sq-2-8)
        
        (adj sq-3-1 sq-4-1) (adj sq-4-1 sq-3-1)
        (adj sq-3-2 sq-4-2) (adj sq-4-2 sq-3-2)
        (adj sq-3-3 sq-4-3) (adj sq-4-3 sq-3-3)
        (adj sq-3-4 sq-4-4) (adj sq-4-4 sq-3-4)
        (adj sq-3-5 sq-4-5) (adj sq-4-5 sq-3-5)
        (adj sq-3-6 sq-4-6) (adj sq-4-6 sq-3-6)
        (adj sq-3-7 sq-4-7) (adj sq-4-7 sq-3-7)
        (adj sq-3-8 sq-4-8) (adj sq-4-8 sq-3-8)
        
        (adj sq-4-1 sq-5-1) (adj sq-5-1 sq-4-1)
        (adj sq-4-2 sq-5-2) (adj sq-5-2 sq-4-2)
        (adj sq-4-3 sq-5-3) (adj sq-5-3 sq-4-3)
        (adj sq-4-4 sq-5-4) (adj sq-5-4 sq-4-4)
        (adj sq-4-5 sq-5-5) (adj sq-5-5 sq-4-5)
        (adj sq-4-6 sq-5-6) (adj sq-5-6 sq-4-6)
        (adj sq-4-7 sq-5-7) (adj sq-5-7 sq-4-7)
        (adj sq-4-8 sq-5-8) (adj sq-5-8 sq-4-8)
        
        (adj sq-5-1 sq-6-1) (adj sq-6-1 sq-5-1)
        (adj sq-5-2 sq-6-2) (adj sq-6-2 sq-5-2)
        (adj sq-5-3 sq-6-3) (adj sq-6-3 sq-5-3)
        (adj sq-5-4 sq-6-4) (adj sq-6-4 sq-5-4)
        (adj sq-5-5 sq-6-5) (adj sq-6-5 sq-5-5)
        (adj sq-5-6 sq-6-6) (adj sq-6-6 sq-5-6)
        (adj sq-5-7 sq-6-7) (adj sq-6-7 sq-5-7)
        (adj sq-5-8 sq-6-8) (adj sq-6-8 sq-5-8)
        
        (adj sq-6-1 sq-7-1) (adj sq-7-1 sq-6-1)
        (adj sq-6-2 sq-7-2) (adj sq-7-2 sq-6-2)
        (adj sq-6-3 sq-7-3) (adj sq-7-3 sq-6-3)
        (adj sq-6-4 sq-7-4) (adj sq-7-4 sq-6-4)
        (adj sq-6-5 sq-7-5) (adj sq-7-5 sq-6-5)
        (adj sq-6-6 sq-7-6) (adj sq-7-6 sq-6-6)
        (adj sq-6-7 sq-7-7) (adj sq-7-7 sq-6-7)
        (adj sq-6-8 sq-7-8) (adj sq-7-8 sq-6-8)
        
        (adj sq-7-1 sq-8-1) (adj sq-8-1 sq-7-1)
        (adj sq-7-2 sq-8-2) (adj sq-8-2 sq-7-2)
        (adj sq-7-3 sq-8-3) (adj sq-8-3 sq-7-3)
        (adj sq-7-4 sq-8-4) (adj sq-8-4 sq-7-4)
        (adj sq-7-5 sq-8-5) (adj sq-8-5 sq-7-5)
        (adj sq-7-6 sq-8-6) (adj sq-8-6 sq-7-6)
        (adj sq-7-7 sq-8-7) (adj sq-8-7 sq-7-7)
        (adj sq-7-8 sq-8-8) (adj sq-8-8 sq-7-8)
        
        
        ;; pit-gold-wumpus-agent
        (is-agent agent)
        (at agent sq-1-1)
        
        (is-arrow the-arrow)
        (have agent the-arrow)

        (is-arrow the-arrow1)
        (have agent the-arrow1)

        (is-arrow the-arrow2)
        (have agent the-arrow2)

        (is-arrow the-arrow3)
        (have agent the-arrow3)

        
        (is-arrow the-arrow4)
        (have agent the-arrow4)

        (is-arrow the-arrow5)
        (have agent the-arrow5)

        (is-arrow the-arrow6)
        (have agent the-arrow6)
        
        (is-arrow the-arrow7)
        (have agent the-arrow7)
        
        (is-arrow the-arrow8)
        (have agent the-arrow8)
        
        (is-arrow the-arrow9)
        (have agent the-arrow9)
        
        (is-arrow the-arrow10)
        (have agent the-arrow10)
        
        ;;(pit sq-1-2)
        
        ;; wumpus squares
        (is-wumpus wumpus12)
        (at wumpus12 sq-1-2)
        (wumpus-in sq-1-2)
        
        (is-wumpus wumpus13)
        (at wumpus13 sq-1-3)
        (wumpus-in sq-1-3)
        
        (is-wumpus wumpus14)
        (at wumpus14 sq-1-4)
        (wumpus-in sq-1-4)
        
        (is-wumpus wumpus15)
        (at wumpus15 sq-1-5)
        (wumpus-in sq-1-5)
        
        (is-wumpus wumpus16)
        (at wumpus16 sq-1-6)
        (wumpus-in sq-1-6)
        
        (is-wumpus wumpus17)
        (at wumpus17 sq-1-7)
        (wumpus-in sq-1-7)
        
        (is-wumpus wumpus18)
        (at wumpus18 sq-1-8)
        (wumpus-in sq-1-8)
        
        
        (is-wumpus wumpus21)
        (at wumpus21 sq-2-1)
        (wumpus-in sq-2-1)
        
        (is-wumpus wumpus22)
        (at wumpus22 sq-2-2)
        (wumpus-in sq-2-2)
        
        (is-wumpus wumpus23)
        (at wumpus23 sq-2-3)
        (wumpus-in sq-2-3)
        
        (is-wumpus wumpus24)
        (at wumpus24 sq-2-4)
        (wumpus-in sq-2-4)
        
        (is-wumpus wumpus25)
        (at wumpus25 sq-2-5)
        (wumpus-in sq-2-5)
        
        (is-wumpus wumpus26)
        (at wumpus26 sq-2-6)
        (wumpus-in sq-2-6)
        
        (is-wumpus wumpus27)
        (at wumpus27 sq-2-7)
        (wumpus-in sq-2-7)
        
        (is-wumpus wumpus28)
        (at wumpus28 sq-2-8)
        (wumpus-in sq-2-8)
        
        
        (is-wumpus wumpus31)
        (at wumpus31 sq-3-1)
        (wumpus-in sq-3-1)
        
        (is-wumpus wumpus32)
        (at wumpus32 sq-3-2)
        (wumpus-in sq-3-2)
        
        (is-wumpus wumpus33)
        (at wumpus33 sq-3-3)
        (wumpus-in sq-3-3)
        
        (is-wumpus wumpus34)
        (at wumpus34 sq-3-4)
        (wumpus-in sq-3-4)
        
        (is-wumpus wumpus35)
        (at wumpus35 sq-3-5)
        (wumpus-in sq-3-5)
        
        (is-wumpus wumpus36)
        (at wumpus36 sq-3-6)
        (wumpus-in sq-3-6)
        
        (is-wumpus wumpus37)
        (at wumpus37 sq-3-7)
        (wumpus-in sq-3-7)
        
        (is-wumpus wumpus38)
        (at wumpus38 sq-3-8)
        (wumpus-in sq-3-8)
        
        
        (is-wumpus wumpus41)
        (at wumpus41 sq-4-1)
        (wumpus-in sq-4-1)
        
        (is-wumpus wumpus42)
        (at wumpus42 sq-4-2)
        (wumpus-in sq-4-2)
        
        (is-wumpus wumpus43)
        (at wumpus43 sq-4-3)
        (wumpus-in sq-4-3)
        
        (is-wumpus wumpus44)
        (at wumpus44 sq-4-4)
        (wumpus-in sq-4-4)
        
        (is-wumpus wumpus45)
        (at wumpus45 sq-4-5)
        (wumpus-in sq-4-5)
        
        (is-wumpus wumpus46)
        (at wumpus46 sq-4-6)
        (wumpus-in sq-4-6)
        
        (is-wumpus wumpus47)
        (at wumpus47 sq-4-7)
        (wumpus-in sq-4-7)
        
        (is-wumpus wumpus48)
        (at wumpus48 sq-4-8)
        (wumpus-in sq-4-8)
        
        
        (is-wumpus wumpus51)
        (at wumpus51 sq-5-1)
        (wumpus-in sq-5-1)
        
        (is-wumpus wumpus52)
        (at wumpus52 sq-5-2)
        (wumpus-in sq-5-2)
        
        (is-wumpus wumpus53)
        (at wumpus53 sq-5-3)
        (wumpus-in sq-5-3)
        
        (is-wumpus wumpus54)
        (at wumpus54 sq-5-4)
        (wumpus-in sq-5-4)
        
        (is-wumpus wumpus55)
        (at wumpus55 sq-5-5)
        (wumpus-in sq-5-5)
        
        (is-wumpus wumpus56)
        (at wumpus56 sq-5-6)
        (wumpus-in sq-5-6)
        
        (is-wumpus wumpus57)
        (at wumpus57 sq-5-7)
        (wumpus-in sq-5-7)
        
        (is-wumpus wumpus58)
        (at wumpus58 sq-5-8)
        (wumpus-in sq-5-8)
        
        
        (is-wumpus wumpus61)
        (at wumpus61 sq-6-1)
        (wumpus-in sq-6-1)
        
        (is-wumpus wumpus62)
        (at wumpus62 sq-6-2)
        (wumpus-in sq-6-2)
        
        (is-wumpus wumpus63)
        (at wumpus63 sq-6-3)
        (wumpus-in sq-6-3)
        
        (is-wumpus wumpus64)
        (at wumpus64 sq-6-4)
        (wumpus-in sq-6-4)
        
        (is-wumpus wumpus65)
        (at wumpus65 sq-6-5)
        (wumpus-in sq-6-5)
        
        (is-wumpus wumpus66)
        (at wumpus66 sq-6-6)
        (wumpus-in sq-6-6)
        
        (is-wumpus wumpus67)
        (at wumpus67 sq-6-7)
        (wumpus-in sq-6-7)
        
        (is-wumpus wumpus68)
        (at wumpus68 sq-6-8)
        (wumpus-in sq-6-8)
        
        (is-wumpus wumpus71)
        (at wumpus71 sq-7-1)
        (wumpus-in sq-7-1)
        
        (is-wumpus wumpus72)
        (at wumpus72 sq-7-2)
        (wumpus-in sq-7-2)
        
        (is-wumpus wumpus73)
        (at wumpus73 sq-7-3)
        (wumpus-in sq-7-3)
        
        (is-wumpus wumpus74)
        (at wumpus74 sq-7-4)
        (wumpus-in sq-7-4)
        
        (is-wumpus wumpus75)
        (at wumpus75 sq-7-5)
        (wumpus-in sq-7-5)
        
        (is-wumpus wumpus76)
        (at wumpus76 sq-7-6)
        (wumpus-in sq-7-6)
        
        (is-wumpus wumpus77)
        (at wumpus77 sq-7-7)
        (wumpus-in sq-7-7)
        
        (is-wumpus wumpus78)
        (at wumpus78 sq-7-8)
        (wumpus-in sq-7-8)
        
        (is-wumpus wumpus81)
        (at wumpus81 sq-8-1)
        (wumpus-in sq-8-1)
        
        (is-wumpus wumpus82)
        (at wumpus82 sq-8-2)
        (wumpus-in sq-8-2)
        
        (is-wumpus wumpus83)
        (at wumpus83 sq-8-3)
        (wumpus-in sq-8-3)
        
        (is-wumpus wumpus84)
        (at wumpus84 sq-8-4)
        (wumpus-in sq-8-4)
        
        (is-wumpus wumpus85)
        (at wumpus85 sq-8-5)
        (wumpus-in sq-8-5)




        (is-gold the-gold)
        (at the-gold sq-8-8)
    )
    
    
    (:goal (and 
            (have agent the-gold) 
            (at agent sq-1-1)
            )
    )
)