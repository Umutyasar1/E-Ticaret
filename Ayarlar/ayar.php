<?php 

try {
    
    $db_ad='eticaret';
    $db_kullanici='root';
    $db_sifre='';
    $Connection = new PDO('mysql:host=localhost;dbname='.$db_ad, $db_kullanici, $db_sifre);
    } 
    catch (PDOException $e)
    {
    print "Bağantı Hatası!: " . $e->getMessage() . "<br/>";
    die();
    }
    $AyarlarSorgu = $Connection->prepare("Select * from ayarlar LIMIT 1");
    $AyarlarSorgu->execute();
    $AyarSayi = $AyarlarSorgu->rowCount();
    $Ayarlar = $AyarlarSorgu->fetch(PDO::FETCH_ASSOC);

    if($AyarSayi > 0){

    $siteAdi =   $Ayarlar['siteAdi'];
    $siteTitle =   $Ayarlar['siteTitle'];
    $siteDescription =   $Ayarlar['siteDescription'];
    $siteKeywords =   $Ayarlar['siteKeywords'];
    $siteCopyrightMetni =   $Ayarlar['siteCopyrightMetni'];
    $siteLogo =   $Ayarlar['siteLogo'];
    $siteEmail =   $Ayarlar['siteEmail'];
    $siteEmailPassword =   $Ayarlar['siteEmailPassword'];

    }else{

    echo "Site ayar sorgu hatasi";
    die();
    
    }



?>