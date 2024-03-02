# kodbasen för Autobattler

# Mappstruktor
## assets
### background
    Här inne hittar du stora bakgrunder, alltså inte tile bakgrunder
    Exempelvis bakgrunden till start menyn osv.

    Inte bagrunder till tile genererade bakgrunder

### character
    Här inne hittar du alla karaktärer som används i spelet
    Exempelvis spelarens karaktär, fiendens karaktärer osv.
    Här inne hittar du även tilesets för karaktärer

### character_item
    Här inne hittar du alla bilder till items som används i spelet

### tilemap
    Här inne hittar du alla tilesets fast det kommer förmodligen antingen att flytta in till backgrounds om det är backgrounds eller characters om det är characters eller items om det är items

### icon
    Här inne hittar du alla bilder som är typ av iconer och inte equipment eller karaktärer

## publish
    Här hittar du iconer som används till spelets yttre.
    För när du behöver publicera spelet
    Exempelvis icon till spelet på iphone, android, windows osv.

## src

### actor
    Här hittar du alla karaktärer som används i spelet
    Exempelvis spelarens karaktär, fiendens karaktärer osv.
    Här inne hittar du även tilesets för karaktärer

### autoload
    Här inne hitar du alla filer som ska laddas in automatiskt när spelet startar

### component
    Här hittar du komponenter som man kan lägga till på en karaktär nod
    Låt oss säga att du har en karaktär som är melee, då vill du inte lägga till attack_range_component fast kanske någon annan komponent

### data
    Här hittar du förbestämd data saker som man skulle lagt i databasen
    Exempelvis alla olika fiendesorter eller vapensorter


### logic
    Här hittar du all logik som används i spelet
    Exempelvis calculate_damage, calculate_movement osv. som andra använder

### resource
    Här är godot resources och inte vanliga resurser
    En resurs är som en class fast att den är som en klass för en sak.
    Exempelvis:
    En item resurs ser alltid ut på ett specifikt sätt.
    En level resurs er ut på ett specifikt sätt

### scene
    Här hittar du alla gränssnitt som används i spelet

### test
    Här hittar du alla tester som används i spelet
    Det är scener som testar specifika scenarion

### tilemap
    Här sparas tilemaps som är genererade av PNG filerna

### Resten av filerna
    Borde flyttas in till respektive mapp
