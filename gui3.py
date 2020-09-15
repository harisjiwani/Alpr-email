from tkinter import *
from tkinter import messagebox
top = Tk()
from tkinter import *
from PIL import Image
import tkinter.messagebox
import tkinter as tk
import os
from pywinauto.application import Application
top.title("Welcome to ANPR") 

C = Canvas(top, bg="blue", height=570, width=1200)

img1= PhotoImage(file=r"C:\xampp\htdocs\openalpr\gui\bg.png")
img2= PhotoImage(file=r"C:\xampp\htdocs\openalpr\gui\on.png")
img3= PhotoImage(file=r"C:\xampp\htdocs\openalpr\gui\off.png")
img4= PhotoImage(file=r"C:\xampp\htdocs\openalpr\gui\exit.png")


background_label = Label(top, image=img1)
background_label.place(x=0, y=0, relwidth=1, relheight=1)

#pyinstaller yourscript.py --noconsole

def anpr():
    #tkinter.messagebox.showinfo("Start App", "Press 'i' to start application")
    app = Application().start(r'C:\xampp\htdocs\openalpr\final.exe')
but1=Button(top,padx=4,pady=4, image=img2 ,font=('Times 16 bold'),command=anpr)
but1.place(x=300, y=300)
lab1=Label(top,text='Start',font=('Times 12 bold'))
lab1.place(x=390,y=520)

def anpr_exit():
    #tkinter.messagebox.showinfo("Start App", "Press 'i' to start application")
    #app = Application().stop('final.exe')
    pkill -f final.py
but2=Button(top,padx=4,pady=4, image=img3 ,font=('Times 16 bold'),command=anpr_exit)
but2.place(x=800, y=300)
lab2=Label(top,text='Stop',font=('Times 12 bold'))
lab2.place(x=890,y=520)

def exitt():
    tkinter.messagebox.showinfo("Exit", "Do you want to Exit")
    exit()
but9=Button(top,padx=4,pady=4,image=img4,fg='red',font=('Times 16 bold'),command=exitt)
but9.place(x=500, y=550)


C.pack()
top.mainloop()
