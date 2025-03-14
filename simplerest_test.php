<?php
require_once('SimpleRest.php');

// Tesztelés JSON válasz helyes beállításával
function testSimpleRest() {
    // Létrehozzuk a SimpleRest osztály példányát
    $simpleRestObj = new SimpleRest();
   
    // Set HTTP fejlécet először, majd küldj JSON választ
    $simpleRestObj->setHttpHeaders("application/json", 200);
   
    // További JSON válasz adat
    $responseData = array(
        "status" => "OK",
        "message" => "Sikeres válasz.",
        "http_status_message" => $simpleRestObj->getHttpStatusMessage(200) // HTTP státuszkód üzenet
    );
   
    // JSON válasz küldése
    echo json_encode($responseData);
}

// Teszt futtatása
testSimpleRest();
?>