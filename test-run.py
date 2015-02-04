import os

month = '07'
# modes
# 'csv': CSV file for Drupal feed import
# 'xml': XML file for ClipMenu Snippets
#mode = 'csv'
mode = 'xml'

os.system('ruby driver.rb ' + mode + ' ' + month)

#os.system('ruby driver.rb ' + mode + ' ' + month + ' > data/migrate-csv/2013/' + month +'.csv')
#os.system('ruby driver.rb ' + mode + ' ' + month + ' > data/dl-snippets/2013/' + month +'.xml')
