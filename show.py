from pyh import *

page = PyH('Code visualization')
page.addCSS('./assert/css/main.css')
page.addJS('./bower_components/jquery/dist/jquery.min.js')
page.addJS('./assert/js/main.js')
page << div('title', id='title')
code = page << div(id='code')
code << 'test' 
code.attributes['correlation'] = 50
code << div('green', cl='green')
code << div('green-red', cl='green-red')
code << div('red', cl='red')
code << div('red-green', cl='red-green')
page.printOut()
