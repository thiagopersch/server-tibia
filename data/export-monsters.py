import os

directory_in = 'H:\\Meu Drive\\Meu Tibia\\servidor-dbo-supreme\\data\\monster'
directory_out = 'H:\\Meu Drive\\Meu Tibia\\servidor-dbo-supreme\\data\\monster'
xml_tags = '<?xml version="1.0" encoding="UTF-8"?>\n<monsters>\n'

files = [f for f in os.listdir(directory_in) if f.endswith(('.txt', '.xml'))]
files.sort()

for filename in files:
    if filename.endswith('.txt'):
        name = filename.capitalize().replace('.txt', '')
    elif filename.endswith('.xml'):
        name = filename.capitalize().replace('.xml', '')
        archive = filename.replace('.xml', '')
    xml_tags += f'  <monster name="{name}" file="{archive}.xml"/>\n'

xml_tags += '</monsters>'

with open(os.path.join(directory_out, 'monsters.xml'), 'w') as f:
    f.write(xml_tags)

print('Monsters.xml gerado com sucesso em', directory_out)
