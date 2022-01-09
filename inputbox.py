import tkinter as tk
import os
import sys

#if os.environ.get('DISPLAY','') == '':
#    print('no display found. Using :0.0')
#    os.environ.__setitem__('DISPLAY', ':0.0')

root= tk.Tk()
canvas1= tk.Canvas(root, width =400, height =300, relief = 'raised' )
canvas1.pack()

tk.Label = tk.Label(root, text='Calculate the Square Root')
label1=tk.Label.config(font=('helvetica', 14))
canvas1.create_window(200,25, window=label1)



