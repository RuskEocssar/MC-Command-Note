### 視線先ブロック探査 functionループ型 1m
# 1mおきに移動してブロックの有無を確認

## 探査
# 角8方向に探査点を伸ばしてチェック
scoreboard players set #02:1 _ 1
execute if block ~0.5 ~0.5 ~0.5 #221_block_exploration01:through if block ~0.5 ~0.5 ~-0.5 #221_block_exploration01:through if block ~0.5 ~-0.5 ~0.5 #221_block_exploration01:through if block ~0.5 ~-0.5 ~-0.5 #221_block_exploration01:through if block ~-0.5 ~0.5 ~0.5 #221_block_exploration01:through if block ~-0.5 ~0.5 ~-0.5 #221_block_exploration01:through if block ~-0.5 ~-0.5 ~0.5 #221_block_exploration01:through if block ~-0.5 ~-0.5 ~-0.5 #221_block_exploration01:through run scoreboard players set #02:1 _ 0
# ブロックがあったらさらに細かくチェック
execute if score #02:1 _ matches 1 positioned ^ ^ ^-0.25 run function 221_block_exploration01:05
execute if score #02:1 _ matches 1 positioned ^ ^ ^0.25 run function 221_block_exploration01:05

## ループ
# ブロックがなかったら1m先に進む
scoreboard players remove #02:loop _ 1
execute if score #02:loop _ matches 1.. positioned ^ ^ ^1 run function 221_block_exploration01:1