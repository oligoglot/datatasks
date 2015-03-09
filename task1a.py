array = [['a','b','c'],['d','e','f']]
# this works for any two-level list
for sub in array:
    for e in sub:
        print e

'''
Here's another way which works just for this specific array.
print '\n'.join(array[0])
print '\n'.join(array[1])
'''

