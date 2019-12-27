#lang racket

(require fandom-sheets
         meta-engine
         2htdp/image)

(define (easy-animated-sprite sheet r c n)
  (animated-sprite #:fps 12
                   (sheet->list sheet
                                #:rows r
                                #:cols c
                                #:row (- n 1))))

(define-syntax-rule (define-animated-sprite sheet r c n name)
  (begin
    (provide name)
    (define name (easy-animated-sprite sheet r c n))))

; HARRY POTTER
(define-animated-sprite harrypotter-sheet 1 18 1 harrypotter-sprite)
(define-animated-sprite snape-sheet 1 21 1 snape-sprite)
(define-animated-sprite tentacula-sheet 1 14 1 tentacula-sprite)
(define-animated-sprite hagrid-sheet 1 11 1 hagrid-sprite)
(define-animated-sprite oldwizard-sheet 1 6 1 oldwizard-sprite)
(define-animated-sprite pumpkin-sheet 1 8 1 pumpkin-sprite)

; MARIO
(define-animated-sprite princesspeach-sheet 1 2 1 princesspeach-sprite)
(define-animated-sprite toad-sheet 1 2 1 toad-sprite)
(define-animated-sprite luigi-sheet 1 2 1 luigi-sprite)
(define-animated-sprite mario-sheet 1 2 1 mario-sprite)
(define-animated-sprite yoshi-sheet 2 2 1 yoshi-sprite)
(define-animated-sprite yoshi-sheet 2 2 2 redyoshi-sprite)

; AVENGERS
(define-animated-sprite blackwidow-sheet 4 4 3 blackwidow-sprite)
(define-animated-sprite gamora-sheet 4 4 3 gamora-sprite)
(define-animated-sprite ironman-sheet 4 4 3 ironman-sprite)
(define-animated-sprite mandarin-sheet 4 4 3 mandarin-sprite)
(define-animated-sprite redskull-sheet 4 4 3 redskull-sprite)
(define-animated-sprite starlord-sheet 4 4 3 starlord-sprite)
(define-animated-sprite wintersoldier-sheet 4 4 3 wintersoldier-sprite)
(define-animated-sprite captainamerica-sheet 4 4 3 captainamerica-sprite)
(define-animated-sprite hawkeye-sheet 4 4 3 hawkeye-sprite)
(define-animated-sprite loki-sheet 4 4 3 loki-sprite)
(define-animated-sprite nebula-sheet 4 4 3 nebula-sprite)
(define-animated-sprite rocketracoon-sheet 4 4 3 rocketracoon-sprite)
(define-animated-sprite thor-sheet 4 4 3 thor-sprite)
(define-animated-sprite drax-sheet 4 4 3 drax-sprite)
(define-animated-sprite hulk-sheet 4 4 3 hulk-sprite)
(define-animated-sprite malekith-sheet 4 4 3 malekith-sprite)
(define-animated-sprite nickfury-sheet 4 4 3 nickfury-sprite)
(define-animated-sprite ronan-sheet 4 4 3 ronan-sprite)
(define-animated-sprite tonystark-sheet 4 4 3 tonystark-sprite)
(define-animated-sprite ironpatriot-sheet 4 4 3 ironpatriot-sprite)

; MINECRAFT
(define-animated-sprite steve-sheet 1 2 1 steve-sprite)
(define-animated-sprite alex-sheet 1 2 1 alex-sprite)
(define-animated-sprite (scale .75 creeper-sheet) 1 4 1 creeper-sprite)
(define-animated-sprite chicken-sheet 1 4 1 chicken-sprite)
(define-animated-sprite pig-sheet 1 4 1 pig-sprite)
(define-animated-sprite sheep-sheet 1 4 1 sheep-sprite)
(define-animated-sprite (scale .75 skeleton-sheet) 1 4 1 skeleton-sprite)
(define-animated-sprite ghast-sheet 1 4 1 ghast-sprite)

; POKEMON
(define-animated-sprite armoredmewtwo-sheet 4 4 3 armoredmewtwo-sprite)
(define-animated-sprite pikachu-sheet 1 4 1 pikachu-sprite)
(define-animated-sprite pikachurun-sheet 1 4 1 pikachurun-sprite)
(define-animated-sprite jessie-sheet 4 4 3 jessie-sprite)
(define-animated-sprite james-sheet 4 4 3 james-sprite)
(define-animated-sprite redboy-sheet 4 4 3 redboy-sprite)
(define-animated-sprite redgirl-sheet 4 4 3 redgirl-sprite)
(define-animated-sprite greenboy-sheet 4 4 3 greenboy-sprite)
(define-animated-sprite greengirl-sheet 4 4 3 greengirl-sprite)
(define-animated-sprite bulbasaur-sheet 1 5 1 bulbasaur-sprite)
(define-animated-sprite ivysaur-sheet 1 6 1 ivysaur-sprite)
(define-animated-sprite venusaur-sheet 1 5 1 venasaur-sprite)
(define-animated-sprite squirtle-sheet 1 6 1 squirtle-sprite)
(define-animated-sprite wartortle-sheet 1 8 1 wartortle-sprite)
(define-animated-sprite blastoise-sheet 1 8 1 blastoise-sprite)
(define-animated-sprite charmander-sheet 1 5 1 charmander-sprite)
(define-animated-sprite charmeleon-sheet 1 8 1 charmelon-sprite)
(define-animated-sprite charizard-sheet 1 8 1 charizard-sprite)