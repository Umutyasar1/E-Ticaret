<?php 

require_once("Ayarlar/ayar.php");
require_once("Ayarlar/fonksiyonlar.php");
require_once("Ayarlar/SiteSayfalari.php");

if(isset($_REQUEST['SayfaKodu'])){
    $SayfaKoduDeğeri = SayiliIcerikleriFiltrele($_REQUEST['SayfaKodu']);
}else{
    $SayfaKoduDeğeri = 0;
}

?>
<!doctype html>
<html lang="tr-TR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="tr">
<meta charset="utf-8">
<meta name="robots" content="index, follow">
<meta name="googlebot" content="index, follow">
<meta name="revisit-after" content="7 Days">
<title><?php echo DonusumlerGeriGetir($siteTitle)?></title>
<link type="image/png" rel="icon" href="Resimler/favicons.png">
<meta name="description" content="<?php echo DonusumlerGeriGetir($siteDescription)?>">
<meta name="keywords" content="<?php echo DonusumlerGeriGetir($siteKeywords)?>">
<script type="text/javascript" src="Frameworks/JQuery/jquery-3.6.0.min.js" language="javascript"></script>
<link type="text/css" rel="stylesheet" href="Ayarlar/stil.css">
<script type="text/javascript" src="Ayarlar/fonksiyonlar.js" language="javascript"></script>
</head>
<body>
    <table width= "1065" height= "100%" align= "center" border= "0" cellpadding="0" cellspacing="0">
        <tr height= "40" bgcolor="#353745" align= "center">
            <td><img src="Resimler/HeaderMesajResmi.png" border="0"></td>
        </tr>
        <tr height= "110">
            <td>
            <table width= "1065" height= "30" align= "center" border= "0" cellpadding="0" cellspacing="0">
            <tr bgcolor="#0088CC">
                <td>&nbsp;</td>
                <td width= "20" href="#"><img src="Resimler/KullaniciBeyaz16x16.png" border= "0"></td>
                <td width= "85" class="btn"><a href="#"> Giriş Yap</a></td>
                <td width= "20" href="#"><img src="Resimler/KullaniciEkleBeyaz16x16.png" border= "0"></td>
                <td width= "85" class="btn"><a href="#" >Yeni Üye</a></td>
                <td width= "20" href="#"><img src="Resimler/SepetBeyaz16x16.png" border= "0" style="margin-top: 5px;"></td>
                <td width= "103" class="btn"><a href="#" >Alışveriş Sepeti</a></td>
            </tr>
            </table>
            <table width= "1065" height= "80" align= "center" border= "0" cellpadding="0" cellspacing="0">
            <tr>
                <td><img style="width: 150px;" src="Resimler/SiteLogo.png" border ="0"></td>
                <td>
                    <table width="873" height="30" align="center" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width= "306">&nbsp;</td>
                            <td class="anaMenu" width= "107" href="index.php?SayfaKodu=0">Ana Sayfa</td>
                            <td class="anaMenu" width= "160"><a href="index.php?SayfaKodu=1">Erkek Montları</a></td>
                            <td class="anaMenu" width= "160"><a href="index.php?SayfaKodu=2">Kadın Montları</a></td>
                            <td class="anaMenu" width= "140"><a href="index.php?SayfaKodu=3">Erkek Eşofman Takımları</a></td>
                            <td class="anaMenu" width= "140"><a href="index.php?SayfaKodu=4">Kadın Eşofman Takımları</a></td>
                            <td class="anaMenu" width= "140"><a href="index.php?SayfaKodu=5">Erkek T-Shirt</a></td>
                            <td class="anaMenu" width= "140"><a href="index.php?SayfaKodu=6">Kadın T-Shirt</a></td>
                        </tr>
                    </table>
                </td>
                
            </tr>
            </table>
            
            </td>
        </tr>

        <tr>
            <td valign="top">
            <table width="1065" align="center" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="center">
                <?php 
                    if((!$SayfaKoduDeğeri) || ($SayfaKoduDeğeri == "") || ($SayfaKoduDeğeri== 0)){
                        include($Sayfa[0]);
                    }else{  
                        include($Sayfa[$SayfaKoduDeğeri]);
                    }
                
                ?>
                </td>
            </tr>
            </table>
            </td>
        
        </tr>

        <tr>
            <td>BANNER - İÇERİK</td>
        </tr>


        <tr height= "210">
            <table width="1065" bgcolor="#F9F9F9" align="center" border="0" cellpadding="0" cellspacing="0">
                        <tr height="30">
                            <td width= "250" style="border-bottom: 1px dashed #CCCCCC"><b>Kurumsal</b></td>
                            <td width= "22"  >&nbsp;</td>
                            <td width= "250" style="border-bottom: 1px dashed #CCCCCC"><b>Üyelik ve Hizmetler</b></td>
                            <td width= "22" >&nbsp;</td>
                            <td width= "250" style="border-bottom: 1px dashed #CCCCCC"><b>Sözleşmeler</b></td>
                            <td width= "21" >&nbsp;</td>
                            <td width= "250" style="border-bottom: 1px dashed #CCCCCC"><b>Bizi Takip Edin</b></td>
                        </tr>
                        <tr height="30">
                            <td class="altMenu"><a href="#">Hakkımızda</a></td>
                            <td>&nbsp;</td>
                            <td class="altMenu"><a href="#">Giriş Yap</a></td>
                            <td>&nbsp;</td>
                            <td class="altMenu"><a href="#">Üyelik Sözleşmesi</a></td>
                            <td>&nbsp;</td>
                            <td>
                                <table width="250" bgcolor="#F9F9F9" align="center" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="20"><a href="#"><img src="Resimler/Facebook16x16.png" border="0" style="margin-top: 5px;"></a></td>
                                        <td class="altMenu" width="230"><a href="#">Facebook</a></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr height="30">
                            <td class="altMenu"><a href="#">Banka Hesaplarımız</a></td>
                            <td>&nbsp;</td>
                            <td class="altMenu"><a href="#">Yeni Üye Ol</a></td>
                            <td>&nbsp;</td>
                            <td class="altMenu"><a href="#">Kullanım Koşulları</a></td>
                            <td>&nbsp;</td>
                            <td>
                                <table width="250" bgcolor="#F9F9F9" align="center" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="20"><a href="#"><img src="Resimler/Twitter16x16.png" border="0" style="margin-top: 5px;"></a></td>
                                        <td class="altMenu" width="230"><a href="#">Twitter</a></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr height="30">
                            <td class="altMenu"><a href="#">Havale Bildirim Formu</a></td>
                            <td>&nbsp;</td>
                            <td class="altMenu"><a href="#">Sık Sorulan Sorular</a></td>
                            <td>&nbsp;</td>
                            <td class="altMenu"><a href="#">Gizlilik Sözleşmesi</a></td>
                            <td>&nbsp;</td>
                            <td>
                                <table width="250" bgcolor="#F9F9F9" align="center" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="20"><a href="#"><img src="Resimler/LinkedIn16x16.png" border="0" style="margin-top: 5px;"></a></td>
                                        <td class="altMenu" width="230"><a href="#">Linkedin</a></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr height="30">
                            <td class="altMenu"><a href="#">Kargom Nerede?</a></td>
                            <td>&nbsp;</td>
                            <td></td>
                            <td>&nbsp;</td>
                            <td class="altMenu"><a href="#">Mesafeli Satış Sözleşmesi</a></td>
                            <td>&nbsp;</td>
                            <td>
                                <table width="250" bgcolor="#F9F9F9" align="center" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="20"><a href="#"><img src="Resimler/Instagram16x16.png" border="0" style="margin-top: 5px;"></a></td>
                                        <td class="altMenu"width="230"><a href="#">Instagram</a></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr height="30">
                            <td class="altMenu"><a href="#">İletişim</a></td>
                            <td>&nbsp;</td>
                            <td></td>
                            <td>&nbsp;</td>
                            <td class="altMenu"><a href="#">Teslimat</a></td>
                            <td>&nbsp;</td>
                            <td>
                                <table width="250" bgcolor="#F9F9F9" align="center" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="20"><a href="#"><img src="Resimler/YouTube16x16.png" border="0" style="margin-top: 5px;"></a></td>
                                        <td class="altMenu" width="230"><a href="#">Youtube</a></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr height="30">
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td></td>
                            <td>&nbsp;</td>
                            <td class="altMenu"><a href="#">İptal & İade & Değişim</a></td>
                            <td>&nbsp;</td>
                            <td></td>
                        </tr>
                    </table>    
        </tr>


        <tr>
            <td>
                <table width="1065" height="30" bgcolor="#F9F9F9" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center"><?php echo $siteCopyrightMetni;?></td>
                    </tr>
            </table>
            </td>
        </tr>

        <tr>
            <td>
                <table width="1065" height="30" bgcolor="#F9F9F9" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center"><img src="Resimler/RapidSSL32x12.png" border="0" style="margin-right: 5px;">
                        <img src="Resimler/InternetteGuvenliAlisveris28x12.png" border="0" style="margin-right: 5px;">
                        <img src="Resimler/MaximumCard46x12.png" border="0" style="margin-right: 5px;">
                        <img src="Resimler/WorldCard48x12.png" border="0" style="margin-right: 5px;">
                        <img src="Resimler/CardFinans78x12.png" border="0" style="margin-right: 5px;">
                        <img src="Resimler/AxessCard46x12.png" border="0" style="margin-right: 5px;">
                        <img src="Resimler/OdemeSecimiParafCard.png" border="0" style="margin-right: 5px;"> 
                        <img src="Resimler/VisaCard37x12.png" border="0" style="margin-right: 5px;">
                        <img src="Resimler/MasterCard21x12.png" border="0" style="margin-right: 5px;">
                        <img src="Resimler/AmericanExpiress20x12.png" border="0" style="margin-right: 5px;">
                    </td>
                    </tr>
            </table>
            </td>
        </tr>
    
    </table>
</body>


</html>


<php
$Connection = null;
?>