#!/usr/bin/python

import Tkinter
import sys
import os
sys.path.append(os.environ['CODE_BASE']+"/catkin_ws/src/apc_planning/src/")

import rospy
import tf
import numpy as np
import gripper, spatula
import goToHome
from subprocess import call
import lasers
import grasp_proposal_publisher

rospy.init_node('gui', anonymous=True)

top = Tkinter.Tk()

def goarc():
    goToHome.goToARC(slowDown = True)
    
def testcam():
    call('rosrun realsense_camera testcam.py')
    
def reset_gripper():
    gripper.open()
    spatula.open()
    
def start_lasers0():
    lasers.start(0)
    
def stop_lasers0():
    lasers.stop(0)
    
def start_lasers1():
    lasers.start(1)
    
def stop_lasers1():
    lasers.stop(1)
    
def test_passive():
    #~ pass
    grasp_proposal_publisher.visualize_passive()
    #~ call('rosrun apc_planning grasp_proposal_publisher.py ')
    
    

A1 = Tkinter.Button(top, text = 'start lasers 0', command = start_lasers0)
A1.pack()  
A2 = Tkinter.Button(top, text = 'stop lasers 0', command = stop_lasers0)
A2.pack()  
A3 = Tkinter.Button(top, text = 'start lasers 1', command = start_lasers1)
A3.pack()  
A4 = Tkinter.Button(top, text = 'stop lasers 1', command = stop_lasers1)
A4.pack()  
B1 = Tkinter.Button(top, text = 'gripper close', command = gripper.close)
B1.pack()
B2 = Tkinter.Button(top, text = 'gripper open', command = gripper.open)
B2.pack()
B3 = Tkinter.Button(top, text = 'spatula close', command = spatula.close)
B3.pack()
B4 = Tkinter.Button(top, text = 'spatula open', command = spatula.open)
B4.pack()
C1 = Tkinter.Button(top, text = 'test passive vision', command = test_passive)
C1.pack()


top.mainloop()
#rospy.spin()
