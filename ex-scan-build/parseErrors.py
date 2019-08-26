import sys
import csv
import bs4

with open(sys.argv[1], 'r') as myfile:
	s=myfile.read()

#just get just the table summarizing the bugs
s=s.split('<h2>Bug Summary</h2>',1)[1].split('<h2>Reports</h2>')[0]

page    = s
soup    = bs4.BeautifulSoup(page)
csvout  = csv.writer(sys.stdout)
csvout2 = csv.writer("metrics.csv");

for table in soup.findAll('table'):
    for row in table.findAll('tr'):
        csvout.writerow([tr.text for tr in row.findAll('td')])
        csvout2.writerow([tr.text for tr in row.findAll('td')])
