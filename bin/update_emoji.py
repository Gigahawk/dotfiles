import requests
from pathlib import Path
from os.path import join
from bs4 import BeautifulSoup

max_tries = 5
print('Downloading data...')
for i in range(max_tries):
    data = requests.get(
            'https://unicode.org/emoji/charts/full-emoji-list.html')
    if data:
        break

if not data:
    print("Could not fetch emoji data. Try again later.")
    exit(10)

soup = BeautifulSoup(data.content, 'lxml')

print('Processing...')
with open(join(str(Path.home()), '.emoji'), 'w') as f:
    for row in soup.find_all('tr'):
        name = row.find('td', class_='name')
        char = row.find('td', class_='chars')
        if name and char:
            name = name.get_text()
            char = char.get_text()
            f.write(f"{char} {name}\n")
print('Done')
