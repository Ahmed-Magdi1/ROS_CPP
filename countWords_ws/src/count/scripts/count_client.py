#!/usr/bin/env python3

import rospy
from count.srv import cont
import sys

def client():
    rospy.wait_for_service('word_count')
    try:
        rospy.init_node('client')
        word_counter = rospy.ServiceProxy('word_count', cont)
        words = ''.join(sys.argv[1:])
        words_count = word_counter(words)

        print(words, '->', words_count.count)
        return words_count

    except rospy.ServiceException as E:
        print("Service call failed: %s"%E)


if __name__=="__main__":
    client()