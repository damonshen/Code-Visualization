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
original = page << div(id='original')

#read the code from the csv file
'''
f = open('./test.csv', 'r')
for row in csv.reader(f):
    api = page << div()
    api << row[0]
    api.attributes['correlation'] = row[1]
'''
#COR_FILE_PATH = raw_input('The path of correlation file : ')
#ORIGIN_PATH = COR_FILE_PATH.replace('result/correlation', 'testFile', 1).replace('/src', '', 1)

content = open('/home/damon/Desktop/result/correlation/aaspring-transl/src/src/com/aaspring/util/file/ZipFileEntryAccessor-unPackZipIntoTmpPath').read()
#content = open(COR_FILE_PATH).read()

for row in content.split('\n'):
    if row != '':
        attr = row.split(';')
        api = code << div()
        api << attr[0]
        api.attributes['correlation'] = attr[1]

'''
originalContent = open(ORIGIN_PATH).read()
for row in content.split('\n'):
    line = code << div()   
    line << row
'''

page.printOut()
