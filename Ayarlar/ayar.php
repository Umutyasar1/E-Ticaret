<?php 

try {
    
    $db_ad='e-Ticaret';
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

        $SiteAdi				=	$Ayarlar["SiteAdi"];
        $SiteTitle				=	$Ayarlar["SiteTitle"];
        $SiteDescription		=	$Ayarlar["SiteDescription"];
        $SiteKeywords			=	$Ayarlar["SiteKeywords"];
        $SiteCopyrightMetni		=	$Ayarlar["SiteCopyrightMetni"];
        $SiteLogosu				=	$Ayarlar["SiteLogosu"];
        $SiteLinki				=	$Ayarlar["SiteLinki"];
        $SiteEmailAdresi		=	$Ayarlar["SiteEmailAdresi"];
        $SiteEmailSifresi		=	$Ayarlar["SiteEmailSifresi"];
        $SiteEmailHostAdresi	=	$Ayarlar["SiteEmailHostAdresi"];	
        $SosyalLinkFacebook		=	$Ayarlar["SosyalLinkFacebook"];
        $SosyalLinkTwitter		=	$Ayarlar["SosyalLinkTwitter"];
        $SosyalLinkLinkedin		=	$Ayarlar["SosyalLinkLinkedin"];
        $SosyalLinkInstagram	=	$Ayarlar["SosyalLinkInstagram"];
        $SosyalLinkPinterest	=	$Ayarlar["SosyalLinkPinterest"];
        $SosyalLinkYouTube		=	$Ayarlar["SosyalLinkYouTube"];
        $DolarKuru				=	$Ayarlar["DolarKuru"];
        $EuroKuru				=	$Ayarlar["EuroKuru"];
        $UcretsizKargoBaraji	=	$Ayarlar["UcretsizKargoBaraji"];
        $ClientID				=	$Ayarlar["ClientID"];	
        $StoreKey				=	$Ayarlar["StoreKey"];	
        $ApiKullanicisi			=	$Ayarlar["ApiKullanicisi"];	
        $ApiSifresi				=	$Ayarlar["ApiSifresi"];	

    }else{

    echo "Site ayar sorgu hatasi";
    die();
    
    }

    $MetinlerSorgusu = $Connection->prepare("Select * from sozlesmelervemetinler LIMIT 1");
    $MetinlerSorgusu->execute();
    $MetinlerSayi = $MetinlerSorgusu->rowCount();
    $Metinler = $MetinlerSorgusu->fetch(PDO::FETCH_ASSOC);

    if($AyarSayi > 0){

    $HakkimizdaMetni =   $Metinler['HakkimizdaMetni'];
    $UyelikSozlesmesiMetni =   $Metinler['UyelikSozlesmesiMetni'];
    $KullanimKosullariMetni =   $Metinler['KullanimKosullariMetni'];
    $GizlilikSozlesmesiMetni =   $Metinler['GizlilikSozlesmesiMetni'];
    $MesafeliSatisSozlesmesiMetni =   $Metinler['MesafeliSatisSozlesmesiMetni'];
    $TeslimatMetni =   $Metinler['TeslimatMetni'];
    $IptalIadeDegisimMetni =   $Metinler['IptalIadeDegisimMetni'];

    }else{

    echo "Metşnler sorgu hatasi";
    die();
    
    }



?>