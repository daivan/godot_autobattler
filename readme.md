# kodbasen för Autobattler

# Mappstruktor
## assets
### background
    Här inne hittar du stora bakgrunder, alltså inte tile bakgrunder
    Exempelvis bakgrunden till start menyn osv.

    Inte bagrunder till tile genererade bakgrunder

### characters
    Här inne hittar du alla karaktärer som används i spelet
    Exempelvis spelarens karaktär, fiendens karaktärer osv.
    Här inne hittar du även tilesets för karaktärer

### enemies (borde flytta in till characters)
    Det är exakt identiskt till characters och borde flyttas in till characters

### items (borde byta namn till character_items)
    Här inne hittar du alla bilder till items som används i spelet

### tilesets (borde flyttas in till respektive mapp)
    Här inne hittar du alla tilesets fast det kommer förmodligen antingen att flytta in till backgrounds om det är backgrounds eller characters om det är characters eller items om det är items

### worl_map_nodes (borde döpas om till icons)
    Här inne hittar du alla bilder som är typ av iconer och inte equipment eller karaktärer

## icons
    Här hittar du iconer som används till spelets yttre.
    Exempelvis icon till spelet på iphone, android, windows osv.

## src
### autoloads
    Här inne hitar du alla filer som ska laddas in automatiskt när spelet startar

### components
    Här hittar du komponenter som man kan lägga till på en karaktär nod
    Låt oss säga att du har en karaktär som är melee, då vill du inte lägga till attack_range_component fast kanske någon annan komponent

### data
