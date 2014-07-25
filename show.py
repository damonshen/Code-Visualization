from pyh import *
import csv

#add the link and js in the header
page = PyH('Code visualization')
page.addCSS('./bower_components/jquery-ui/themes/smoothness/jquery-ui.min.css')
page.addCSS('./assert/css/main.css')
page.addJS('./bower_components/jquery/dist/jquery.min.js')
page.addJS('./bower_components/jquery-ui/jquery-ui.min.js')
page.addJS('./assert/js/main.js')
page << div(id='slider')
page << input(id='amount', type='text')
page << div('title', id='title')
code = page << div(id='code')
code << 'test' 
code.attributes['correlation'] = 50


#read the code from the csv file
f = open('./test.csv', 'r')
for row in csv.reader(f):
    api = page << div()
    api << row[0]
    api.attributes['correlation'] = row[1]
code << div('green', cl='green')
code << div('green-red', cl='green-red')
code << div('red', cl='red')
code << div('red-green', cl='red-green')
page.printOut()
