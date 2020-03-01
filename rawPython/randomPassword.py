import random
import string

def randomString(stringLength=10):
    """Generate a random string of fixed length """
    letters = string.ascii_lowercase + string.ascii_uppercase
    return ''.join(random.choice(letters) for i in range(stringLength))


if __name__ == '__main__':
    while(1):
        space=input('Press space and enter if you want to continue:')
        if space == " ":
            print ("Random String is ", randomString() )
        else:
            print("Program end's here.")
            break