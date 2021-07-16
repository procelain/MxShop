from django.test import TestCase


# Create your tests here.

def LoveYou(n):
    li = range(n)
    if n > 1:
        LoveYou(n - 1)
    print('I Love You %d', n)


LoveYou(10)
