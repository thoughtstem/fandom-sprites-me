#lang racket

(require fandom-sheets
         meta-engine
         2htdp/image)

(provide all-sprites
         harrypotter
         mario
         marvel
         starwars
         minecraft
         pokemon)

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

;Star Wars
(define-animated-sprite twilek-sheet 4 4 3 twilek-sprite)
(define-animated-sprite darthmaul-sheet 4 4 3 darthmaul-sprite)
(define-animated-sprite darthvader-sheet 4 4 3 darthvader-sprite)
(define-animated-sprite bobafett-sheet 4 4 3 bobafett-sprite)
(define-animated-sprite hansolo-sheet 4 4 3 hansolo-sprite)
(define-animated-sprite luke-sheet 4 4 3 luke-sprite)
(define-animated-sprite obiwan-sheet 4 4 3 obiwan-sprite)
(define-animated-sprite padawan-sheet 4 4 3 padawan-sprite)
(define-animated-sprite princessleia-sheet 4 4 3 princessleia-sprite)
(define-animated-sprite yoda-sheet 4 4 3 yoda-sprite)
(define-animated-sprite r2d2-sheet 4 4 3 r2d2-sprite)
(define-animated-sprite stormtrooper-sheet 4 4 3 stormtrooper-sprite)
(define-animated-sprite c2po-sheet 4 4 3 c2po-sprite)
(define-animated-sprite c3po-sheet 4 4 3 c3po-sprite)
(define-animated-sprite chewie-sheet 4 4 3 chewie-sprite)
(define-animated-sprite lando-sheet 4 4 3 lando-sprite)
(define-animated-sprite rebelpilot-sheet 4 4 3 rebelpilot-sprite)

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


(define harrypotter
  (list "harrypotter-sprite"
        "flyingbook-sprite"
        "pumpkin-sprite"
        "magiccauldron-sprite"
        "snape-sprite"
        "tentacula-sprite"
        "hagrid-sprite"
        "oldwizard-sprite"))

(define mario
  (list "princesspeach-sprite"
        "toad-sprite"
        "luigi-sprite"
        "mario-sprite"
        "yoshi-sprite"
        "redyoshi-sprite"))

(define marvel
  (list "blackwidow-sprite"
        "gamora-sprite"
        "ironman-sprite"
        "mandarin-sprite"
        "redskull-sprite"
        "starlord-sprite"
        "wintersoldier-sprite"
        "captainamerica-sprite"
        "hawkeye-sprite"
        "loki-sprite"
        "nebula-sprite"
        "rocketracoon-sprite"
        "thor-sprite"
        "drax-sprite"
        "hulk-sprite"
        "malekith-sprite"
        "nickfury-sprite"
        "ronan-sprite"
        "tonystark-sprite"
        "ironpatriot-sprite"))

(define starwars
  (list "twilek-sprite"
        "darthmaul-sprite"
        "darthvader-sprite"
        "bobafett-sprite"
        "hansolo-sprite"
        "luke-sprite"
        "obiwan-sprite"
        "padawan-sprite"
        "princessleia-sprite"
        "yoda-sprite"
        "r2d2-sprite"
        "stormtrooper-sprite"
        "c2po-sprite"
        "c3po-sprite"
        "chewie-sprite"
        "lando-sprite"
        "rebelpilot-sprite"))


(define minecraft
  (list "steve-sprite"
        "alex-sprite"
        "creeper-sprite"
        "chicken-sprite"
        "pig-sprite"
        "sheep-sprite"
        "skeleton-sprite"
        "ghast-sprite"))

(define pokemon
  (list "armoredmewtwo-sprite"
        "pikachu-sprite"
        "pikachurun-sprite"
        "jessie-sprite"
        "james-sprite"
        "redboy-sprite"
        "redgirl-sprite"
        "greenboy-sprite"
        "greengirl-sprite"
        "bulbasaur-sprite"
        "ivysaur-sprite"
        "venasaur-sprite"
        "squirtle-sprite"
        "wartortle-sprite"
        "blastoise-sprite"
        "charmander-sprite"
        "charmelon-sprite"
        "charizard-sprite"))


(define all-sprites
  (append harrypotter
          mario
          marvel
          starwars
          minecraft
          pokemon))