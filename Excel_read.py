import selenium
from xlrd import open_workbook
from  selenium import webdriver
from selenium.webdriver.chrome.options import Options
from datetime import datetime
def read_Mastersheet(Sheetname):
    book=open_workbook(r'C:/Users/creddy6/Software/Python/Python37/Data/MasterSheet.xls')
    sheet = book.sheet_by_name(Sheetname)
    first_row = []
    for col in range(sheet.ncols):
       first_row.append(sheet.cell_value(0, col))
    data = []
    for row in range(1, sheet.nrows):
       data_dict = {}
       for col in range(sheet.ncols):
           data_dict[first_row[col]] = sheet.cell_value(row, col)
       data.append(data_dict)
    print (data)
    return data

def read_Excel() :
    book=open_workbook(r'C:/Users/creddy6/Software/Python/Python37/Data/MasterSheet.xls')
    sheet = book.sheet_by_name(Sheet1)
    first_row=[]
    for col in range(sheet.ncols):
       first_row.append(sheet.cell_value(0, col))
    data = []
    for row in range(1, sheet.nrows):
       data_dict = {}
       for col in range (sheet.ncols):
           data_dict[first_row[col]] = sheet.cell_value(row, col)
       data.append(data_dict)
    print (data)
    return data
	
def runUnitTest_class(data,URL):
    for i in range(len(data)):
        if data[i]['Execute'].lower() == 'yes':
            url_value = data[i][URL]
            print (url_value)
        elif data[i]['Execute'].lower() == 'n':
           print ("Don't run row" + str(i + 1))
        elif data[i]['Execute'].lower() != 'n' or data[i]['Excute'].lower() != 'y':
           print("enter something useful in Run column: Y or N")
        else:
         pass 
    return url_value

def runTest_case(data,TEST_NAME,URL):
    for i in range(len(data)):
        if data[i]['TC_Name'].lower() == TEST_NAME.lower():
            url_value = data[i][URL]
            print (url_value)
        elif data[i]['TC_Name'].lower() == 'n':
           print ("Don't run row" + str(i + 1))
        elif data[i]['TC_Name'].lower() != 'n' or data[i]['TC_Name'].lower() != 'y':
           print("enter something useful in Run column: Y or N")
        else:
         pass 
    return url_value
    
