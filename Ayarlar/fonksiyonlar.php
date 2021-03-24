<?php 
    $ipAdresi = $_SERVER['REMOTE_ADDR'];
    $ZamanDegeri = time();
    $TarihSaat = date('d.m.y H:i:s', $ZamanDegeri);


    function Security($deger){
        $BoslukSil = trim($deger);
        $TaglarıTemizle = strip_tags($BoslukSil);
        $EtkisizYap = htmlspecialchars($TaglarıTemizle);
        $sonuc = $EtkisizYap;
        return $sonuc;
    }

    function SayiliIcerikleriFiltrele($deger){
        $BoslukSil = trim($deger);
        $TaglarıTemizle = strip_tags($BoslukSil);
        $EtkisizYap = htmlspecialchars($TaglarıTemizle);
        $temizle = RakamlarHaricKarakterlerSil($EtkisizYap);
        $sonuc = $temizle;
        return $sonuc;

    }

    function RakamlarHaricKarakterlerSil($deger){
        $Islem = preg_replace("/[*0-9]/", "", $deger);
        $sonuc = $Islem;
        return $sonuc;

    }


    function DonusumlerGeriGetir($deger){
        $GeriDondur = htmlspecialchars_decode($deger, ENT_QUOTES);
        $sonuc = $GeriDondur;
        return $sonuc;
    }
?>