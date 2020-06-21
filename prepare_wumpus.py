# Ali Yunus Emre Özköse
# BBM405 HW-3
# wumpus problem pddl file preparing
# dynamic params: 
# 			w: cols
#			h: rows
# 
# IT IS NOT ANY WRAPPER. IT IS JUST PREPARING TEXTUAL INPUT FOR PDDL EDITOR
# ################## % ################## #

# reversed
w = 8
h = 8

print("(: objects")

for i in range(1, w+1):
    for j in range(1, h+1):
        print("sq-{}-{}".format(i, j), end=" ")
    print("")

for i in range(1, w):
    for j in range(1, h + 1):
        print("wumpus{}{}".format(i, j))
    print("")
print(")")

print("\n\n")

print("(:init")
print(";; side-by-side squares")
for i in range(1, w+1):
    for j in range(1, h):
        print("(adj sq-{}-{} sq-{}-{}) (adj sq-{}-{} sq-{}-{})".format(i, j, i, j+1, i, j+1, i, j))
    print("")

print(";; cross squares")
for i in range(1, w):
    for j in range(1, h + 1):
        print("(adj sq-{}-{} sq-{}-{}) (adj sq-{}-{} sq-{}-{})".format(i, j, i+1, j, i+1, j, i, j))
    print("")

print(";; wumpus squares")
for i in range(1, w+1):
    for j in range(1, h + 1):
        print("(is-wumpus wumpus{}{})".format(i, j))
        print("(at wumpus{}{} sq-{}-{})".format(i, j, i, j))
        print("(wumpus-in sq-{}-{})".format(i, j))
        print("")
    print("")

print(")")
