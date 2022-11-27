# function named_books:book/search
execute store result storage named_books:book check int 1 run data modify storage named_books:book data.Enchantments[0].id set from storage named_books:book raw.id
execute if data storage named_books:book {check:1} run data remove storage named_books:book data.Enchantments[0]
execute if data storage named_books:book {check:1} run function named_books:book/search