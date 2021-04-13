-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Nis 2021, 12:41:28
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adresler`
--

CREATE TABLE `adresler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `AdiSoyadi` varchar(100) NOT NULL,
  `Adres` varchar(255) NOT NULL,
  `Ilce` varchar(100) NOT NULL,
  `Sehir` varchar(100) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `SiteAdi` varchar(50) NOT NULL,
  `SiteTitle` varchar(60) NOT NULL,
  `SiteDescription` varchar(200) NOT NULL,
  `SiteKeywords` varchar(255) NOT NULL,
  `SiteCopyrightMetni` varchar(255) NOT NULL,
  `SiteLogosu` varchar(30) NOT NULL,
  `SiteLinki` varchar(255) NOT NULL,
  `SiteEmailAdresi` varchar(50) NOT NULL,
  `SiteEmailSifresi` varchar(50) NOT NULL,
  `SiteEmailHostAdresi` varchar(255) NOT NULL,
  `SosyalLinkFacebook` varchar(255) NOT NULL,
  `SosyalLinkTwitter` varchar(255) NOT NULL,
  `SosyalLinkLinkedin` varchar(255) NOT NULL,
  `SosyalLinkInstagram` varchar(255) NOT NULL,
  `SosyalLinkPinterest` varchar(255) NOT NULL,
  `SosyalLinkYouTube` varchar(255) NOT NULL,
  `DolarKuru` double UNSIGNED NOT NULL,
  `EuroKuru` double UNSIGNED NOT NULL,
  `UcretsizKargoBaraji` double UNSIGNED NOT NULL,
  `ClientID` varchar(100) NOT NULL,
  `StoreKey` varchar(100) NOT NULL,
  `ApiKullanicisi` varchar(100) NOT NULL,
  `ApiSifresi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `SiteAdi`, `SiteTitle`, `SiteDescription`, `SiteKeywords`, `SiteCopyrightMetni`, `SiteLogosu`, `SiteLinki`, `SiteEmailAdresi`, `SiteEmailSifresi`, `SiteEmailHostAdresi`, `SosyalLinkFacebook`, `SosyalLinkTwitter`, `SosyalLinkLinkedin`, `SosyalLinkInstagram`, `SosyalLinkPinterest`, `SosyalLinkYouTube`, `DolarKuru`, `EuroKuru`, `UcretsizKargoBaraji`, `ClientID`, `StoreKey`, `ApiKullanicisi`, `ApiSifresi`) VALUES
(1, 'UmutMagazam.com', 'UmutMagazam', 'Pantolon eşofman ve t-shirt modelleri uygun fiyat ve ödeme koşulları ile UmutMagazam.com\'da. Şık ve kaliteli pantolon eşofman ve t-shirt markaları için tıklayınız', 'Pantolon, erkek pantolon, kadın pantolon, T-shirt, erkek t-shirt, kadın t-shirt, eşofman ', 'Copyright 2021 - UmutMagazam - Tüm Hakları Saklıdır.', 'SiteLogo.png', 'http://www.UmutMagazam.com', 'yasarumut69@gmail.com', '74ce7107737d43a277eea98533038bc5', 'mail.umutmagazam.net', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.instagram.com', 'https://www.pinterest.com', 'https://www.youtube.com', 7.5, 8.25, 250, '00000000', '11111111', '3DKullanicim', '3DSifrem');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bankahesaplarimiz`
--

CREATE TABLE `bankahesaplarimiz` (
  `id` int(10) UNSIGNED NOT NULL,
  `BankaLogosu` varchar(30) NOT NULL,
  `BankaAdi` varchar(100) NOT NULL,
  `KonumSehir` varchar(100) NOT NULL,
  `KonumUlke` varchar(100) NOT NULL,
  `SubeAdi` varchar(100) NOT NULL,
  `SubeKodu` varchar(100) NOT NULL,
  `ParaBirimi` varchar(100) NOT NULL,
  `HesapSahibi` varchar(255) NOT NULL,
  `HesapNumarasi` varchar(100) NOT NULL,
  `IbanNumarasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bankahesaplarimiz`
--

INSERT INTO `bankahesaplarimiz` (`id`, `BankaLogosu`, `BankaAdi`, `KonumSehir`, `KonumUlke`, `SubeAdi`, `SubeKodu`, `ParaBirimi`, `HesapSahibi`, `HesapNumarasi`, `IbanNumarasi`) VALUES
(2, 'ziraat.png', 'Ziraat Bankası', 'Esenler/İstanbul', 'Türkiye', 'Esenler Merkez Şubesi', '1234', 'TL', 'Umut Yaşar', '664214587', 'TR1600502664214587');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bannerlar`
--

CREATE TABLE `bannerlar` (
  `id` int(10) UNSIGNED NOT NULL,
  `BannerAlani` varchar(100) NOT NULL,
  `BannerAdi` varchar(100) NOT NULL,
  `BannerResmi` varchar(30) NOT NULL,
  `GosterimSayisi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `favoriler`
--

CREATE TABLE `favoriler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `havalebildirimleri`
--

CREATE TABLE `havalebildirimleri` (
  `id` int(10) UNSIGNED NOT NULL,
  `BankaId` int(10) UNSIGNED NOT NULL,
  `AdiSoyadi` varchar(100) NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL,
  `Aciklama` text NOT NULL,
  `IslemTarihi` int(10) UNSIGNED NOT NULL,
  `Durum` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kargofirmalari`
--

CREATE TABLE `kargofirmalari` (
  `id` int(10) UNSIGNED NOT NULL,
  `KargoFirmasiLogosu` varchar(30) NOT NULL,
  `KargoFirmasiAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kargofirmalari`
--

INSERT INTO `kargofirmalari` (`id`, `KargoFirmasiLogosu`, `KargoFirmasiAdi`) VALUES
(1, '45c860594b6f08c27c8ea084b.png', 'Yurtiçi Kargo');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menuler`
--

CREATE TABLE `menuler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunTuru` varchar(100) NOT NULL,
  `MenuAdi` varchar(50) NOT NULL,
  `UrunSayisi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `id` int(10) UNSIGNED NOT NULL,
  `SepetNumarasi` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `AdresId` int(10) UNSIGNED NOT NULL,
  `VaryantId` int(10) UNSIGNED NOT NULL,
  `KargoId` tinyint(2) NOT NULL,
  `UrunAdedi` tinyint(3) UNSIGNED NOT NULL,
  `OdemeSecimi` varchar(50) NOT NULL,
  `TaksitSecimi` tinyint(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `SiparisNumarasi` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `UrunTuru` varchar(50) NOT NULL,
  `UrunAdi` varchar(255) NOT NULL,
  `UrunFiyati` double UNSIGNED NOT NULL,
  `KdvOrani` int(2) UNSIGNED NOT NULL,
  `UrunAdedi` int(3) UNSIGNED NOT NULL,
  `ToplamUrunFiyati` double UNSIGNED NOT NULL,
  `KargoFirmasiSecimi` varchar(100) NOT NULL,
  `KargoUcreti` double UNSIGNED NOT NULL,
  `UrunResmiBir` varchar(30) NOT NULL,
  `VaryantBasligi` varchar(100) NOT NULL,
  `VaryantSecimi` varchar(100) NOT NULL,
  `AdresAdiSoyadi` varchar(100) NOT NULL,
  `AdresDetay` varchar(255) NOT NULL,
  `AdresTelefon` varchar(11) NOT NULL,
  `OdemeSecimi` varchar(25) NOT NULL,
  `TaksitSecimi` int(2) UNSIGNED NOT NULL,
  `SiparisTarihi` int(10) NOT NULL,
  `SiparisIpAdresi` varchar(20) NOT NULL,
  `OnayDurumu` tinyint(1) UNSIGNED NOT NULL,
  `KargoDurumu` tinyint(1) UNSIGNED NOT NULL,
  `KargoGonderiKodu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorular`
--

CREATE TABLE `sorular` (
  `id` int(10) UNSIGNED NOT NULL,
  `soru` varchar(255) NOT NULL,
  `cevap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sozlesmelervemetinler`
--

CREATE TABLE `sozlesmelervemetinler` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `HakkimizdaMetni` text NOT NULL,
  `UyelikSozlesmesiMetni` text NOT NULL,
  `KullanimKosullariMetni` text NOT NULL,
  `GizlilikSozlesmesiMetni` text NOT NULL,
  `MesafeliSatisSozlesmesiMetni` text NOT NULL,
  `TeslimatMetni` text NOT NULL,
  `IptalIadeDegisimMetni` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sozlesmelervemetinler`
--

INSERT INTO `sozlesmelervemetinler` (`id`, `HakkimizdaMetni`, `UyelikSozlesmesiMetni`, `KullanimKosullariMetni`, `GizlilikSozlesmesiMetni`, `MesafeliSatisSozlesmesiMetni`, `TeslimatMetni`, `IptalIadeDegisimMetni`) VALUES
(1, 'Burası Hakkımızda Metnidir.', '</br></br><b>1. SORUMLULUKLAR</b>\r\na.Firma, fiyatlar ve sunulan ürün ve hizmetler üzerinde değişiklik yapma hakkını her zaman saklı tutar. \r\nb.Firma, üyenin sözleşme konusu hizmetlerden, teknik arızalar dışında yararlandırılacağını kabul ve taahhüt eder.\r\nc.Kullanıcı, sitenin kullanımında tersine mühendislik yapmayacağını ya da bunların kaynak kodunu bulmak veya elde etmek amacına yönelik herhangi bir başka işlemde bulunmayacağını aksi halde ve 3. Kişiler nezdinde doğacak zararlardan sorumlu olacağını, hakkında hukuki ve cezai işlem yapılacağını peşinen kabul eder. \r\nd.Kullanıcı, site içindeki faaliyetlerinde, sitenin herhangi bir bölümünde veya iletişimlerinde genel ahlaka ve adaba aykırı, kanuna aykırı, 3. Kişilerin haklarını zedeleyen, yanıltıcı, saldırgan, müstehcen, pornografik, kişilik haklarını zedeleyen, telif haklarına aykırı, yasa dışı faaliyetleri teşvik eden içerikler üretmeyeceğini, paylaşmayacağını kabul eder. Aksi halde oluşacak zarardan tamamen kendisi sorumludur ve bu durumda ‘Site’ yetkilileri, bu tür hesapları askıya alabilir, sona erdirebilir, yasal süreç başlatma hakkını saklı tutar. Bu sebeple yargı mercilerinden etkinlik veya kullanıcı hesapları ile ilgili bilgi talepleri gelirse paylaşma hakkını saklı tutar.\r\ne.Sitenin üyelerinin birbirleri veya üçüncü şahıslarla olan ilişkileri kendi sorumluluğundadır. </br></br>\r\n\r\n<b>2.  Fikri Mülkiyet Hakları</b>\r\n\r\n2.1. İşbu Site’de yer alan ünvan, işletme adı, marka, patent, logo, tasarım, bilgi ve yöntem gibi tescilli veya tescilsiz tüm fikri mülkiyet hakları site işleteni ve sahibi firmaya veya belirtilen ilgilisine ait olup, ulusal ve uluslararası hukukun koruması altındadır. İşbu Site’nin ziyaret edilmesi veya bu Site’deki hizmetlerden yararlanılması söz konusu fikri mülkiyet hakları konusunda hiçbir hak vermez.\r\n2.2. Site’de yer alan bilgiler hiçbir şekilde çoğaltılamaz, yayınlanamaz, kopyalanamaz, sunulamaz ve/veya aktarılamaz. Site’nin bütünü veya bir kısmı diğer bir internet sitesinde izinsiz olarak kullanılamaz. </br></br>\r\n\r\n<b>3. Gizli Bilgi</b></br>\r\n<b>3.1. Firma</b>, site üzerinden kullanıcıların ilettiği kişisel bilgileri 3. Kişilere açıklamayacaktır. Bu kişisel bilgiler; kişi adı-soyadı, adresi, telefon numarası, cep telefonu, e-posta adresi gibi Kullanıcı’yı tanımlamaya yönelik her türlü diğer bilgiyi içermekte olup, kısaca ‘Gizli Bilgiler’ olarak anılacaktır.</br>\r\n\r\n<b>3.2. Kullanıcı</b>, sadece tanıtım, reklam, kampanya, promosyon, duyuru vb. pazarlama faaliyetleri kapsamında kullanılması ile sınırlı olmak üzere, Site’nin sahibi olan firmanın kendisine ait iletişim, portföy durumu ve demografik bilgilerini iştirakleri ya da bağlı bulunduğu grup şirketleri ile paylaşmasına muvafakat ettiğini kabul ve beyan eder. Bu kişisel bilgiler firma bünyesinde müşteri profili belirlemek, müşteri profiline uygun promosyon ve kampanyalar sunmak ve istatistiksel çalışmalar yapmak amacıyla kullanılabilecektir.</br>\r\n\r\n<b>3.3. Gizli Bilgiler</b>, ancak resmi makamlarca usulü dairesinde bu bilgilerin talep edilmesi halinde ve yürürlükteki emredici mevzuat hükümleri gereğince resmi makamlara açıklama yapılmasının zorunlu olduğu durumlarda resmi makamlara açıklanabilecektir.</br></br>\r\n\r\n<b>4. Garanti Vermeme:</b> İŞBU SÖZLEŞME MADDESİ UYGULANABİLİR KANUNUN İZİN VERDİĞİ AZAMİ ÖLÇÜDE GEÇERLİ OLACAKTIR. FİRMA TARAFINDAN SUNULAN HİZMETLER \"OLDUĞU GİBİ” VE \"MÜMKÜN OLDUĞU” TEMELDE SUNULMAKTA VE PAZARLANABİLİRLİK, BELİRLİ BİR AMACA UYGUNLUK VEYA İHLAL ETMEME KONUSUNDA TÜM ZIMNİ GARANTİLER DE DÂHİL OLMAK ÜZERE HİZMETLER VEYA UYGULAMA İLE İLGİLİ OLARAK (BUNLARDA YER ALAN TÜM BİLGİLER DÂHİL) SARİH VEYA ZIMNİ, KANUNİ VEYA BAŞKA BİR NİTELİKTE HİÇBİR GARANTİDE BULUNMAMAKTADIR. </br></br>\r\n\r\n<b>5. Kayıt ve Güvenlik </b>\r\nKullanıcı, doğru, eksiksiz ve güncel kayıt bilgilerini vermek zorundadır. Aksi halde bu Sözleşme ihlal edilmiş sayılacak ve Kullanıcı bilgilendirilmeksizin hesap kapatılabilecektir.\r\nKullanıcı, site ve üçüncü taraf sitelerdeki şifre ve hesap güvenliğinden kendisi sorumludur. Aksi halde oluşacak veri kayıplarından ve güvenlik ihlallerinden veya donanım ve cihazların zarar görmesinden Firma sorumlu tutulamaz.</br></br>\r\n\r\n<b>6. Mücbir Sebep</b>\r\n\r\nTarafların kontrolünde olmayan; tabii afetler, yangın, patlamalar, iç savaşlar, savaşlar, ayaklanmalar, halk hareketleri, seferberlik ilanı, grev, lokavt ve salgın hastalıklar, altyapı ve internet arızaları, elektrik kesintisi gibi sebeplerden (aşağıda birlikte \"Mücbir Sebep” olarak anılacaktır.) dolayı sözleşmeden doğan yükümlülükler taraflarca ifa edilemez hale gelirse, taraflar bundan sorumlu değildir. Bu sürede Taraflar’ın işbu Sözleşme’den doğan hak ve yükümlülükleri askıya alınır. </br></br>\r\n\r\n<b>7. Sözleşmenin Bütünlüğü ve Uygulanabilirlik</b>\r\n\r\nİşbu sözleşme şartlarından biri, kısmen veya tamamen geçersiz hale gelirse, sözleşmenin geri kalanı geçerliliğini korumaya devam eder.\r\n\r\n8. Sözleşmede Yapılacak Değişiklikler\r\n\r\nFirma, dilediği zaman sitede sunulan hizmetleri ve işbu sözleşme şartlarını kısmen veya tamamen değiştirebilir. Değişiklikler sitede yayınlandığı tarihten itibaren geçerli olacaktır. Değişiklikleri takip etmek Kullanıcı’nın sorumluluğundadır. Kullanıcı, sunulan hizmetlerden yararlanmaya devam etmekle bu değişiklikleri de kabul etmiş sayılır.\r\n\r\n9. Tebligat\r\nİşbu Sözleşme ile ilgili taraflara gönderilecek olan tüm bildirimler, Firma’nın bilinen e.posta adresi ve kullanıcının üyelik formunda belirttiği e.posta adresi vasıtasıyla yapılacaktır. Kullanıcı, üye olurken belirttiği adresin geçerli tebligat adresi olduğunu, değişmesi durumunda 5 gün içinde yazılı olarak diğer tarafa bildireceğini, aksi halde bu adrese yapılacak tebligatların geçerli sayılacağını kabul eder.\r\n\r\n10. Delil Sözleşmesi\r\nTaraflar arasında işbu sözleşme ile ilgili işlemler için çıkabilecek her türlü uyuşmazlıklarda Taraflar’ın defter, kayıt ve belgeleri ile ve bilgisayar kayıtları ve faks kayıtları 6100 sayılı Hukuk Muhakemeleri Kanunu uyarınca delil olarak kabul edilecek olup, kullanıcı bu kayıtlara itiraz etmeyeceğini kabul eder.\r\n\r\n11. Uyuşmazlıkların Çözümü\r\nİşbu Sözleşme’nin uygulanmasından veya yorumlanmasından doğacak her türlü uyuşmazlığın çözümünde İstanbul (Merkez) Adliyesi Mahkemeleri ve İcra Daireleri yetkilidir.', 'Burası Kullanım Koşulları Metnidir.', '<b><center>GİZLİLİK SÖZLEŞMESİ</center></b></br></br>\r\nKİŞİSEL VERİLERİN KORUNMASI KANUNU(6698 S.K.) KAPSAMI VE GENEL\r\nGİZLİLİK SÖZLEŞMESİ </br></br></br>\r\n<b>1- TARAFLAR</b></br>\r\nBir tarafta FEREL ELEKTRONİK ve grup şirketleri (bu sözleşmede kısaca\r\n“İŞVEREN” olarak anılacaktır.)\r\nDiğer tarafta, veri paylaşılan, müşteriler ve tedarikçiler ile ürün servisleri, distribütörler,\r\nbayiler, çalışanlar, çalışan adayları, stajyerler, servis sağlayıcıları ve danışmanlar (bu\r\nsözleşmede kısaca “ÇALIŞANLAR VE DİĞERLERİ” olarak anılacaktır.) aralarında\r\naşağıdaki koşullarda anlaşmışlardır.</br></br>\r\n<b>2- SÖZLEŞMENİN KONUSU</b></br>\r\nTaraflar arasından akdedilen yazılı veya sözlü hizmet sözleşmesinin (bundan böyle “HİZMET\r\nSÖZLEŞMESİ” olarak anılacaktır.) eki niteliğindeki işbu sözleşmenin konusu, hizmet\r\nsözleşmesi kapsamında işçiler ve diğerleri tarafından yürütülen çalışmalar ile ilgili olarak\r\nişçiler ve diğerlerine işveren (Veri Sorumlusu) tarafından verilen bilgi ve belgelerin işverenin\r\nonayı veya işçiler ve diğerlerinin açık rıza beyanı olmaksızın kişisel verilerin, özel nitelikli\r\nkişisel verilerin ve genel verilerin herhangi bir üçüncü gerçek ve/veya tüzel kişiye\r\naçıklanmasının, erişmesinin, verilmesinin, sızdırılmasının önüne geçecek olan gizliliğin\r\nsınırlarının ve koşullarının belirlenmesidir.</br></br>\r\n<b>3- GİZLİ BİLGİNİN TANIMI</b></br>\r\nKişisel Verilerin Korunması Kanunu kapsamında tanımını bulan kişiye ait bilgiler ile\r\nKimliği belirli veya belirlenebilir gerçek kişiye ilişkin her türlü bilgi, Kimliği belirli veya\r\nbelirlenebilir gerçek kişiye ilişkin her türlü sağlık bilgisi, Kişilerin ırkı, etnik kökeni, siyasi\r\ndüşüncesi, felsefi inancı, dini, mezhebi veya diğer inançları, kılık ve kıyafeti, dernek, vakıf ya\r\nda sendika üyeliği, sağlığı, cinsel hayatı, ceza mahkûmiyeti ve güvenlik tedbirleriyle ilgili\r\nverileri ile biyometrik ve genetik veriler.\r\nHizmet sözleşmesinde tanımlanan işler/görevler/hizmetler esnasında işveren tarafından\r\nişçiye açıklanan fikir, proje, uzmanlık bilgileri, tasarım, buluş, iş metodu ve patent, telif\r\nhakkı, marka, ticari sır, know how ya da diğer yasal korunmaya konu olan ya da olmayan her\r\ntürlü yenilik ve çalışma esnasında öğrenilecek yazılı veya sözlü tüm ticari, mali, teknik\r\nbilgiler ve iletişim yöntemleri gizli bilgi olarak kabul edilir.\r\n<b>4- TARAFLARIN YÜKÜMLÜLÜKLERİ</b></br></br>\r\n<b>4.1.</b> İşveren hizmet sözleşmesi kapsamında işçiye işini tam ve eksiksiz olarak yerine\r\ngetirebilmesi ve gerekli her türlü bilgi ve belgeyi işçiye vermeyi taahhüt eder.\r\n<b>4.2.</b> İşveren işçiye ve diğerlerine açıklanan gizli bilgilerin eksik ya da hatalı olması sebebiyle\r\nortaya çıkabilecek olan eksiklik, gecikme veya aksaklıklardan dolayı işçinin sorumlu\r\ntutulamayacağını kabul ve taahhüt eder.\r\n<b>4.3 </b>İşçi ve diğerlerine işveren tarafından kendisine açıklanan bilgi ve belgelerin gizli\r\nolduğunu bildiğini ve bu nedenle söz konusu gizli bilgileri sadece kendisinin bileceğini ve işin\r\nyerine getirilmesi aşamasında katkıda bulunması muhtemel üçüncü kişi, kurum ya da\r\nkuruluşların gizli bilgilerden sadece işin gereği kadar haberdar olacaklarını, işbu bilgi ve\r\nbelgelerin hiçbir şekilde işverenin izni olmaksızın üçüncü gerçek ve/veya tüzel kişi ve\r\nkuruluşlara çalışma amaçları dışında açıklanmayacağını kabul ve taahhüt eder. \r\n\r\n<b>4.4.</b> İşçi ve diğerleri işin yerine getirilmesi aşamasında katkıda bulunması muhtemel üçüncü\r\nkişi, kurum ya da kuruluşların işbu sözleşmede öngörülen gizlilik ilkelerine aykırı\r\ndavranışlarından dolayı sorumlu olacağını, söz konusu üçüncü kişi, kurum ya da kuruluşların\r\ngizlilik ilkelerine riayet edeceğini, aykırılık hallerinden haberdar olduğu takdirde, derhal ve\r\nyazılı olarak işverene söz konusu aykırılık durumunu bildireceğini kabul ve taahhüt eder.\r\n<b>4.5.</b> Gizli bilgilerin ve kişisel verilerin işbu sözleşmeye aykırı olarak açıklanması, erişilmesine\r\nimkan sağlanması, sızdırılması veya benzeri davranışlarla bilgilerin ele geçirilmesine ortam\r\nsağlanması halinde işveren, masrafları işçiye ait olmak kaydıyla tüm yasal yollara başvurma\r\nve uğradığı her türlü zararın giderimini işçiden ve diğerlerinden talep etme hakkına sahiptir.</br></br>\r\n<b>5- SÜRE</b></br></br>\r\n<b>5.1.</b> Hizmet sözleşmesinin eki niteliğindeki işbu sözleşme, taraflarca imzalandığı tarihte\r\nyürürlüğe girecek olup, işbu sözleşmeden doğan yükümlülükler hizmet sözleşmesinin\r\ngeçerliliğini koruduğu müddetçe devam edecektir.\r\n<b>5.2.</b> Hizmet sözleşmesinin sona ermesi halinde dahi işbu sözleşme, hizmet sözleşmesinin sona\r\nerme tarihinden itibaren işletmeye ve ürünlere ait bilgiler ile kişisel verilerin anonim hale\r\ngetirilmiş olanları ve işverenliğin izni olan bilgiler hariç ve kişisel veri sahibinin rızası hariç\r\nkişisel verilerin süresiz olarak gizliliği ve korunması olarak geçerliliğini koruyacaktır.</br></br>\r\n<b>6- SÖZLEŞME DEĞİŞİKLİĞİ</b></br>\r\nİşbu sözleşme taraflarca daha önce özellikle gizlilik konusunda yapılmış olabilecek yazılı\r\nve/veya sözlü tüm sözleşmelerin (burada sayılmamış bilgiler ve patent ve benzeri buluş\r\nsözleşmeleri hariç) yerine geçer. Sözleşme değişiklikleri ancak yazılı yapılabilir.</br></br>\r\n<b>7- TEBLİGAT</b></br>\r\nTarafların işbu sözleşmenin atıfta bulunduğu sözleşmelerde, belge ve metinlerde belirttikleri\r\nadresleri tebligata elverişli adresleri olup herhangi bir değişiklik karşı tarafa yazılı olarak\r\nbildirilmemiş bulundukça bu adreslere yöneltilecek tebligatlar hukuken geçerli\r\naddolunacaktır.</br></br>\r\n<b>8- YÜRÜRLÜK</b></br>\r\nİşbu sözleşme 8 (sekiz) maddeden oluşmakta olup taraflar arasında düzenlenmiş özgür\r\niradeleriyle okunup kabul edilmiştir.', '<b><center>MESAFELİ SATIŞ SÖZLEŞMESİ</center></b></br></br>\r\n<b>MADDE 1 TARAFLAR</b></br></br>\r\n\r\n\r\n<b>1.1-SATICI</b></br>\r\n\r\nÜnvanı: UmutMagazam</br>\r\n\r\nAdresi: Esenler/İstanbul</br>\r\n\r\nTelefon: </br> \r\n\r\nFax: </br> \r\n\r\nEposta adresi: umutmagazam@gmail.com</br>\r\n\r\n\r\n<b>1.2-ALICI</b></br>\r\n\r\nAdı/Soyadı/Ünvanı:</br>\r\n\r\nAdresi:</br>\r\n\r\nTelefon: </br>\r\n\r\nEposta adresi: </br>\r\n\r\n<b>MADDE 2 KONU</b></br>\r\n\r\nİşbu sözleşmenin konusu, MÜŞTERİ\'nin www.gizia.com internet sitesinden elektronik ortamda siparişini yaptığı ve Madde 3.1 de kodu, adı, adedi ve satış fiyatı belirtilen ürünün/ürünlerin satışı ve teslimi ile ilgili olarak 6502 sayılı Tüketicinin Korunması Hakkındaki Kanun hükümleri gereğince tarafların hak ve yükümlülüklerinin saptanmasıdır.\r\n\r\nMADDE 3 SÖZLEŞME KONUSU ÜRÜN, ÖDEME VE TESLİMATINA İLİŞKİN HUSUSLARIN BELİRLENMESİ</br>\r\n\r\n\r\n\r\n<b>3.1-ÜRÜNLER</b></br>\r\n\r\nMal ya da hizmetlerin temel özellikleri www.gizia.com adresinde yer almaktadır. \r\n\r\nListelenen ve sitede ilan edilen fiyatlar satış fiyatıdır. İlan edilen fiyatlar ve vaatler güncelleme yapılana ve değiştirilene kadar geçerlidir. Süreli olarak ilan edilen fiyatlar ise belirtilen süre sonuna kadar geçerlidir.\r\n\r\nSözleşme Konusu mal ya da hizmetin tüm vergileri satış fiyatına dahildir.</br>\r\n\r\n\r\n<b>3.2-TESLİMAT ŞEKLİ VE PLANI</b></br>\r\n\r\nTeslimat Adresi: </br>\r\n\r\nTeslim Edilecek Kişi:</br>\r\n\r\nFatura Bilgiler:</br>\r\n\r\nÜrün sevkiyatlarına ürün Gizia Moda Tekstil San. ve Dış Tic. Ltd. Şti. tarafından tedarik edildikten sonraki en geç 2 işgünü içinde başlanacaktır. 150 TL üzeri siparişlerde kargo ücretsizdir. 150 TL altı siparişlerde ürün sevkiyat masrafı olan kargo ücreti ALICI tarafından ödenecektir. </br>\r\n\r\n<b>3.3 GECİKME FAİZİ</b></br>\r\n\r\nÖdeme peşin ya da kredi kartı ile yapılacağı için SATICI tarafından gecikme faizi uygulanmaz.</br>\r\n\r\n\r\n<b>MADDE 4 GENEL HÜKÜMLER</b></br>\r\n\r\n4.1) ALICI, www.gizia.com.com internet sitesinde sözleşme konusu ürünün temel nitelikleri, satış fiyatı ve ödeme şekli ile teslimata ilişkin ön bilgileri okuyup bilgi sahibi olduğunu ve elektronik ortamda gerekli teyidi verdiğini beyan eder. ALICI; bu Ön Bilgilendirmeyi elektronik ortamda teyit etmekle, mesafeli sözleşmelerin akdinden önce, SATICI tarafından ALICI\'ya verilmesi gereken adres, siparişi verilen ürünlere ait temel özellikler, ürünlerin vergiler dahil fiyatı, ödeme ve teslimat bilgilerini de doğru ve eksiksiz olarak edindiğini teyid etmiş olur.\r\n\r\n4.2) Sözleşme konusu ürün, yasal 30 günlük süreyi aşmamak koşulu ile her bir ürün için ALICI\'nın yerleşim yerinin uzaklığına bağlı olarak internet sitesinde yer alan ön bilgiler içinde açıklanan süre içinde ALICI veya gösterdiği adresteki kişi/kuruluşa teslim edilir.\r\n\r\n4.3) Kargo firmasının, ürünü ALICI’ya teslimi aşamasında karşılaşacağı her türlü sorun nedeniyle, siparişi verilen ürünün ALICI\'ya teslim edilememesinden dolayı SATICI sorumlu tutulamaz.\r\n\r\n4.4) SATICI, sözleşme konusu ürünün sağlam, eksiksiz, siparişte belirtilen niteliklere uygun ve varsa garanti belgeleri ve kullanım kılavuzları ile teslim edilmesinden sorumludur.\r\n\r\n4.5) SATICI, sözleşmeden doğan ifa yükümlülüğünün süresi dolmadan ALICI’yı bilgilendirmek ve açıkça onayını almak suretiyle eşit kalite ve fiyatta farklı bir ürün tedarik edebilir.\r\n\r\n4.6) SATICI, sipariş konusu ürün veya hizmetin yerine getirilmesinin imkânsızlaşması halinde sözleşme konusu yükümlülüklerini yerine getiremezse, bu durumu, sözleşmeden doğan ifa yükümlülüğünün süresi dolmadan tüketiciye bildirir ve 10 iş günlük süre içinde toplam bedeli ALICI’ya iade eder.\r\n\r\n4.7) Ürünün teslimatı için işbu Ön Bilgilendirme Formunun elektronik ortamda teyid edilmesi şarttır. Herhangi bir nedenle ürün bedeli ödenmez veya banka kayıtlarında iptal edilir ise, SATICI ürünün teslimi yükümlülüğünden kurtulmuş kabul edilir.\r\n\r\n4.8) Ürünün tesliminden sonra ALICI\'ya ait kredi kartının ALICI\'nın kusurundan kaynaklanmayan bir şekilde yetkisiz kişilerce haksız veya hukuka aykırı olarak kullanılması nedeni ile ilgili banka veya finans kuruluşun ürün bedelini SATICI\'ya ödememesi halinde, ALICI kendisine teslim edilmiş olması kaydıyla ürünü 3 gün içinde SATICI\'ya iade etmek zorundadır. Bu takdirde nakliye giderleri ALICI\'ya aittir.\r\n\r\n4.9) SATICI mücbir sebepler veya nakliyeyi engelleyen hava muhalefeti, ulaşımın kesilmesi gibi olağanüstü durumlar nedeni ile sözleşme konusu ürünü süresi içinde teslim edemez ise, durumu ALICI\'ya bildirmekle yükümlüdür. Bu takdirde ALICI siparişin iptal edilmesini, sözleşme konusu ürünün varsa emsali ile değiştirilmesini ve/veya teslimat süresinin engelleyici durumun ortadan kalkmasına kadar ertelenmesi haklarından birini kullanabilir. ALICI\'nın siparişi iptal etmesi halinde ödediği tutar 10 gün içinde kendisine nakden ve defaten ödenir. ALICI’nın kredi kartı ile yaptığı ödemelerde ise, ürün tutarı, siparişin ALICI tarafından iptal edilmesinden sonra 7 gün içerisinde ilgili bankaya iade edilir. Bu tutarın bankaya iadesinden sonra ALICI hesaplarına yansıması tamamen banka işlem süreci ile ilgili olduğundan, ALICI, olası gecikmeler için SATICI’nın herhangi bir şekilde müdahalede bulunmasının mümkün olamayacağını ve SATICI tarafından kredi kartına iade edilen tutarın banka tarafından ALICI hesabına yansıtılmasının ortalama 2 ile 3 haftayı bulabileceğini şimdiden kabul etmektedir.</br>\r\n\r\n<b>MADDE 5 ÖDEME İADE PROSEDÜRÜ</b></br>\r\n\r\nMÜŞTERİ’nin cayma hakkını kullandığı durumlarda ya da siparişe konu olan ürünün çeşitli sebeplerle tedarik edilememesi veya hakem heyeti kararları ile MÜŞTERİ’ye bedel iadesine karar verilen durumlarda, SATICI tahsil etmiş olduğu tutarın tamamını tahsilatın yapıldığı kredi kartına tek seferde 14 gün içerisinde iade edecektir. Banka tarafından, MÜŞTERİ ürünü kaç taksit ile aldıysa ödeme iadesini de yine taksitli olarak aynı adetteki taksitle MÜŞTERİ kredi kartlarına yapmaktadır. Eğer iade tarihi ile kartın hesap kesim tarihleri çakışmazsa her ay karta 1 (bir) iade yansıyacak ve MÜŞTERİ iade öncesinde ödemiş olduğu taksitleri satışın taksitleri bittikten sonra, iade öncesinde ödemiş olduğu taksitleri sayısı kadar ay daha alacak ve mevcut borçlarından düşmüş olacaktır.\r\n\r\nSatın alınmış ürünlerin iadesi durumunda; SATICI tahsil etmiş olduğu tutarın tamamını tahsilatın yapıldığı kredi kartına tek seferde iade edecektir. Banka tarafından, MÜŞTERİ ürünü kaç taksit ile aldıysa ödeme iadesini de yine taksitli olarak aynı adetteki taksitle MÜŞTERİ kredi kartlarına yapmaktadır. Eğer iade tarihi ile kartın hesap kesim tarihleri çakışmazsa her ay karta 1 (bir) iade yansıyacak ve MÜŞTERİ iade öncesinde ödemiş olduğu taksitleri satışın taksitleri bittikten sonra, iade öncesinde ödemiş olduğu taksitleri sayısı kadar ay daha alacak ve mevcut borçlarından düşmüş olacaktır.\r\n\r\nMÜŞTERİ, bu prosedürü okuduğunu ve kabul ettiğini kabul ve taahhüt eder.</br>\r\n\r\n\r\n<b>MADDE 6 CAYMA HAKKI</b></br>\r\n\r\n<b>ALICI;</b> mal satışına ilişkin mesafeli sözleşmelerde, ürünün kendisine veya gösterdiği adresteki kişi/kuruluşa teslim tarihinden itibaren 14 (ondört) iş günü içerisinde hiçbir hukuki ve cezai sorumluluk üstlenmeksizin ve hiçbir gerekçe göstermeksizin malı reddederek sözleşmeden cayma hakkını kullanabilir. Hizmet sunumuna ilişkin mesafeli sözleşmelerde ise, bu süre sözleşmenin imzalandığı tarihte başlar. Cayma hakkı süresi sona ermeden önce, tüketicinin onayı ile hizmetin ifasına başlanan hizmet sözleşmelerinde cayma hakkı kullanılamaz. Cayma hakkının kullanımından kaynaklanan masraflar SATICI’ya aittir. Cayma hakkının kullanılması için 14 iş günlük süre içinde SATICI\'ya iadeli taahhütlü posta, faks veya e-posta ile yazılı bildirimde bulunulması ve ürünün 5-e madde hükümleri çerçevesinde kullanılmamış olması şarttır. Bu hakkın kullanılması halinde,\r\na) 3. kişiye veya ALICI’ya teslim edilen ürünün faturası, (İade edilmek istenen ürünün faturası kurumsal ise, geri iade ederken kurumun düzenlemiş olduğu iade faturası ile birlikte gönderilmesi gerekmektedir. Faturası kurumlar adına düzenlenen sipariş iadeleri İADE FATURASI kesilmediği takdirde tamamlanamayacaktır.)\r\nb) Cayma hakkını kullanırken belirtilen dilekçe,\r\nc) İade edilecek ürünlerin kutusu, ambalajı, varsa standart aksesuarları ile birlikte eksiksiz ve hasarsız olarak teslim edilmesi gerekmektedir.\r\nd) SATICI, cayma bildiriminin kendisine ulaşmasında itibaren en geç 10 günlük süre içerisinde toplam bedeli ve alıcıyı borç altına sokan belgeleri ALICI’ya iade etmek ve 20 günlük süre içerisinde malı iade almakla yükümlüdür.\r\ne) ALICI’nın kusurundan kaynaklanan bir nedenle malın değerinde bir azalma olursa veya iade imkânsızlaşırsa ALICI kusuru oranında SATICI’nın zararlarını tazmin etmekle yükümlüdür. Kişiye özel ölçü ve ürünler SATICI tarafından iade alınamaz. Hijyen gerektiren küpe vb ürünler SATICI tarafından iade alınamaz. Cayma hakkı kullanılmak istenen ürünler kullanılmamış olmalıdır. Bir defaya mahsus paketi açılan teknolojik ürünler SATICI tarafından iade alınamamaktadır.\r\nf) Cayma hakkının kullanılması nedeniyle SATICI tarafından düzenlenen Alışveriş çeki kullanabilme tutarının altına düşülmesi halinde kampanya kapsamında faydalanılan Alışveriş çeki tutarı iptal edilir.</br>\r\n\r\n<b>MADDE 7  YETKİLİ MAHKEME</b></br>\r\n\r\nİşbu sözleşmenin uygulanmasında, Sanayi ve Ticaret Bakanlığınca ilan edilen değere kadar Tüketici Hakem Heyetleri ile ALICI\'nın veya SATICI\'nın yerleşim yerindeki Tüketici Mahkemeleri yetkilidir. Alıcı tarafından başvurulacak  merciilerdir.\r\n\r\nSiparişin gerçekleşmesi durumunda ALICI işbu sözleşmenin tüm koşullarını kabul etmiş sayılır.\r\n\r\nİşbu Sözleşme ticari amaçlarla yapılmıştır.</br>\r\n\r\n \r\n\r\n<b>SATICI</b></br>\r\n\r\n:\r\n\r\nUmut Magazam\r\n\r\nALICI\r\n\r\n:\r\n\r\nTARİH\r\n\r\n:\r\n\r\n', '<center><b>Ödeme ve Teslimat İçerik Örneği</center></b></br></b>\r\n\r\n<b>Ödeme ve Teslimat</b></br></br>\r\n\r\n<b>1) Banka Havalesi veya EFT (Elektronik Fon Transferi)</b> yaparak\r\nAkbank, Finasbank, Garanti Bankası, T.İş Bankası ve Yapı Kredi bankası hesaplarımızdan (TL) herhangi birine yapabilirsiniz</br>\r\n\r\n<b>2) Sitemiz üzerinden kredi kartlarınız ile</b></br>\r\nHer türlü kredi kartınıza online tek ödeme ya da Akbankdan  online taksit imkânlarımızdan yararlanabilirsiniz. Online ödemelerinizde siparişiniz sonunda kredi kartınızdan tutar çekim işlemi gerçekleşecektir. </br>Muhtemel sipariş iptali veya stok sorunları nedeniyle sipariş iptallerinde kredi kartınıza para iadesi 3 iş günü içerisinde yapılacaktır.</br></br>\r\n\r\n<b>3) Sipariş Bedeli İadesi</b> </br>\r\nSiparişlerinizin olası sebeplerle iptali durumunda; UmutMagazam Limited Şirketi üç iş günü içerisinde ürün bedelini hesabınıza ve/veya kredi kartınıza iade eder. Ancak, banka hesap bilgilerinizi ve/veya kredi kartı bilgilerinizi doğru ve eksiksiz olarak şirketimiz finans yetkililerine bildirmeniz gerekmektedir.</br></br> \r\n\r\n<b>4) Teslimat</b></br> \r\nSipariş etmiş olduğunuz ürünleri aynı gün kargoya teslim etmeye gayret ediyoruz. Temini zaman alan ürünler için kargo teslim süresi ürün detayında belirtildiği gibi 3 iş günüdür. Gecikmesi muhtemel teslimat durumunda size bilgi verilecektir.\r\nÜrün teslimatının aksamadan gerçekleştirilebilmesi için lütfen gün içinde bulunduğunuz yerin adresini teslimat adresi olarak bildiriniz. \r\nTalepleriniz sipariş sonunda belirlemiş olduğunuz teslimat tipine göre hazırlanmak üzere işleme alınacaktır. İstanbul merkezli şirketimizden ürünler XXXXXXXX kargo firmasıyla gönderilecektir. Siparişleriniz onaylandıktan sonra en geç 2 (iki) iş günü sonunda Kargo firmasına teslim edilir. \r\nMüşteri temsilcimize danışarak değişik teslimat şartları konusunda görüşebilirsiniz. Ayrıca kargo teslimatları sadece Türkiye için geçerlidir</br></br>\r\n\r\n<b>5) Ödeme Takibi</b> </br>\r\nSöz konusu sistem herhangi bir sorun nedeni ile işlemi gerçekleştiremiyorsa ödeme sayfası sonucunda ziyaretçimiz bu durumdan haberdar edilmektedir. \r\nBelirtilen adreste herhangi bir hata durumunda teslimatı gerçekleşemeyen sipariş ile ilgili olarak siparişi veren ile bağlantı kurulmaktadır.\r\nZiyaretçimiz tarafından belirtilen e-posta adresinin geçerliliği siparişin aktarılmasını takiben gönderilen otomatik e-posta ile teyit edilmektedir. \r\nTeslimatın gerçekleşmesi konusunda müşteri kadar kredi kartı sistemini kullandığımız bankaya karşı da sorumluluğumuz söz konusudur. </br></br>\r\n \r\n <b>Lütfen dikkat ediniz!</b></br>\r\nSevkiyat sırasında zarar gördüğünü düşündüğünüz paketleri, teslim aldığınız firma yetkilisi önünde açıp kontrol ediniz. Eğer üründe herhangi bir zarar olduğunu düşünüyorsanız kargo firmasına tutanak tutturularak ürünü teslim almayınız. \r\nÜrün teslim alındıktan sonra kargo firmasının görevini tam olarak yerine getirdiği kabul edilmektedir. \r\nÜrün hasarlı ise: Hazırlamış olduğunuz tutanağı en kısa zamanda 0212 5555555 numaralı fax’a gönderin ve durumu umutmagamam@gmail.com mail adresine bildiriniz. \r\nBu işlemleri gerçekleştirdiğiniz takdirde paketinizle ilgili çalışmalara başlayarak, en kısa zamanda teslimatın tekrarlanmasını sağlayacağız.\r\nBu e-posta içinde ürünü neden iade etmek istediğinizi kısaca açıklarsanız ürün ile ilgili çalışmalarımızda bize yardımcı olmuş olursunuz.\r\n', ' <b><center>İptal, İade, Değişim</center></b></br></br></br>\r\n<b>İade Şartları</b>\r\n\r\nŞirketimiz, tüketici haklarını korumakta ve satış sonrası müşteri memnuniyetini en ön planda tutmaktadır. Satın aldığınız ürünlerle ilgili yaşayabileceğiniz memnuniyetsizlik, üretim ve servis kaynaklı her türlü sorun, titizlikle değerlendirilmekte ve en kısa sürede çözüme kavuşturulmaktadır.\r\n\r\nÜrün iadesi konusunda sizlere daha iyi ve hızlı bir şekilde hizmet verebilmemiz için gerekli olan şartları aşağıda bulabilirsiniz; Bunlardan herhangi birinin eksik olması durumunda ürün iadesi kabul edilmemektedir.\r\n\r\nİade İçin İstediklerimiz\r\n\r\n<b>1. İade Edilecek Ürün</b></br>\r\n\r\n<b>2. İade Edilecek Ürünün Faturası (Tüm nüshaları ile birlikte)</b></br>\r\n\r\n<b>İade Edilecek Ürün</b></br>\r\n<b>a- </b>Kullanılmış veya hasar görmüş ürünlerin iadesi kabul edilmemektedir.\r\n\r\n<b>b-</b> İade edilecek ürünün, 14 gün içerisinde teslim alındığı şekilde, standart aksesuarları ile birlikte eksiksiz ve hasarsız olarak teslim edilmesi gerekmektedir.\r\n\r\n<b>İade Edilecek Ürünün Faturası</b></br>\r\n<b>a-</b> İade işlemi için ürünün faturasının gönderilmesi gerekmektedir.\r\n\r\n<b>b- </b>İade etmek istediğiniz ürünün faturası şirket adına ise, geri iade ederken şirketinin düzenlemiş olduğu iade faturası ile birlikte göndermesi gerekmektedir. İade faturası kesilmesi gerekmektedir.</br>\r\n\r\n<b>Diğer Şartlar ve İade Kargo Ücretleri Hakkında</b></br>\r\n\r\n<b>a- </b>İade etmek istediğiniz ürün / ürünler ayıplı ise anlaşmalı kargo firmalarımızla gönderildiği taktirde, kargo ücreti firmamız tarafından karşılanmaktadır.\r\n\r\n<b>b-</b> Kalite Güvence departmanımıza gelen ürünlerin, iade şartlarına uygun ulaştırılması durumunda ürün tutarlarının iadesi, ürünün tarafımıza ulaştığı gün işleme alınacaktır. İadenin hesabınıza yansıma süresi, bankanızın inisiyatifindedir.\r\n\r\n<b>c-</b> İade edeceğiniz ürünleri Aras Kargo ile ücretsiz gönderebilirsiniz.</br>\r\n\r\n<b>İade Edilecek Ürünün Gönderilmesi</b></br>\r\n\r\nİade edilecek ürün sadece anlaşmalı olduğumuz kargo firmaları tarafından teslim alınabilir. Bunun dışında herhangi bir kargo şirketiyle elimize ulaşan ürünlerin iadesi ve ulaşım bedeli kabul edilmeyecektir.\r\n\r\n<b>Genel iade şartları aşağıdaki gibidir;</b></br>\r\n\r\n- İadeler mutlak surette orijinal kutu veya ambalajı ile birlikte yapılmalıdır.\r\n\r\n- Orijinal kutusu/ambalajı bozulmuş (örnek: orijinal kutu üzerine kargo etiketi yapıştırılmış ve kargo koli bandı ile bantlanmış ürünler kabul edilmez) tekrar satılabilirlik özelliğini kaybetmiş, başka bir müşteri tarafından satın alınamayacak durumda olan ürünlerin iadesi kabul edilmemektedir.\r\n\r\n- İade etmek istediğiniz ürün ile birlikte orijinal fatura (sizdeki bütün kopyaları) ve iade sebebini içeren bir dilekçe göndermeniz gerekmektedir.\r\n\r\n- İade etmek istediğiniz ürün / ürünler ayıplı ise kargo ücreti firmamız tarafından karşılanmaktadır. Bu durumda da anlaşmalı kargolar ile gönderim yapmanız gerekir. Diğer durumlarda ise kargo ücreti size aittir.\r\n\r\n<b>Sipariş İptali</b></br>\r\n\r\nDeğerli müşterilerimiz yanlış verdiğiniz veya vazgeçtiğiniz siparişlerinizi iptal ettirebilirsiniz. Bazen yoğunluktan mailler geç kontrol edilmektedir. Ürünün kargoya verilmiş olma ihtimali ortaya çıkmaktadır. İptal işlemlerinde ürün kargoya verilmemişse ücretin tamamı işlemi gerçekleştirdiğiniz yöntemle iade edilir. Ürün kargoya verilmişse kargo ücreti veya ücretleri kesilerek iadesi yapılır.\r\n\r\n<b>Değişim Şartları</b></br>\r\n\r\nOrjinal Kartuş, Toner ve Fotokopi Tonerlerinde Paketi Açılmış Ürünlerin Değişimi ve İptali Malesef Yapılmamaktadır. Paketi Açılmayan Ürünlerin 14 İş Günü İçerisinde Değişim Mevcuttur. Muadil Ürünlerde Değişim ve İptal Mevcuttur.\r\n\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(10) UNSIGNED NOT NULL,
  `MenuId` int(10) UNSIGNED NOT NULL,
  `UrunTuru` varchar(100) NOT NULL,
  `UrunAdi` varchar(255) NOT NULL,
  `UrunFiyati` double UNSIGNED NOT NULL,
  `ParaBirimi` char(3) NOT NULL,
  `KdvOrani` int(2) UNSIGNED NOT NULL,
  `UrunAciklamasi` text NOT NULL,
  `UrunResmiBir` varchar(30) NOT NULL,
  `UrunResmiIki` varchar(30) NOT NULL,
  `UrunResmiUc` varchar(30) NOT NULL,
  `UrunResmiDort` varchar(30) NOT NULL,
  `VaryantBasligi` varchar(100) NOT NULL,
  `KargoUcreti` double UNSIGNED NOT NULL,
  `Durumu` tinyint(1) UNSIGNED NOT NULL,
  `ToplamSatisSayisi` int(10) UNSIGNED NOT NULL,
  `YorumSayisi` tinyint(1) UNSIGNED NOT NULL,
  `ToplamYorumPuani` int(10) UNSIGNED NOT NULL,
  `GoruntulenmeSayisi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunvaryantlari`
--

CREATE TABLE `urunvaryantlari` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `VaryantAdi` varchar(100) NOT NULL,
  `StokAdedi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(10) UNSIGNED NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `Sifre` varchar(100) NOT NULL,
  `IsimSoyisim` varchar(100) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL,
  `Cinsiyet` varchar(5) NOT NULL,
  `Durumu` tinyint(1) NOT NULL,
  `SilinmeDurumu` tinyint(1) UNSIGNED NOT NULL,
  `KayitTarihi` int(10) NOT NULL,
  `KayitIpAdresi` varchar(20) NOT NULL,
  `AktivasyonKodu` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `EmailAdresi`, `Sifre`, `IsimSoyisim`, `TelefonNumarasi`, `Cinsiyet`, `Durumu`, `SilinmeDurumu`, `KayitTarihi`, `KayitIpAdresi`, `AktivasyonKodu`) VALUES
(2, 'yasarumut146@gmail.com', 'c1217168b482bf7f9cc248f88335c5a8', 'Umut Yaşar', '5315917939', 'Erkek', 0, 0, 1617394527, '::1', '86640-93131-97178-23862'),
(8, 'yasarumut69@gmail.com', 'c1217168b482bf7f9cc248f88335c5a8', 'Umut Yaşar', '5315917939', 'Erkek', 0, 0, 1618171403, '::1', '18206-35293-72094-14931');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yoneticiler`
--

CREATE TABLE `yoneticiler` (
  `id` int(10) UNSIGNED NOT NULL,
  `KullaniciAdi` varchar(100) NOT NULL,
  `Sifre` varchar(100) NOT NULL,
  `IsimSoyisim` varchar(100) NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL,
  `SilinemeyecekYoneticiDurumu` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yoneticiler`
--

INSERT INTO `yoneticiler` (`id`, `KullaniciAdi`, `Sifre`, `IsimSoyisim`, `EmailAdresi`, `TelefonNumarasi`, `SilinemeyecekYoneticiDurumu`) VALUES
(1, 'yasarumut69@gmail.com', 'c1217168b482bf7f9cc248f88335c5a8', 'Umut Yaşar', 'yasarumut69@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `Puan` tinyint(1) UNSIGNED NOT NULL,
  `YorumMetni` text NOT NULL,
  `YorumTarihi` int(10) NOT NULL,
  `YorumIpAdresi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `UrunId`, `UyeId`, `Puan`, `YorumMetni`, `YorumTarihi`, `YorumIpAdresi`) VALUES
(2, 3, 1, 4, 'Mükemmel', 1546102495, '::1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `adresler`
--
ALTER TABLE `adresler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bankahesaplarimiz`
--
ALTER TABLE `bankahesaplarimiz`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bannerlar`
--
ALTER TABLE `bannerlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `favoriler`
--
ALTER TABLE `favoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `havalebildirimleri`
--
ALTER TABLE `havalebildirimleri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kargofirmalari`
--
ALTER TABLE `kargofirmalari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menuler`
--
ALTER TABLE `menuler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sorular`
--
ALTER TABLE `sorular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sozlesmelervemetinler`
--
ALTER TABLE `sozlesmelervemetinler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunvaryantlari`
--
ALTER TABLE `urunvaryantlari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmailAdresi` (`EmailAdresi`);

--
-- Tablo için indeksler `yoneticiler`
--
ALTER TABLE `yoneticiler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `adresler`
--
ALTER TABLE `adresler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `bankahesaplarimiz`
--
ALTER TABLE `bankahesaplarimiz`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `bannerlar`
--
ALTER TABLE `bannerlar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `favoriler`
--
ALTER TABLE `favoriler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `havalebildirimleri`
--
ALTER TABLE `havalebildirimleri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kargofirmalari`
--
ALTER TABLE `kargofirmalari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menuler`
--
ALTER TABLE `menuler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sorular`
--
ALTER TABLE `sorular`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sozlesmelervemetinler`
--
ALTER TABLE `sozlesmelervemetinler`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `urunvaryantlari`
--
ALTER TABLE `urunvaryantlari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `yoneticiler`
--
ALTER TABLE `yoneticiler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
