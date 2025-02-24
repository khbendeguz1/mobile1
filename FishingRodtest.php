<?php
require_once("FishingRod.php");
//példányosítás
$fishingRod=new FishingRod();

//Összes horgászbot lekérdezése
echo "<h2>Összes horászbot:</h2>";
$allRods=$fishingRod->getAllFishingRods();
if(!empty($allRods))
{
    foreach($allRods as $rod)
    {
        echo "ID: " . $rod['fr_ID'] . " - Név: " . $rod['name'] . "<br>";
    }
}
else
{
    echo "Nincs találat az összes horgászbot lekérdezésére.<br>";
}

//Horgászbot lekérdezés ID alapán
echo "<h2>Az 1-es ID-s horgászbot:</h2>";
$rodById=$fishingRod->getFishingRodById(1);
if(!empty($rodById))
{
    foreach($rodById as $rod)
    {
        echo "ID: " . $rod['fr_ID'] . " - Név: " . $rod['name'] . "<br>";
    }
}
else
{
    echo "Nincs találat a megadott Id-val a horgászbot lekérdezésére.<br>";
}

//Nem létező Id-ra teszt
echo "<h2>Nemlétező ID-ra horgászbot:</h2>";
$invalidrodById=$fishingRod->getFishingRodById(9999);
if(!empty($invalidrodById))
{
    foreach($invalidrodById as $rod)
    {
        echo "ID: " . $rod['fr_ID'] . " - Név: " . $rod['name'] . "<br>";
    }
}
else
{
    echo "Nincs találat a megadott Id-val a horgászbot lekérdezésére.<br>";
}

?>