#!/usr/bin/env python3

import rospy
from complex.msg import comp
import random


def com_pub():
    rospy.init_node('pub_complex', anonymous=True)
    pub = rospy.Publisher("complex", comp, queue_size=1)
    inp_complex = comp()
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        inp_complex.Real = round(random.random() * 50,1)
        inp_complex.Imaginary = round(random.random() * 50,1)

        pub.publish(inp_complex)
        rate.sleep()

if __name__=="__main__":
    try:
        com_pub()
    except rospy.ROSInterruptException:
        pass
    
    
    

