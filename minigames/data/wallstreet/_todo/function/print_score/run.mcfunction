
tellraw @a[team=wallstreet] [{"text":"WALLSTREET > ","color":"yellow","bold":true,"italic":true},{"text":"Final player budget:","color":"gray","bold":false,"italic":false}]

function wallstreet:print_score/loop

tag @a[tag=wallstreet.max_score] remove wallstreet.max_score
tag @a[tag=wallstreet.score_printed] remove wallstreet.score_printed