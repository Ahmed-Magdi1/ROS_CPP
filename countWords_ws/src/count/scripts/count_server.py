#!/usr/bin/env python3

import rospy 
from count.srv import cont,contResponse


def count_words(request):
    more = len(request.words.split())
    print('Returning : %s --> %s' %(request.words, more))
    rospy.sleep(5)
    print('Ready to count words')

    return contResponse(more)

def counter():
    rospy.init_node('server')
    rospy.Service('word_count', cont, count_words)
    print('Ready to count words')
    rospy.spin()

if __name__=="__main__":
    counter()