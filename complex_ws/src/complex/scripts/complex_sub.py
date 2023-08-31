#!/usr/bin/env python3

import rospy
from complex.msg import comp



def callBack(comp):
    rospy.loginfo("%.1f + %.1fj", comp.Real, comp.Imaginary)



def comp_sub():
    rospy.init_node('sub_complex', anonymous=True)
    rospy.Subscriber("complex", comp, callBack)
    rospy.spin()

if __name__ == "__main__":
    comp_sub()
