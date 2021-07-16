from django.test import TestCase

# Create your tests here.


# 引用相同的内存地址
play = [1, 2, 3]
play1 = play
play.append(4)

# print(play)
# print(play1)


lay = [1, 2, 3]
lay1 = lay[:]
lay.append(4)
print(lay)
print(lay1)

