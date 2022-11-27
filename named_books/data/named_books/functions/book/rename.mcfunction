# named_books:book/rename function (as item_frame)
data modify storage named_books:book raw.id set from entity @s Item.tag.Enchantments[0].id
data modify storage named_books:book data set from storage named_books:book backup
function named_books:book/search
item modify entity @s container.0 named_books:set_translate