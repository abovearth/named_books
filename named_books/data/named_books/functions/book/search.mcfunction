# function named_books:book/search
execute store result storage named_books:book check bool 1 run data modify storage named_books:book data.Enchantments[0].id set from storage named_books:book raw.id
execute if data storage named_books:book {check:true} data remove storage named_books:book data.Enchantments[0]
execute if data storage named_books:book {check:true} run function named_books:book/search