/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.0.67-community-nt : Database - dentrix
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dentrix` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dentrix`;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `fname` varchar(50) default NULL,
  `lname` varchar(50) default NULL,
  `mname` varchar(50) default NULL,
  `contact_no` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id_Unique` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admins` */

insert  into `admins`(`id`,`user_id`,`fname`,`lname`,`mname`,`contact_no`,`email`,`address`) values 
(1,111111,'Admin','Admin','Admin','09123456789','admin@gmail.com','Tagum City');

/*Table structure for table `appointment` */

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `appointment_id` int(11) NOT NULL,
  `appointment_desc` varchar(50) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `status` varchar(50) NOT NULL default 'New Appointment',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `appointment_id_Unique` (`appointment_id`),
  KEY `idx_appointment` (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `appointment` */

insert  into `appointment`(`id`,`appointment_id`,`appointment_desc`,`appointment_date`,`appointment_time`,`status`) values 
(14,2,'Appointment for Braces Adjustment','2022-02-20','07:30:00','Done'),
(15,3,'Dental Cleaning','2022-02-22','14:30:00','Done'),
(16,4,'Appointment for Braces Adjustment','2022-03-18','13:00:00','Done'),
(17,5,'Appointment for Braces Adjustment','2022-03-18','19:35:00','Done'),
(18,6,'Appointment for Braces Adjustment','2022-03-19','11:30:00','Done'),
(19,7,'Appointment for Braces Adjustment','2022-03-24','14:30:00','New Appointment'),
(20,8,'Appointment for Dental Cleaning','2022-04-01','12:00:00','N/A'),
(21,9,'Appointment for Braces Adjustment','2022-03-20','15:00:00','N/A'),
(22,10,'Appointment for Braces Adjustment','2022-03-20','15:00:00','N/A'),
(23,11,'Appointment for Braces Adjustment','2022-03-20','00:00:00','N/A'),
(24,12,'Appointment for Braces Adjustment','2022-03-20','26:00:00','N/A'),
(25,13,'Appointment for Braces Adjustment','2022-03-22','16:00:00','For Next Appointment'),
(26,14,'Appointment for Braces Adjustment','2022-03-29','16:00:00','Done'),
(27,15,'Appointment for Braces','2022-03-29','16:30:00','New Appointment'),
(28,16,'Appointment for Braces Adjustment','2022-05-11','17:30:00','Done'),
(29,17,'Appointment for Braces Adjustment','2022-05-13','14:30:00','New Appointment');

/*Table structure for table `dentist` */

DROP TABLE IF EXISTS `dentist`;

CREATE TABLE `dentist` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `fname` varchar(50) default NULL,
  `lname` varchar(50) default NULL,
  `mname` varchar(50) default NULL,
  `gender` varchar(10) default NULL,
  `contact_no` varchar(11) default NULL,
  `email_address` varchar(50) default NULL,
  `dob` date default NULL,
  `address` varchar(100) default NULL,
  `user_id` int(11) NOT NULL,
  `profile_pic` longblob,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `dentist_id_Unique` (`dentist_id`),
  KEY `idx_dentist` (`dentist_id`),
  KEY `user_id_Unique` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `dentist` */

insert  into `dentist`(`id`,`dentist_id`,`fname`,`lname`,`mname`,`gender`,`contact_no`,`email_address`,`dob`,`address`,`user_id`,`profile_pic`) values 
(1,124831,'Rae Kara','Malbog','Apura','Female','09123456700','raekara@gmail.com','1989-06-13','Tagum City',124831,'ÿØÿà\0JFIF\0\0\0\0\0\0\0ÿâøICC_PROFILE\0\0\0è\0\0\0\0\0\0\0mntrRGB XYZ Ù\0\0\0\0$\0acsp\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-\0\0\0\0)ø=Ş¯òU®xBúäÊƒ9\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0desc\0\0D\0\0\0ybXYZ\0\0À\0\0\0bTRC\0\0Ô\0\0dmdd\0\0	à\0\0\0ˆgXYZ\0\0\nh\0\0\0gTRC\0\0Ô\0\0lumi\0\0\n|\0\0\0meas\0\0\n\0\0\0$bkpt\0\0\n´\0\0\0rXYZ\0\0\nÈ\0\0\0rTRC\0\0Ô\0\0tech\0\0\nÜ\0\0\0vued\0\0\nè\0\0\0‡wtpt\0\0p\0\0\0cprt\0\0„\0\0\07chad\0\0¼\0\0\0,desc\0\0\0\0\0\0\0sRGB IEC61966-2-1 black scaled\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïcurv\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0#\0(\0-\02\07\0;\0@\0E\0J\0O\0T\0Y\0^\0c\0h\0m\0r\0w\0|\0\0†\0‹\0\0•\0š\0Ÿ\0¤\0©\0®\0²\0·\0¼\0Á\0Æ\0Ë\0Ğ\0Õ\0Û\0à\0å\0ë\0ğ\0ö\0û\r%+28>ELRY`gnu|ƒ‹’š¡©±¹ÁÉÑÙáéòú&/8AKT]gqz„˜¢¬¶ÁËÕàëõ\0!-8COZfr~Š–¢®ºÇÓàìù -;HUcq~Œš¨¶ÄÓáğş\r+:IXgw†–¦µÅÕåö\'7HYj{Œ¯ÀÑãõ+=Oat†™¬¿Òåø2FZn‚–ª¾Òçû		%	:	O	d	y		¤	º	Ï	å	û\n\n\'\n=\nT\nj\n\n˜\n®\nÅ\nÜ\nó\"9Qi€˜°Èáù*C\\u§ÀÙó\r\r\r&\r@\rZ\rt\r\r©\rÃ\rŞ\rø.Id›¶Òî	%A^z–³Ïì	&Ca~›¹×õ1OmŒªÉè&Ed„£Ãã#Ccƒ¤Åå\'Ij‹­Îğ4Vx›½à&Il²ÖúAe‰®Ò÷@eŠ¯Õú Ek‘·İ\Z\Z*\ZQ\Zw\Z\ZÅ\Zì;cŠ²Ú*R{£ÌõGp™Ãì@j”¾é>i”¿ê  A l ˜ Ä ğ!!H!u!¡!Î!û\"\'\"U\"‚\"¯\"İ#\n#8#f#”#Â#ğ$$M$|$«$Ú%	%8%h%—%Ç%÷&\'&W&‡&·&è\'\'I\'z\'«\'Ü(\r(?(q(¢(Ô))8)k))Ğ**5*h*›*Ï++6+i++Ñ,,9,n,¢,×--A-v-«-á..L.‚.·.î/$/Z/‘/Ç/ş050l0¤0Û11J1‚1º1ò2*2c2›2Ô3\r3F33¸3ñ4+4e44Ø55M5‡5Â5ı676r6®6é7$7`7œ7×88P8Œ8È99B99¼9ù:6:t:²:ï;-;k;ª;è<\'<e<¤<ã=\"=a=¡=à> >`> >à?!?a?¢?â@#@d@¦@çA)AjA¬AîB0BrBµB÷C:C}CÀDDGDŠDÎEEUEšEŞF\"FgF«FğG5G{GÀHHKH‘H×IIcI©IğJ7J}JÄKKSKšKâL*LrLºMMJM“MÜN%NnN·O\0OIO“OİP\'PqP»QQPQ›QæR1R|RÇSS_SªSöTBTTÛU(UuUÂVV\\V©V÷WDW’WàX/X}XËY\ZYiY¸ZZVZ¦Zõ[E[•[å\\5\\†\\Ö]\']x]É^\Z^l^½__a_³``W`ª`üaOa¢aõbIbœbğcCc—cëd@d”dée=e’eçf=f’fèg=g“géh?h–hìiCišiñjHjŸj÷kOk§kÿlWl¯mm`m¹nnknÄooxoÑp+p†pàq:q•qğrKr¦ss]s¸ttptÌu(u…uáv>v›vøwVw³xxnxÌy*y‰yçzFz¥{{c{Â|!||á}A}¡~~b~Â#„å€G€¨\nkÍ‚0‚’‚ôƒWƒº„„€„ã…G…«††r†×‡;‡ŸˆˆiˆÎ‰3‰™‰şŠdŠÊ‹0‹–‹üŒcŒÊ1˜ÿfÎ6nÖ‘?‘¨’’z’ã“M“¶” ”Š”ô•_•É–4–Ÿ—\n—u—à˜L˜¸™$™™üšhšÕ›B›¯œœ‰œ÷dÒ@®ŸŸ‹Ÿú i Ø¡G¡¶¢&¢–££v£æ¤V¤Ç¥8¥©¦\Z¦‹¦ı§n§à¨R¨Ä©7©©ªª««u«é¬\\¬Ğ­D­¸®-®¡¯¯‹°\0°u°ê±`±Ö²K²Â³8³®´%´œµµŠ¶¶y¶ğ·h·à¸Y¸Ñ¹J¹Âº;ºµ».»§¼!¼›½½¾\n¾„¾ÿ¿z¿õÀpÀìÁgÁãÂ_ÂÛÃXÃÔÄQÄÎÅKÅÈÆFÆÃÇAÇ¿È=È¼É:É¹Ê8Ê·Ë6Ë¶Ì5ÌµÍ5ÍµÎ6Î¶Ï7Ï¸Ğ9ĞºÑ<Ñ¾Ò?ÒÁÓDÓÆÔIÔËÕNÕÑÖUÖØ×\\×àØdØèÙlÙñÚvÚûÛ€ÜÜŠİİ–ŞŞ¢ß)ß¯à6à½áDáÌâSâÛãcãëäsäüå„æ\ræ–çç©è2è¼éFéĞê[êåëpëûì†ííœî(î´ï@ïÌğXğåñrñÿòŒóó§ô4ôÂõPõŞömöû÷Šøø¨ù8ùÇúWúçûwüü˜ı)ıºşKşÜÿmÿÿdesc\0\0\0\0\0\0\0.IEC 61966-2-1 Default RGB Colour Space - sRGB\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0\0\0\0P\0\0\0\0\0\0meas\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0\0\03\0\0¤XYZ \0\0\0\0\0\0o¢\0\08õ\0\0sig \0\0\0\0CRT desc\0\0\0\0\0\0\0-Reference Viewing Condition in IEC 61966-2-1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0XYZ \0\0\0\0\0\0öÖ\0\0\0\0\0Ó-text\0\0\0\0Copyright International Color Consortium, 2009\0\0sf32\0\0\0\0\0D\0\0ßÿÿó&\0\0”\0\0ıÿÿû¡ÿÿı¢\0\0Û\0\0ÀuÿÛ\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ÿÂ\0ûû\0\"\0ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0ôÇbÙ5©O^öTf]@¥QUµ“Ìp.l`u€66ÄkB²ö$Ä¦Óï”u%3v9v8ÛcmŒ2(Gi1]\"W&&&#ÊË¶ÆØlm±” QRÍÏ¬º!Ô{A£²¾v—ÒÜ/N‹¥ÊB\nOZë83Ñ¹Ítˆàí3®ü—¬óV[a¥Øcb°\nP“âV8,Œ€ªA’‹QDlçŸUn|ãè©Êï”X[5IÊŠÈ`’²éÌ,¹—5j‘Ó†ÈT\nE\rµ‹3SV\"©]X V¸„\nÂ€mJq¶8‹Ì¹Õâ…„µíäêÍ³5¶ ;ìa•‰=\\IneêTæHQiKd{ÂÓO6ØÛcm¶08\\ØŒú‚y²ïçÜ€é[SĞH§f——¥©ÄÍB(qlcÑ˜àº…‰•­3-ß¥íÜõÊ…Já‚*a–˜*fR¡2¾Fb.rIn§\'/£;9ºQ©¤Ês›(*–…ÖÀYÎi÷Ï~ÙœÖØaËäòx ¿_İğİIö[åı#×V«A˜ŠÔmyÚVMl êPÀPá•WZ\\ÀcM‰¥Ì•¨]YO_5ó®ÆV—l@v6ØÛcm¶6ØáV˜–*6Ec”b•¶6P>Û\0ƒ>$µÉÏ>ÁQ^„$pC€VØ¦Ø(•VÎf¥)‡!‹,µÉÌ¸ä­t) \0-0ÀTh¦E–§CsX¡S)eufF†ÊUÁB	ËªvsVlZ‚²©+HĞU´ÄO&½/ËæS»}Šİ)üÁ>rKÀ§¥É]}ß9#ìº~¥>Ö}s–+yÙ+¨FÈ6É\n ‹\0eAÆ‹”©rm~™x¿Dúõ&–˜ÊvÆ ›lm±¶Ûll0vÆÛ)‰9ÁØlm±¶P‚@v0 8²0vÆÛ\0\"Õl†|¤ÌUÀYÈ-Ô‘¡³‹LÑ¶Ë¶P„T¢Íiò€\'[9ãÖ,å¯ATv2®Èb(ï.#\r6P+(ZduË\"Ó,yìíóüÏ&_GÎêô—Íôí9I%xòsËê×À+ô/âu3ên7-ÏV¯9}\\}š!.B‘¡ ¦\000EÄÒfÀ8›ó¼7_7VuR±–ûš¥œWY!ÈÊpÁ±¶\0Ä›lm±¶ÊÃ¤ÛcÃeé‘‘€U($jšS,°¸ìºQN\r\r‡]€(;—\r”\nŠ¬„ºÑ8ŞëS¤ÍU¤±Ñ¹2uh1M)®Špô-&Îœ(\n\'(I2”Ÿ—Ã®¯/wŸSfà’\ZPä–ÜÉ9£\"bFì¼íq	TÙÑådö©âRçìĞ.òÚ˜6ì˜r.9W0Aæ¬Á‚Ë¡ŞAm¹Øè¯!:t)-Û˜›™¥éY!i*Øç™,ì~;ÛÎ+ß¼äOSye=-çô÷œËè!©Îã¡7*—i4ÓåQ„²>\Z‚®±”á\n¥”@¦èæs±¹ë8Ai9DTªhÍ:Ÿ‡W{pÒ^ÓÎe¸“E²‘€šYÕ­PJÊœrìò·…•ôs/Q9:ŞòÉ¨s¹-VÀ­ í¥Á<³³Æó\nË§Ğê9í¥sä—£‰%RôÍ›Õå“Y³¨ã™z•9GRœ££YõdŸG	\nqÔ­)%0\'˜ƒ°Äe;c)[0Ø,š¯‡¡{)¯rÃ¾.²êHt&¤â­&ôÒÆ=a8Û¯W6ëÑÉNŒ±İYQÖ$J*…}03ªIgNDíb¶a1V¨ã,3Ì«²\\\0LÒNóDZµ’İ—‰úZX½çnyWhâs«r¼Uyãgná¡Ó2Ê‹D&´kdìZå5[€ËS·äyn‰•¥UIÚµépù<Õùú=9x»ŞCÊ|ñ~HJi¦«`Ô‰Ö¯J”|Ôg9¨\\Ä…ELT5µ};×å€¸êPàšPà`Šv6Ù6ÙNÄáA(¹°3eÁÑÛå^k¸Î¹ 6j¢œT8(©E6¬¬!R¡Lµ`ÀV\n àbERbª-Kltˆ«5HÜ²ë•Ï9°ĞÚá+¥ŠW‘A˜ÍÍ*Í±¶PE¦µ*Nì$:dC],C¦R5ROÖo¹M¯ÇLŞ¡Ì«×¹‰e-*\nøGgÏé®OW£CNq‹C›š[s„š*^YÒ­N”|‘İ³¤v0ŒÚ”TÙp‘Õœ >–e²û˜ïo”TcbE\'JPQ¬b¬`ÀÛ`‚qƒ¸âÁ±^Ş~Œláƒ—@P¨ª9™6$!È›`âAV¸€¾9ÅÔ®Hj\r2&!vÈ0]`VP+CPlÑœ4!µ¸2í±¤Ğ6B†°åUy€‡5–G§‰İ“ÎOGWŸ^Ìsëhá‡¬šBwsoÒ\'@”ğv˜óŸ«ÌçÒÑ‡,×G\"Îi²RUw¶,éJcSj4¨ÌĞ¹´»LÇÌíÏ«—«¦Ü$öG™é4N;RNuìc½ŞQ²¦Û(¢„Rc™Î¥NØÛ\0Á ƒ€b0r…£K|şœë£HÊø0 €C`âNèˆÅJ‚û•‹Í°¸ãRd±çS©!—§EÊb\r²ŒªDU&(Df\0;1%¬Ä\ZÅdmˆšäRBì1 ©\\ˆ\\“£áQäP#³eªŒ1TªlLÊ–Q\'¨NTKb\\šŸ3Åö—ãgõ\\^5ºO-Æ´<ô®Ä\\øRÍ.¨^˜àå©¥¤z%~4íëò+©íÉØÍÂ}1Cß‰FS‚¤Ì)3dPÙ<Å§çyÒı&ğyÏ©§‰éX6ÅF9\08ò pš‘ªôlhİ]Dk@‰gU8Y{#GJÀ†VK ]E#é‚Îò¼h‹$õ-â÷á±Ñ¤U±aÁb&8%1S2µh±]20ØÛUÀ„à„Ì†TD¢¥,GlUäò¶\\ÌI¢Uk\0İk.bÊ™Ô²ó­—ÉP„e$òxı/\' s°[ f–òóòa×ı~ĞC›ªxQîáŞvÎ?7£Â%U}O5çË®ßØ{ğÀàlC¶6$U¢è‚sqSÊRsËÙÄzş¯ÌûG£ƒV8¨Ä3¶*\"‡ÂÕ^,vÎ˜&UÏ`cIe˜	;%ˆBf*¢Y)‘ª”›æóK«–k›’ªê2OG¯†gWgè¯våU´üäO\\ù¨Àó9—Ú§²|>…õŒ(´Š(IgS<ÁeBQæFP£*ªeÚÀWÒb†fW\0Q,¢ ±€Ö—Zdõ‰[é*ˆ!Öä– ¥eÃ`ÇŸË×Éäôc=æ`ñ½?+¿9°´¨tSÚ~ıãËó}-NZt=[–8ß şo«Ë›ä-¿dfwÍÊí°\0¦™¦G™ây^‹G›ÏîpÔ§9ûÅWÓôü¯L£[p	Â“³E«ÉYj&¥BbºmtÆP:âe‰õNÎmT±X*üÑšèáÃ6û…/³Œkqõ#ÓÏ\'©>[ÛÂ‘Ô²ÏYS\"¯~P”§8=ÎŸ¼¾÷GËV>±ü_W6Ê0ÅJí€Ç0‰PDØ$VÈ“Î)IÊFÀ®)0¬Ll@ÅpÙ@ÙpH&Ûb&«ÇG™ÇİÇåô«fÆ–‚šÏïù^<”£Ïèq§W¯åzÑÁæú^UŒwğwğ‘i[G?Lk§«”Ü‘¶ ÄÚ•	\\•Šùş¯â<^šyÂ{_Q^Æ¯;Ñâ¶gÓ_Èõmr	¶eÃ€P´*†G\rLÈÒ¹L™)¦¥„¶GWœ~¼\'›Ù’ùÒô9ã•åÆzç¡F0C8ËK¬£àka‘²€i‘ÆÀÌNïKçÄ×Ôv|¿±‹ëèŞPq¦G\0›`d…fƒ`Êš…$-–\Z¢¦$óC\0aƒ†¦+†)¢Í&(Cªò.æmÇ¨tBíÆö7¡Á¼ñRzÎ¾zñışW©/êñ§1»Sòz±8m‚½4¦ÓÜØk\'\rD®‡ÊB¡‰“Ìó>“‘x{¸ãÇÏß–Äúo›ë—Úçğ¹ë§„ZOOİù£^¢5\0À-1JªšL\\¦•Šc<8PPÓ!TÌ¬3 –Ï‹óG†k¥øˆ¼ÜÕHs»§\'D‚z>}95HQ°Ã¨•&*B6LÍ×ƒåÅû<ËËôŸÉúø¾ÒÈEO9:4—¿fw2ô„¨&N1\\8L6L1V S(˜ücÂ^Îï•Öı¥~S½Ÿwy½gKEáöÁãëò£ÊçtšIZdı_;Ö=?ÒáÍóQÔ^—0=_?Ò—ƒÉö<‹wyíµ>WÒÅäa·=…eÖA\ZÌ¥9N\"Nè|€z2’ı”<êó=?\'¾=_ ùÖM¹ú#·èşkß;ö6Õ•”€ò#’¸¡J!*QŠåp0w™ZäË^JÃ.W­¦‡?¡å§”\\éÉßçt§G©ÄqÉ“uˆÖ6b¹[ G3#4ÉQ2f L\Z¶Ø·_›lß©íóı,…TÍ/‡ìøGÑ<,9–*€™XÃ\0†aFà;!áyç±äsT‹zŞ‰óÑúµ>D}?*ø]}q\rüè§Ôõüm­ğ8”è\n%ibèùŞêğwğæñ®Ú•âô9Míy¤qùŞŸŸKiÜì•¹)°\'B°ÅóÃ®§º§tÂâA18Ä ü–HñüßÃW…ßgÅö“šÜ²8¼ô^mßsÁ÷P Û\r²`rí°\"­A0áÄ°…–²µ^Ù×İs^o7»Ï^?O‚ÉÏ®6K¡8’’Õ%M6Æ8\\æ“=%¹Xkd–¶$(–+«#àD¼~¯¯—·™#Ğ§ïxg¯ÓÃÕV1%r_LÈÆKWŞŸ/¯çxkÑá·¢7o³Òyı—ShB:÷NİÌÅ•X”;‰ãqı*Ÿ#?­Jù%ú^I|ZöóÕÁ3éÇÏ´zÛÈµ{ğŠz‰ìÇ?•êùéäê¯OÏô|úƒÈ™ÔÅòÓµ5==MÓ	œˆ[\0â‘‹x½ğ3ùßå±îuüï\\½}¸ùŠ3Dš/£íüß´¾îG±s5L¾•YŒ\"Uj:ª\r¬›\\gPN­gtYX»5šílîts*â¡QÌ\'Øâáô¹O<ôŸŸéyéÅ\ZËmiØ³JîÙªÔ3JæùÔ[¡—œõ˜ânâyö9µŸV=9U6°VO]èy~–\r“)ğ½Ÿõzø»Lv6Ø|‡o/—ä/»æpôœëwO£ŞIÑcæ‘Ñ.>3Ñäá‘Ó¸¥^µü\rgÔßäi/×7Ìuóy]\'qå¤\\H*ƒ›ØÇÏqıdO­å_œŞ¯\"¯gÏF=şŸ­}*|ıcØo%Ûhx‹_\\ŞN¯V^j¯©.\r/hä2ôs¼Îçå×>p•ª´#\\‡«éüÏ²O‹Õ{«ÑíùEıoÙ:JaòaÄÁP˜«Â¢ê$U¢êí6`¡$óâ”ç+Ò\"áåéå9|Êã’Ã•Ş-ö¾oØ=/Şñ“Ë—O6—,ŠX>vX´¥Ãçf«Y¦u X0Ä4ŠW•æıÓŸÇ|—£Ÿ¨úÎÈtãIŒyĞøçOw%Ñ÷\'œzÜ?)®Î.E|®Ïbìğö:°‘Ñã:ãçsÜtJ!q¥×ì9ı¦—À_¡ã˜Ù:(:z|Å>‡«å~½şK¤úSãuG Ü´/¢JL²GŸ¼¯‰Éôª|œ~º+òê |ùôøÖE/ WèÜúF	T«ƒæïÛçÂı“¨\'g9[ruœ› èñò\\óÙ=}ä²w}\'™Ö×ræ±1Ôš‚9¤¥)”E=L¨ÌEÇ)‰Š©Ï«;)Y:¼l±~ş5ó¹=O4ò[¾	çuñc‹Ÿª:Œ¬“MD¤Õ(”ÆËm4öUÙZV¢²\nmµ>Å³çÓĞäéË—«Ÿ¶çë¯\Zæ¼çG&_kÍâ¹#ëw/¥ÜRtœNˆÅ\n/\'	êñùÑ;9 –Zscfa\rJ7¤­[ùÜôü–uÖüÄïò=¡¼|àêç>ª’T®\'œ+tqcÙíùv>º¿xú­óı‡¨Üv:41}êNnLŸ5æıw˜®9y³×Ò‡™4ìˆé³Ÿ¢ÚçB°f6,ìòıË\Z½{tÊX´ö¤¡ÕÊŠi44j5~Ï+©Ÿ£ëñ½z|H¹°¹°Ô‰,ª%¦Ø‘I*¤ácD@•KÕŠÊĞ¨N/Ûæ———Ğâ8ıs^¨_—ÜvBK:»ñ“Ğ·—loÑnGÏN§å¢Üsr§©?udøsïö|Ç\\×Ğnn¬oŸÌö<­N.î+ï—Øpùœ½ü-èOo³dáëyÕ™\"ñ—)Ù/œïã‚U\'2±Dj0\\¨Æ¢!÷¼¯k7ÉŸwœğ>¦œ·!Ñìpz	ãrz¾wN|îÉI.‰\0Štª,ÀTªÎ¿)=>ÏÖÛã«\\~g¸ö@Â\0ùÁ×vù)Ó’mjIÈ:¤‹É×ÏgJRº¡ĞÑG\ZjíÉhóy½>]HÏĞ$îÕ4ºè]/³èüïR}ùİúŒ«ä\'¢~nGÓôü¶zÚD¦™/^g‹h³TËŠˆ¬SH	:ş{Şğ#¿Ğñ;×³£Ğ<Ïë~V¼Ô£TõŒ×8º#[™æºZÏD‡B\\Áª.U{:eò«è1Íîğ÷gtóıI<kg§>nßRRJ’ÕÌ²pq§§ÃÅ%è”«0æ+6¥NwèÄé\Z,âİ”’]N¯SÉ÷%ğ¥éù¼ºowæı‰[Çè•tz\\¾Ï›ævùİ9Ò[R§Z³Ä%ps\n 5±ê‘!Ñ«•n\nƒ–é×¿KËÎôä+İBj4µ\"&ÄåksÍÃéy6C¢:<]9½!¥/#ñZ¯ÃßÏg“èr¯”È):éŒ;Ò[·tô}OŸöîz<ï&óç@‡Gw•Cé½O•ºı>KĞ>‡sĞ¦–[^y}=æÚ^¡ÍÏ¬÷ÏÏç—Ò§…Y~‡x¥züâ‹o;»G-™×Ğ¿–ÇÎÜñ®²A›<)/5^±éóëåqûUœh_|ãDé±½;§ŸOW§«:~n¾k<¿§ğ}]cÕáw>D{|´—Ò^it\"rÏ§ŸBÅ“nŠ¯1¨­(`•3ëƒÆç¤jêË\rïø>Š¬ı?–üşoFs\\ıôÑ[xı1É½0ŒÕ@¸*Q€,:o:ÎE„é0¼ÁdlEnOC‡×•évË›Ïèò«Üê•fèS\"¦Ïe8î\'Ll©À-ëÒlyö_?·ÆkŸaxIo+Òç8{ø»jö8.ÈúÛÕê[;ğ=¹JÙø>Ìlğ‡½£ÂìïÊœ½ª¾}êc²ü5^‚¶’v•ÕÁ\0˜TZ‰tš\\äFrLĞ\"ŠåLÔ]>ryİ\ZÄsÑ$o¦£®Bz~w>ÓæìCÅå÷ùuéZ:ï;Ê‹\"UF5¤ß—×É[W•ß|\r\n\Z¶¸òx}9†£`-ùÓ#åÌúRCŠ™¬´Š4¨ZXŞÍöKírÊ™×^áãN8¶²Ê±§Bç>´ÂWËB1ìç—î	(ÖZñé—‚])b˜Çyı2iôCçÂôršYô›	\\qG¯ŸYÏ²•ój{‰ÁÉ/½_Ÿï—·Í§g]bl¤4èK£[Îõ¡ün¹¦û½§¶‘\r€\\Dõx®y‰i¤=5ZvÑ{4.kÏ#”6+°ÁÁFjšTÄE´•z6NŸ#³Ï:ÜõÖ§š²Ü­3µ•xÑ:¹ú,õ;|¾ìuyÛ™väè†É¬Œ;L¡A¬òúGëÛÅè_\\şfùéçğè˜ğş€;<~l2èŠ-ÃMh[Y\ZˆP6¯ÊMÕKe´º]1rJªÑ¤’ôÎj:\"—‘:\\ÔmcÎÑ&`ê\Z-!3Âà›‡ĞXà§Jœ2´êkyñ©ôÄt`FæÃY”+;˜ØénKİ|Vò=ÉKÃ_>ZÍ¸:9jÑ)>“èË_OÄ!ÛÁĞzmá™¯¥Kç¯¥®>Ìô|{OOÁú)®Ë&±¦dpqÓo îC]{‘¢ÈšÇÁ—fh™º$Ã­˜œ¦ÃÕ„àöü+ŸŸ¼-¬›óÚo«M³¹s×›YªEn}\Zpi¯KÛùüï©ŞY×Uù:b»\0¨SZ6Hó_¹¾mN=q¤Åß[xÕÎ½EàÓ]æèŞ=F¦Õç¿:?OªÈh‘)9®¡Ï(é6/9‹<:€»ŒU¥Ï2XÃWU¼òz‡ÌdïÜµ©ÒfÆGTPòQDª42ôßÏºtÁÜã—B,ÛiQ>˜ƒ¤kËr¥Ì9ú§gdzCA–W—¹ùÒ_•ë¼·/y<‡ú>‡Ùñm•èÅ8QE~³££ËîÎ»:ùıvéó=??\\¼Ÿ7¹{ıS=$6g7IV6ïµÏÍõ7V¯ŒµÊ½\r×ĞNô8|o{çwÇ¦V•]ôsÚ¿¡’üïÑøW;t:…”/SA³½Kß¢’í\\m:êf«Í]·•&¬SHólœ+µùënœ9|ÏkÎË›ª^~¼­ÖZóÜŞŸ;Ê2ŞM¸®w¿¥É6°™¼è¯=ótvWŸNzØğ!ô}1ä®meP‚+m‚Ê`¶6ÀåØ)kğ‹ŸY8juHOS4›Fº:y»Ë4œ+nir²R9¿VÊÓeVrp^zæ¶år¨WŸÒÅèvvMqNşIÍÖÊzĞíçÓyİÎ¸úi]N\'Ù[CÌ×i.œ«Õæ´¿KÙó^uô\\ı>gÓæî¶ıü}œûFns›ÊkÛ-µÏÃê—Uéó¹÷NëçéEšú¯Ÿéæ3í[/èsõã¿gonIáû¹ğ¼öóÄ-	§À.…ŒY®ºrS=z»üqC	æ}wäèÎ®•†Z•ß?2-ré§îï0NÅóz9Ş»“&¯\'Ïõy=<9%×Å¬óurzTK,ttc\\ı¯æòéêLmh\\ÍA_ÄíÉ|ş“ËŸZjqëDÄÎ¤.8 Ë1»(ØA¤½(¾éÎ9ñÉbÃ¡šÊ´œä…¢^roÊë÷T±¥G=Ï?İŸ<öòÔz9g]ÜĞêSÉõVqô8ókÙæ[ŸN¾XÌqË]ó¶ã½óæ¾¥|~‰{Rvf<ş‚ë—¿«‡G—5ºåèçpèyË$y¤åYM(ôíëŸEŠğİg:P^‰H²-fe¸©Ñ¥•2›‡»Yä[Yó^_ÔüÅ)]hFQíÌZï¯–sÓÚ§Û5×:>\'Â/ÎòĞÊ×=ÔùúôãéòvÉŸ3Õğ×Yú±*yû7ÃÏêy‡?;ËÑÅç]¬s·Zœë|½]PéÍóş{×ğSëúü_K‡~¦›f»¡ë& Ù%šÔ^ÍçÏó~‡ÄÖxvÖZFbË9ÚK%ØÛe#]…™ƒ©6ß>Z–œÖç×¢ÃH‰y¹:¸ôn~tã¢›>½‹së.Nk9°ÖVK\n»sØqÙß§Î’õqh”¿#ÍT¤­y^™ÃK&\"ÌUÖæk%&\rtvyõgéü}%õıÙÆÛüí\"2M$©8\"_S¢æ¸ŠÄ‚Œ	\"P0v\0lb	Éòÿ\0SãÙâ5FØ\r„­ÑÉ¥µ:1¸¹9¹j‚0™ZröYãyŞ‡—ß‡µè|ÏlÆ…%gÖtùŸ—Ñv›coËN-O6œËÛ—©ÇØ›Ìl˜ìãèå˜Z_ò};yõıoŸõüı½Zsß—J£nü¼›sÆÃèù•==çö\râ{~%œÕ•Gu{e+Æ^p@2ËRûœ\\ô¿?TĞ4®]e\0T¦Öo Ô³èA8ú¢\"Q£ˆôÒÏp“G‘¬vÇlã[£™ŞïÇµæ¨F¬²Ì£BÊê¨Ã™š$éŠ¬5t×ÁS“¤©g¯Óùó/ÔÛæ}	¿YFÇE#*7=¥õ-¼&u±9yü™~£Ëºuo#¥{tT¾äâOaşSİ^ğŞe†ñ*±ó¢½G›Ã¼öÇÖ\\6Q’«’²õú=ó¿_r>wiNIFötvÆòø>O¯ãwàõƒïŸLšRúŞ‡Ëzû{|?w=ı7«/™Çìø½1è€nM8úhí­“/šâíæŞ[Ûñ½^]}~.¾nÈı¹ø>G¹åvåÏ{ôYËëñúY¯â{7æ•k\r£xwW©Ã£Ÿ7Ÿml£uŞ9ÍN¢÷ñwfÖ‰LiçIToÉk/îyúuÒ Dçx,½µ~‡s[7ƒæş“È¹ó.¤55‰F°)nˆóãi¬,”•ÚÌ®3Ãc¢œ¹/%uRà“.:·=²œ÷ÍÜİüZ›ÔñûO[–\\óGyı°¾—Fuôõ…W~7³ípuóÇ_WØ•êäìÏFåšŞ}ÔùşÙ_Ùğ}v½¿—úo¼¼îŞ:<äD.³P!ĞÒlnšx£D¯Aç2öFÍ¶nÉ¤íÆÉÉ/âû~/8¤Û¦+~jBÇ¼\'t£hhôG—è©ó7u¼®ùiXØì¬Ò#/\":ãüş>Ÿ0s~™ş[Ø²w«ãÕïÅÕô¼şµ·‰ëğæøÜ–rÕ^Z°Âs*Šf§°Ş‘õŸİ›uæ¦uÖgc ¥\rÏ×g#0²³F”Í§dÊ)ßåÓ7Õ\Z¯•ê|ö³ès	êQ;¹¢<İégêâ—Îš¥PÉás…Ùuˆ\\*;@ô&öŒ¹¤,/&(3%›Ÿ§:²Il‡Wêz›™!u¯sõg_Mnwšù®>®]óú>^¾ë‡Úñ}P÷ù™Öùo£ù­àuñö\"÷Ç¦oİùïkçÙáàdéœ0¢A¬»CÖÍ+E”6yCR“K}Ñ·L«»®•“Íñ½3¿rNNóx»Fªyúµyã¦Á@t\'O¡âé~ÂŸ\'èËÍËßw›­i*bcÃöµ:şsèştôºH<Åó#^÷W…êæÕ¼æŠùŞÇ“¯¨ºŞÆ•S—HY)Ó1©dT¯,›,×}%têæ±ie„°ú5+D‡G?v:VMæíä_Oàı›©Ç½¨8ı>)9z[²hyıŞlqºídŒ³Vš ÁZÀé‹I¥yœèš2!­”u@Õ[èC¶\\ÑÔñ£ô¼ÖxÜşÄ%òkZÄzd²ı¸§5Îz+¬·%Nh_š—«Š‡OIæô:©ê=hŞwg–yá[QqÊP`1ºy«-AÙĞ`ÒÚ³®7zÊÙÕ2¬ßAŠ¢ºñyŞŸŸ×¤úñ%)I’í«èhy¾9S¹“Z1¶Yz©ÉÒ#u¼qÁ>ïŸì•ùÿ\0 ğ{š°O˜åVô|Î¹IˆÍìîğ}Nz~X¬¬9ç\'Ö}+óè´Zk=Îµ¹ytARtŠàÕŞèâå(—çç—Úoœn}=£Â5ŸF¾Mæ½á|ŞZKxÔ‡).E¦²”›0•æMR¼À(ÂÇË€Ë‡dJ¦*Å+t7+]¼T=yÂš;6¤ã§“ÃÑ˜*ó^„`·¯˜éä¯=«—KĞeDn®£Ñ3·™éøÍHƒ¸»c`ÂíXÚWyÓ:.-«\Zg}æ¾6åÌÔè”\0•.Î]óá¹úò$eÙÅL b¸rŒ1ÎrOĞs+è›/±èxı±ßÕà{Å”åğ=ï(=“\'ÎËérüË}&>e>£×ô\0âñ¾«>Y=Ø/‘½.sÍ—t©{¡\\Z[Ç:–V5n{ ’¬‘ÔİşWqIRKÏèm nzdÏ,w·3¯Ly£SĞá¤QgÑf W$-Îl²=Ò®ÉÁ?Hm;ªy/ééx§é„ó\'é\"ğj%®ÒíG»H-Ï=:‡\0=JZ]ér[7«˜Pè§,¥æó=¤¹óØkŸ{n¾7Wi“Ï·z§dY«üÇŸª¸\rM°\0]YTvÃ:£­3Z’®wnjç}ZiJMzáåìówÎ\\ûvâvÔål˜f\\1˜WP©\\\r‚€ÊzşÇ“êdÖäèŠå\'?›èyç¹Ø]HÙpÙppÁ]2<‰Å5ÑätNÎZnSÔIS\Z-&ÖiH5ÍtÊô¬ĞÚA-éÔh¬Ü HÙQ^7^µD,&€i\'@‰/&uæçô¢q/[ÜòvYŠ,:Ç-ÃS£s´ñã¯q1ÚÜ@·a<ÎËÍn8{<·+P¬ıU»ô“/5Êk=¼>|SÔ—S©¸æu7×ó¨uï?‰}>y¬¤PX»`àhl%Î˜êÓ®k^=xé3Ñ,ë<İ{z#Ù€òƒÍæyyôñÛˆ*ÉÁdk	\0¦.”ìLÁQÔ\0‘e“ôÒ=ÎÂbl46qyŞ—ë´ÛÇóÏ©?.ÇÓØKlALñ8ıŞ¯\"½2³ŸƒÒ\\u”œÆi6±ĞÒ¤¡f,*™\Zğy®Î\"½[šGo8)Çºšç…n»z¸{ñJ°ÇSÆ!iÚY,µ{Î\"Rß;éEz56@\\l­’IÙeºOE„VÎ½ÍHêéó:Ò“§6:{+æ´éÕÙåVkİ§½8vòp¤[‚0Öz\'3k#¥ùªtm\'G•­PvR.\ZÌ	ØAYeïïğ[úˆø­úæ¥ÏÒÏæòújíãl.p*¤$a²µ›¡±@ÀJÙT Ü›–‹VuÍGÌ¤¿I¼]g°<|ÆñÉÛÀ±=îhğYå­³^œpı‹cì%$´Âã·œC˜\"‰VyÑØS‰´e²ïÌ%éœµ€=E[:“So¡BÈÖuÓ”Çôóïú¸™{eÏë³£Êè^ø®$ËkŠ…Ãij¢gP´RjP«Â‚Zdéš©<)y·)OJéËš´çÏ{˜6wİ9æe6‡N95“-ÚDkF©Dh’ÊËÁ\\H¦Û Ç.	6\rCa\rM¶]¶6Ä`\0†¶À%BPeè”/L:eœ^iÕÓÅÑ-°2¿ĞöyšóÔ@ê) |¸ëêåîŒÎNn®*õú~wD¾%#¾<®v	æYùŞ¯)e€¬%Í6Q‚ÓY‰OÎÑYRÊ’à”±Ùk5<µ‡¤]\n®èçq0#zoR`\r“a†!\nPìTƒQ¢£\n”VT@•Ì™³ƒÑ’şow&w®nÉµJ©+É®—¡*-Md¹ÊÓS+È›£˜02°ÀÃÅHAm†À®;&\\WFÀ €#äÈÃ\rƒŠ‚üıQ\Z¥¥y^$úy{iR6ttğ÷K¨‡4ò×Î¼ŞämÅOd2{k^_gF\'ÏÒ©çs{\n¾9öåoLmû0“è‚2\"t$Ìªp¡—•\ZUS^¡‹O(ÔŠ—èã²ó©[\ZĞ¬i¸P01V²ï#‚)+QgIt`«$µ2&\\µ\0UGV$ñdNŞ:\'|Í3©ß˜çuå¤ušr^vg“\'VçÀ•Òà‚{\nÊÃ)e]Mˆ6ÙTFde ©¶&Ø\r†ÙØRU_#M8´©#tFÊh¯“Ã£œŸO7UrÊ“³vpÙ{‚ÙÈ­½<ì~˜šÙ\"*ë`G[1Ø	m$5ÕeDàô<Û 6Ò»<Ez‰Ä¾‹[úJq7YNCèÕ|ìhñÇ°{:¼†õTó)Şñò‚ÆØ’&ÙyÅñÌÖA«\nX¬¸%\0ùpÊg™zEL(Y†l¢°6:(ÏNëIób:´¼‰èëŸ:½:¸wn9%érÎjbÜë\'GŒ0ØÀã+\"`ÚÒ“lª²P]²€vÆ˜6Ù0ÅAØJÆSŠÇ«˜fyKÔq•ùúyÈÚ5²2¤ìZÊ§b4¥PAÑÓÏhê÷ş_×OIy\r]f\"¨jI-Øã¯9=F<êãÉç÷õ|”¾¾qò´úD³Â>ÚAõqæoQeóÇbÂ£ÎÅØ˜ªËL¸tÀ£s\ZàÅfœ)Q€eVŠ¹$\\›‹šUæTfiÑ‚	}\nF¥4AÒ’¡Y¼BeAŒêL•Š<ª3µ³f×ºòn‰švB¡n|¿3»‡M³*†AÔãaŒ® *hæCbU‚ÌÒŸGÄy}…òt¾™òÔõO\\yXôŸÈÉéùÉµ6ÆÍ³C²2¯L{!9zùnÎ¹ÑóZ5J°µ‘“¥-árÊÉ\0tÖo\rîx^ÙQÖ–r/h^Û£‰;ÁÅºñÈ½hB…\0\Z±ÇCóhêŞp=QæŠôëã1ê¿‰Ûã–Gt¥‡ØäN÷O1=`xkï-x[Ú|¢ºM(fË*©1]dS¥Wš}²4í5ÂzÚ¡¯Då^Ô^QxšÓs`É­W‰»ÉÉ>ä\ZvƒšíP²´S,W¶şMcÒ^z‡‹¢:#Jæíñ«AÜ¤a†\0Û+ŠÒàL¬¦yĞ*ØJ5*5*Q·Ï•}³ˆášc1j/E0Í^{Î­ÃÛÄw¼ZEç¤©d&é¨:¹º`¡Öt[º>iíâÉõ\"Ô *°P6À’i|@t™zÁÈİ çÎ½\nDS…•&¬uÀ„ŠW{ù†=6òŠúÇÉÇ«¬›1\0`aŠÄBZU|Ä³áNZ=×¹ô¹UÏGX‘[©aJÚ’#:)m¶2¢Ü‘J×#Õ®S8SD¤V¼tçûüÊWS ÄH.Ä›‡Y¤,±¢ë0\n0§çı/bø_Qó³¬ıOg¯—‰Ş§W«ÏäßŞùÏG¹:<üÑƒréÖ\nîNéTá*Ê“²¼=ÜGmeyU\"6¤P¥ÑBàiX«)Î‹N§§ê|÷¹e\041$Ã¨¹‚f\\6\\§*¥±],W&VËŒ¯¡’bº¤+ˆ­Áeˆ‹b	ÒUëÇÎ·—€÷­œƒ´oÜcÏ~£gvxOa8‡p8eé±çB§”=pyMë“Èo\\ËåoYÏ{$ş‰«ÀFÑóõ~işÏ›ßNÒü²ıi>Q¾­¬ù#õL¿-_¤ÑóÓú_Ï–‹/L‡F<ÆÃ2´ee¤¬\ZV‚Ğ:V¤ï¹½7ÙÆú9¼ÿ\0OÍõ—Ñò=>~n?¯Ãô~§ä÷æ¼}||õˆin„æ¢2ÙÙÑf¨+JÇRœ\\‹Ûh^]:Í$p®ue²µ›@VZ¥çYXá*Ö/%=¿º½À\r€¸df(¡„Î\n(	çÂ€VÃ®0!$Ù‚®ÚÂŠœ&|‘ƒqëcTL•34Jáò´fF\n°1ÅqL¸s<SH•ÉŠi›_.\r„l¶P8P˜*©‘~/è>?yPW¦(êm°X\08IÔ–ç¼BÓ¥Bš×È÷=ëß}xıŸôùúËú>n^-Óæé!ŒjJĞ[\\*½l6n:œmÏe¹zy³£“®\\¤,AK™!Ğ\n˜£—¯3æô&‘ÜÚ’\'ÓS‹Ğ©\n¬KPTó”™r#s¼ª6ØØ`+\0‚2áò¨¤¦¦ÓÅ±Ó‰áØ¸ eÅÌ	s(fÃ4Ü`PÏ‘†\n¥˜s0_G%´Bô2_JIÕ¸”ô–§«¼–¯Ky{#ÆÇ±/2g°¬ËÓ],aÑ°„ƒ HèÆLVd›ÑR¥ú9{ûòô|®‰ñéç}”ÚŸĞÛ¸|_wçs¢pÖ5¥uy°ˆõòö­vlĞ„ùº¹u)Ï~téêåé—+ ŠÓ²jè&bÄPè¿=³P®.UÏGİùo¥§VĞ¹õ‰Ÿ	´‡ç¦TbPm¶r°B6\08°‚&µË5¨Yg³©Š“iîz³r!Ø8éVÉXr¸5ˆ;—ĞŸYé?Ç©;yàÖu70^³ËX½8‰Öœúº«ÇI|ğ\\üø§G-,ë§7Tmk‡´kÙ?ÃúŒ®R5…iqTpfÊJ#():F¨b\nÍaÁZ©ésÅ÷¾cú¹zs·7«À¹S‡§šò*rRªğfñ­èqwJp9¸‘çèçÑùï/×ËÕš­,©W²“¬aãhÓUµa\\Õ#X÷æê•}ï¼ú\r–œó*tOV‚d«H•ÒÅtBt	òaÂòÊÀÇ\0» l‰œ*c“=syÏJÔ¥Nwéxä=JrÁ\\éÒg­	7B×;;Âjšç1:9\"”As‘ ùM)À$˜fZVìâ´uåc‡™ò~Ï‹[m`F@€èÂ2°APº´e)LC£Êˆl\r¤¢ùî‹:Ï5x}Åıpâ§_¹O\ry‚g™k®ñ¶nt0êUeÇİÇ¨ghYÕÓËÑš&$mÏR¢=••§5•V‘ÅìšRV‚ÓVÊ}x;L´–\Z¶ØÊø–¢€Œ¦²er˜|€©ƒUèÜä¾ç	Òy±Ò¼ázO1Bóe¦‰–¬¬”1Å2°	2:³¦6\\ª*\nÔç¬U\ZdÏ\\ÎHfó€q2Ô‰Ea”«AË[ÇlWš¾c™ÖÅ\'R¥$q”€2²B¹Ú22ÓíˆŠL*è…f½¸ºgKÆÇŸ¦ÛÔó·ãoÕò,ÃRteUiİ:72™IØ^ş\rG…ättsŞº	FØÒosĞ‹¢`m(R‘JJ’­àÅ)ÌNéŠeÑíüÇĞUƒ -l0vÆÄ\nP…±@)8PÀPê( TTE m°»ŠB«)J‰2»6PPÍŠÃäÅŒ	zsTi²\Z±¤t# ©iÔ	R«LAª\"bÓæå\n‘0ÁlÂñöÈøó^}KdcJ³\0 À€‡ØƒK9ÖvUÕåçWK\n’ Ú‰SìáëÇy°l÷ï‡Ÿ>ˆ\rrF¢0F\0êçé:2ƒ´®	çz^uFº/+FVq´l‰\ZÊa…Û\r³¶•Š²¯ÓËY)éù+ï¦\"­Lq°Ôù0Ár>U)¦Ã)ÆÇ*†S¦ÊP²c\r€ØØ±ÎškuJ$¬¸uzÆ¡\0Û-AH­ÊP\0Í©´‘Y4…Î¥ÚM³ÆØAd#N¸UŠË£WÉùßEóÉÓ«!\0Ä ••¶`œ!RˆUçE”ë$ÃkmnÁ zêÇ^ évfàbo%ØÓ ¡zcÑ›M´»mO†ƒÁİÇbÆÒ®ªÎĞ©D¨-%e\nÊE´(ÑLtg‘®[_š¥Ò>‡£Éö	Š(¸\n`…Øl\n…l!9*‚``0rãmŒ2Øˆ¬ !+–,r3+I4ê¢>¨¬Àlp¸ƒ1´²&chPt`dm@«AP\'›\n‚ÈÁ¢µP(<?Ôó%CQ¢(Ød\0‹s)‘Şn­¶‰‚¥m…Œ¯\"{kl	İêy^ïÜO§çêqâ½ylHĞbı¬§m)ƒ)âíà°M×S¦ñ®nVQ–ÉN“¬ó¢&8ÔK¬Í4!lØ.¸ÙÂ×é>Sè£©h¤–«K˜Á#` +µl@`\rˆpØØÓuDÌ(V™Ê†rFàæMœ]v9ß£j•’_gbLú1¤ÔÄu1LMo‰9ÆÛ`m€B8¡Áòœ}¾z*°¬‡Î•¶R´¬¨lVJ_ê%yÄX›jÀâü>>ËÇÓÀÂmºcmƒƒAR\rIØµgIN\Z\\­#yŞŸ™fR+ªÓ|²:Rì,Œ/\n¡R)fAhô)ÀÀÍ†²U¾JÄ½_7¢¾ˆ«B«âb – à6LSOQÈB ÏEtÍe|OS	˜Â«j@à\0ætF|E*¬ËaX”4F\\`pvapa¶&e2`ä8ÃaIĞJêeÚ1Æ‚UO‘òı¯*È†ZÛ²é2“j²˜³+FV¿=ó¤È¥£JLv¯cÖù_{Íİ<?CÎé…tæ1)CÑÅXØ€‡¢6kù~—™a!«¥Á2¡F[\'ÏÓÍVUÕL„­Q²fFS$ÈÍ6ZQ\\f“CÎê}ñtS¬ÄTOUaò2˜\nÊlu.u6…Ì(´Èá42ãK°ŒÈLT–m¬Ø0ªG\\v°ğµ›ÁVdÃeÃ´Ø*VaO6\0|„p¸Í6\0V†8×óŸMòé¦RQXV3(q€&¯:jÌÇF„­\Z`cªßQó\'^=§Ó™ÀÙ†&t ªAKÆñF\\¤l0ôGÈù¾—›nt¥ÏA\ZP²Ôùú9ìjfPt4›6Õæè\0¾sc\\£¡İÄö{¼¯T@@0QÕtSOS…#©Âì£´U:7;ÊãO-2“`#a¨àË£ &³QIŠ1],TÎŠì¸vG)°\0e6Y”ÁG»\0ƒ€¬ •ÔØa”²ŠãÌùŸ®ù;[Ij%e ÕaĞAQŠ,¸µ\"ğ9ï\Zu6ïôş«ŸNeÛ§=°\"œ•…Ø•´­À®EubŒš<ïGÎ°Öu²Ç,¸mAYbq¬uÚ±¾Öˆ5R+n,¾ƒqÜpéYX÷>é\'RœšêKQa3u ¢ƒ(F²áô‰E.1ePT0\'yš%‡=¸”BÌegPÃQ6ÌŒ9R®*Q@v8\\Ú@˜²œÀOİš|^+Yr©Œ¤ÒŞu†ÀÆVAQ–Ÿ†yYg*ÆÅÄW·)„QÀ€ãF@0rÕ›ÊÃ\\E™•¥5• pwpèo%F\n6\0Rˆ°´+m«2˜­¹Øé~ZEÀeFb6\Zv&p§ú/œ÷Ëa€I…ª\"Ø†¶IŠª¢PŸN8—¹N1`’ÔQCKà>Ëè(Y\\Î(¬èÈÎ(Bƒ°FÁe!P¸\r†#SñqÕ”]€Ùrà©pÃ\0Ã-2òôùÎÌ®¢‡a‰5QÔc!Qá(M™‹Î²²‡`fR\rµmŒJMIÚ+E*FÉ°Ë¶#RTç÷ğU:!qÔ‰SarfèJdVÃQ*c:²›-)ÎÅÚ4Š´œv€—¥6£ìx~¢zX^¥çbš`©çbªš(¢e2\Z¢ª&Rkf9·[œ{°KÏKŠa\0\\Ï<”x9ÑIYY‡\00\0 Ra‘.Ì«á‡ÃjIÒêåÀ;dÀe8`å(vËÃæş‹åN†¦Ça\nN(JYJiº“VZ£Éâ¨àŠVTSƒ†Ä`U(\"º†ğé•È&À™N£Æ¤Ü^Ş\Z½Ò’àRÍ°mÎŠ®”1…0š¸æ§R*Ñ%[$u?%GœØ_C“°÷ÌtH•—¤¥D7N9©V\"ïU[c`LP\r2°é…AS«„¦G²Ø4ä±Ò!p%pT2ÙpÅXr2àDgW£” ƒJEÙTàBfJ.ÆÀ#|ÇÓq0¶Z²Ì9‚ÊĞH\"«Ìš°§iÖhŠ±¬¬€b+lca±©?Lm+å`€Œv£IR‡¿†ÎšÊ“[`™v©É²L<¨íBcª§Zbj¹\n0&Rı<V•Á¨ ìäö· ub&¡Câl0LÈpQÂŒÈÀ(pQ‚aÌÌ8]M“+T4CYX,¡L…F\\8Øb2ÀÃaŞn0*»+Ã©N J„«lƒ.Ğ‹˜!uç<ÿ\0!áJ\n™Nƒ…•ã\0‚©i:CíˆÊ²¢\n„mXl°ûNÅh••Š±†6lÄÜ]|‡S#AÇ+q›a¨¡ˆ±n®:ÇKs°èppc]èJÓJèÜµšsÜŞÿ\0ôAÅC“\\008pQ”h ­0ØÀ€A…Aˆ¬Uˆ<ú‘¨\ná—dÀ©*Äª0¤àbLv\n²®pB@1ÌlÚ&´Z û0› J81?—÷~x#\nP0 i6Ñàb¡GG\ZÉÊ«HVtÀ#¨‚Rf8†-\nÑ	«¶R„Œ¬ÊÂòõp\'iV	0À(gŠ<˜p6B1“¦K·+c•‡+SÖö9:L¤,\Zª\0à©Àv +¶œ…Çl0jZ€UGÓ4ñL€£ÍÆƒ¶\0lb¬¸« 9€HRU£14Hag`DYIæÆÄŠ•2M ò~ÖñS©€A”ª;£­Ñ±\0FZDe\r\'H²àJU•l57¯ã}$//DaŒé@+\0Vu)IRRA€¬,1‰\nvcqwrŒó¢,ô©\rqhV\"ç35yúEÕ5©\"i–M@Lœ˜Tîó~†=&\0¢¨V\0‡.P>C2ÑP¨ráÊaò•l e*0\0`¶0‚jTtA£ÊNc2ağ#`A˜(tt\r‰Æ‘‡y°r‚ºH¶Šv¯MÂıç´w®èóƒæù¯Ëe\09+kYçH£+FI+\n\"ŠÈ©\'KÀo¨ù¿¢O“*ƒ€Y\\°Õ›ÅZu—lh+,fF¦PÖUSÏÒ‘éá°R}U¸úyBXÉ†•Ú8èó®ÃÄñÖ©EäX‘3u‹ô\0F\0Õ	0‹Lsš-›\r+.Å@ÀeÀ‘Jäl¤m”m\Z6–UÖ©-‘ õÄÜ´Ô¦’MÈ‡qóĞô‡–‡®|R{2óèï/²ùì½2*Ódz/.í¡Â{ç·¡8÷“õ”ÕÈÒ†8~cícgÇ·_\"`ecRu•ÈhÛaUæ\"2SV7ƒ:LEe¡†:=\'­xNv0ÀÀI´Y§EÅI”c2°êr\nMÖªÀ_?ÑòÒİİAóı.sŸªMMi-ÊuÏTŒúÔãİXF*cA”©Ùïòö‹6Q²m€Új\\ª(K‚B¨KT$ñ$Ÿ ë•K‚«ÈXÌ„åŠH2îs/I9_¥SÕgº™¶œl¤l¸®V–Œ\0ê¢™ãB´ˆ*Š…tÑ5:¨™R¥PZ­ÀcÆñ>›æ,QŠÊË«:ÁØÃ2ã#©u¡xĞy¼å˜:À6ÔÎ“ÀŞcf Ø0jó¢T\0ªgJT¬iR,o/ÒàÑónu¦©åšJâNªñR§e›*–2Å9*T ¼}S×RŠ˜äÄd*`ÉC:\r†Á_M‚ÙQJ²‚H0P+hÄ5b¸b	²9Äà#2¨ƒ£#²™¹ŒéC5ä‘®Ô¶ãUr‰Er]rQêª\nÌ•‘as`gÄØr¬/Ìı<SäW·‹LÈá¢˜a´P‚u%:N·G?D	RblÕ=ˆûiÖdËcm€êãåhjÍÔ«,\0ó­IÑ ZMÖó¤¤<]œu–Ô¨vrZ:yzŠq¢¼)Ş§?QìàË-oÇr­\0Cä{†GË%¢‹¶j¨´P8R6˜[id² &ÃåE˜Ì£™‘ÁË¶P)*HìæFR4VCˆB3X	v‹(¢d²*¶ƒr–D¶§@«\"±\0/,Yg‡hb¢,ti0å	ó¾o¯ãÙ°jr­¨,Óx*ÈI+ZTŞP\Zl>\\ Œ„«Qa™X|\Z\r\'E Rˆ\nÎÉƒ)F‡T©4<<ÖË·†århè·%}Ñç/ÆõĞÜÕ‹K*n˜¢qV–=ONU1PP\nRK`DU3MD¨Q`‚†EŠ¨(Ô\n\0Æ`¶‘,Ñ€B¡@!3dele­1k7+—•Kä&C0ÖL4Ë¨Ã\nbMÌ‡tİUŞD`¥Yê¨Û`RHtzÇ—àı\'ÍjjJÆÀ™—3¤2¶!:ÆeHÒ¬¨`âA60!¢<ä€Òäyšğµ7’Ê“têFPsŞg-¢k©ùz!ñ#óŞ‡“­\nzÊ¢QJİùë!;×æeS£D/Fç\'F‰(”Q“0™ˆ ª¢˜¶P,12U\nå6ÄÛa3¨Èš ‚.‘ÔP1=B‘vÃ°vQYrìÈ—Ğr»Û9±`«*0\\Nw&ÌË¥ULYU6šU£@Ì™@U®†LOæ~¥å_«–¶Øï*C‚	Jğ¥jYRpµ›ÔñPí€Al++Ã‘†e0vÂ¡èç¸ó¤×ö:×aäãZ%b°\\kË~ÍeLõ:åÕÛ/’{ú“ÏözTFP3%4Ê¸6Àe9vb#âeL¸)	R¡Bº¦8b&ld Y°)•¦¼˜ºO:˜«(y2;Ä•¯3–~bX+BIh‚Ö4-•†1°š“MÄru\'A‹*ŠI†$³dVe\\¬QYœ›²ÙÅDlm°k\',1‰Ç¢••A:ÄÌ `a°pÅ¨YHXhfW3)	Ø˜eãaÒ“^vVN¥dÀ„m*ÎŒ9¼ëÏôdGëşKê„x©¢`H‚Ukˆ™“q€(dJ*áğ•”¸}1Üúº[ƒÉƒJ€‹P“ÔAuUf¶<ìr°\\áWce#‚¦Òp<è3#ˆÙQŒİz1U\\S(Rb½ê^sAÊª¹!	R@#:>o“×ò¬F3)-HÚ?LHºR´ClÄñ‚2fÄÍ´fV‚6 ˜y†°±xÚ+\r‚u2‘vùú¹kb(ºZƒ/J‚ˆóôIûò¸¸åšÔ\npØ\0ì£€‚¢f\0FÀ™NŒtéò6‰YW÷p+£ñS°ğĞèEÃ:àÑækƒf%¨»€‚Â¥²¦lˆÔ\"˜Åb€*À#ö`é¡Ğ^`[*Œüìu. çè\0  B…v*ç)œú®TùXÖÛl=yï§Í°³¬©˜aTà‚A0Ä$•0ÄaÙHØ	r<èVn1¤Èl¡ÑÑvBğ¬6°Rm/E9úas{$ı`È\n	å*¸%\0à$2©¸aX€SÄ…ÂÄÑE#6Ó|Š´†\"²ªß!†S1ç]P^²­q6´ğQÑ#™\\‘g´ñl\0ËIŠÙG3#lGQ…R¥šè\Zò±Ô°î¨.uôæbÃ’Å%\\-T­0Rš/Ÿ=õ=F\"•¶3¡/‘â9€ˆÉLØ˜mDƒl1;™£FUÈè	Ó6	¤ÊÚ`^4¹¬Ezñ.„Ğ~›ç½ò³TWÓD¦-‘K,è¹Ğƒ†\n²Í†Ë2¦*&\"Y•Ô-›ì„¨¦UäÀƒl@Ï[`RLÃ\0©ÌØe8dØlµ¼º8™qE±8ÚÄ†é™¢´Y^U)Î-0ÔlèQ#¼˜ºäVáS§ƒ¦	ókYÖÛQæñƒ(’¤é×aqÇ«\0†:Ú‰V†dqÕ€bÔ…ˆ¥Ö……À\ZŠáÄ©ÇÕ\Zl¶‚@ÓC³Ñ†\n«SŒ<ğ#c£ìÃ&ÉŠœ¶UÖ„b¡h¡€WoÍÏA±˜æL@›((àlàVÌ)F6ÀÙˆ†²¶ be(Qƒ˜*2#ÍÀ³(³±&JÔS>Q˜¡C<¡äR¥ñ8=/*V6Àw“ˆˆ¥eD€AÛ”„q¶Ô‹•3`£  ƒ_ÇV@21ƒ\n8¨´ƒëó=ó­]FP# HqY0Î².ÄË(Êª”Øƒ*­TdÊÊb]WÄ#Œ0tÍ7P¤…“\r•K \"ãŒÄœèÊŠ´ÁÀa†\nÃBE ‡.+=‚ÈÁÌ¦ÅMƒÒp«á\nbÁ0Ê¸lØl#-Gc…æª®8›fSÌñı_*¶Ì€0\\ó%ôÄd¦m˜\\q8`í°SÀ˜9%>¥ ã\Z«ênËpÑ­ïø>ÒúkARRªˆâ¨G\0\nÊeeA™ÅiÍ€Çc `£áƒ6áqm<¯±1\0àJÄW ML(`jÍ<B¬TÏQ‚1+ùÉÒ\08ÂŠ`HÙ\\PÀ\'aØ\0N…UÓN*È…àI#x\"QrÒœõ,ÊËB¨xşG©æX6ÔØ,„Œ­†28Ãaƒ1\0¦Ç`fPì`lk:fš—~J*\r +©&¥VX*5ogÄõãÛ™\\İŠ;«®¦eq[1$¶H3(byu23JWAII¸I0ËL l¸,˜¦B¶ÊÀ9A˜?ÿÄ\0-\0\0\0\0\0\0 !10\"2@A3BP#$4ÿÚ\0\0\0’d4öâjÔô|éèÔ¢¼~¤K,öF /øÖ66Ye‘beó³q¸²Ëåd^,¿™‹á£hâ8Á@Q(_›‹¿F¥~²/\"/²Ë,³q¸Ün7‹ùŞÉ\'ŠÅ›Å¨)›Íåğ¢°ÆË,³vS±šŠø›ÆÓiY+ÂÄ¼Ô¿øË0ÉEM¥ÊËËEQÅm\n<ˆ\\ØñfâÄË—íPÆG2Êeğ£iÛ;fÂ…‹:®¢ˆu?v—R˜¦™\n\Zì!bWèÑEQFÒ„/Ñ’6J(XÚ(•Ê†††Q°Øl6ˆ²Å!H²ş,²ËÅñ¬ĞâV/P¢$QX¢Šáè²‰­Õš“s{X¥(‘ê$ˆõd:¤-x‹QqhX°³2éÑEbŠı:Å&ÃoÆÑBEQEM¦ÁD_¢ÄóEqY¼Ji\ZıUÖ”ˆé¹Ğ;(}9.œz-$o’#¯$iõdz¤G^,î!–_í#h‘‹õl_­E~‚ãY¢¾‹åe—Æ†‚Bø,±Ên¦N¡ÈÛ)šz`‘fãv6¡é\"ZéÇ¢Ñ÷!jIùö(ÚP‘›E¿Z¿å¥ó±å	Á<QEq¢¹^\\¨ÔêR5z¦ÏºoODšG„9aê!j!H³qxqL–ŠcéÏ§6›Jê¤F&Ã¶EQeÿ\0Ê¾wš++	QE|VYe›‹áFÃa´®Ir²ş‰k$kõ6\\¦ièÒHª±)¤Jv6n«#®GXSFãq¸¼±±¿ÔB!ÿ\0RËı{Ëäò_ÆğŸ;ÍÁ“•\ZİEÔ”ˆi9\Zz4%C‘c•Ô/V71j1j‹Q\nE–6_êP„D±ÈR¼Y¸‹/•—ú–^l²Ë,²óe–Xä)ÊÄÿ\0FŠ+³q¼Şn,Üo7›ÍÄ^,¾+6^£[¨ÚjuB‹‘¥ F4YctOPr²ËÅm(¢ŠÎæwc±¸Ş]‘fìV7Ye›æó¸o7›æó¸o7›ÆâË,r7fñLR/Yx³q¼Ün7Å–FFâñeğ³q¸ÜX¾gÁŒò&ËG…–_9ë(šİP÷MéèÓ£Ğå‰jQ)¶Yx¢Š(¢Š(¢Š(¯Ü²ğ¤^lÜn//Yg“Ée–Y¸Ün7„ñBÛ6ÆË/‹\\RøìÜ)ÍæâËø«ƒEa<QFÑ@¢Š(¢°¸Ji\ZıJDõ%7\r&Èi$RCxsH–¥—Š(H¢Š(¢Š(¢Š+÷¯FÓhà2Ë/q6‘‰´QG` l6³a°Ø(W*+‹,²Ë/Q\\ï/ÂÅb,LL²ófâËEf…n7\nFãqe—–&&Y­®¢juBŒ¦iè\n)\rTKPl¼¤QBEQEQEQ_ğ!\"òâl6M¥mı/Yeâ£Ó6Yä§„±eüTQ´P6³¶(M¥ÍÌÜn,lÜn…›ââl6\r¥bËÍ¶ÓSª–¡§ CNCÙ-AÊË/$$QE|tWüHR¿Ò²ş:+6Yx¤m6‹LØm(¬.iV/à‘´Úl\rƒ°ÛÁ¡YeğğQEV5µÒ5&æôôl†•‡,JtJw‹ÅP—ıFBóš(®Uğ¯ŠøÙe–&Ycçy±H¼6Y,xX²Ë/Šc,B¼n7›Íâ|$Î£YŸtŞˆ¢ä9TKPl¼P‘E	QEpÚm(ÚWütiüñ×:ùï…üŠ$WÊË/4Q´Úm6±@Ú8,RÍÆá²z;ŸmDºÆÉjE—„Š(¢¹$z%¬õÅ®G\\RLkş24şùl²ÅÎŠ(¢Š+à¢¸ÑEbŠÆş…ŠÅW\Z%Q\rŒPfÖlfÒ‰Ä—Ì”›ÃBBBEÍ!µ©©e6m6›E: íIÅDÅy¾6_ÍÅ–Y»å¢Š(£i´Úm6›M¦Ò¹XñX¢¥	\r_\re”(›Ej6£i´ÚjhY>˜–‹C‹6Š\"ˆ‘X®~iYáBÇ§…‡…¿áÆB™¸İÎŠ(ÚVlÜ)Ïqx²/—ûÖYfâş;7¾JCÓLŸN‰ôÇnŠ+„j:V­É\ngtz£˜µjy•F¦®ÓêFÎâ7£z¿/(Xe›…\"Ë/,xBÅ–^Yto7fãq¸¿ß³qyBø,²Ëø¬²ËÍ\ZÈ¢¸ÑiÔ-DÏe\ZŞ§à¼!ÇÆ!ïKÖ¬éI¹=¿¡;\')!ê;î:ï;ÒÔd$ßÍ%–<Ùe–nÅ.v6MBÔòµ\räp¾\nçfâË/ô+7›,²Ëà…ÆÍÆâËå­É#R{Iê6y£GPNÉšË1÷%öâ>ôŸÛ«+n‹ùç=§Ô+ß	Ñ‹%§FÚz		/–ˆÇn7‹ÅM¥p²Ë,²ËÂÄäy\'\"R´Í4n£}¸¼Êto,¼n7‹ølÜn/ar²Ë,²Ë/Yeæ¹êò—…©+t(³mÑdÍlÇÜ¿\Z6‘‹¸~:©Ûoô5¤†“6´CY¢z–YZ:yßÌ˜Š(¢Š+•ÍÚjH«¹éÒƒ¢2\'©deæ27›ÍIÔóŞ;çÔ\"zä5wÆñb2²ËıKç|(_¥«Å\ZÏÅ–)’˜¤hLf¢6’U£rˆzÔD—šù¤kÁ±©DZŒróRbfµ\Z3l_,s|RàóEÊÉÈ«~¤MÙ7MNÄ6CP”Å©çWQµ¸ÜÍÂ•>ãeŠf–©Ü#®CRÍÅş»ıJ(¢n(ÖVMV%ŸÛ5MÆáKËü^\"i~3#¥gafş=OZš”àã!èFF¦†Ñ3²ä.™‹IDÒÔˆ¤ŸËeñ²Ë/àefÍè–©¾Ç1È‹%\"dã)3}•ğ¾[ïÿ\09LÒÕhĞÔlOQEÀ®\ZÜQ3Ybæ¼Q¡ïù­Š#íş/Ñüd)QÜùµ=kAİÊ$uÚ¶åşğÔQSê	êØ¤Ñ¡ªîùWÉe—š(d¬¦4Í´•FâEÙè±±ÈÜ^h¯§ÔÛ.úµ«æ2ı*ÅQ_§x³P¢Š+5cglŒ¼R4êÍR¢‰_nÃ` i¯ÇYz›E¨¤8)é“%Ò†Â\nÎÌ˜ºV>–‰Ci¤iÈÈ¾[åCˆâl5j¼ï³LeĞå‹áe—‹Å—ÊüèÎ¥	•ü–_ïNFãr;ˆîÄï¢\Z»‰\Z¬Ü);Ÿ«4½ÿ\0&Z7\".Í¾¶v˜£DÊ6|ºğlû C¨#®™½3ª:e÷Gj[¢‰ëE\ZÚ‰ŠGO¨Bwò\'ÎşÂÄän5˜™¨ÊƒM—âoô¯„¶‘¥2¼Ye—ÊŠåe–_Ã««°ú¯0ê×Ã¬¼OQŞù˜Û<1#W^eê%çù­éã§^TMHıºH“Ä±»åtMFCĞ³³$mš5#&h}¯SQsæm6\Z14cK–^+ù.‰j’Ô¬œ©KSÊõ7oÒ™ËÃwó§ÎQ;Í½\rAK‚5<-9‹4QEWÉcšDõÒ5õw„Ú#®Èu$z”GQ1IÃ©Õ=”VzbDÍ¢H~­\ZróüÕ:{‰ÍTu(z‚vH²ş]k%9Eéug-¬ÕQ­ITºx)FÖÛËÊ™¢üézøh®6Ye–Ye–Yy²rX ‘«êhİJşåå8xôIüvY|8´=KzNñE\ZŸŠ•jCÑ\rQE™j$ku4O¨lİ&-93°ÎÓFÖy™f…Ô²=S!Ô¡k\"zªµeoŠ:aš…‹Ü½\Z^×­Ca°„hş1D¢‰òÎ]¬”hZ²‰¢B›’Ô_v¦ØÏ^LæQ{NŸÊızå°ØB#F§—\"qñD$EÚÕCıåYÓ÷ ¼bÉKÃÿ\0&›ûs\råÉ#W¨Q5:¢Zògİ\"\Z-š}9$ˆzh–‚L}0úv=&ŠhÜĞµXõ˜¦n/6tŞÙ©„¼µãa§?ÍCy¼Óò5àO&6nù\'f´ä‡¨n,ÒIÛZ°Vhé£Y@—¸ËÂ÷ÓO÷bƒˆ‘¨üHhÔd#âHŒ¨—•?=|:KîÑôXäÇd¿=\'âË/7ğOYDŸVOªl”å!A³O§d4+ÍÙ£hôĞô.˜—L=väŠeŠFâÍ-]¢ÖL”“-\nHoÆòóüÕôıšOË~ÆãOÔ‰¢¾&ÍÃ’5#\ZÚtU	³MY§\n]CóŞ¥9ÊC²$SgM§_¡EfŠ+…(Xh£PÔdMHıŞ’òç\ZO|è¢Š(Úm6”m\ZäÙ§ùhz¢£‰­ùèúçe–9Q.¡#S«55œŠl†ƒd:b:)\n8Ü9L±2Ë7‹ÎÑé¡é\"]:%Ó¦cÑhqhò)4wµ3¹ãq§ízÔôıš^ß©Ä¡&h¯C‰±üTm:‰4-br,ÓÛZur—…\ríèÅ\ZÉ5(Ó7QÓJùÑE\rqÚm6›M¥q¢16•ÂÍBQ±­ª­êø4=ÏÉ%D¹QE	Q´Úl6\r†Âpk”=ôÿ\0_­oÏCÖ+4Pè–¢Dú”^¡±Í²0r4úb\Z	\n‹Ç!±ê$KXzŒî´.¤]Qx±j&Ye›Ù£hôÑ->˜—LKE¶Še›ˆN…Ô^È»q„HÅØŸi½#¸â;‹b°Øõá¨”‰Â†ñ¹Šm\Zs³NiH•–?\'¢„È¼Ñ\\¨¬G›Ea		q²r¬¯:ÂF§™iéı²‹F¡,.	b°„ŠJ(£i°Ô‡‰ªËÂ:oÇ-šŸ‹ñÅê$K¨HÕê‰j¶%)ĞlLCI!,nË’%¬KU±È³qyÜÅªÑ¡‘êˆõ(Z±e¬î7šôQ>˜ŸL>¦¬b“Gu‹]ŸPÈëÓ¸wÜfóybhmÄwªwNé¾É“Ô¡jZ›$\"°¼\Z26&¥¥dôšıéi¶iÁAw~í?+àE\r¾QC‰´H\\dÉêQ-c¸Óï’Ö³zÚßİ¡/F·¹bš(BçF¶™%OÒüôŒH{‰¯»GÖ,–ªDú”jõn“œ¤C¦! £E9L±ê$KXs²Ç#vhÚl6•ÁM¡kÉê™¨Zñbœ^lÜ^hØ‡¦‡ ‰tÃéGÓ±é´8³É¸ÜoÎóy¹sY“5\rÔo¼V6Á	Q¥­âüê4ã?q!:79¤ôß‚Ë,²Ë,±H¼Ùe–Yeçq¸R/\Z„Ó“Z$â‰Æ—öİ_šGµ¬¼ÍazÂ!p\\%ËR5‡sÒ^\n(q5—İ£éÉ!ë$jõ$µ›>éĞlÓéÈé¤VÇ<6‘-bZ­CfâñEÑ’FØ¸²Z´ëæ…­$Gªdz±ubÔ‹-bÍÆâñEzH}:%Óé‡¢ÎÓ6´Y¡Ì”É\r\nU˜¦¨R¢\Z¤µ-2ÒQ5&¢iÜå¥\Z\\(¢Š(H¢Š+â±	–?&ÃSÂŠ·Ôx±ŸØ6ˆêî5Eï(XXY±rF´lqòñÓşz^²Ù­%}õ©Ô6o“œ¤C¦! ¡XÜ9–Ş¢DµÉjXän7p¡!FÍ-\"sQ7Ù)=Éø¥¹iîZštQEb±Y¶-I\"=L‘¬R˜µbËX³q¸¾G¦Ò%Ó¦jtômáeh–©¾óB›kI	ˆq˜ü‹7²?t´¶Â0×±;øùšÊÅcY\Zq:•oOKÆ¤HÃÊÓ\'>\roZhyBÂà°™|ªÍH’XéWÿ\0Hz-ÖHÖêIj¶}Ì†ƒfŸN-4ŠÃå‡$‰kÖlsÅâŠÅQ¡¦MÑ¨¬‡‚^ïÆœ|ÆHÕ†å(Ó¬Q_\r±NHQ$Gª#Õ!kE›“Í›ÅçQZì–Y¹QÔ7d`m&i2^Ÿ‡	X z,²H¬Ù{4Y\rA;æŸÈø®òU)Fä£âp!¹úíÙ°×Ti¯±›‹B™e1e›âG|ïŸP.¥šuUÆH‘ĞşWKW¨¢}K¤¤(JD:r\Z	\n	cpæ[,–ªDõÇ69‹ÍŠ(¢ˆ+pUk´ü9EĞ™rŠûu£æŠ(y¢±Cæ¦ĞµäˆõL‡V-x³|YãÍãÔ7!ê!êmáEŠ¢Ë$X¼Êq²:fÑ@p\Z¡2O\rb1=ˆ3Iøo_7ñPàKÂßd#çh¢8\\</ñ·eåHS‹7‡2Sc›72ÍÂ4õM=E<4M:imsêÜ¤CE³O§#¤‘E¡ÌrÃšDõÉj¶96^h¢……ÃA}ÏñtOÁ[¥§¡ã[Jˆ¢Î¡a®šÃãX¢³¹‹ZHTÑ¬Sw\"ÇL¬(¶-6(Ñe–&Y9EØîàÆEŒÖö“6ŸÒ°ÄEùÒ•ÕB™xr¡ê¤-TÎï•+â¿BË³Ux—Û=9Yt”ÅäêázrüEV,²ÆÆm6›M¦ÑDÓİpvEæGO¦ä};!  –¨s-–‘-T‰ëlÜn/4V(¡,¨›F±ÓşZŸ‹İr4?(šÿ\0Œ}¨¶hÆ£’JËáEQ\\Òœµd¨b€•b„£°p\r‚…À’¨Üj+.ˆÓ˜ãBC³m	ŠfœÈ$èÖÖ%©gy¢:–ô5áe›‹/7‹äÍGDfJn³ó¡!ÈÓ‘Tj«^´øQY\\¢Ğ’\r„ ER5=ê>ÇèsÛÃšDµÇ¨Øä9¸%„m6•Â1àÑ¡ïÜfâ‰ù4ŞÖµ•kjî4ÑD}u2ò6\"†…Š+%a.TVh‚M¦ÃiÛHQ6›M¥a¢e‘\n<2¢FÔF$‘«I§§2c‘viº\'4Ä°\ZZôG¨%ªœuŸ–Ë\"ÈjÑ£«fãz¾V_:;âÕ‘hÕòz7Zœp‹B»ÓÁê\Zş1e–Ë/0B(ĞıÙäÜÅ6GV9¦DXÕ&¼tÊ´MH‰jQ=VJMáÈo…Šqeâ±âEˆf›ó¦î:ºm¾İ-¨išp4âÙ/¶3vŞ\"¸,21\'Åáb‡‡$(›JğıÂ>TJ+4Q3T„7E¡AO\Z¤Ù¢Û&OÓˆ¼G²†ñ¤Ç!Æ8Û‡OãWMÄ˜ó4¤âK]æhk\nfãq¸zƒÔØ¦=J;ç|¥áHZ§ts.ÅÁ1³S^Iõ³ÎZ²XŠ4Ğ—‰ÄÔ…:µ‹>±ij\"	‹\ZÈÚ™Ş“4µ­ÉªšF¥\"¬q6›	GP¢m\Z–(Ü<!‘‰¥©G³X„,œiÆlbÔ½.£SK.)’ÊXcX±1‰\rçExK\ZÓ£y,¶)	ãPjÍ?\rJ$µ#ªˆ´ÍONJô¨Õd*F¦‰4ĞˆÇÄ¯\ZJÈh±ôö¡¥¶Põ®N6v™ÙgešZCÓD´ÎÙ§\ZjB™¸öl±i$NC¶m6›J(¢¥qF¬¾×äÖüù£Ia¡ÀÔÓqÄ(ˆ„Vu}EQ¨Şİ¶r×cÖd›f“¢~Eû¨¼	\n\"Y¬4%ÊÄ^[£C\\¥1B‰é[„i:F¶±íĞëYx¬6,¶iÆÇK‚ıÒšGuU\ZÒ¼,ØÙbfãRBVv™²Hzm™\"\nHœ¾Ùû¥\n[ÛE®jIHşéù;tµ°é¿-?ÄÉ;)(¡EŠC•Õ£x¯†³Yê_ÛzŸäBFÓi´j†GËÒá$=Î×•gèQñ%¶Rô$RC’ Ó™¯h–,’K…Á±yxYEQ\rWu|}A-VÏxr.ğ•’FÓiDK(’#j³	Q¹SòQXC$[73sÅpce‰–IšE›¢)DğM¤JfÛŠ6Ñ!¬Wš¾¿¯Ö‚\ZçrÓy£iEb…`´Å¦mÄ¤9m+4QEf¸Ñèê™§ùOòˆ„%‰2Í4i‹Ê¡æŠ¸uõ%CUÖ·“Y²än‘s*f’’z~µÊ+0$m(YKÔñ´Ú1V+Qtn*Í¦Ü2/…›ÍÂ‘\'| ‡5\"V(h¬®m	*,”¨s!ª9Ú¶ohÒšÒğåæ6Ç)DS±¿/Ñ§ïzJs²Î¤•)šJÜ|pˆ£ãQV¢(âÉL”ùYe–n7æóy¼Şo;…¶uûcù?k\r’bD™DZf¤|)‰ól¾®‘pzI˜˜¸›\"(¢ÍG‡„E—”Eyho(Xx³qc™Ü;§pr,R/-Xh¢H¡@k4QI‘\'b€ãCôğş	\rÀİ\'lFßhÓÒ£SJÓĞ§§Hœc!Ãi\'çw‚–B5Óušq7¨¨kYÜ;ˆî#N~W®¦T-CIYæF¦µTîÓ¸wáÜ¡Ü;†óqxó\'’™L†Ó£­ñ„&Y7‡/\nDfwM-up•­ES‹ŠÍâİ‹BXsCÔ;Èï£¾wÑß;›˜ñ<¤L†7QB,s7›ÍÆãqe—ÂÍÆöw\räfn-a¡û¿á4z7™)<Ñ\\äÍãcò4n˜æÍ=S¼CZÍäÍYPµõ,™\n¸iÙ?µjÊÄã‘		³ÉäÑ»ãÕ‘÷ÓÉ%½XÙ­§gnGm›\n(¢„¬jˆÓ=‘¹Ğ¤˜çFŸÜiÇw¢?ˆ˜!ù(C‹fÃ§Ô’66U\\P½(=ëÊÛFË–´)I1&(³c6\n4#ØãE‘ÅbBt\'e\"Ëd¤_éY¸S7â³CèŞJB6’+_ÆPÉ,5çM…‹IÜtÈéÓ&’]G¸Š>\'k#hŒ¼éj£YØáš4àxD)”8×PdiÊÄ<<¸›<öÉ¦œ#öÎTÔ¼ËÖ„lÖ¡©ğobn­šç§ˆ–:ìC	‰áŒ¡FÅ1³¶iÂ0Äâ!‡”P¼gWÈâF°ÚIcÑ©4Y@‘yC‘mŠ-1éHzfßÔ±HSË¼\"DE—ğ45‡‰#û‹BœMèZ¨±«;Rü•QÜ×O\ZÕÓŒJ4ìÚj¿DeD¤Ù m4Ğ¥xşé#EyÄqñ«º+ìÕ_|W–¼tè×F‚:ÏD}zrF‚ÏX8ğß±\r—„ˆ¡š~ÏX³ú¹NRMk!Kvd†¼Â\"‰E\Z¥“‘X‹#!¼V\"™Údt…Š6’Ó%¤J%~•–Y›ï…\rÑd”Q©„IòhÔt[7›“S^aäØÇ	H†‹tj13OÉ§ø5\"ä-\"\Zf¯‚VÍ¤¼	›…3KSÊÕ!¨Dê=¶šñ£íåğ‚\Zñ¨¾è¯³[óäıtæ¹ uŞ¿±õıé½ÈĞÏVD„Rrğøîš£;Œ³N\Zñc7bãì’\Z ÆÈ&Í¦ÁD¢Š:vQ)Q»ÌD°‘D4lšFÒŠáD©\ZõŠ+æ¾P÷ü(c‰´ŒHø7jfâÅ™¿Ç±!«!\Z7Òî+„bÏÔ•›l†‰§\n.‰HÜoBšCûÎÒ6\"z6JQBd$hKî‡­UiÃîÓ^4½¼¼£L~µ?$¾Íe÷Â?s^4\rsDë#kµ\":N»244Ú&¬‰¸Õ÷–^fÙŠgkPÙ4-Y@ZÎá+Œ8Á\rXİçE}²àåFãWËqE\Z±M1ãN>#3–Õõ?t%k‚\'%­ªÙ¶å§áÄ¡Çã¿‚\'²†(›\"…Ma“YŠ6›IDqF¤M¬³q	Ù9Å7:­š‰¡Ì–©İ7›ÍÂãº-A«;hzGoË[WJşèzÔ‘¶Ú5æYyF%ixz	µ¢‰išq¢q²+hé¸›bl‰µ	‘TYf®áhNuZt°†°˜¤…¨FBÕ7Ù²2%£*áD¢I†¥†¬H³S-YÛk:^‘ÕÊ£÷è?¶ø#ªÔ4£fÚ=¡éšŠ¾_ÃzkÄ–d\"ˆŒÔ53Íäæ‡#r<Ç¡ÊÍÔo³B)š‘¨ŒÍæâX¢¼úVI‰‰‘fãydü2ûáøëÊ¥£äHHyyFŸ*(¢HÚm(H¢³Ebªï‘‘–°™dM~£SK[K­‹”‰šÌéõjQ•¬´jªÂ\\6•FŸ£¬b~zyø‹7Q’İ(Æ‰Ê…r6ÑM\ZëÎVXş(ûÓôøH†,ÜLe’òV+\Zíãqeã`ôÄ7Js¼\"ÍØÜn.ÕJ¢,OFâ&—‡§/·©Ië,x^ôşÁ|:şµ•>^ÈÀP6‰bŠá¯ÿ\04N—[i©?\ZŒÓ~Œ¾Ûáª­?\rQ^$¼¡\"‰šC:¹y4$A‘xF·ãnD­½8Ò¢†uò²ÇÆËÅGÜ„ñ´Q\"$Š(’(¡bDü›|Èfá1\Z$¡âq§¾‡\"ËG¢ÄQhÜn.ÅÃvAB™\rO•¾šEâ\\Èû‡®wÊËç¬jCrªåDÓM¹xlLHÿ\0Ğÿ\0 ™	Ú˜½ôÏÅ‹TOPÔ—˜KÌ_d‘pıéõÔ{4Y¦Èâ&¢ñ6¢w‘İˆºƒ¾B[±Ô{ÊÌ‡ÂË,‹Bˆ†Ëbgp»+¬lr;;2Åq&†„E‰Ñ\rbr‹%ŠÍÄŠ >W”É±cf¦Óê\r=[7^Xñqõ‹7×HÓì^,³r7£zzÒ%ª‘­©§9r‹¨ÓÔ¾CeÙäÿ\0Ñü„&JLŞhõ1Š‡QGQ‰ù;VjéP¼4üYvVtÍ_ÇUùf›4Ù\"~µÑ4$ÈÄÛçGÑÔûÊÌ‡ÂX¢P°‰AŒ¡i•E•‰c¥I›bleêz´ûÇt”ÆÅ‹|\"2¬H°ÄQ´¢Ç„ÄÆ!gq\rJ4µ,Ll±±Í\ZnÈe£]´6ÙÒšÒ¡M‘l£k63Wr;²O¥•£[_aõ‚ê¨\'Õ¤µº™êx„¹&Y§!LŞn‹l‚ò–?ô2™N5ÄudˆurD:´Í=h³YÙ/ËMx½Ø¼ŒÓ5ÿ\0ÅŞÆB,Ó \"$½j“^c1+ÎšğÎ§Şc™ƒEa{ˆ–\'ˆ‡3uâÆ‰cBt-K7f_²ò¬|\r˜eˆ²Ë,²ğ„Ë,|¼#¢whÔ×>¤ï9szÓôüY#¾inÆ„èœ¬DIOiõÔ¢SÜIyé]Î·Ü`B¾¥\r·ÃĞ½r±3xæEY~ºåöå–p²3h]CÓqÔCi”1cL’ l²ÚÑ;ˆî£¹f¨Å!L^áéO¼¬È|b@ÜX†3L²†ˆ¢ó7‹¢\Z­>ş[ñ5oi\"²‘8ø‘ìÚ_‹ÆÑÇ‚áB\Zà„Eâh³JXš6ùÓ¤w£?»Oñ—®¦U%6A\\g\Z\"!{‰­ëR_uùŒ¼6t§óª^n‡ªÑ|£‹Å–Yo	\n !,6u~Ÿ&8ÆCƒ-Ì³Dz‚:Ñfá\Zf»¨ÏRWİguÉäo§#AÙ©êl‚±@ŒE#q©ÇhíP˜†è–¡ºø<QkÓdE†„Q1q¡›,ØÇ‡êRóeyqÄ£R^„Ç!y\Z¸»(E	pX±ˆb\"Æi³WfãrdÙäòtß—âıuš:uöu2£JW$¼%÷$kzÔüÿ\0¨‘ÓL_TşéËÇ¾oä„…0\"…Ç¨ó.	‹J“#ªÑ ÑÕLÖóE•Ÿî«ëQıÚñ?	õş¤†½gtßf²-™9Z‘H\\´2$sı£v=‡-=Çn„„Oğ›û¢ü\'÷WÚt¢(øÕ&,Yì¬!æÊM´>7G´¼x‹‘øÆœlzf„Rp—‰OÇTşätòû:ŠfœTdµU-EkU\ZºŠ§/ºü¦$™ã5·«väşÅÁ				ŠÍŒÖ\'Áa<\"pø¡¨â.¦ÓòIafüôÆ¯§ùè¯·[Ö§³CòŸ¡îZ¡–28k5ŠÄAŠX~ì±1áb–:q”<Oñ’ó›~êûdF$[D_QˆÚm¡¾7‹‡;ÍqE‘µIéÎÃBƒDÓ(¡Éš7qõ©\"iÊ[mZ“fæJlZŒ£m8»Ú!6-Ì…×P7ò¡DV7bñf§©¡ğX³qfØ¸I-s²3¾_”ÖüRÿ\0é¦¾Ş£ñŸ³OÛ—‹,„üµ¹Me2É2üÅñb!Ä‚&„†&nEB4ç´ïŸQ„‰/µèù“;NÜiJ\"\nÚjÏ\rĞ¤7Á!–Pø&P†12Í?rõåDP5U	Y©¦md jx#:!Ôx­fáÊÊ$K„¶­ËŒHø¥D¯â\\(B²™y›&‰as³qfá¨±Â¹\"\"Ò³°Ï§gÓÈ];½\r=«[ñ‡ù#¨wqŸ²\'ğ±KÎ„ìÖ€ó¸İ…\"ƒYj1H“ˆ2%b†I›‹7Áj›Íçq\rØË7ÒÔÔòİ–%fÁæu”ÇÁbÍØHEÑ¼R!ª-BR²\'±Æ#i\ZÏğ9õ<Á’Å‰›Å\"$Y)Í\nõ•„D¼PŠÃ$L|ÅcI\rpˆ)xÒgr6’fÕÆ*åÚ•öŞ×ÓJÏ¦ga†>BHĞ‹D£q“½ŒÚvÎÑ(Ö!!2ÈŒHYLdM7Š$ñ<VPŸYËQ‘x¬7ğ,2„Y¸±Bˆ°–5\'D§çk‘Ù‘Ú‘Ûdtävd~&ów‡˜«›(ÒÃˆ£ânßÂ…Ê\"o2$Kô,’‹*°–4½+I^í?X×ütßXğR(ÚmFÔKM2:IIé’Ó6JTKÈ (	apLİÄ†\",‹Ì£fÜYeŠB¦9Šc‘2†ñxk	VQE2+å7Q¼SQBê,r²Fˆ¦Ñ=¸Q=µ¬¬¯4m;lí²1hNÇ1¤¥çø©÷ğ®1=ˆ\Z(d™?–Ë/®/“j6!:7k~:ü“CD‘­ïù6Ybx¼<¢,²ø§ÂË7\nX‘je\rá‰Û#¶vÎÙÛ6YÛGm¤vÇ¤8ÖYÑ<I•eQ¶Ù&Ù±ŠC³gÙ±´(£b;hZFÁÄÙæSŒV¦³cø£••ˆ‹QCD‘©:=¿\"øôˆg’(¢ÇCòÄÍ]Aê3¸5¸œi)SŒìCbx¼ØäXŞVÅFò,¾4.68\reBÈi›R,º7›ÄË,²Íâci’…’Ó¢ˆJˆÎÆ†MšfİÆŸNié$lFÄmCQD¥SBä&n7ùŞFFós;†§P97‰|,QG¬ÆD¦ÜjêGMjõŸÅ|–,¾òô4ém6ğ×õ¡ùfË/”½jGÌŠ\"L”H¦GÅ‰–XË„G*CdñXB6•—‹\\M‡l\"Ç#q»6n7ã™\r‰–]›àzqfË54HÁš\ZdDXæ=CWTzŒŞo,Ü/oÒto±)·óÆY‰°qÄM2±©8Ájõ„¿Ğ¾(yí6“”â©Ã_ñĞü‡à×ê6ŸTÏªgÕš]U–î3€àJ4PÑ´Ú³äÚÊ_³q¼ÜnŠ6›FYn=•Š(Q±ªS7–!¼Ùeácûà²ÍÂ‘¸S\"Æ–4š­FˆÑc‘¼”MAÌnğÅ!ÈŒ‹Fá±Ë’ò¾8ÊˆN,Ó(hdHÎ1%Öé£S­Õ‘&ÛùıpFÑ	b\'O4Å–Yešß‡äkJ£¨÷ID¡ÀôúMKãDèÔ’‹Ù¬YfäxBEa.)–^`EÆì6FD¦),n/Œ”ÆyÅá2ÍÆ›Ä½ÇRÖ&Eù§‰jÑÌ”¯nÂÂ\'Íş?*m_QQ¨=mFo“ı\Zæ£ãÖ#”CV—ÔÄú”}B>¥P‰ë¦´µR}ôkêÚE\n$š{e\rOÍæáÏÄçdÓoi°Øl¬&Xø^Qbb‘c/:fú%/\nB—•1›F°ŸãbÊyh²Ä<D²ï,O•‘7„ñ¸L”‹%\"ÆñbyXcæİü÷<å!ˆ£ÓåŸf¤Z<O%²Ù¹¡M–DHDÑ\"ééëøï£¾=aë3x¤Y¼Œ‡+\Zƒqe—Á²Ë,¼$<YxÚ4,Yx€äo.ÄnÃÇòÅ—Åa1ˆh¬ÅÑV8V7a1Œee„X™.kæ¯ü…‡Å\nBÃn%îO’ÄŠ$ÆH³p¤o7	‹ÃC,¼^W<%›¸¯	¿$XŸ‡îø^l¼QBÂb/2jÔ„<QY©\nG1%ã+ÿ\0ˆÖ_ÊEGòGö,«æ/ÎË;Gdí£¶lfÆExÆ™LÚQEY²Ë,L\nÃbÃbfá<7ÎóBôV/â²ñY|QÈ–!^ÂÔ²„LÃù—É\ZÏ±¡ÚÂ?’#í	ù‹=â~—´Í?+a°Úm6\r†Ói°ØvÎÙÛ6Ø 4>7ğ!ğL¾CåâÆÈ¡–\'›Åò²¸¶E•á¡DLı,²e	–7ğ?aæÄ?XI€ıÀhX°ÇˆHõ‰1{¤êH¢ŠÅp£i´Úm6\r†ÂZd£X¡@í³aÛ63`´ÎÙÚ;\'dìƒ°vÁÙ‰Ù;\'hyO’ HyCãEÂ³¸¾ˆ‹YdÅfË=\ráÿ\0ÄBY‰s4ü¦,H\\aãx4¥kÎ+,²ËÆãq¼–¡9^ÍÅæ¥bÈù+•f¹.(OòCfâËçx¡\"@cX¢…hâQ·5‡–\"ø3xõû>ñB÷¨¼i±‹ùcy‰ìéå÷*6£b;glí³´vNÑÚ;Gm¶vÙÚ;#Ñ%Ó’Ğge±@ÚQY£i°^Ë,²Ë/6YFÓi°Úm(£iBÅ\"óyx‰eå¡‹/„¥¦Ói´Ú8Lp\n(¢XCç÷‚ıçB¡‘?‹ò‘¥…‰/ö1ˆ‡OTîÓºwMæóy¼ŞnFänG‚Ñ¹ŠFÈ¨”vQØ;`ì‘éÑµ”?“i´¥—š(ÚWä™|bÍØbX|#îÈæÅŠ(HÚ8³´j­£ËÀ‡íq«;Z„!Ö—DÏ¢Ó‘ÿ\0ãõGĞê£è™ôºhZ]\"6ô%ôHïtèúÈ¢]T$IÛçà^äˆ{YyyÓ\\éé¦»Ghí³¶(1Á•#Éä¶nföw\ræáHŞo7Ãy¼ŞoâvR6DíÄì£°vÁØ;,zLzl¦QE–_Âòø²„Š6M¸²È¼<X„Š#„$(Š%!–n7n:‰[à¾xşf\Z³€úF_<ŸˆFØÄ?_ì„1åæ<³ÒËìåyğ:)Š6›M¥1ÙlÜÍÌŞÎá¼ÓÔ\'¨-SºwÌÜo7ŠFÈ¤vW*6J6V(¬¢ŠÂ‹Ãx¢„XÊ(\"²¤)PîŠv\"‡4j:Rvø!ğ\\YY|ül^å\r˜“¿…È*Xş³ı–_$<¡zÇK:•üQEQEğQFÔV(¦yš7Ã¼-SyÜ7›Îç;/Š(q6›\r‡lÚP´Û%¥FÃk6”PÖM‚€àl˜à(›JÅØ¼\nEáL¸,.>Ïæ·ğ{\'\r„tî*«véjln:VvàvRÑäÍ8ğCä½aŸÑá{CÊÅá:zrİšŠ(£i´ÚQEQEŠ+m(òy,ÜoÅQ\\k…f³§Š5(£b6Š&Ñ£a´¢„³HÚmCE8ŠlØVf¤ª3–ç‡†/†-á×ŸGqÔénÓ.Sz=¼¢©j:Û81ú£z\\?ˆöâ«„=±û†^Ê§ìX\\:Y—Â¾+,¾tQEJ(¢¦Ói´¢¥~5Ïv!*%¨]‹…qV[fì,£^|PÅÅrdXıæ5zED;z&ÎÖ£¨t=<5!t³ê:­­Kt[£ÛÄ\r5‡˜~R¸eñYbiËl£år¢¿rŠ(¢¾k/¬×/5Â™L¦$ÊfÖ(Èp‘Û‘Ú‘Ú‘Ù‘Ø´X´YØdôœV£¹ÕÁq\\l–vÚÛp‹z	;5áÜştİu.ºxKµÿ\0ÿ\0›ÿ\0ôuz¯KM}±ÕN0ÌïÛfWç1šyy¼.\\\"ñÓJãÿ\0\Z±ôò>GÓÈúyO#±!h3éä}<§‘ôò;;>šGÓHì3°Ï§gÓ1tÌúf}3>•ŸHÏ¤gÒHÏ¥>”])ô§ÒŸJ¥GÓ#é‘ôÈút}:;ìÄìÄíDíÄÙb6#j)~¥EûÂá+/—¡f>­§¤£·GUÀŒÕ§Úêÿ\0ôÿ\0­×ıš}$û}O_îU=ú¸‰h^n+ó˜Í,¼¼!å‚c:iy_òÙeüÛbm‰µbm‰²&È›QµQµ±Qµ²&ÔR)ŠGĞ²şIRë57O>¸/‰ÁØŠ4zg¯§ÖhvG§Û¥N:’ïéÿ\0èJõÎôµ	µÂ\"Ã#ÅŸï,iååŸÔ1‹È—ˆ:pv¾;óúYe–Ye–Yfãy¸Ün7Ye–YeâùÙe—ú–^:ÍM±“·ÅûÄ…ëxÑû5uzCQ½n/£ûõ§§ÓëJ]cÑîÓÔ‹„óúHÓYğ<»¦_%ÁÅ¨k(şôÒ¸ó¢ŠıåE~X™e‰–_ü+,±²ÍÈzŠºİMÒøÄ„<1íûZ\ZSZ+VrÇC\nÑÔÒœZ“GÕé²rİ,!ÕcK‡õòld8¼Gƒñ˜1åc¥—İğ¶{ı\Z(¯‚Ë(Ep²Ë/–Ye›‘¸ÜoFóy¸Şo7›Ã™Ü©ß;â×;ÃÖgyæwdw$=F=YÔj2måò_\Z#”Cğé´¥¨ê?SKZz.=^ŒÇ³WKK,B–ıb¸Èÿ\0gˆpcà‡ç\nÈgú†iËl írl¿×¢±EQFóxµáÜ7›™¹ŠLŞÍìŒÙfáÌîÃxõéŞ£¡İ;†óxµá¼Z‡tZ£’Ğæn1EÙÚ;GlØ=3²·ÆV¾ˆ–÷ZZ\Z	-Êwq¼[o©ÔsP¼ÉÚàÇ‡è‡1eaÀ˜ógú£¥Ç…Eşí›,¼&X™¸³r7Áê3{-›™¹JfÖm6›X¢Í¦Ói´Ú(›D<$P„ÈÈLX¢±7K¨íL¾K›Ä}¿xşÖŒTµz©CE%)>ÊCŒpâY¹ğ€Åàl‚å/CÄ0ø1ÃıP°¸ÅØ–u;7ÆâøYe–Yy²Ë,²Ë/æ¢¦ÓiX¦V(H¢±B´¢¨¢Š(¢±Y¢¦ÓiBEbãÖOl&,¯\\ØşÍ	hıõ¡=8Gjœ’%¨n¯‚¿cÄx²^—‘â^\"/BÂbwŸb?±~tİÇòYe–Yy²Ë,ÜYfãqe–_ÁB´£iFÓi°Ø(QEš+\r—ÂËÎì§˜²ógş„îYà†<!ñ„w\ZZ¯N:³SR†ìÑée©¢´ÍT”ó&X½®,—¤<C5‡„ğÉbËğ†AÙé¢‘B:i}¿³e–Ye–Ye–^,¾6_ÀÄW6Ç•†V(¡ee1K\Z¼·jeóVX°ğ‡ÆQ[{†‡á%-M]>‹V:ŸWÿ\0Ó¸œå77•› .OÔIØñ–°ı‰n=²Ë#å?z©/–¿^ø¬Yy²Ë/7›Â$QY±‹•–Yb‘ÔÏlóÁò1(~ø®âá§5£ÔèøO§§-yT8DEâ\"ãıñyR/‡õfó§/2#ièÊãóQE|4WÅce–Y»ÜYy³q¸²ù!/ÑGWçMøø£„.şß:[÷iJ¥¬ˆkVœº˜jGV{Ÿ/ás^ä\"²Ç…Æ…îËyxE—gK.vX/7›ı:ãbÂÇeâÄÄ1!¢°‘´ÚQC\\X±EV§\"Ëä°²ğ‡Â^ø9”µ	él.Óƒø¸.Ü±/(\\¥îŒªK•|TQE~•ˆxL²Ë,²ÄË\Z(YlbBâÊàÊÂ(q:¸mÔk‡÷ûÂ8\\PÇ—ËGÎœT·z7÷Ãù˜‘à¸^!Åüó—˜‹Ê¡x4%qı,²ÿ\0Aâ<¨YÚV³eˆ¼Şl²ñ|–P±×¯şcÂæ°¸¬1áñĞŒ	éí”µ$Çcü¹,Ä_ü¦\"Â¸,X˜™e,¼üÂŠù,±|4QEVQBáxÛ—”6Y|\nÅpYH¬èËb/’æ²ñüá¤£%ÒtïOªŸo«&¥Ïø,,®2÷1ÃË5ë+ÉEXÒ•J>W\n(¯Ğ¢Š6ü5Í¡.{H¬5”Š(¢Š+›/…QEY¸lëê¿X®hYyñüá£(%§9ı>Œû’Š¸¿²¸Ïò…‡†Pğ‡Â(¬×14îq¿Ğ²ñ|(®4QEa#i\\6Š&Ói´£a´Úm6”m6›M†Ói´Øl6›~\Z®«üÜ$.H¼<.PÕ–‘\rE¶¶|1Â~ä!r\"Kß*(Yª,÷’\\(®7ûˆ¡G’_%ş³õÖxÕ³ùwğÇœx.0Œ¥/¤ÖoS§ÕJ¾(ò\\%îDHæó,.5Á²Ä11DC:wZ‹å¿Ò®QB/ä¿ş*+×[ş_‰{\\ã–xt?‹êtQ««¦Ó~x¡åà~¿²\".RÄF,/k6_¬!¯ğáåbË,²ÿ\0à®5úVXßÌÎ¶;f8×Â…Î9g÷‚l‡K§uP„W%”!|êı²\"å,#ú°³W›ÄhÜnV†	}–Y5W+ù«p_¥eü}zÿ\0çCe—Í{÷Í~pøéKn¢”dº¹\\¹¼/‹ı¹æÇÅ{Š¶âl(¬QT)tÌ–Ye–Ye–_è/’Šı‹/Yş9b¸ÖcïšË->àôõtÇo’àˆ‹ŠÌ¿2<Øø¬&Aß\Z6…äp¢.ıÜì²øW/–Ye–_å|ü,ëÎó…aIù¶©¿<W.HXŸãˆócâbÅ3vE\rŠ4_Ş—†¹QEbË,¿†Ëãe–^kó²ÿ\0^àÕq®+áEŒcà†õ#…{BãxXŸà2ØøÇÙ´ØV¨R=–Yy‡¸â¦ÒŠãFÒ³e–Ye—ñYX²ø¥ÿ\0­éürÂÃÏZwÏù„$.k\ZŸãÄy¾Q÷¸Ü,Ğ±E29‡®4Q´ÚQX¢¦ÒŠãÅ—…Š(K+ş,ıYx¼¯|+ığ¹ûäÇ„GàXÕÿ\0\ZöG›ä²˜Ÿ?kÎlF›ûxWÉC‰EQ\\©›M¦Î	pKşGS-ºeæ¸Cã²Çò!åøQªşÄW&Kà²Å\"ì¼,&\'”hËí²ÄÍÅ–Y|k‹/†Ã`¢m(®+‚ı;,_©×Ëìoà^¸>ÈÑ_2à…ÁòÕüW¿ï\'ú^‹Å,¼Wãe›Æî\rM†ÃaY¢¾Âıuút®|œ1ûøÿ\0˜B_5?.sà‘\\,‹?…›ÍâÔdf›,İ“òãe—ÂŠ6•Â±_%—„ÅÆó|×í¿]Wùxÿ\0Eğ®\rPıüK‚#ñ#Wğ±p¼¾~1fâŞ<ml(Ü]‰c¦ü·xŞ9fæ+M¦ÓiEÎóeü‰\'ğßéß;äıuqÿ\0ëÇÖ+¬¬/å\\¾/æ§à½ÿ\0xÈCø|á2ñ§*7#qBgF6ldtÎÙÛFÄV(¯’Ë,¿†ñŠdWüEË¨Ğî)&Š=qş,/ßÈ¸!âÔü\"rñ//ĞóD ™ÚCÒhªÍ˜ú¡bñGH¼xÍ›,²ÿ\0BËãBBè¯Üë–²ş7•„1ü‹(Bø‘©øCØ¸I‹‰Ğ™g³jfÃa´k\ZrK|•ÔFÿ\0A/ùWm^Ü%+v>ß•ûù¢/\ZŸ„}ñ›¶‡¥ÂfâË7Ç¶CÒ³³#dÑR)‘‹4é¬Y¸¿ŞB_ó\'=‘ÔÕ–¬¹/-òn×À„/SğŠ+ƒ|‹…—8³y¼Şo/x2?»|I~ÚÃâ³üKá_Â\Zå¡¥İœ–ÙğCÊùgøÖ,œ…—Á2ùß4h*ü|K÷«5½ÿ\0òoš7•‡Ë¡‰Ôÿ\0›‚à½cùğËğ#øâO+ÌZWËgOÒ_ò¿Ô²Ë,¼Ybız(¢¹¬õóáïŠø–_¾,kK]Ş¯Á|¿ëD}Œ²:m ¬_kx¼GÊÚm(¢Š(¢™E/},*8¾V_Ëeü—‹,¾ÿ\0oÇQ-Ú‹à_æ½ÃÄ5?ÉÃù„D_\'ò„9Óš®°„éËÉ¦É!¬AĞŸÅE\Z\Z;œU~İü—„QY²ÿ\0JË,Ü9Ã¸wMæó¸w\rçpîÒR³¨[u9,G›Êbôøé’ÖÇïšÂùªâÄ¬ƒ[H:sÒJ6Mô)ÙeËGG{ŒTUó¢Š+õ¸¬Ğ—\Z(®Ye›çuÓºèõNùß;çxî3|‹“)›M†Öm6\r¦Ó¶-3a­ÓÇV3„ ĞÇ•„¹2ò¹èxÔÑU§ÁrEóYGğşD•Ä^ùN\"õ(íp‘I›J6›h¶…#qï††—rQ/‚ËÍbŠ6ü_:à±\\,Üèî#ºñŞ;ÇpŞÍò7Hß!JFéYµ›Y±¶l;ghZ\"Ò;b´¬$QY¢…ÃSN:«_Aè·|\'”GŠòOVø¬¥•ñ£ù˜â$é?´N‹=’ÇkQFÓh–QÓCl>5Êù?šèŞwG¨w\rìse²¤lfÃ¶vÅ¦(›Qµb‘EQBB+ÆËÅ›ÂÅæËÏ]êø,.O‚ÃãM¿|?ÕÅzX~Ğ¼”jÆÖlLü’ONE‰‹„7MxWËq|ì¼WÄş:6›i´Kä¼Ø‹Åñ¼Ø(®,òG=T7Áü+Šç\\™B5Á2üˆÌNÄjBlR\"÷*áe±pé#ãcp¥Îócù¯š|k6,<²8YOŠÅ>¿‰L6jpX\\Xò†>1%ğ,¡|?Èğÿ\0jÂ~`Æ­l6›ˆ?>Ó÷eå/JÍ(íÃEp²ËËfâø_É|,²ò‹76\'ŠÎÒ°²¸¦nÍ|‹:šKQu\ZkKS‚ÊÃÃYCå\\Ì°ğ˜³?ÊG\"càâ8šD£cM2Ë7›ÇKÏŠæË,²ñY²Ëáe—Ê¸5…Ê†E‰—„Ëä±y¢èİÊÄóe—…„ñ×›šËáñCıÃú„MOh¼ÅÇ&óq¸±1LqEJ(£¤C•Â¸2…ñW7Yeâø^â¸X†¹.h¼%Áp¼Ş¿óæ²ø¶?×\\?©‘Ìı‹Ö™©ËÓ²ğŸHw(îp/†Šá„Ùe‹ƒÅ|_Ç!ŠÎâÄ2ÄÅ›¡;øk^:õöå|(*ùÈˆxÔÄ^(¢ˆšĞà½LjÊÂVhé¸Æï…Ê(¯ƒiEp¾PĞ—YfâËäÖ,²Ë,|EpÔ4æ^wğ>R½7…ÁƒàÇò/‘eˆg„)•‰–&f¤sçÖ,³p¼š:UÊÍÆâËÆá¾/4W\'Â¾E¦ÓiX\\/6X,¾k„•Š8E\r›71\rğÔ[–¤6µÅzBÃñOæ_+Â÷ó¿%còOOn\"K†››ÒÑPã|+6_è?†¸Y¸²Ë,¿‚³\\WÇ|/’àÄ,ÏF3ZÚ=¯‰òXª°ğˆ2^x¢>HmiÓÒ[Üº9M¨iôÂŠEó²Ë,¼Q_§\rb±eâË,²Ë/\\¹Şo)‰\rego*Íc­w­É~1ü‡ÏùçÀò±,ÄyŸ¼,¡Ú\'÷Fˆ:p•Çf¹Ye—–n/âe|•ğ,î7	åæÄË,E\repŞn—Ä±C^:ŸòòOƒÂÃı…‡„D~ñ>E–!â,’6ùÑ_a%b_«\\lr7³ºGVøÑEŠ(®šåeâ„X˜ØŠ°Ô)pX¼¬G\r–_\Z(¡Iøê?>HYxC¾__¼A’Î§®±3Úb=š0Ü×…ûÛG@N‹ÂqC|ë•bÏ|*Ê¬W$mÂc–\Z/…ğ£«‡k/x_­dxÄ–u=p^G#ĞÄitíšzj?-–2ş6,2ùQ·Å#q¸³wğ,¾.	å¢è¼^\"<¢Æ^^#‹/¬7-H8¾K-aô_ˆy€ó?\\\"è»#ˆ£C§¯ùWWÅ\\–h¢†±äS7òC*(®(¬ß±e‰â˜²È¼!”V¹kioŒáµòYbÎ¸±á{Xx€òø¡ôtú	D²Ë,¾_ÇEŠç|ìO.B|(®[‹ÃÊb/à¼Ö‹âÜ$E–nÅ—”ÅÇ©ÑŞŸ$_ê/Š$‡ˆüà?ÛGÆ›e–YfâË/”W=ÆâË,lİò5›ãeó¬,QY_lRÃÅáa(l±<QB,²Ë=V•|,\\\Zıx’ÌÊ+ecN;§Eâø1b¸Yxy|èYkõ—;ù\n6\n%P–^o#hÖÅ–2Å«üo’àñ2Åñy?8bãX\\zUÆŠÅñ²øßÍ£x|xXb°Ê²¨EğxEáÈ¼%ÉcV; ×%Áş•ğ|\"?+äĞØp±¼$Qe—‹/ç²Ë,¾WÅá?Ö¢±x\\o¼Yìk;„ì¡‘xeçq¸¾	DR“ø_é§ğ\'y\\×›Oq\\åBøÑbeóY¾Oá¼®Uğ<¡²¸%Î°Ğ‹ÂÍeJ¢Ë,²ì£¬ä¸?ÛŒ‡Á.	fÍÇMş.,CáEfÆÅÂÄÇñÖ,O…–XŸÇY\\Ÿ6.	æ…ÂóceÁ‹„ÇÂ…à³®®k†ÿ\0b±FÑ:(ŠòÖ—cğ#¦üøPØ°±X²ÇÆÇ…ÅÆËÅs¡.4.t%”^/•–XŸÂ˜ò†°¤X†V/‹å°ë<|	şÒY´X®şâE1G—xé_Û\\h\\ë+ä¼¿‘p¬ßÈ¾*ÅárXxEŒ®IC‹,ë½üoõ/;¨^M£(ÚnFóqn¯D_›Ê+ä²ø¬WÆÿ\0irbH|—Á‚wçú«çMİ²Ù¹ßÂ“Ş‡Å‹ãx\\ëÿ\0ÿÄ\0-\0\0\0\0\0\0\0 0@!1P`ABp\"23Qa€ÿÚ\0?ôóÉ‚=¤Áö÷³yİŒ ,’I$’Nüá;ë(Â0Œ 4h#‹^m$ğ\"ñğ´“œlI«ÓÇ ƒIs¹ÜXA¶A|DÅ•B%‰\'à…>.İ»ä½<Úx³1Ÿu(ñgãà1ºª5š§Õ.jD‚õ™Æ/ØA¤‚7\'ÑÀø” ‚ të=<½ƒA¡¹S‚Ù©sçi¿NÆ¸)]®“±n=¹&Ó³Xª³´o,6Û{P@¬È ÓgÀVClÕ°“\Z Òh4\Z\r“B\ZÁ	nâ³4¶5éİ¾t\Z$ûgÛ>ÙöÍ”v¼l;E•ôâ¢üÚ»$ñ¦Ï:o7åf-ŠN«‚Iä®\"5Mµa$šF¢MF¢d›«2IÊ`ê[I£×RU	ZŸ%j1ÖÇàvé¢¬&Éœ‰\nÏ“HÔs`TŠ’>œ^fÔy:q«ûmúŸ¨íÒ*ò<Qß*˜İ¨ñz¼àËäÓºˆŞ¤uİ“51ÙY\rËÆm¨›øÎš¸kœXíG‹¼ßqxµBV«ql<U•–T	/}\Z¼Ù]âÊ-Y¬Ô79É$ó$Ob3œ5ùºª\rdçEªºÅYì®$^l§ÊÚßbl­Ôó”ç8,S³Ûï”pRÉİì¤+×Ã‹­ÊH³àN)“iÆIÍYaWrYj¾‘®J7Ğ„,Xù2NÌ’j$dc$’j\'a]’j\'a]Æˆà$Èd3K!“¸ˆÙ•‹¬oˆÂ/;Ò%Z`ª«Á‹ÅÔAE#¤ü·Tk5pmò§EŸkÂ D‰ÙÚ6™H»\rÏµ§½K‘û‰á²Ÿˆ/Uz˜ ¾Ä£±4’‰5è#´ğ \Z\\Á¥Gq½=„çØ+A¤é*Ü³êú_²Oöd•¢[A‚ ‚ ‚7YÓê:¢¥=j`Òšµ^}<^â=ÇàEº\\¢¾²©YÑù÷rI$ï±;:§ÓÉ$’I$’I$’I<„iuvBúWùE¡óã×}=*šu³©×u>ÇÜ«á´ÉÔÿ\0øM¢ôéc¥­—éW éörjÿ\0EUÏo‡R‡ğú_b¯X½\rÇc¨öŸÁh©Ò7ßáê¨Që×ğ:ÿ\0³“óØø‡ëñ×½Ä¸ü¬ŸâÿÄ\0)\0\0\0\0\0\0\0\0 0@P!1`A\"2Qp€ÿÚ\0?éàD“Î|dÉ\'Ÿ$òS$“ñï•(´»7’I$Ai4A#iÒ7µ7’I$’Iá,&ÒI$“Ã’o‚0É´’OÀE Œ&ói$œ ÓŞI$Š¡3ÁâÎì’qJ	5Æ£àâÍ“\nĞÄ™¥H©øJıŞšmàKOÂWîÊğ,£¤\" ‚ä×îÔ‹¬Kfãº$ş1QbéWnş&I$•ñäµy&ÒI\"}6£Q¨ÔOOKáÉ<Xêà·i>Ñ@ÕàÒi6\\{=ÅÜI&¡±pªBğR-Ù\'’¤’I$’E‹·ŞO{í{)[¯ƒ$’I$’Nô“‚dãOH–ütJÎËjÂ8KAYÒI¨Ö.òÚ»[JÎË\'a!±»Sëf¡T*§›#¬Ô&jx!í+;,àŒ­_»Óƒ<»À”\Z·§Ùb¤‹i4‹np˜´İzıŞœJğUîÔ;S¸Å¸ìì×!`ÆñDZ¿vBÁ”•«Ph¦3HÒG&/lNi„cG«¿ÎGù\ZZÉ¢ ¢ï5guÈ‘Z;F	e³Q”FAxµeg³*Ë‚°yR;,^…;0FÃ¼r²]–‚È´Z0K±O	ã¤‹a£Eõ	ó/‚!ùÚ‚\r$–±{¦›É;²O	İˆ¦-¹İ×Š[­“Âtš ş1$¹Q½¼ğ]âÇ1sŞ2NNôq`¾Öw<6EDTiîh4!(Á‹¹\\\nV¢ªc%Õ;ÎâÜı*ƒó¨«öó\nßSàıp}L’I$ã6›É$‹r‚ªF%Tÿ\0švüıHÜôÒI6%;”û*£Í©ı?¥š³ì`‚ [¨^ÇM©¡/Y®‚ ‚4i ‚-†Äà±ªEƒºíÖó+óá\n˜#a|+ú¶—Â³û¥ğµ;%‹Á|-rS´¾¨şÊci|/éJ™gä’^6—Â×J¨¥B¥ğµQ.v×È/]ºä¯_ ¿ê\nùÿ\0,/üœ ùÿÄ\0:\0	\0\0\0\0\0\0!1@`p \"0APQa2q€#B‘Rb¡±4Sr áğÿÚ\0\0\0?ÿ\0q}íËïn_ó\n–n×&äv\\)ëóˆ\0²‘C(Cåaià§ç†å,õ–\r®ŸÚ$¾ßŸ¶c°0ôºóì²‡¸QQK&ëÃ9bxæ›tèrÄ§Şñ2JÚ–İ5Ñ=5SXÕ-Ğ™ğÄºãğåÔ±ãS‚Ù½á…TĞ8v}$^|õ‘ª®£Â²¦™W$š¼;G\"N[8¦EPpê˜ô™bÇïÀ¢¢ô¯Nª%<XaHtVÅÆédÖ¢h¥“ãı*ŠÏ/í“Ğûkl	L{\\üÜ ØvTL«½…ÒŸ\Zëªy\0Âì6f¼mO&ü©åÃ’Sã»pç’´×%O±–ûß«xÉé*Şœ”ÂC\'^\"Ëp|§&ñí\\{Ûkx…\'‰nî§%Íê¾>pYzÊåû*ªßæ«“-”tÖù=?¾WûA|i ëÑüÓd)iâ‡İ~_âA÷^¨ÌOMŞüH{O^¸Ê¦­ßÃ•ş½ ‡áÜ\näNéSb¥TşüvÉ#°„×†ÃÍ{šuØ„-!ôÂŞT_UÛ°ÉgŠ“ˆg¡Ì©îCıQğ¾Q‹\\A³‡\Zñ=~\n†(!ÄÔQv\nŞZäŒh¡†[Å“Ò1é<s‘41ƒkCôN—J-i¨ı“ó‰ÙüŠ^£!ªçÀ¦¢§¯.¢?DBÎh“áIC¤\\‘nkE¢\nğ´^ú¼rÉS¨Ø‹|oDL6_v&æŒz\"b€z¡‹Õ\nxWáü™¦ì5Cõ¦C%ıõBc´!çd±Zi$ 8$Î\n+1N\\EüPj\'šˆ“½ÍŠ&ÜRdDf¬›ôÓã#·+ëÁ§úb(Z?¨€¦\Z­~¨ÖüÔ}P«]±¦3ŒÃJ(¨´¶}.Y	UJp½ŞåNJô€»…Ä7ÆGéØÒGeÄQE\'ZK^®l„O¨x[Ú?ÙsãØòõ!Ñåo~ibş3”‚Ş*QILOì1Ç6`”bÌİé4oúm<:¦©ìüßtğé!ÿ\0ÅZìŸS“dr’µ¤Şt<í=îš§´ØP›ç÷›ÿ\0D}Ğ€Tò[àY	¬ÉEQ<Gn·†MÀ|(oÜÛWÔŠ~f‘ôš@ö;+o!Ë²İıXôßBŞô£å‘ÓÆ-G‚\"0Ëvƒ¥¶kàLy[§Tºká7ï}‰ªƒ¯åîâ{&-\'¤(bĞB.Hƒ\nA{l%7È`ˆ°<Õdª4‚©»tñ„«A|ß¢Ó@7Òéb—uú€Â&úĞ1ÂX™•duÅ»¡<S ô:q†-)­…#O|²9©Âñ)\0\rĞß†,„š\'5Ò+ñÂøf¹û…;¡ÈºİMøa/bJÌWq|GêCó|³‡£×¤Œ!ñ”\rÜà¾xU»`IáÃö/Rc×©ªJx|™r§Q®ËlW	Úı“ó8\ZaHê¢¡TÖ0ƒ”çâök±¿>ŠöÜ‘®Æü0‡¹MzŠ%Øì×ÃÏ·\0¢÷¼ŒFMì(½ï¶bÒcqñ„ê{ğÙqE5.7Œ&Ô<Šh…ä#yô+:›‹ã\n´ö¿”ŞhÛ¬.ãLl·ß¦v<¦<@1zQÙñqµß>&¢…ğ3ä“EŠ!ö¸S¦œG	éôáZœõ¯\'8qºÔöï/S½:Ì×BgRˆÉobº1ë°â3”ÖÜäûÅŠ«ˆ»â—êÌ†*·ÕF+9@r‡ß©Ú8´tgâŒ[H§bÑÒçÀlZ:58§üpEş¼3ÕÿÄ\0)\0\0\0\0\0\0!1AQa q‘0¡±ğ@ÁÑáñÿÚ\0\0\0?!Ğ‰¹!2f»â1Š‹ñ!P †]üÄAEd’h¿’0htÓÔš\"|DD‰’32	Ğ¥ù&„b«ñe¨µG€Q j³C-ÉQ^,còJ†„hÿ\0\Zü/Câ/ÊÁ BˆQ4Bü©d1QgˆIdŸ†Pª› ˆc/Bün‹ÀŸÂ*â²†Š¨*M€lI“W hÈ¦ƒ7$šIŸ3I«ÿ\0‰*-)~7àŒÈ†\\½%Ñ/Í\Z Dh €Š€ZÅ_>š…‘E„Oâtbğ^00¢5JğOà›ØYSŠ–a¡ÊLW\r£È“ãQä¤\\ ê—âBğuDşvJHTl4 Pü Bb!2ÂDêËğ?MHˆ¢\\ °šŸ6 Up2	Y3dŒLªFÕØê»CC8hNqâ¨ñK7ÿ\04h4V¿àG€ø$Ö(Š…qg„“D*;ĞtH¢¼\Z\'‹£Š/!U²hÇZ˜¼\'à‘†Ë»1c³6#bâBˆ0c$íá¥äåË6‚‡(zl~ò\"ğB¥Æñ!¼_”‹É~ø¯@Š“D¨‚*E$ÕÒØèd&¨Ÿ1o€ïÀšŠ¹Šµ)’äŞè-PŠäJco¼Ğı#$rœÈ¢Øä?ÄèüP©/•¢Eÿ\0ĞÄğÁüìb#Â| ŠEå$ù8ãbºˆ£t€\"¨‰£&†É{7h²¡äIÏIf†öÄ(¦\"„K!Ä¡ø#ó…Q	~?Š|dŸ8#şù¦¦¼„dy=	ğÃ&¬J•IU±PKÂjI>MŒ!tF#c]İÏ–%°úëŒØ–=B¡U„ƒç^6ñš¯Éğ—“ğ’DÆ‘ÉÍÂGRè‚bğŸ\"qA2I¤’1\"©t!e“Y.NDd\'ÌP{²9(1Râ@±Î=‘Xªt?ø0 ´FĞLSaf©&“RI¬ş)$’I\"Cñ’|VÁpdÉò1P&O’òŠ4@\rTuê‹©aR\'RhÇšQ>iblE­HŞ\\›’Ñ\rŞ\\pÈaˆ¥Vºˆ.%\n:$ÿ\0†«\"b*x	À‚ñ•…EUG’H\"{øÚ§²Œ¼!5¹!Ä‘\"D¨aÔU‚Q:XTQTÛÎ£ñ:1fT‰†c’ôV#._Át*Àí“4ÕÊ¹5Ø³jØª‡B\"¼ÿ\0¿Ä*¯Ê…T2DPš™tEPeºu&´‰\r‰“$H˜LHâ+X˜Š7RJR Š‚UTš1º\'\nò4“âÆ†6& ˆR©]áqp$„ËfKË“:.!Æ7Iu¡R\"ŠòÑuàtU~,_:ÅÀV	fKr\"w‘5xŒ«TDJ*X±aˆ¢ãÈ0 X‘:ÍâMeBU)	$a‡Xè5GJhL¼\n²I„„D¹-ÊGsc8Ñ(k—5¢LŒ6DĞER ¿(\0kşl\ngñÄ)&GàdÔŸ2ºi°Ôt&…RÈ\"®Á‰±¤ÅB*n2RMD‡Dé5XÍ$„ü1\"]ŠEA::-Âls»eQldVC²¡‹Š¥A \"\"Aœø0E\"òET†:*È¨H¼› ÒG:0éGŠid@^NDZ†ŒIÒ ’)1 %\n¢<rVDmì½‹0„6/ˆÂß€‚0Ğ‚¢^kÁşGUÿ\0*$G€ŠÁ+ñŸş\0&Vh’jšHãâÃBhA†$‘Ôy¡¶H•–ø†k‘;);F÷IBÅ™l†»²ÂjQTˆ*AÄ®°Gšñcğ¼Õø¨h‚<ÑDC ŠGáM&‰\'ğ&54àñrk$ø	ñM‰P¨Õ#˜ä9E„TfD\"GHI‚³ZóR&Š¥T‚<K^X‘Ä0šÌSF?;ªÿ\0†‚[Îhš¿%F!†`‚*0êİOÌŠÇ‚R<Âh¼!êJ”W€¢’@ŠÀ0±à]’µäŠ Ô/¨!	xIH=á%Ø[x3ÔäŸù•dšUøf§B$^ñˆ\'Â£D/\0ÀÁx¦† Bb‰àTuŠ#ÂI5†„HŠ-Ê5LK)Å‚TA@¬b2ÈáÄ7C¸«‘¡ÄüP¼P…ø¤’*„4b:†‰0E#ÉIá>òš/ÊÆAµ»ÅQUUÒ|$ˆU’|[2jÎ…ˆ¡E\"¬	In¼CS,Š²§;”0c.+f%lü.‹ñÈÕ#EAé€¿*p\\«Œ:^#Oˆ„„ê ˜Å¨tÏÄ3Gä‰üÁÖi„S&ĞÃ …â©4:é£FFíR+‘–GÁÇÀBğ‰2F—±à¸\"øüá<’âû™¤»Qæ*¿b*ÃM’­2:	Y¢;\n ÄÌB$)–Kˆò$“äK~F1ˆTEÄÄ$š®º|%V:ªI¤š3ñŠKí%üˆf…’ÍWÌˆˆ¿ã0³Äbr)É‚¥QCRğ	jafiT-‘%‘ÈAEé‘\"ITèBh$Í\"—.HA$jÉ>B~àß‰•3áø±çB\Zøèèsl¥‹Ğ•P‚d¨‹’0ü¬Çeñ1áHæÃºY†­Äÿ\0,EÃ¢caxŒkğ\n›ìC,Z²Ş>ô˜£äJ¹€GTè:dŠ|.rXs&ôàf-&³òc‘h!ucÉÁºÏ‚I&Œš¤P•l’I&‰H\"°GŸ†Gx¤MBG$ähO©}\"gCM<	£Š|ÃÉG$$¡É4‘±‹ÁzFXŒœşRÁ?ˆE±B·a4Ì·4l1©íˆWF’“@j™%¼\r»’™Y/M’8aliœT¾âÚcâÿ\0²ÛOÅ\'1\".P›Ä‰¬VI¬Ax/È_…xCª•I´Şà–„7&:‡*eI=Å‚Iòš!¢h|,Ê˜Ã,Ğò“p¸±KÈšñA	$’EAPšÁJ\Z¤ÁhK­É¹’Ù‰z#Zè[‘pg‚ß$ìJ‹É,¹EÖI]Á¢]±®iM`^ ‚#ÉxÁOâ¦¼*WÈ)\r^„¡Ê™ÔÊ\'Xğ’I$TDñk1rü‰œ–¶$F†àü‰h^É™¡ø¢i\"døi©…bŞ6öJJ1Xà4\\ĞrÄXr±Àö#Ğn‰àìzj¬Ì“££º\'Å„]ö\'*DğÙ ª…çEâÑHü‰’MR2ò/\0HÈB•5Kƒd‡Hñn›¤^:I&Š±DQYAn±ÅDAÓRGr9$mŒŠ¹5‘ü¤šº]ä©4’Fè‘1R$et’dµ@¨[É à/½,&¹>	ƒ‘ÒÇ²}Ÿ¡c±uíT´{»	Ò4@\\kR¤“ã#¡?ğ\'ÉRjäÆ›ªÅÅáD\nÄ©d;¥Şª†„H)z­(“%ù4aË÷‘ŠÃ4ÈzL¢A‘:‚Í±ÉŠY‰>j³A?¢|\"\røfÅ«—ââõ(^]„M=ÉÒ=ÅÃÍuEòuªÌÄÚÉz†û¾ÙDâ:©	ÕÈŸŸ\'D ƒ‹â«ÁHF\'ÚvÄÌæô-ˆ IÄ—«SdP€©•†æ™¹/Æ¨è¯.ä<C´eäLônØù¤M7š.Ñ O€š$’MàİUPâ!#Ã,Ìl‹	1&å†4Àïcİ>’ğ’iú:¤9)î	ëgluqô+~($$–†l”ˆ¿oÂD~&v3P\"É4ÂFvlKg8Í¤Ù¡%f.X„7)t(¬³’’4hµQ‰\Z.ÑBr%0L‡àUT•X»¤^Âˆ	;±aB	b‰fƒX˜’ßÅÅD¿(&­h“7h°»(œBœ‹HÔà±NéıªÁì’O¥\nòb¦#¼³ºacìİ‘„È:ItüLtt0 m,™&l˜ù§280Ç¬ÆK™¶Ù2ìq]ìVÖ‹$vs/Îæº²‡u3¼ÄÂ”rKğ*¡ÀÑ¸­3Xäbï}\ZÂ¤Írp\ZîH„3‘ù?Ã?‚(‰Hè­MaW9 w;R¼z5#rIÙ£ÕºÙvOUÙ¸¸KTôc¹z-‚F$>e¡4THü$’hLÁ1dæO`ßg*5Hô\rii\nÒS¹ár„yËd®äF¤ø#‘ÁÅ°úêcÑsIÜÂ‹ßˆ«Á\'*M’NÆ@Úä°P\\‡Cj`*¡Ah»DÉ“Ùñ†?¬‰ÒAÔXHÇ`–L‡³2Í\";§ªÅ>Èö$EÅ«Ó&ÄlhšM¤Œ1G@—˜9KWI4O„ÒVÍˆfr§>1“(ŒbBĞHÉDQ¤?¡ı!z°qYØ!ämáiamÄÚ§$I€Lø\n=q£sğÕ ¡ĞRÖ$Æ¬Ì»2!×2q¡¥¤ä&ZnCŸÁqR(ª\"«ÀŒ’–¢%½6ÉLÎE¨fåU’9#ƒÕ9!O‘iZG3©ÁKçÙÙ³Ù?%Ã’ÂÛà¬	 ¬Å©$øç-šÏbåŒÅ,š$!bÇA	»È¸2j„ ZFtæÂ$k™ËnˆÉ›/É—¦z9…V£a*&eAô£ğ!ÌhÎÒ;dÉÍ˜\r¦dKq<¦âèGd^şQ?€	\nƒ‚Á_A\nI$6$»‡È—lÔ„ÉŠ¬¤z¤z¢.D—°“±¬ê+î/I§Ÿ÷EÎ!z·&ÏFäŒ—å(`Š Šˆ™§à\"93––d¬ˆ!YËá\\Á‹\"¶e‚hI¦H)	U@wC:ÁÄ/‰8‡’DÌ±¸\"\\Aôî„Óc™Ğ€° }ÑBDgqÅ<£QèI²“\ZğÈ”YL\r+ÉBXm³E‹ŠôT#ÁÑeÂ\"ƒ%ü²Hà™iq„\"%&(«¨G±)’\'ÑÅ‘P¸FDù±Á(àp¡ü	ù1­¸=Ê8Cû>Œïaa#’×…f’I™ƒ|‰0Çû9?\'5+Õ#}³8%b€ÍŒ°İÒäf)±>NAœ›”\'à]2YÚˆ €Ö‡t„<!š$áY|“\\®N[=£Ş[a¾‡@nK–4 Ha4¶&äcÅÇƒ¸äJádSØ¾Ş¥¾Ã•\'o#{÷_”ùÉU`6\n¬qÉÜ\\¾\\Ä—ä™Œ‚K™7sô@”‘î…µ:Uû3e#Wb9LèìnD”V~Ë*ËDÜŒËÂpÉ’Lk\Z²g$ä2(^\nˆ#„`äéÏĞàéš“£¹X6LÜ1L‹Ù½F¢ÚeÉ^J£Vs!½!ı!ov…tÍ3;b‡$¼hİ“¹$K\"ˆ¢ ˆ§LŠ‹®‰´¢Y«Ãq™ÜÓ#@²ŞIì\'ğ^	\" ª\'ÈkKÁ½˜J€Û¦n£i(bHM(¿\"á0+ÉÁ‰I‚)êFNÃ!œêæ‡šX¢\"72ø·f?´‹°w.E,˜%E„1à»É“¬¨„#\r¨¨6ÁîìÓ\ZìqåæE\"·›†+–sÃr‰0Ëè‘ØB¨‰ÀÑÁ¡šÓ!ä|¢^H\"¢lcf—‘ ˜]lrGs-–h:ñGÀÄ‰EYu5BˆW6k$Ib½”1¥&´Ÿº/£89qF1øGä@—\'ªü$ˆBñrÚ1±s‚7IQ),Øğdäe™AX†ˆã=œy­Úƒ,ITL‚5,°¨%z,”Ùl2ô8QEDœFnÌgÚpÏL‘-ˆDµ\"F›ĞøÑ¨\"ÈúøYJ\\#q-‘#HCfu /’2ÌŠíwDg¸^­\"\Z˜?ÁkğÅ\"²^4ìArÍA ’â5\'`¹\"	eèÌXÿ\0Ú=¡…‰tjE\"9è$Ü¼\\\r92@ÖY2tc£VX¯(Ğ™Ìœ23ºbök•BP×ƒÙ“jÊÇš²¡âÛÍFÒè£4JÂ%-á\"bMá±cv9“~…„Ñé—\'L-Lt¢4ñL×³†åCÆ¥åØ3 A„ø\'r?šrH¢âØ¨8ˆ	ğŠAƒ\ZE	ø\Z#¯Æ\0‘Á#ŠG=Pµ6¤¹\nâ×!0¨\\)v­äkéŠ;?C“;§c$Ob¥1=ID¦ŒF°é™Ù³(ŒA	\rÆ6WfcÀõ..@‚ «,´ö¾¤mŒRDwğ&á$Y,„‚ŠoâtM£lÍãËòqâÁh»=‹ŠÃ¨8¨—|ä„:¨ƒ±À–†Cs(-7–¬,›N‰nXğC°IÈ¶ü\n‰¡~<„È.M4,bn.fªp»Eƒã)Ñ-c%– µ¡^t‘v¡*Ø4`Âbø3‘Ê4[6\"d1ËX>ìŸ!ŒHçfLÚÄx¡£\"×ƒ¶ÎĞ¨İcAƒñ$qÖ\"h‹™–‡‡¥ÜHDu‘x ÅF¨hU.$a›g€·Ğ·“=ÆØÊ›hPÁ1ÙB‘ŠÈU†IŠjâ$Z‚O\n	vD)ËoA\nYŒ)—’#*æ5°RO„Ñ¯\"‘æÔ€”È-‘	&”Ìhíü<´r²¥r£øj¬ò}Ì&Ã¡ïÙÃLä#×õxzÚ\"X™DÄóHšp|¾‰B’æ@ÄBF´I‘Ü6a†¼eŒ:3à$ ¨¬;ºI#Â§‰Şƒ\0‰„„EÔ¹ (AªEFb hØ•­&¤œ±’š|¢ñBD´3°ó˜ÈeÈ›Pè9r9rc	X†‘¥£*ğ)İ”™\"m†Ùœ-Ár°– I\r‡…‚6é%˜¼/š¦¥áˆÖÙ~&ñ=‘E>º\Z<xĞ”¬ˆàAğZĞ\'«\rô_Œ‘ÀÑû¦¤g0Ğ—ŒS&KøX3Â iòÙÅšÕ3’ƒà@’ Œ„<’\\Á$MKã\Z9Ø`ì“æ`!Zô;ÕZM\rê“-$Õ@Ñ‘f¥Ú3th …ƒ	‹LÄ;3yjĞCdJ\n5]QdH#’èwG³)¢ ×	¦ª\"5Ç¼2x¦¼ğL°E¿æC-ìÌG[’€SVëÀ„Š>aà—I°óqÃÛ\'JY”-]æˆkæ	É¨z!Á7Ÿbè1\ZŸCğr¸e¿heò?µL‹ÆC\"ôĞã°œ±@nƒI¢UR.¥ŠˆB¦T9\rf—˜2ÂFÆHn:Š–ˆuEÉ„*11HÃ¥ŠŒl•V4‘+Áj`JIVš|…]¤uI¢L\\8qBD¥ĞÈ„¡‹%d{–ªÖ‘ü¢cÑør[ßƒ@ÊQa‡Cìb\Z¬O’Z‡ˆ`Ô¥§†3b\\PïÌfë!ocF¦Ò\\\'Û\"„¡Bjò’å[ O“f\ZÑ}WDKÁöM;‘ÉxAˆoÑb¬t&z1„ÄËö#ÈÙÓ•ÄŠ%®uB²\"EæÃ²Ê$”!ÆÆM%L,ìÉŠIÅÃ¤ÀİÌĞ„”—`h¿\nS5I¨Tr¨äA(@ÜZØáˆŞ%>b4ÈËrÃ’ì‹¼–ò:9àÏ¹’FYQušÃo\'[9šµoÂU„Å2ìB|„,Ò´!¼¼h¼¢&$í—2µ’2$³#Jè….Y\Z,†Ë]ÎBgĞòæÑğÉ3ÑØ¿„/³âBµ7#¯§F(Äå›0,Hô¦èBC‡EI²™¬e	À¸–F|ó@Jó\"\"Àç±T+Œ»^²\ZL†*<&^xY%[Á4H8RP$\"Á¹H¹NLÅ&vGXm¸ûÈo‰fp¢V¢2G–ä[P,m´–â‡ĞBğ|HĞØÆ ˜âÄTMŠ\Z—EËHt#TAc!E\"eÉ†q\'uÜCÒÙÌ³‰Ûì‘ÁÉAğ„¶ş|óc«$²Í‡«;P…³eğ:dZdğó%§i‘ƒI\\•Ğ·ÁÊG$M2qTb¾hWˆX.µ.ˆ¤	l¹(Îäi=2–YPd¬g1BT4QqÂoñaxê8#~\Z#ÛC9¤x§pòt2 •ë5¡E„àƒ‘d†%ÌÜ&]a\Z–iÅ§$6¦¤Up¢¼_¥C„%`˜¿$D„„„<ÃDC2µæK]h=:EÍ@Ö¿èÜÃ´2Áè÷š8œY0à’I˜6eqä´º½ˆÙ`ö‹´—‘¿’ı“µƒÉ…Ãc¹‘ÄX»v³F„È¤Xd4Q	^–\\*„ÂßŒè\\F© c¡&H±BL–ë\Z\"„ìA0¡Tl:Û.å’†† Â¸$¶\\fUÅg\Z¶3B0PZ.L°I4IbÄÁ;	àê…D#^	n‰’J¢\Z\rD¤H‘§VF©>K4^®]„ù‰!ÍZìá”³Ø)¹»b6näqÊJèĞÙ6í-ƒz½=ƒÈJ¥fKƒ7Ù•GR:¸º„x °LàŠ0Õ¤iVB¢Õ¡Šéb)¢…¢¬2Q48]\ZvNKRÎ¢	.B¨ã‹w=Š,QVzó\\!œ…kÁ\nj¤´[,CcP€İ§±H&æhkˆwgL!¢‚Ü+1dç!*4)0®J?\"L‘.É2DºÑ\nr0#ºQ¡Ş!ğ‚ô\'yÊ®p\\³4	Ê)‹I-Y‰6a¶p:Q¾m„ÎGa$‹!{Y0„¤!\rT£B4™\"p@•Mù\".=¯DHj¨°êäL•É$˜A!ñP¹¢x£“š‹9Ó˜ai‘PJŞ	.\\µ(lpÜµJ7…2äK±ß9‰²DÂ°Šù6¹$ s#Š˜+–µJœæP2ä^İ>I!öC¢‘ÜJA\nÀFf€ã/ŞZ‘„T|(–í¦\"fLz$ìòY}\r¶»$­³;#İLaÈn.1ê<û$ŞÇÀïk˜ÁÅse-\ZXs’A ìUÄ†°2’.M¨pxW\\vDÈ¨\\Oü	bq=8354*§d¡°ß4‰:x„íEIÓ\Z+—\rĞÛÀë…<šÔËÎ2,—ÉÚHK\Zì;$RdHtìW£©„ˆ(•2G1*qh¸¯uCd!¤*“´ˆ™t#,ÜL¹µ‡Ør“$Ÿg‚BìÁ5ÎCV‰´«\r{\\UêÏ$‰,w/Î¢H³â\r‹Gcš¸¿cùVœ\"]¥FH†I ¼Héª0šCB‹Pá‹H©‘-8†Æ	«ğ_TÔAr97&Ù®–ÆíŞIµX«8åÉ½Ø&²=fô±bSnc›Q20|Ğr ‹Í€0±13d* æÑñKªæ®<‹éCÍR‹Ô°1³®lØô1	L’pegÙ¸\\ß\"údá2(Â#\',\\ààá&)D™1Eh\Zñ‘¥ßgÇ…Tğ%ÚXé“ÊL2ÁtsŞ†±\"ff„u˜r\"ÈÃ^Kòª‰6;(3I™.,\n©Ë1æ›‰¶Xˆ¤„bİ¤œKØåÜÓ¡.Lì:I‹DÒÒ²ü–G`›A\nZ\'0š1EJl~Xğd(SÅŞ(RJ IVÄtuŠç°âWÈ³É,hÌ¢ŸX!”Ó^È}!ş^Ì ²zÈ³^_\"$‡(;¥ÂmP¤Nìd:$B Ax\Zt0Ã¬Ê)4·GàXÄ±Àk@âsI¥FM,¼ ­¢)„›K#Œ\rƒš¼‰.\r‘/6bÃ^Ãp×qy	-£b#m5$ªy\rˆl‘+Ai±ø20 ´VÌe`AGÚc‚æÓq³IF“cPTÍİ†dÊn‹ÆmbÎ˜I3mRm·Àæ¡Ü„vE—É>‘öu³{7:w†¢âgyˆ\"Š\nHEp@|LŒD)„\Z”|©	Ö((>ª<èØÄùæ$ĞPNjcš±pÅ(±ä|Ø€‘c‘1HWH¶ÎŠàìˆ!Ãqr¦oFÈ!Îy:\"J{Ğ+¢1:30Ñu1É£Bwƒ‚¬¯!s¤t¡âqHF4:›”ø¢!“òpø!O\'À,î/		Yiš-ğM¡D³3A‚Ñ%ÍbbBÖq7™\Z<LÊ\Z¬Ì­D ŸáqI.Y’Ê„é’Å%Ø¸M’09SŸUEGEß’0’Uà!ÜE0–ÇµÄ£QŠ\\Ç;ĞÉo(vBÍá‰È«Ìâa\"É8°›*d»jN$Q@µb:¬¶r™Œt1™˜\Z ©&«j¤R(îBàÉà¾ôv¿Dì#ìQ°ìZNAo¡»i‰³Ôëg°ø`Hl¥~•…M8G@^É¬Š	ò‰œÄ¤&†ä›½IQ‚j¥o4:\"g¸ÓqkÂ*£ñî“À„4MÇÂ„Ù‘€¡ÀTcÄ˜’Eôd¸vHİËĞü\r˜\\ Ü˜AØRê£º,‰Û\Z×! ‘ Áác¨éaøA‚«İù,éêOÙôz”	‹ÌŠ³J}‹Kü>	Ö¨tNŒ[crd‹å&ı¶Àì“‘H´^É!£¸¦$H{Úœe¨®I™h¶lâ,b…£<%J8xMDÅ*aKn¢¢°èKf%ÌáFX­œ‰BD‡¢J7q.È!b	qv.R7*ol‚Â”¬»šÄ·¢™µ2$b¬!#Qñ•47àI$’I¦úP‡#NSìè¶iı¦Ív7†Ó6,%¬–îÇ3ìFÜ;¹7bŠ³¿³œkîlàZ\ZîjD‚I Ù vRÀ°¼¸ü¨˜1¢³XV$	<¢ŒwWš…#hñT·‡#Ñ]V!ÁIÒ(²0®8–#U.Cˆœ\n4-ìh˜ƒ’’BFG±v+Dìw6\"*\Z‡Uw†!Ô›dĞÕ+–Š<d(C´íOT%s.ĞPû>äfî\'{L›ö•b¥vºH[ÀŞ‘¨åŸ‚í¤}Ï÷L¾S\'cˆ–±$ßöY5\rl«Øæ\Z ğp	ïrM£œØj˜\"hx´^¤Ö)ÎĞù`¥â¢­U…X•Xê…´X2.C&]+<Ñ&@êG¢»Kñ‚RN‘KW’(L{Å*C¥`Ä¿&ìN†–™EX‘c¡…^L.3şF9%ØûØh¶ZcoK#Èe™pÒ/Ğ7ä>çäcÍÎÎáôIhœ\\Û>Ì<Yj;\Zd[näÛàÎ³5h÷Ü©eµ*¦T]†|Œ¦™À{B1ƒA=ÂÀõIàOÙ´MìVJœ©fü,?¥àT`?x ¨\\:!B\"Á\"•‚@éÖ&(’¤	Q°ÅfT92ÁølFåC	l›Ø{	EkåŠGŒ|Y“äÒ‘äHùIĞhIidö4(¥QF‹#¤‰s†Ì-)bK—G7:¹‹^\rÛöaØÒ‘rIõ_Ğ±‡¢> ø¯#3Áì X]#WÁr7³µv+µº Ô\\†c/Á-vè”»ò¨)±4ÌäÄT\\ê¬Hà]BPõFb…\r6xB«HF41â˜‰Ó*\\…¹‡ŠŒLà§tH¬&…A‰z ŠRSZÎ—,ã\"‘ŠFØŸ&p Ä‹ªq 2@Ë`w-œÄ1éŠÃ£RHWeühœ“~d‘>C¬5f-±BpÇ+¹=I+æ‹¼™ÍÇµ80äBÌdÜ‰q*dö{–\'11dZeÈœÁaÖ¹àLáJòíÉÑrPI3L`ƒ“fÆìŞ¢\ZÄs K3½“íânNÆHØä¸‚åK\0¥aœê\\Q R$ĞB‡Š`*‡†¥-°›‰MêÇµ	‚uoTÑôbˆîEãš‹, è…r…ƒ-º\'³:r\Z…Â{lVĞÅZÉŒE¥˜Y˜D)[ˆ\nŒˆZCÌ©•K÷ğt!56&¾¨×Üí±–}Q>Ëèn°›FEÓ°ìšGúæ;Ğ÷3Ë³ÖEû4Xm<®qpÓ#Y³ëà¿’ØVƒhtÈ/x’x	Ì2‹Eàj½)Crˆ¹®-rTqÆlÕ,iräC\"ÂC)£$††FŠ£\"%,\rTÊÈ@Ô†ŠÌ0.è¢¬$ËˆÑkD\\NZ½(’DèJEq6	´nªmˆÌM&¾\"8	eî„-n‰„ãc!Ú*eÅFH™X¶X™hs±è‘¾EÉ…¦nDñ\'#)¤1}Ôoâ•«8Áü“xµ93–ÍšÉÍÄš;GGÁ:h!z]	è‚Ëù>Ù:;UÔÒZY²Ö!x”ªDÇÖkÛ™\Z¥àut\"AÄK‘ŠÊ®p¯\0’+¨äK¸â¦wEasğh£*l 1‰I{E61rMaÜB:“ªĞ D¥xÆ¸8(T¶LvZ•˜L1*-¡ĞŒ:òM9fÀ^®JK6Ì^B;‡½Ë„Ÿ¦E¥ŸÒ}ıÓôÅúô,^ÎÈ¾FÙ39¸³ÑÈ`ı‰ø9\"bö’éÁÍC¤!f,Ïplm’|ÑÃ\'©“å/†=R9£$Èú¢ıSÕ€D\'Y…	<PíğÎ ©Q\Z$,¦¤UæGd‰–iBr¢nZ‘,5@”ºÜ,fGH§!IŒÍDÒñV ¤„:è9 gjJDD0¥SàHŠ.ä{A‹¼Â¢K¹©\ZD–\nXci+bô	dBfÂøƒÑÕ?G£ısîF²ÉôÎ=Ì5óOèrE—¹Û;D£š3w(Õì!Øõ\'3ısìö.Q¥ÿ\0dèàK9÷J‚åâô‡^®º¯ß‡…©gS4ÌÉŒME‹òœ‰ğfä6ªà14¤ª¯haã4ÆÆÑ\"ìîZp‘<L@—ª9HĞcœH)R¤\"Tb6EˆÈ¡uªi~	ÄIØ‰Øƒ4÷Hhp!hiY“c/Ø¶>ÂCQ)¢+ğsÎcBìÒê·éXÔœæ—ÉL”ò!´ \\œî7\"LŸpK-\\á%‡e™.úfö,ãKLéÉ?’~Î­OBàeÓLº»®¼V:å˜\")„t´d\Z3‰ Ç·1C ëÁ5}²ÜÅ¦¤}„‰²Cs¤EŠJc•‚o4,ğË4=Í†Å	 tk“J—×4¢AÌ-Œ\'4\'Çà‰Xğ\n‚¨^\"„“Ğàpì›’g[ù!Y1É-2å¼^-2.IØ”XfH.Á2Ö%£Ù;¥–`íÓ»¶.Q¦O ¹6/Øº¸®‹3)úbY‚‘ë#k¹$>FíĞÛ¸œA¼~„_fnÏª.ŒâéÄÒ>ÅÈ•í·’t¿Dp¬\\pÆÏ{6_8§˜ûÑ™)RAô¥ptPÓªKABˆp\'Àéd˜ÛQè‰±Àe–CÍH¼ºX%o)H+b)B+d\'>âtI1¢Ønª5G*¤ÆĞÕqØ±Ò¥ËÄs‹E¥C-œŠÜ‰†él“8I/&G*H™‰4do—ŸgÑöël)öu–MÇòN-gû\"Ï½ö,\rÈ°gÔõTîès”&Õ”Áö%|Ó©OÁ¼’NŒ`\\Ûìq\'Ú\'³êiîágcÕÄÇ¢tt8<ª»“m…X¼ZÀ‘/Ã•qh@‘BaÍbu)àbn8Ä)€Øü¦ÔÈ`±D™2°†E\\\\$7y9Òt %NHX\"à!Gx‹™Bª!šÒ\\…z“5LoÙí²˜ı‰t•;“CÖh2D°Bâëı!¢3ôz#ÜŞiÖÎ¯&ô‰ùd45Ì6g¨äââ‹î‰Yÿ\0¡·tú¯¤LC’è‹B,ßCÈÉ§Ğ¸³2è§$|‰iRFÉù;ĞùIŞ%³÷MÀÌ“ÑÀ·Ã™y1¡HÙ46f}	Õ‚JHÂ¹ğiP×D1ƒ°ù¢å2Iš0If.(\"Á%àr8sÑÀÆƒ ÀEÆåÂòèÆ‰:d6]T\\„nb‹Š¡ä\"²$½\\ôD§JV+À…`ş[\\áìË„?ºş©Ú”oÿ\0x0ïs7½ÏXèÎèdiÄœ„\"=B¸æLÙ’ñìúÎ™:ºİÉ›¬ŠËL’O²x‚tzÈàQ•v6ÌŠCqÖÄ¥ %^‰#ÉˆuUàLVÖ\\IJØá‹é0‹ˆ5#Á4EàmàMŒ^#iN	\"X¨\"+y‰”ê7c•;•ULpĞày‘À^\"{3z‘)/ËAb¥HBF”n61Â‹	1Fˆ­Ox\'Ôò;«˜²É?TêÒ<ô{?¢qÑ¡´™Ã\"/¡l ÂH3’´…íˆd†4ìs´K“.A·ÉWÍ0×ıœ«˜;½\".Ùİ««Ñ-]{=ÁÚÈ¿µÑ¸0¯BwÚöH¹ZÌ4à,ˆ±ÈÛ#µ\"T1)(TtC r¤–G ÀÓÈåa©jÃ™¢E\0ƒ9ˆ\nÍu\nÁ†0©ièiäBÈĞ|ŒŠÑ<‹èÕÆCj,\'±€‘`ìAPm‘Â]™0”™™1”\\	Â‚Ô#4›ÈV#¨£b˜£Ùìíá\r‰ŞÌÚò.2¬zÅ>Û;X0z˜>˜Şß…İÙèšéƒã3¼x×bvÒöÅñ+¡Az»$iœ²\\ö_GÓ?´î‹ä÷í²}@¹±bğ?»Å³ÈŠT–u\"Zr48µ˜††¤H¡ª\'ÇöDØ…3\\TtÀT¡EF¹aª%\"TH†PÂÂnˆkÃ«	&ô&ZAu‹É#%¥‘‹BåÈD˜“¬2#¢l952\Z!ˆƒ€Ó\"Í\n\Z’Á\rî„.tMxÙh„¤¶jÄüOn/³î–Klö}8ı\r‡Â:±İÍXV¹¢^F›¦#…ÜÆ«Ò‹v;İßÙ<I…²vvs‰5*x?Ö:§£ìânÎ/(r}²~à³Í#Yi‰éÁ?ƒú\'èn2Y%¼î;â& q±q!/\")‡\nÀ†`B‰BT„vln¨0×0!,ÁN\"C\nsCcA,‹ìEª\"Èê—!¢7BH’\"ÂcQq9 †-ëe¨%.rhb¼kC,Œ|ÑÌXôOta¥Ó²WÉm’,Ãˆ&KıŸºv³GÉü>Î?§êˆåa›:=OØ¸Ğ¹¥“ìê,v„¸ı¨cèıÓıc³ÑîìÍöh”ÛGLtÉxG$ŸD|¢‡r`Nèƒ–…~\Z:FÌ-qÄ©ƒæ|Éì{	ŞI·qi5àDH†Z\"ƒgq\r3Š™3&ÍM¢…©EÁ!PfèX)³,TP.3FøÎf’	Eƒ…ŠsQ¤Á‘)\"mÑØÜK®…æDÇ0¨ÆïB½È,<6KcŠÉQª™²’ÙÑÛ»?¥Œ¥Âù8>Íl_$,Öv3Wşô.n…ÅıŸµ_à»>ïÕ8Û?éŸpu‘p$`_,NÑÑ«œ£Ù„ÇÓ:‹R»•¤-œÓ‡ì½\r—ÍÇ°–ˆN‹‹İ,NFêK±Õft2ã\nœ	.,PèAº$qB³ “,b‡½	øÇ	!b#Kœi°˜ÍHb¦ƒèHI5ŒíJp$Ì® G\'\"2À–ÌQ#&Gn$¾æh¿£ô.YêçG±:w=IÑl^:3Ñ÷=y¹êN÷İìûgØúÉ+´34¾Îê‘>.+c‹øO£!+vGÙŠìƒ1oa¸ìY¶û–8Ã‚õ&à‡½2&Hn{`ä;lbc¤L‘*\ZƒdX~#£iMT7 †M8¢¸²âE!¨ÃušÍ$a0† Y0µPğfX®Xƒ2r]+`K‘ŒĞŠtßş±üƒWÁìêğ.1cõOgÂ˜ôjŸö}1şºë³»¶/h¤ŞGÙêÑŞè­“àAt/ßf®+¡Ab=UÄ‹ìÅ¶˜Ö˜ª1a³Ë2sbhæ<ò»\"’·¢Ä³’8ºˆàdæå*v&Ä&´Œ¿)l1$z!Á¡pÆÉ„’HÄE,ÉĞCn£•aĞ›ƒ:]àÍS.\'N¤ƒ3J¬ÅT\nÄÜìàr¬B&¢+wBeÈsT“Ä*=bEÕ=ÓÜºNîtá›•qÆv#í£êz>àÿ\0\\ZGúÂ{Bî©ü0O£Œ	N(Œ-‚f\"NìÑÂÆˆxlüˆÑ9¹¹\n»Ø†Å•s&c´,\\M3”M¯“h–d´,ÅÈ¬æ\\œjÑè8<z,Hƒ^	¡©?1Û&’\\N:s${‰Œ¡S2Dé‘*›i•?,Ğüx±q(ä*ÉdTÂ(WMÙªî1r9QT¿ÀqiÒ8×gé5ĞúÇtõW0ïWñ&.læŸ£g¸&nvâ®tÍİ);ÉhÓ=Ï³ê(º™lâ‚9Á|á˜C‘w¹kNìoaÏ\'ÔTå©5{—K‹-{=âNZ;±©ˆBÌE92*UHÃ6–Ç=H+È”\n*„\"Q=ˆªK¡æ‰Té\ny3D@É$CE%A4HİUGäè=	*ÃÑt‰1¿€•ÂgGÀæÈ\\ôz„?ÙÁbMÅäíö(¾:Veµt}³µEÃƒ¶cÙêßnÇ£¹ô¡ó„c“ÕÇc£øgƒ¥G8¨rbzˆìPSc\Z>Cà˜MG	FÓ²ë,ÎÙá(=Aˆ¬Nì`xRÙñD©àWZ%@ˆÔ¶pû‰¹\'Ù\"S\Z¨édûá †N„\'/\0’D\"fz\n¥ø3…J£!ÀNhªÎ–f…!Ò\n˜ğ2ƒ2“†$dPª+VL™Ş•ò#9<Ÿäàú>éÁÚãÂE‰¢\'3X„dvt ûŞì(ÍşHû?G¹JŸi™í™ÙÑİ“ ²Ò}²VmğËîO–wsÔğ-è’Ù#t‰7ø;\\Ä»-LÈ÷û#Ù®–Ğ×àO\ZÄ—<Â=Ã]©”<Ç+üÈ¬4)ä…ì)ì÷=©»Â	ê5’SÒ7iˆthµà‡ÜIrJAE\Z¥é€¢\ZBŠà~!$ŠTlDĞ°w\"ÄÒñÙ«Œb„\'à «\n½¤Èşœe1&âÇggwŠwôg¦û5¤ú;Gğşe	íctEÚşĞMuìK‘K>F\r{F-az¥ïÒ)†VáIuh—t—#	FI4Â|C­‹ö#ÕØ’‰»ù+ï¶KÆ$‹3o“ú^ñ™,mGĞY¹Û9äY“£“·¡™v‚³Ü\'Ô££±Õ¤\\	o¢# ÜoPRˆî/riªü	T/OC\\XAå$à›H|#M*’¡ØÓ9¤—‚R«,÷àdZ”ÉH±•C	SeàâÃ¥î•gCRC:&¡~â5H…Y#¨¶#£wˆò}É÷:Éû>¤ëTú‘æâÏCÙÄôaÊ”ÎêOà¸Ü’0/h·²:Cfæíûê	[†ıó¦6+ü£8—òuz>p<K“ìÜ\"ÂèY\"×š-A;G@f¦=‘òpw&œîLÉ˜°ÃGùcˆ³èôtšoÿ\0¤Õ”FtåC1İ0Iéã$Ó)–ğ²$*!!ÓÅBdæEáˆÕ/q÷;ÆPH@”K˜]8ğB ë¡¡–‡AsñZh;ŒHG%…äªVˆqã&Qe‰²öéĞ£P5ÆzgÔÉ%EÖM›ˆl÷Iµàç£VÎŸì” îpÑ›à_lù±òÚâOÙĞNKÑ/èÈaÏµ·Ğ¨ÑÊ=$uƒ\\|ubÄlOÙÌŒ…\r“Ì™z?íN,…ì¹ZD[Pvƒr~˜øÉ$İ¤·]ÑÖû?†r¦h?´¿b¥åTt%L‰c£U„D+p\\éá\"d‚™®‘Ò&\"ÄĞïæ]:8JI‰,È•(	 é ÀÍˆH‘rğ#‡tH$$ vğ³‚ÁœØl«’¿ı:¼àş\ráØ¸Sö_¶}ü@¶ŸÔ/„<@º5Ê:¸“eöÆû8é)ÿ\0tËíñÁ‡Ò9Dß1.¾I¼í,ŸHŸš\rpFƒs‡êî‘}Ôdã”6Ö¸ø,ö/£ÈaD_/\'HTÜÌgş,xµ½[Ã;w÷’)¬‘\raşH 1\\Ñ\"D‰	ˆu t$ªL•\r2^)*!@ø¢³ègàˆÁÒÀÖ!`‡C”„A&HèT]z¢Ù!á2è¸y%›A7•’ŞZ8¨ƒÓ;Vö}Á×ôêeì¶ìH‹$Ø–uèM<\náèùg»É—¢ÎV\n,1Áİˆã„ˆSû‚¨m4ÏäÁPÃ›ÙpÏÑ•neB>Ù«I¨lÊæ¥$%=\Z´ˆş†0ora¥ğzƒÙú´ GGİR•¨x±ÃbÑ}Î–kÕA:I$ÒI\'ÀI%‹‹üdd?RM$‘¥H\"Æb½\rXsI‘ĞÕaĞÈ£I’Ú0ÅX]’iô^‹P3Œ©šzêp¹sOèşN”õ‘äYŸà²,8ĞŒ11Å?hÜ²w£	…¡ı	D¹¨á\\%q\"æGGÒ`liÂ”®47àÜ$y30‡Ø¦²\\}şÅˆÂã\r1[“!â\\À™ƒh’Å(ïn¹Gèù6Ìg@œ(¸¹¸ÏsÌQnÎ^Ä~~	ò_Š#ğI&%]ø’0Š#‚D\nI¢d±yÙsØA¦>wÀÇÀÎÑ %¡2l¦u3¡œ6qYÔÉ™5ÁÓ1q°øÏ¡X}AÏg»!|îç2c´}Øı@¿Æf˜­v_tÓ]‹¹ ”¥>ÉE{³Jÿ\0&Ó¶á‰´1oQ\0Ã“ ¹q2Ã”Ï°‚ívĞUá¦‡Šèx¢âÆ¯\"Õàx.\\áà]´“Ùû¦,Ã˜-u©>QèÏ–aÃ§VLí#èg#ÎÏS×ìşS™Íîeç2hfˆDò¼4’iÖ øÅÑQĞu0v¡ÃcâgC:ÔÎ†>&.>u³­‹œt³†Î³¬\\gAĞKpà•\"*‹Ö#GÖ…Â¤u!p#¡\\*«\0—!s3Ñ³!­êì±ttz6¢O¶ppé»a‰¹†c¹6D:b{ÃY‚GRh|eÀr1ÀÄ®ôc¹ T’.e’Ÿ¡Ü¥ò;…ò-­9Q¸\'W÷“(eÉ_£3r-‰´Z›¡³½Œ“ÉÈÍ˜_„ÃÛCÄ\\ì#©ÁhĞ¯Ìœ^O©>È¥îèŠ:t?Ä°^1Gø’*1’O—Qê:QÔ¤t*Z:ÑÒIé:QÒ”z³ÖzAĞˆà‹tX±bŞI$ùI&’I$›%•>Ùuvt–nˆââMÿ\0GĞÎœRùş»ˆâ¦uvGØúÍã×F-†4wº9±ßÙ–µ†îPÌH\"=£¥Œ\Z”¯éCXæåÔ0&SO±Ûéò…¼†C\"õ`¾²eîGÅÏ—À¿N˜ã7>-HÕ4Ì¼˜X\\òeÂ%¼Ø>\"ÆÇÁ	8=©ÿ\0#Hü.²H¿ ¯/*MM$ø&’Oçt*\'.y5Öà÷H\\¤D^óı?½–Î°Y:p¾Ív1T¥ØşEheÉ4ÒöÇ0AkÃOƒŒ\0T\"»rÏÈ½ªöÍ?B\\^ÉGcåˆ×‚Ä%JIi@¦è\n›7T^æ\'”v¥XDîòı³ş‡Â8¸3¬u»§WvÆç6C½ÇÔ™ŞX±²o7ù=\Zd‚{\'ä¿øHŸf1£Éiy¬ATô ‘È^Î1ÂC	¼@T&’M$øÏŠüI$’I&ˆD€BE‘`÷ejOG£èúø	û-™G[9Å3É6Œ#á‡Ô¢Z‹4a\ZÔ8Y²ÑË1ÏÉ0b·$­$ínĞ²;LÃ\"!Ã´v.é;‹à’]írŞ¡ÛXËÆÒûæÛĞ³²ml™¹WöG!Bïö>‚}‹»º}‘ÀØ¤µ6?JV±üÅ8Ø|ŞO‘…|¹:Ã}£CÀÛQdwq>G]£úf‚)G‚Û	Æj¼\"‘à\"ŒCò!x*„Õ2IğP w\"$(@D‚Öº,ø­9n<ö7¹Œ¹ÙÖß\'ìO³ì÷ŠNØÕéİ…ú?dñz1ÙŠÚ8ÛÇèõ&D^RØgÂàmÆá^ˆÉà„SäæBcµÃô¥›Ş\"—CëÚtpĞ¸Œ˜û63¾K\\ŸjœÒ}“ÍG©“Š»4î<Ÿ±Ö&ÒtàËuµe!ğ~Ç¡>¨÷1„\'É#¦+ÀŠ‘Cğ	H˜eyx\0°]6<\"B¡\0Ëaü1Û%Éî.ô i_MS©Á8®7(\"D,j¸ÉÑ{“O³Föv/F6–uÆÏw§ğyœŸGjLöu,ıKÜà“Ù»]û\'Ò½ø¨©ü±‚ÊÁ¥bHNo|–,[tË|SÌlÄVNÇĞ¬d‹äå#á%2—E÷K]#á\ZäO™^‡Æ‹³‘aîÓqƒ§Z;?§è„4ÿ\0FGI¹NsÙ3ˆbZLMç³V=œ˜ÅĞ¡l#(Î–,o*¨‘Ò1\"u’Iüøñ‚*A(iRh¥@…¬xtéI~Oií’ ĞœlH•kĞìrKM£¥ù)£¶tâ:?‚¹°¹ÑØ»#w§Æ™5ı3e?T]~†dvÈØÔÇfF±4Ù¤äÅö´3Š!öˆ-ÓPµÄ›Ò\"&Éá!{™lB}N)É	8ªAI¤LÜô^s(vEÀ”ª>„ry6pCÏêz9DÙ¢x±Á—Vp;>NEü»ª_\'ºvb<ZKÁ¡Ş3/ù\r	&‡æülÀ‚d\rZ`B!A©Jò6t£Ä)j(ê@_ãoåØ¸ƒİşOCœ¼ôzŸ£•³Å\Z’uÿ\0t¯î‘şGğ³p²#¢ıœ™èYœ¡æ«ŠY&#`ØKY$/LTY{cm kP‘|HËEjw5Ù£‚°ëß¡ñ%«±>¾Ñmr¥Ã/±÷uN‡8x½â¼ÿ\0iú²\\³´|)¹\\¼Bå]ŞL%şÉ®G¾}[syŠ5DR<]Só\"IüÀÀ’D$Ay ¬ˆ1D*:’H„ÔNH#èè„@»äôjöE–¢ıå±w(¼B‘ü†>á³ıƒ’Ÿš_¶oG<±#†&Oé™“_Ó,ô#Ñ~œ(äfM‡èN{t2M½¡í.ì€^eÌ›VI!“ÑDXš[w‚.šÇB²Éû(™:}H»‘üĞ—ÍŒÌÛY:#“CÁÈèáx¢[&p¤|%.Ü/¿BÈˆ;¤ÑÉJ} BÈ‰8xìAÜDíyğâ©àü#Æ0	ª2!	Ô’‚B€ÒŠ\n(y#Â¢â¢•à4;ºãÍ¤Ô¿á»Ë}ªo“ısèé~‰ÓÉş±…;D’¶{0<•À¾Îàéd(ô5øKƒ-üŠ¾‹†÷¹²LÛ”ø\Z8¾¡µæÓ’ôDnâfæNG-—¨fm&bôp’\\ô8a˜—\"{X?Hƒfjmyx¯ô}³¦e4z+‹­ö+%ƒ73îÓìÊNO>Ç®…l—,²û3R“/R?ÌhÊÿ\0à%ğCÏ‘#	A\"MDâĞª-¥:ê£ê}öÎÙ¤dGúæms§‘]AÂå£gÔÙ»³ì¨ùˆ¢p?ˆ¢sÙg![Uô%Ì$Y’^‚Ìl¡èOD¡à”iŸè8Ì¯HN¸NçGjÆ)Òè“»v×v\\\rË—’jÇÖ…ş¹İÉè<5“\'´ÙfE|]ˆĞÎÏs\"mŸ¡v;Y%önø;YlÙnOàKÊÀùy$–Ú†ŞEôD¯]›Œƒr‘ö?üÂ< ŠAxÅĞ¬‰cx$É¦B«OÂ¥¨rh”/$*:MVò$ÖÄ›,u£êo‚Óù§W4İ1‚ÊKÛ8<QâçF›gI^Ğû9YS)pıÕQ	 ™Ú5iYÉVPÕó\n\r!’%¤\"9%ZMX\";§ô\\¨ÉiC>ŒØšş¯E™r,ß¬#{%5Áòƒ£Dh·É–\\Ó8…’ùV:ØÎY±£?i ¯Ù¸%8!áKDı@åk²ÒXaºG˜MMOáOƒòĞ´b^E˜¼a„ÜóHBğ A‰”ğ@ïh%¬±qhıtvtÍF(î]ˆ:;GÙ¡üOGò~¦ùÿ\0ä¹¢E©©çÁpH~‡Ö\\l‘ÉE/rs5jÌÎÍ›¼¤MåİœÖEâd‘q±âUÏÒŸÎ„pIÀY;Ös¦9yö~¢çô#gr>‡ÂÉ4Jù>£±´Ç´£fåR|Qá‘x„x¯Æİ\r4)¢Â¡>.‡‘ÈŠ	›‹l&CÀ„¡Qy¨êæg80æâ$áhíì¶”©ïìÊOVdö/ˆeÏáêşÏØè4`|¬økvıø\'\nÔXe#QÉ.vmØµş6:.ª¶Pw²1W/éÙÙ4O0Z\"ëĞ®¬=rÎò,Â1YÅË‰4^ad}dÑäjòäö#ôÍ^ê—^Tœ• ÷v.ÎJ	xqôKw:	®Èo\"zSŸÎ…ŠŒ15‚<_àÈhŠªŒJEE\"^‚`llbÄøüŠ (wCõ;y\ZT,æz9oøk–z|™rsâö9İ=ŠF&Y²G\\	éäàg<ÓTWc·–p[¹àîF²{°ÒU-B#.:®±^”¦&Ü3b}œŞÔşÓ»SScq¡w†[$Hšv8®…Ü5LJÁu“GÑÛ¢fK\'ìöM£rÒI}Y™Jn;7¹:\ZpÍ‰Üí$²ÿ\0fvEdN¨ Š‹Ê<—Ğèü&‰•\"A\"x¤¤A[ÁPŸDQŠ¢²lÇ~„û«¹\Z,Çgşš»rs£úvg8Ûä÷Hû?ÖììzŸ’ÛdXìiìN2zc¼çufÆsI«–%No~^¦	Ò‘hjEEÅÏüø;XGw`åØÒäMJ\'w’ÎNÆ¶ğp8¬ÅÂÙŠ+r\n{d\"h±Ìl®B`ÊØ$ğÙxº$×CxBñ­ç€YY\'ÁU5UT†EFª@ÚUD¨¸„x3H¢D‰T²‹Í‚ä…ÊÔïı7;Ì3êƒô2¶NÔ3ÑÒOçTÈS“µ…âçğßd9É3a)VI‚Ú”sSÈÊ&;¬Š­ÍİÙÛ3¹÷;Ø¿Ñî“òf)²ÅÜ\ZğG\n>½’ÕÙÓ÷ÎLXÄâ½Ë!—aqı;¨\'\rìBÀ“*çY:>Ïeªv4©R5ä¹\"|“DÒ\"‹ñ“DÀŠÅ0ó&qHâLo•bğòD ÀB÷v7îÓ¼‰cî	äLÁôZâ÷/w°fæçZ;\Zl…b_ÁçgÉ³Ô³kxwq^›Œ%)Ö†¢YLwlëÅg„jmN™u–E:Ñ<©HqÔ²…ê´„½˜Q¦`ÎÚ;¡ß)‚DÂx§3uæk±|\r(mC\'„ßªCôÌ›Gc»Í¤K‘	›H­•d;fKÏæMH#Á$ùÉ$Ñ¯1Gá,–\\bê!RWŒ’MSä¼$Ÿ\'á\\µ˜GÑ¹2`Å¬CáHø¹ƒGĞ³±KœxW>Íÿ\0áú}™¾=ÑÆ³8r;Z¯”\nZLË&íLWé>ü-jgì_G©qcìÔÜÉ§0}Ó(Âöeä–ÑÚ§_àÆN(¼ß\'3¯gN`KÛä‰„®¤ılYˆÇ£b:\r{àkFFDìkrá\nå».\\ÑøÇŒĞë>áy ‚*£eH JŠ¨š\'ÉQR|“øˆ¤÷5Ârfû;ş²wv‰´<²†¶}SÎNŸÓú{äI|ÄÀú;ö|—ÁÎ_Àïwá²Ñ¹]q¹ì™ŸıSÕ?î—ÚĞp½‘xr}Å:G)ÃG-i4#/<& ÎÑS–YËöN²z7ØØÊ!ÜkËÉÜY˜Ÿ‘”}^KE\Zv]ƒ»QOPm±ŞE™â’ÅÜxZ>@Ÿø—”“X¢BUuA	T©Š§F!U²|xG‹¤Ñe†8vyÈ|åçáæ\r˜Ä\n1}ŸÃ¬‘¦{Èµÿ\0d²šLí¬‰»3ı‘üM;‚/éÅm”&F¸CÇg«EODÏJ37›>Î†ÕÇÅ™˜¯\"Bú4ß\Z5k¡ô]ØœÊGwƒ[/Ó}±õ\rœ¶v7ù\räp0dğÅØ†Ği¤»/—$£ñJù!+ÿ\0O²ö)$ÒEØ‚ä¢buI$“ø#ÀEdš$tRh…H\"…àª~TG‰4š¿d²™ÉàWÿ\0ƒHÃğ%>©ŞP¸Rz?…ödÏPg;ĞşOgúÂëÚOhBe0vÌ›Àó.(ŒÜDí£\'Aú #qk\rV5E˜D*_¡aú.{Ÿƒè\\‹E—\ZÊá`~Úg¼›ƒÙî§+`õcÙ>$Ü IsÉ,]¡¢Ó8	\rû93Ø®‹¤BÆ=fèS³E„ìO	&‹Ìã!ñDÖh’D¼\'Â<…LUuDş	¨¨©ˆ\\ú3š/—,şæi7»¢İÁÜŸ¡Û£xGJLåÌ‹S—ÈıR\"“AŒe$Khî—mölõGO‘îÔéÿ\0ôOMÎñìÕÏÑ¨gIìY†=•ÁŸGY^‹¡\n2âGş ú#œ¿è“s(Wªzbw7kùF#8›Èß´j.n™,Øé’ì8Lg&pıCC£ã	&…áŸ\0üÁPI¢DM\"*Kñ¡ğ/À¼°eòr7i¼‘óz|¢ŒÆEêçjôıë‹¨>ÈÍÇÎ†WßƒCá[eÍÈ‘Ÿtİ}oáñ;\\¿£ú/àö6ğt%à±ÌÃ¶{§¡_775ı#”zŸ“‹‰Q*.Üv)Å—±şÎK#S™—Ágâ.èwp…¥ËœvLä{)ŸTŸÊ\Zğš’oIñ ^	¡š¯ùªÀÅùÕ=@9œÊg²=\"-ãW…ı9)ù=æˆ’Jò.YêW¤<®ÙÒ‰¦´Í¤qP8YŞ>üx#œ¤Ì”×’èåáæš6k„·gÜû=‹‘òd$r-fğwig6`–3›z,jäÿ\0™i¥__ı¢ıÑSIOHé‘ÉÂÉ<\\¼[¨°ŸáØàIà‰º³=Ì\rìÀkÌSH©4C©AyE\'ğ’DòJ®¨^1Wæ¨ª†D˜ƒm`Œc#ÉÖº!p \\xœœˆæŞæÒ/³ëàâIŞÍŸraÇ£¼œ›Pt¦ø3ävÏ‡)ğµGFEú4åš£stDº1;Dñ:Ù÷CRfW™ß1ÁNÉP‡ÁÕÕ\rŒwLU|bä$Ãş†$¬t¤r`a/G;¦p`w‡3E™\Z†Aƒ(¡†˜Ø’\\^	F2şP‚(_•U~øw¸d¥íô| ıÛÙ-bnK†?Ùf¦êŒzLÆğaKÀšÌ™ú#bq›YÙÎ¨CÎ«á[Ñc’iÕWÒ~§C¢9!Òz§íëØ³ˆGÙ»ÿ\0Nî™”±p²&Ó“Zö\'W5|ÛèÛ1â¸±Ìß^Åğ‹PH„ÔõÙ\ZX;²FrY!»Aô†¢öTtm‹øàüQW„t ±j_TWšE\"<EUä¼•]à^	øh`ñö7™JÅşif2‡ˆB·#èÊU5İêbQü=_ÑêìknÂÓäfğ*«\\Ô˜>ÍS¢3i„77Ğ—$Ú‡ƒÎ•‘ïôr™$ßR\"ó´`²ê$‚ë¢ÇÃÌå–.p=­‘¬¥\'©£†è¿ÈÔ©?Bµ§äÃrt¹à@àî\'±½@Ü8wBµŠù=ÈùCÁkã¤]d’:šªhJ¡ÄÏÂP…G‘yUdŸâ5_Œş$’H	¬Ï£îœ4vuyF·og\":±j?×¢í3ü2nNKá#ğÈÜ™¸½\n‹&Í©$Yë¡sŠ,¬]XÁ}Y¬ò²šƒn¤{&Èä…ó4gY§¢Ü9}™Éèî‘û3‘c³+gØ–ÜÁ~ÉøCs›{ËbêXçrÑ	^O·Ğ´sìpdÌ‹ŒUQË‰¼+‘4¸îÄİøR\"„à*¿’OŠğTOàŸÅ¡©\\ ı²Ó:>Î¶vóÑĞ]ÉÖî’=¥!ğå	ônP…ó&ï·?&‰\"6ø®tM¼W¶’j3Ho&Iâ`å«ìŸ¯“ráŠıŸÃ¡6eïR#”İ…9Í:º§ØæÑa;cø<ğOèØÏK‰{\"=—O±FÙ	‚Kxd²‹²{ÏFÔ‡‘ÇÁoC”ÁwÈĞRl’!PBˆğ ‚Ã$‘ù“IÅI&‰\'Á$ø&‹ÅHÅø\'Êi=Ú%Çè£Q³³0=ÉœÈ¹7©=äºÍÇ1*GÉöÎòĞºƒÖ;\ZÓºìø4ŸkÉ„“Âtã’(\\9ÇE¥†c6E£F,/…&íc¥9R&Y–p%áHş©fÿ\0úL»ËFéˆ›À¹´ßíŠ>L»”Iû4÷\"Š†Ñ9mˆ†…¾»Û?rBÕ¨APn‰	Çl^!F#Å$ÔšI#„Ö‚ø\'À†*/*ºMÌŸÄÎğîFX¹r~Ä¢×dmİ)õG©ø(õF²K›ÀıÊƒ“˜:~Æö<ØvùñÏ“½®©ŞP¼Yìû§©-y»ìõMò/“5òÏP´Sô$ù\Z÷&ùDû^é9“à˜ŞÖ:¤íI}àÉ›)’õqãlİz7‘ÎÕÇ¶$|`LÕîL›6cdËIdfÇL…\"\"¤V|$šOˆOàa^„\rŒrÍPüQEøgÁQşÑ\Z´04¦º>ˆqbÊ:¹İä|BWmŸíÍÆP“ÁÛşŸÑŸ¢7–/“ÔAÅ5G!æê>G›Y<ş.£ço‰“9˜1‡û,.p‘Ú1£Õ‹D!XWÉëPötrß¡u&o£­QÕ£Ñ”¢Nb‹7 s%ì×ué°&™\'ÙÎÜ‘Ê’Ë@ş`İ„Ó\'k\n•™<œ‘î§×…A#¤“I¤ø/IóDVD?	1GR£\'ñ/Å\"SN\råoú\'ßÙôˆÜÂ=ËGÛ=AêhïrE†1kÆ5âĞ,ÆÌâGDK¿“p‡gªhß†vX:¦WÁûâæéŸGoö<\\ı‹t,oàÜL)7İÜgjËedõ:ÑîãäM“$7©v ´‰“\nbáû0¼5èÎˆ ¥©>Ñ,8_&»5_ìûL½-ì³Ë’0´’¤1Gè°WpCE\'Ê+$“Iñ:¯À•L(ª‡á~\n®‹ñÏš©	sDòc\\În¶÷G=—y=ş!Ñ~¨ìûƒ´\'·”>l<t~½¹^„z8NN?Ù¸´8ğÆTOŠÏBèè}’Ñ++/g÷¡^Ë~ú7¤Ç›ïƒ­övc¦GÂ=Ñ9½I½ŠİÜ¶,kEYhá2>Ihz]\rx°@ùtIôo†Ç‚Ë$i¹Ğ›…çMA™.3‘—ÀƒYHøHf…„M’|ß„xº¯I$’~t“M‹ÁÒ*‡D*I$Š‘Uø S I†´\'\nä“§0|\ZœœÍ‹MîG6dojÒ®?ôŸÃøwpğ‡t±æÔû®²ö¦*¸\nì÷\'nÈV®w:X¶Å“£§d}#Ô3±•Df»À‚Äš;ş“ÏìHRÜİ˜ÉÛ–„jôQÒøÎß$gÿ\0‚ø“½t‰÷Ø¸sñİsØ™bP›[:Â>\'}¸b¹”I#èšÉ4’àG„Ö¡EI¤ÕTâÈñH‚(×çÀŸ3™Ìmk\'hêæ=(¢;rØ“ƒùLr~ÑÉw}3öìíÑr0â–<Ş·„­ÙœÔ£Å;‰àıòomrÅÅÈİ…‹ØG¯İ?†öWB¸ÙÛ/«˜Ş~OGwNà;ÑZé	Åœ’Ot(Ì¼&{=h“Ëƒü’\\§ğ]+Ÿ¶-Ò#Ã¤EH¢ğø¿*Ÿ5Dø¯È…H#Â<PEPEeˆY¢N;±…&U™…ö~‚±Ñ4õ4ù&z‘|ÁÅÀ£“¦HÓº:p1Zå¦aÂ!nÉ¿İàìg£è,Å1+‡Å‹gş«±w]ŞÂN¯_Ø7ğNı‰Wghù¥âOm›•gVŞ©œ@äîóèíI;éíz=IÒ¿±8$IòFNQ4ŸÀŸè’|#òáÄSà$š/ã^+ó¶jZgg@ÿ\0^Å‰f-sIFäµ”±ZÃv‚ÁÌ¥=t=ÆGÕ‘öOqòpòx4*àD\rû¹#[ñrw2uIB‹äHŸDÿ\0 äÔäİìNÏ¡v!ä?Dc,z®¡ğBÂìjÊ†Î–„ğ5œ¡fjªêƒô9ìı‡è&öÇu¤Ó\'5™-˜F	jÈĞD¶®ü\"$“á>dù°üDŠ…H#ÅU/%V*¿$Ÿ<Q\Z–ÈÒ=Ø{ÿ\0³ÔS«ÓêQŞ¿„Î‰ØğkS[VÅØó|¼µL8ôÀ„‚¯	dyo-EEìÄ®½¾:èà¬5î[/ô{É÷	ä}Iû1›\Z¼ibçc77fPŸ“T\'ğ7Ş]Ñd769\\½ÜXÃ>…µu›â=3jÇ²ÿ\0&õ\n^ŸÚt¦i«Ì:\\aÖŞÖ?£c&²I\"^søÙ¢%/|ÕUQ4A  tø—Ö9ÒŒ1’,¡3É:b|à}<ÆD~Œ˜\n}¢wfz±Ÿ}¹âGÈàõ.ò9b,/ÅŒ`FñD•\\GÓæï·à¸CÄ³EµíìW·=œoö}6t¤yÒ/¡æ÷:VötâNÏpb÷s„|ÎÖJ/a´²I0E¾ZÑN\"\\Hè6r%®6Jª‰Ég?bÙ^HaZZ%Œªz‘.oê®šè)$¡!—¦<J+5Æ©[ÏäU(z 5G (×*g“‰vAÉ.É\nÒßCA;	^O²sÑÉ0l‡ºZÓgºt¬~™ûÔ¯ƒp _0q¢y\'f\\íæ¯+H[ë9¤íøg5ş‹»àEò|š\'¬\r\\ô{‰;Ğú²0ƒcö<²>,[‹¾Í ·§ôlº\"æò\\™!rèdêZ6sd8_#Iºƒ¬ìÅÈO²\\Z,{-ú:P½37)2)IB]!âñTDÉC¥¸»‘&D,1bÅˆxÊ¤Ş\\ŸhÏ\'°t”)¼ˆg¹¥R$ˆ‘)\"ˆU:FˆFšÕì3ôğA»(gGÙÃc1¼ŠtcµÑşÁ‹İ‘aSé\'ÅûÈ>EkàÁ‘]‰¤Ç$;VOÇ3ö}œ_ä)ˆQœ¶~Ï¥ìı^òØ»‘{dî²v²-íÙ\Z.?Ñ{Ñu\rDqğ$? WíÂÌû\"ô›]CÊÓˆ0áÄŸÿ\0×$pÙ[\'#¾cùlÈBù¹Ñ²Iñtß“Hª¤ˆoÅS€n-\'İa/$™“ØOºÈBè @€\r&H n+M[¨Ÿ¤§x“¯£İüÓ¤A/Œ²Ú±îÂzÂ>…Íàµ^È|^NWÂô%¶1ôr½„2óá–^\'G³ørB½Å™s^×gVš{“Ô¤}crv‚=|¿Øîze™v?¦c\\xçàhK!Ùs@œ\'.PqäPÅ6ˆ#Vxgw“èÆEÿ\0gH¢\\D³×èı\Z…$Ñò\'@ìª¤Œ*•X¼VY,÷øÑ[—çÂàˆˆ¢~FM&‰ƒx3D!™‘‚K…ãq°b¤‡*äï„{Ä…obŒ±pìú> ùBL»ÿ\0áÁ=ŞÇÁïö#«ÁŞXÃ N\\\"_µu£¤Ÿ³£ÔıGID,ºIê |±rÎVBø”@óŞlÈC1qµe†dÙÜÜÙ2›lºÏÍ$›ƒèP¸é°ˆÉd§-SmäN><½AwÊ¤Rx\'ÅŠI5‚$Ÿ2(ü¤DÑ5^cd™¢•=\'Êb¦Ä\\_	 Ï…‡àÈ¢¢É+Ê/ƒİ5\'Ğ´K“ü±Ğº±Úı¥$\"]ßEŸhå‚ûòvğ¿æ\nş‹àè÷0aô.!¸4kô‹°{¦mÿ\0F1?gÓ}‹‹ÑÌéÁå¤W²ŠfúXáÜ†E+’CÉcw\\+{\'•lìƒÙ%”Ñ¼\'Ø•òjzê‰ÕãÑë$WÁ­øM„D(‹ÃŒM‘B¢I«u`¡ø\'Â«d‹Å…(:MêÎ„¨´u3*E&¢bF¤…\"°@¿«è”¦¬îbÌèÒJ˜NÒ§örÑ„ôjÉ|¸§ÌuÜz3ƒ¡æ&^Å7\\<‹àZxƒ¬¸BŒ9“ÜŸÃûè…9Qp.-.Î˜Ÿ§ÙŠZŸìF¥]Üï?GØ`Oœz\ZSdF‹İÁŸDyÙ’À¹XZ9o¡ê§à?¨¼ğ…eH#Å5j[sB\'ÀM$UO‰»øQq)\"tƒH*\'ğE¡ÄĞÂ¤áÁ…H¨@LaºÈ—J‰H“ô.?”õ“‹c,kZZ\'è}M»®ÑÚÁ£)¸Æïé¨³51ØÑÌÜª#bœr{ì_lÜe›;èKjU×±¿ƒ+`ÿ\0Xíâå¢ÌµCú7+vpÑl¤äN-s’$Æ.Ì|Á¡Ú~îkzîÅ¤|Ô¬ºÏös¼˜ÚÆEéÕRA¯R<¢£b£ğG‘ªJ¤:”ä™0!u¢@ë“Ñq\r±™#5›&†@‡FèsBtŠfZBæ‹)«›ÑÄÜr¯cv“¬Ç£¬!â4rGÔ¤Må‰š.}Ñï?÷\\,Su\\3³ÜÁ³Ñ|š¿èGÉ;nİ\Z×Ğï×£&¬…	9¹¹¸øş	•¨ıFíRY`ïcidØ…N³£S8X\\‰z°É™:Ë“rŸ‘2P™ÛıçäéCTjĞ¥¥øZ©‘ÑURz\'^…øL’i`¨ŠÅ$^ğ¥D\Z&C¸'),
(2,124832,'Juan','Dela Cruz','Madrigal','Male','09123456789','juandelacruz@gmail.com','1988-12-27','Tagum City',124832,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0ôxÔú\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0 \0\0 nü†\0\0\0tEXtSoftware\0www.inkscape.org›î<\Z\0\0@PIDATx^íİ	œTÕ™÷qŒš}ÏÌdy“Ì¼IŞI2“™Ìd’™äMfÆd’y“LLTêV#Hß{h5F1b–s›n@TTÅ\r·HÜ\n²ïû¾Ó`ï]UÍ\"²4ï9Í1àíƒtußªºËïÿù|Cì®®í{§nİ¥!$ÜùÑ¥ãßÕÇ­şLYEÕWÓåŞw-W¤R®78íˆá)[Œ‘ÿ=ÑrÄCÒ“–-^–ÿ.’VKÛ´¬Ô¦½!3²Åkòß7o×(m“?Û\"ÿ]ªM—”&§q«üwTÚñ®–ÏcHÊñ,ù³sÊˆ¯ÈŸâ!ÎÒOŸB!şœ_>òce®øšUîo9Şeª KÈ\":MZ+©âm.Øá·K6\'ëå¿ÓÒ®¸_şÿê´í],›ŠŸv¼æâ£úm „Bb—3¬rñÙ”íı—åzCeq\'à³Ò\ZY÷T,“j·l–Ëïh~1L6B?P[<ôûG!„„:gô®ŸK¹ŞÏÔ¦yYĞş ­”öK¦Â‡ÓQ_IØb‰Ú\"Òñ–{ç«÷X½×ÇßrB!¤ˆQßÉ—9Uß8şİ·¸S«EÅÊTÄPjËÉ<ùOPûB”9â›–5î=zñB!=eM9³w¹øGUìÓ¶¸Ko®>tR1B8RËF6d·ËeUÑ±3¢\\vz1B!o«rô‡d1ù¡,&ü„©ö¨ç{ú¨:¾UfšlDºB|ß\Z&Ş¯3!„¤ç<G|8íxçvìœwüÓıÑ·Ä‡-KKdCp£tZözB‰{ÔwÅ²ü0íŠä¿Ë¤#.H\ZµìÕ9Ful!`?B‰WÊúørÚõ.—ıŸ$öÊÇ©P_ûtŒ•Š_ÔÃ‡BHT¢öÒ—“ùåd>Aş»ó¤	È‡:â-©rïGl „FUNVNÚ“¥İ\'Mâ@öËf@À©òüşâ¯ô°#„RŠ¨‰X\'\'guz¾ËG±¨Ã@_Tcï‚‹j>©‡#!„BF;?e‹òOcÒSGÌU×q¸p`ÍÇõ0%„DÔñÛr‚í/\'Ú%>é#¬ÔÉˆO»İ¯Ÿø ¾„Bò‰âV…øœP\'ÊOûœfQs íˆ)ê\\\Z™Bºuø•œ<¯—šOšL(«O9b´lfÿNsB!*çVŠ÷v|¯ïˆÙ¾‰ˆ›)×sÕ˜×ÃŸB’u‘ëø±ú¶‡¤ÙvÄmeU_Õ«!„Ä;–%Ş™rD9òi8n¡Ú¦N`¥WB‰O.(>m¹¢ZNvM¾ÉÀqÍrñ8·\0!$é]!¾.?İ<,\'7Ùºæ\ré¡ŞnÕ¿éÕˆB¢u_ÇÕÕŸ¬Ç4Áèš¥;ÈZSÎÔ«!„„/ê;Ì”ë\r–“Öfß$ g6¤\\1ı!¡Š:S_Êö®”“TƒoÒ¬¦´ã]ıÓŠë> W?B)~ÔéNÕd$\'¥¬o’PX{ÔÉ…úöõ½:BHásüÒ»¢†Sô%·[]sa¥ø½zBHğQŸ6dá¯’“Îß$ ”d3¶ÅH¶BÚÔŸr¼ßË‰fW§‰@˜ìJ;ŞoÙG€Ò£¨³öÉO•rRáÂ<@´dÕş9\\s€’WÔqüò¿%\'‘m¾I@´4t4ñœG€rº¤\\ñ9a¬1L$\0¢kµôC½šBÈ‰”õñe9AL=iÂ\0?ÓÊ\\ñ5½ÚB’œóËG~L~ê¿YNG|€xj—&KŸĞÓ\0!$Ié8m¯-~%\'é’i·:ƒgeåÄ³õ´@‰{ÒåŞwåÊ¿Î7\0H¦Íjß==Bâ«\\|V®ìùV~\08f¹âéTÿµ.!qˆÚÄg9Şer%ßÛi¥€ö§!¸ê !1HÚ®ú¶\\©ÙÜ ›Òâûz\Z!„D)VåèÉNş¹\"«=~M+8\0¼ö”#î>ÏÖÓ\n!$ìI;Ş¹rå}Õ·2@w4Éçéé…Æœß_ü•åŠ\'+0\0ôÔ½l\r $„‘úå\nÚè[a Hl\r $,Q—ê•Ÿú\'\ZVT\0(ÙLQgÕÓ!¤ØQ{éÊ•‘ïú”[)v,kÜ{R-WÀ£¾\0ŠŠ­„)eø¦\\é6ùWB\0(¡zuŠq=MB‚Œ:›_Úñ®–+Ú!ßŠ\0aĞ®®,ÊÅ…	0½ÿÇrÅrÃ\n\0a3ë‚âÓzú\"„t7j\'¹Bíò­`\0fYuB2=BòÉ9Bœ¥wôãT¾\0¢¨ã+.,DHéãVÆrÅ|Ã\n\0Q³Ì\Z ¾ §7BÈ©bÙŞÿÈ&ç[\0 Êö¦l¯Ÿæ!\'‡Mş\0âNÎqwò•\0!\'¥ã\">˜æ_Y\0 †–©¯9õôGHrc¹â{r…hñ­ \0gõV¹øW=\r’¼X¶¨”+\'öD%GO‡„$#–5åLı}¿i¥\0€äpÅDµ”	‰o~Zqİä ®ÓJ\0\0Éõbß¾£>¢§IBâ—2{Äçe·»Ş0ø Ùl±¥·]õ÷zº$$>±*Äwä oí4è\0ÇÙâ5uús=mı¤oÜìì\0§wÔr¼«ôôIH4ÃÎ~\0Ğm“Ø9D2Ö0ñ~ËÏ5\0 kéßÌûô´JHø£öf•wo \0ò·øÂ5×Ó+!áÍÅ§å€]çÀ\0€îÛÆI¨Ó»B|NÔ­¾\0è¹æŞåUÿ¬§[BÂ“2W|MPÎé\0…¢¬ß×Ó.!¥åVı§œ»;\rV\0@ĞZ®Héé—ÒE´BÈ¾\n\0([NÙ¢\\OÃ„?–ãõWÑ8@\0…Ôn¹ŞP=R¼¤]ñËh˜\0€Â;ªÎ´ª§eB\n]üMƒ\0P\\í–+.ÑÓ3!…‹lWø\0 ´ÚÓ¶ø¹¦		>i×»Ü0ğ\0\0¥×rÄ/ôtMHpQË0à\0\0!’vÄp=mÒó¨MKr`±Ã\0Dí]«§oBºŸ´í],Åáäz{ËT½Ú¯²zmÅ%×-¹äWãç^-îšQ}Ãä—o˜0eÆØÛ9ş®\'_¾sò³³•ÉS^šñèS3æ+Ï½´`òæ«ß½y»ñ›¦şVİGÕ\rLS÷yÉU7ÍUqQeÍºô€ª:õØÆç„Ã¯õ4NHşI;bˆD”†+vÉÂ¾aÈc\\[s÷+·LzrÆSÏÏ]°dÕ†\rkëšê[[6esÇJ©¡¥õ z.‹VlØ¨Û­w=9ãÚêI3_1n|îÓ®Ç2QJWèéœ®G[*Å…\'½=lôòáÕ“^¹û¡çgÍ[²víöºÆœ©àFÑöWrs¯Yw÷ÃÏÏúuÕ3a£WĞ HÚåX³õ´NÈé#?ùWÈsÔ7€s½½~ı¢Q7=<ı‰çfÏ_³yûNY$ÛıE3Ú×lÜ¶óñgg.¨¹é¡W^6fqÚ¯ß3 \'ÔÙZmñS=½rê¤\\ïgœŞ±Å¾ŠK®_6æ–?¼üòœeKê[J¿Ù>¬\ZZ³Gæ-Y»ş–IOÌºø—7ÎW[FŒï)¿ê¢mzš\'¤sä„ó=9Pú—‹×¬=şáéó–¬Y#‹ÚaS±Ãé©÷nÎâÕkFßôğ+j_Ó{\räawïòªÖÓ=!\'Ò»B|]öjFwí?däJõ)Åº-ÛMÅ=·zSm½Ú: ¶¨°•İÔjUŒø¢ö	‘Ÿüå€èæ©Ãán¿ïÙ².5›\n\ngÃ¶W›o»û©YêHÓ²ŞFmŸ\nñ)=ı“$ç‚‹j>)Äß\0ŒÒØsåo&LŸ³híBSaBñÍY²fı¯ÄÄyìDˆ.³Å\Zk€ø¨.$‰±†‰÷ËÁ°¬Óà\0|ú\r¹V¢·³©å5SBéíhhÚw×ƒSg÷«¬aœ+æ÷ï?æ}º$å!Î’ƒ`j§AœDŸÿü+È“ÄCõ\"ëùi×ÙÃ®[cZ¦ÀIB¼C—’”¤q«a0\0Ê‡Z­¿±À \Z¦Ï]¶ºò²ËeÊI½p*×ë²@’”ë]c@Ç\'ş¹‹×¬1D×ìE«Ö:^iZæ€¬	®.$Îé8ÑgùƒOYEUıı¾8W6õÇØ“/Ì]Ü§¢êUÓ@¢J—{ßÕe‚Ä1eıG|Y.è=¾dÛ7rÜ3ëš[÷›\nâ§¾9ó†:Ÿ\0W3„OÖ\Z ¾ Ë‰SÔ!roõ-p$Ø ËÇ.Ø¸mg“©H şÖmİÑ4ğçc–šÆk]¿~âƒºl8Ä²¦œ)ì¾„J9bï÷>3]6÷ã˜úê‡sà$RG‰éòA¢”+n6,d$3lôâµ›jkM…\0Éµfã¶zçâÑ+LcÉ“vÄº|(G.LÇ¿p‘HGn¸uÊ´ÆLö¨©\0\0jl\\wóÃ3åXa\'a¨³Vê2B¢˜2G|S.H®î—piWä{iÁ<Ó¤ø=ıâ¼%i×Ûm\ZKH”C)Gœ£Ë	‰Rô9şë}	sá ê\r«ÖoİjšèSY±~ë¾«·˜Æ¥å‚âÓº¬(ÄqÄ»å‚[ä[Hµ—?çîGw©k¼lÌÓØB¢Ì«¬œx¶./$ì‘ì^ßDÂüüê[fÕµf™&v «\ZZ2‡şë[šÆ’#íˆñº¼0G.¨\nÓDr\\%&Îdg?E¥öá5w«ã\rÉ²E¹.3$Œ±œªêuÿ‚CrT}`šizÊ»ş~š€dÛg¹âït¹!aJÇµı]±Ş°ĞWWİ5Ã4qAùMÍ=4É¶öÜJñ^]vHX\"Ìdß‚B‚üü×ãç°Ù…¦¾¸âÚÛæ˜Æ ÂuÙ!aHÚñağåãæ×·fÙáEÑĞ’92øò±\\C ÁRè£Ë)ez;âKrìó/ $C¿Ê‘këš[_7MÔ@¡ìljÙßopÍFÓ˜D\"ì)³G|^—!RŠX–x§åŠå†…ƒH»\"³vKíNÓ\rÚêÛÒh3M$ÂbÎPÂÈpƒa¡ 	lqøÅ™K™&f X^˜±d¹\Z‹Æ1ŠØ“\r Ğåˆ3–ãı@.\0.Ú‘P7M|ŒÃı\nco{t–iŒ\"õ®_×e‰#Ö\0ñQùÆ7øÂ½xôböøGX¨#ä˜\\m\Z«H\0uø¹5î=º<‘B\'e‹Œ±—vÄµ›¶ï0MÄ@©¬Ù¸½Ér½½¦1‹ø“5iœ.O¤I¹â\'¦€d¸ÿÑ—fš&` Ô&=øü\\Ó˜E\"M—{ßÕeŠ\"}ûúˆ|£}o<bÀÏo`§?„ZÅ¥c8*)¹jûõÔåŠ6ı\'ÚË×lŞlšt°XºfÓ9VùÆ.\"åˆ»u¹\"A†MÿÉ&FßË^ÿˆ„ßÔLšm\ZÃHÙ\\ Ë	\"zÓ?{ı\'TºÂk¬mlÚkšl°Ù^ßôZÚõZMc‰Ğta¥ø]¾HO“vÅı†7	1á¾§_1M´@Xİ2éI¶$XÚStù\"=	›ş“­¬¢ª¾®%³ß4ÉaU×Ür°¬Âk2i$CÊõ~¦ËéN¬ÊÑ²lQgzs‘wN~Oÿˆ¤Û&=Áeƒ“­AÕ0]ÎH¾‘oà½¾7	\"?A54´´4M®@Ø©­\0i×k1m$CÚãu9#ù$åTı»|Ûıo(’ãú[™nšX¨uãC\\\' ÙZåUßÒet%ú2¿ë\ro&’cÿ–õ­¦IˆŠ\rÛ_ÍÊ±ü†ol#YV#ÄYº¼‘Ó%íˆá†7	rÅo&pÊ_ÄÂe×Ü2ß4Æ‘(WèòFŞ.V¹ø¬|³öùŞ<$Ìì+Wš&S j^šµdiŒ#Qöö©ŸÒeœ*òzÎ÷Æ!aÊTm—g»\"¢H].¸OEU½i¬#QÒe˜Â1ÿPFİô;ÿ!VFŒ¹ŸqŒ+\";ş9b“ÿ\rCò¬Ú°u›i¢jñÊµ¦±ÄY[Y9ñl]öÈ›IÙâW†7	Ó¯²z£i¢îÂ#Ô•ãIâ]¦ËQ¹p`ÍÇå³»ó…¤©\Zs?›ÿK¿y×€Òv~ùÈéòGÒ¶¸Çğ&!fÎ_±Â4yQ÷ò¬¥«McÉ“rÅÍºü%;e®øš|Cúß $OÚõv×·f™&O ê\ZZ2‡-W¼n\ZûHœC½ñ%]“Ë/Ş$Ğ ËnX`š8¸¨¸tÌrÓØG\"=§Ë`2“vÄ\ro\njÜíSøş±vİ-s8 ş,]!¾¯Ëa²bYSÎ”oÀZÿ‚äâìˆ;Î\nŸ¥²q¼*&(iÇdx3\\‡êš[÷™&M .jë÷Ë±Î>Oø³”#úè²˜Œœ[)Ş+_x£ÿ@rõ­¬Ù`š0¸¹pP5\'ÂÉ¶&êä@œô~—\r¿u–i²âæ’_İ¼À´ ¹Ò¶w±.ñN¿~âƒò«kdß$Óè›a@$Âˆ±“9!üš­aâıºLÆ7iGÃ‹GÂ=øØ´Ù¦Éˆ›û~a¾i@²©-ãºLÆ3}ûúˆ|¡»ü/à\0$ÅËs–q$\0:³E&Ö[Rm|áH¼-;ê›M“%7ë¶ìh5­@Úõ.×å2^±Ü‘)_à>ÿ¤=rbl÷O”@5f²jÌğ­€Òè8âİºlÆ\'i[Œ4¼XàXßA#6›&J ®ú¨ÚiZ\0Ë—è²œçˆËÆå~aT>dßÿ#QúµŞ´.\0–-ê~téøwéòıÈÆ3¾P@\ZtÙ\rM“$W.¹n…i]\0””ë\rÖå3ÚÑÇı·ù_ ğ¦K¯¾yi’âjè•7.2­€¶Ó²Ä;unÒnxqÀŸ]õû;f˜&I ®®>a®i]\0şÌöè2\ZÍ¨½åiîôÂ€“üfä=œ‰rõˆ;ç˜Öà$[Ïâ,]N£Ë•†¼Åµ5“^1M’@\\ıÚ£@Wxıu9\\Î°\\Á®8­áÕ4\0H–«ÅD\Z\0tÅFUK—Ô%íˆó/èäšª;i\0(4\0ÈÃuYNä“ç{€Ñ/;a¦i’âêÃoå‚@èª—tYFÊñMÃ‹\0Œ†^9ni’âjÈ•7.6­€A»åTıƒ.¯áOÚ^`ä»n™i’âÊ6zµi]\0LÒ¶¸G—×p§O…ø”|Â‡ü/\08•‹*kÖ™&I ®úUVo6­À)”>¡Ëlxc¹¢Ú÷Ä·Õo0\r\0’…\0ùJ;Şou™\rgÔäåÄ?È\r\0’†\0İĞPY9ñl]nÃ—”ë¹†\'\r¼-\Z\0$\r\r\0º#m{½u¹\r_ädÏVä\0IC€nš®Ëm¸RVQõUÃ“N‹\0IC€î* ¾¢Ënx’rÄí¦\'œ\r\0’†\0İ•vÄx]vÃ‘şıÇ¼O>±=ş\'\nt\r\0’†\0=°Ë²Æ½G—ßÒ\'åŠ†\'	t	\r\0’†\0=‘v½uù-}äZä‚@WÑ\0 ih\0ĞCáØ°·]õ÷†\'t\r\0’†\0=Ô^fø¼.Ã¥KÊcOè2\Z\0$\r\r\0z*m‹º—&çq–|\"ş\'äƒ\0IC€³Eâº?©rïGÆ\'ä\0IC€ ¤Ë½ïêr\\üÈ\'ğÿòE€¤¡@R¸[—ãâæ<G|X>ş\'ä‹\0IC€€ì)É9Ò¨0< o4\0H\Z\Z\0%m‹´.ËÅ‹|àıOè\Z\0$\r\r\0ãŠ§uY.N,wä_Z¶8l|2@h\044\0Ğ!k€ø¨.Ï…åzC\rOè\Z\0$\r\r\0‚”r=W—çÂG>àLÿ\0º‹\0IC€@¹ây]›.ªù¤|À£\0ĞM4\0H\Z\Z\0¬8_¤1Ìğà@·Ñ\0 ih\0´¢|\r`ÙâeÓƒİE€¤¡@à\nı5@ß¾£>\"èP§z€\0IC€xÃªı!]®ƒOÊå†z„\0IC€‚p½2]®ƒ|€\';= ĞC4\0H\Z\Z\0ÈCº\\u¾ayç¯ûè1\Z\0$\r\r\0\n¤­²râÙºlËöşÇğ`@Ñ\0 ih\0P0®ø.ÛÁ%åˆ[ô\r\0’†\0…’vÄºlyÇÛı\0IC€‚±Å]¶ƒIYÿ_6>\0\Z\0$\r\r\0\n©Ìñy]¾{”í]iz 4\0H\Z\Z\0”ë\rÕå»ç‘w8­Ó\0¡@ÒĞ\0 ÀÒå»gqñnyg|w†\0IC€ÛÈá€–ãıÀpç@`h\044\0(´´-şC—ñî\'åˆÑ¦;‚B€¤¡@¡É`„.ãİe‹%¦;‚B€¤¡@ÌÕe¼{9Ï–wrÄw§@ h\044\0(‚CıûyŸ.çùÇ*÷Î7Ü)(\Z\0$\r\r\0Š!e‹ÿÖå<ÿÈ;¸É‡@Ğh\044\0(†´-Fêrä,õß!4\Z\0$\r\r\0Šd.çùå§×}À²ÅaÃ¢@ÒĞ\0 (d\rïÖ~\0ê»ã£@ÒĞ\0 XÒåŞwuYïz,Wx¦;‚F€¤¡@±¤1\\—õ®Gşátÿ…@€¤¡@ÑØâY]Ö»Ëšr¦ü£×ŒwŒ\0IC€\"ÊÊ²~ÆñêŞ…ô.ÿh¸  h\044\0(¦Şø’.ï§e{Lw\r\0’†\0Å”r=W—÷Ó\'íˆ;Lw‚œ×š&I ®.ª¬ÙdZ€BH9âV]ŞOù+üw\0‚l6÷Ìœ¿r™i’âê•y+ÖX®·×´N\0ĞµYÖ¸÷Èòı1<9ÎZ°j•i‚ân†lRÎï_7®@°öŸ#ÄYºÌŸ:VyÕ·íèÏÍ™cš¤øãs³Éu¡İ·n\0S;÷ë2ê¤1ÄôÇ@®ÿ‡i¦	Hš‘7><Ó´\0AêÒ€)GÜnúc (ö°Ñ+\Z3Ù#¦ÉHš†ÖìÑòa£ÖšÖ (]ÚPŞpÿ\0í[µaë6ÓD$Õ²Õ›jåº±ß·®\0Aš­Ë¼9Bˆwp@RÍØØôˆëî›eZg€€´éRo5@|ÁğG@ Ò®ÈÕÖ5¶™&? é¶¾Ú¸\'íxm¦uDyõÿÒå¾sR¸ÀøG@\0FŞüŸş·Q=ö¶ ~¨Ë}ç¤\\ñÃ\0=g‹Ã¶î¬3Mz\0[·uG£\\_tZ€\0¤lïJ]î;\'íˆMôÔ+ÆÍ3Mx\0Şjà/Æ.1­C@O¥qŸ.÷#o°Ôÿ@&Oyq¦i²ğV“œ:×´X¨Ë}§œÁ\0(öMÛ_m0Mv\0ŞjíÖÚµÎøÖ! æ#ú¸ÕŸ1Üè±ŒØlšè\0˜]8¨ZÀ¸>=âüK]öO$e‹ÿ6Şè¡‹yçüò0ôÊÕ5ŒëĞi»êÛºìŸHÚö.6İè©Ñ7=<İ4É0«û ‡¢ Œ×H»âÓº÷v\0òq÷ƒS9%;\ne”.û\'\"ø¸ïF@ {v&‡\0yxôÉWø\n\0…a‹?ê²\"ò+:İÀóÓ-6Mr\0Ì{y!ó1\nÃKtÙ?ù‹İn`Úì¥KM“\0³?Í\\²Ê´.hÕeÿxÎ/ù1Ã€@Ğ\0\0ù¡@!õï?æ}ºüËOÿvÕ¿˜n\0È\r\0\n©¬ÿˆ/ëòßq\r€óL7‚@\0ä‡\0vâª€)G3Ü\0\r\0\Z\0RÊõëò¯N$Fšn\0È\r\0\nI~è¯Òå¿ã€Éş\0A¡\0òC€B’úïÒå¿£˜î¿\Z\0 ?4\0(°çtùïh\06ø~	†\0È\r\0\nl©.ÿœ…E\0ä‡\0ÖØQü++\'-ÿ£İ÷K 04\0@~h\0P`G,kÊ™êÓÿ\'|¿\0E\0ä‡\0…v~ñW½z—‹4ı\n\r\0\Z\0ZoG|©—åŠï™~	…\0È\r\0\n-åŠÿ«N”6ı\n\r\0\Z\0šl\0~ÒËr½¡¦_A¡\0òC€BKÙ¢\\íøkÿ/€ Ñ\0\0ù¡@¡¥]ïru! \ZÓ/ Ğ\0\0ù¡@¡u\\@şÏ­¦_A¡\0òC€BK;âFõ\0BAÑ\0\0ù¡@¡u\\HşŸ§ü¿\0‚D\0ä‡\0…–²ÅÃê<\0¯˜~	…\0È\r\0Šàµ`‘ï‡@ h\0€üĞ\0 àä‡Õ\00ĞPP4\0@~h\0P‹U°Á÷C P4\0@~h\0PëTPëû!(\Z\0 ?4\0(‚Íªhôı\r\0\Z\0A­j\0Ú|?E\0ä‡\0EP¯\Z€}¾¢\0òC€\"hU\rÀß@Ñ\0\0ù¡@ì¢@ÁÑ\0\0ù¡@¼®\Z€ƒ¾¢\0òC€\"èh\0Şğı\r\0\Z\0Á>Õ\0òı\r\0\Z\0œ-^£@Á½0}á\"Ó$Àlê´E+Lë˜À‡¿òÈS¯Ì5Mr\0Ì{vÖbÓºh/;¢àîœüìLÓ$Àìî‡ŸŸoZ—€\0íQ\rÀ^ß@¾é‘é¦I€YÍØf›Ö% @mê+€Œá@`†^1ni’`vÉ¯n^`Z—€\05©-\0\r¾*«ğ^5Mr\0ÌÊ*ªêMë íªØîû!´ö-;ê[L€·Ú°}gÖ°AÛ \Z€¾›ôàÔY¦ÉÀ[İıàÔy¦u”+–«`e§_\0«¸ôú%¦ÉÀ[UşbÌ2Ó:ÊóU°¨Ó/€àÚ\\[ßjšğ\0·vË¹®ñ­;@ğ\\ñŠj\0¦uúP\0U×ßÿŠiÒp\\Õ˜Éş‡âpÅóªx²Ó/€H;bÏ¶Wv™&> é¶Õ7íM»ŞnÓºMÎÇôJ»â~Ó/B¨;™­\0€¸ş>>ı£x\\1Qèã/Â8°lí–­¦	H*¹Nì”ë—fGÑÈÿ×õJ9¢ÆôK Pú¹¦1“=jš¤©oÍµ‡ZgZW€BI;bx¯´ã]mú%PH×ßú(_\0RÍ8ÎûpÅ%jÀ0ã/Â:úÇgfÎ1Mˆ@R<úôLuÙßvßº×¿—åzeæ_f‹}s¯Ygš¸{qÖ’Ur=Øßi½\0ŠÁ?•\r€øñ—@¨C§ÍY¶Ê4AqÕQü]ñºi\0Š!åŠÿÛËrªşÁôK ˆ^æ¥y‹M%7>öÒB9æÙã¥5@|¡×…k>nü%P\\íÃGÜ5«¾%sÈ4iQWßš9ì]ÿ\\ÃØŠo˜x¯s„8KşÇÑN¿JÀ:jUmcÓ^Ó\nDÕœÅ«7ö«¬Şl\Zó@	ìïõf,[d7\0JâÉççÎ7M¢@Ô¬İZÛrÅµÔå}¹ÀÂd‡.ÿ²pÅzÃ\r€’^=‰s Ò¯Ü¸íŠßNP›ûøÇ7‹uùïh\0^1Ü\0(‰¾•5L“*vÏüiş²‹Wo4k 4lñ¬.ÿ²pÄäN7\0Jçè–õ­¦	³‹*k6Æ3*iGÜ¡Ë/®€Ğ™òôÌy¦	«eë¶¼j\ZË@èØŞµºü«¯\0¼¡Æ%rµ¸s†i’ÂjÔÍpNDBÊåºü÷ê•rÅOL7J¥ÏÀ*.ŒHé;°z›i,¡ãŠïéòß±À?uºPb+ÖlŞfšh°Y´bC­iaTfø¼.ÿ½z_>òc¦¥4nÂD$Tá’¾ˆŒvÇïÖåÿxä¹0BÅ6z…i²Â¤1“=vá€ì\0ˆ¨hÑeÿD,[¬1Ü(¥#[vÔ·˜&] ,^¹”¹Q²P—ı±\\ñ„á†@IİûÈ3M“.¿~ë|ÓØÂ(e‹tÙ?ù‹ëı7Jmğ•ã¸.\0B«¶¾éuËûMc%[üN—ıI;Ş ãÒz}{CóÓä”Ú]LUú1[ ¬úê²\"érï»†%wÿ£/Î2M¾@©ÙCF®3Y ¬Êœªoè²\"}ÜêÏ˜n”ZÅ%×-1M¾@)-]³i‡i¼aÖ·ï¨è²ÿ–œ!É¡€£#·íl4MÂ@©\\S3‰cÿ-¶Èèzß9òË:ıãï|œ“!4jë›ö§±Ç4V›­Ë}çÈ_rY`„R¿Ê‘kM1P\n·ßûÔ\\Ó8Â,åˆÛu¹ïœ”-~eú# –¬Ş¸É4Å¤Îü×wPõvÓBÍ—èrß9–íıñ€^=‰¯PrS§/Zi\ZŸ@Ø¥q.÷sÁ€ê¿6ıi×Û½³©eŸiRŠeĞå7,5O ôÜ‘©Ë½1êH\0vlAhİ÷Î	€ÒYµak½‡Gıãˆ€f]çOËœ×\Z¡U>tä*ÓÄÃÕbâÓ¸\"`º.ó§e‹	†?BcÑŠõëM“3PH›·¿Ú&ÇçıG$¥]qƒ.ó§e{L„ÅU¿¿c†i‚\n©jÌdNüƒ(ë|\r\0Ê*ª¾jøC L^ß¼£¡Õ4I… ®ú§vB5ŒE ÊÊÅßê2êœ#ÄYòÆlæB¨]?ş‘é¦‰\Z(„n{”ïşe{…ïĞeşí#o¼Ğ÷Ç@¨ÈOc­uÍ­ûM“5¤W[2‡úTx-¦qDÄL]ŞOŸ´#n3Ü*÷>òÂLÓ„\riÂİœöÑ–²Å8]ŞOŸ”ë¹¦;Â¤ïÀå}Ô?aAÙÙØr@mm2? *R¶×O—÷ÓÇrÅß™î›§_\\°À4qAËwÿˆŞâsº¼w)êŒ€9ÿ\0asÑà‘«åDİîŸ¸Ú^ßôºc»ücˆ˜ÓŸĞùGÏùî¥¦/ZlšÀyãÃ÷8x\\—õ®\'åz×î{È(µÀ8‰İ±ugınËõöšÆ%)Û»R—õ®\'m‹ÿ0İF/ÎZºÔ4‘İñûÑ÷ğİ?â¡¼ê[º¬w=–5î=òßètg@¹ÃF/7Mä@¾ôÿ˜û~téøwé²_ä/ğİZÏ¾4‘iBò1ô—7.6/ ‚æêrÒ®¸Îp‡@(õ«¬ŞØ˜Ér^\0tÛK³—®5- ŠR¨Òå<ÿ¤]ïÿ™î«G˜6Ç4±§#›Çöşƒk6˜ÆEérï»ºœçŸs+Å{åôß)V}*¼Úú–Ì¦	x;÷<üÂ|Ó˜\"ê€Ú—O—óîEŞÉLß¡vÇ}ÏÌ0MğÀ©¨ËırÁÄÌ4]Æ»Ÿ”ãıŞpÇ@h¥]‘ÙşjCÎ4Ñ&×VOâ°?ÄJÚÃuï~¬\nñÓavmÍİ¯˜&zÀoáòõ[,[6# ªÊñM]Æ»ŸÊÊ‰gË•ã5Ó\0!öÆŠõ[¶›&|àM\r­Ù£ı‡Ô¬7Œ ÊvŸ#ÄYºŒ÷,–+6<\0j•¿¸a¡iÒŞ4á§æ™Æi¶ø£.ß=OÚCŒ„ÜãSçĞÀhãöºÖ´ëí6 ÊdÍ®Ğå»ç±ÊÅgM„]™ëÕïlhŞg*\0H¶‹¯ºy‘iÌ\0×Ş§B|J—ï`bÙbá€Ğûíè{Ø!oñøÔYœîñäŠåºlNŒÈ²ÅáËÖn0$ÏæÚº¶²\n/c+@Ä¥Q£Ëvp±Üªÿ4=ı\\Û˜É1$ËĞ_Ş¸Ğ4F€X¨ßÑe;¸¨C\näïêô`@DL¼ÿ™™¦‚€äxøñiKLcˆ[d,kÊ™ºl›”-0>(iGìÙ°uG“©0 ş6lß™•ã€1ˆ³Iº\\«Ü;ßğ€@d»rÜ<Sq@¼5f²Ç*1f™iL\0q‘rÅOt¹>êÊBòAöùˆ’şø2—N˜[\'=É¹şo¶xÍqÄ»u¹.Lä=ÖéQ\'Y»i{ƒ©P ~æ.Y³E.÷7üã\0ˆ™?è2]¸Èéë{P rÜK®_Ö˜É¶›\nâ£ã2¿ƒªkMc\0ˆ×+Óeºp±*GH>ØÁNDÌ„{ša*\Zˆ‹¯¾™CşûõÔeº°‘öœïÁ(z}ÅšÍÛL…Ñw×ıÏÎ7,s Ôå¹ğI»â\"Ã\0\"§_eÍúºæÖ¦‚èš³xÍf¹|ø—7KÅØüÿfú÷ó>ù \r€X¸êw·s‚ Ù¸mg[™[ÕdZÖ@íS5Y—çâ$íˆGOˆ¤ûşğ§Ù¦b‚hyµ¹õ=tÔ:Ó2bê!]–‹Ë?5< ªö-^µ‘EÜ¿0×°lØJ;Ş¹º,/–%Ş)\\ZÓø¤€¨¹pàˆ­\rÍ™7L…áwû}OSü‘4mªë²\\Ü¤q‡á	‘µ½®1k*.¿Ë®¹…½ş‘,®˜¨Ëqñ£.;h|R@DÑ\0D\r\0§¼ê[º—&òIlèô¤€ˆ¢ˆ.\Z\0$Ì&Y‚Ï8^‰Kù$~í{R@dÑ\0D\r\0’$íxWë2\\ºÈ\'ò	éĞÉOˆ*\Z€è¢@‚¹` ø´.Ã¥|2ÏøI4\0ÑE€™ªËoé“r½Ÿ 94\0ÑE€ÄpEJ—ßÒ§²râÙòIqêMD\r@tÑ\0 !šTÍÕå7‘Iµá‰‘B]4\0H‚´-Fè²ôq«?cÙâ°é	QA]4\0H€£}ñ7ºì†+òÉ=é{²@¤Ğ\0D\r\0à]nÃËñ~`xÂ@dĞ\0D\r\0â.íˆërÊœ!ŸäFÿ“¢‚ ºh\0sµBˆwèZÎXw™á‰‘@]4\0ˆ³”í]©Ëlxs#>,Ÿì^ÿ“¢€ ºh\0[¶xMÕV]fÃù„oêô€ ˆ.\Z\0ÄUÚãuy\rÔa\nˆ(¢ˆ.\Z\0ÄÔQ«bÄuyFR®xÔğB€P£ˆ.\Z\0ÄÔSº¬F\'½+Ä×\r/5\Z€è¢@¥q.«ÑŠe‹9¦„\r@tÑ\0 †–êr\Z½¤qá¡E]4\0ˆ0]õ¯9Ã²Å\ZãBˆ ºh\03CâŸÓ%e{ı/%\Z€è¢@œ¤\\ÏÕe4º±¬)gÊ³Ùÿâ€0¢ˆ.\Z\0Ä†-ê,K¼S—Ñh\'åŠÆ	„\r@tÑ\0 >¼ËtùŒ~T\'#_ÔÎÎ/\Z€è¢@L´ôï?æ}º|Æ#)Ç»ÔğBP¡ˆ.\Z\0ÄA$.ú“oG¼[¾¸zÿ‹Â„ ºh\0MçVŠ÷ê²¯X®7Ôğ‚Ğ ˆ.\Z\0D]Ê¿Ğå2~©¬œx¶|‘Ûü/\Z\Z€è¢@Ä5ZÖ¸÷èrÏ¤]Ï6¼p h\0¢‹\0‘æŠKt™Œo:ÎàŠõÆ7\0(±º–Ìk¦â‚ğ£@„íüÑ¥ãß¥Ëd¼“¶EÚğ\0¥¶ÏTX\r—_{Û<Ã2B/e‹r]‘3ä‹^æ€RêSQÕh*,ˆ†«ÅD®>Š(Z­¶ŒëÚ˜Œ¨kŞ dúªŞd*,ˆ†c˜eZ®@˜¥ñc]“ùâŸó¿@©¼lÌbSaA4Üqÿ3sMË±™º&/½íª¿—oÀß”DÕõ÷¿b*,ˆ†g_^°Ü´\\jïíVı›.‡ÉLÊw\ZŞ è˜:g©° \ZÖmÙ‘1-W ŒR®xT—Áäæ‚‹j>iÙâ5ÓÓ†m;Ø	0âÊ*<š\0DÁşTÿµ.ƒÉl\0~gxƒ€¢é3 j§©  Z†ıò¦…¦å„IÚ#tù#êô‡òMÙî“€bñ®ŸÌ÷ÿ1p×SÙaW»Ëıö4V¹w¾áŠbÑÊõ›MÑ²ugÃ¹<ú—/)Ûë§Ë99òÍyÁÿf…Öwàˆ¦b‚h\ZrÅ¸E¦å„ÀYêÎ8^ñÈ[ÒÛ_’oĞ¾7(¨[î~r¦© š{vÖbÓrJìh™Sõ\r]îˆ))[Œ1¼q@A”UxMuÍ­L…ÑôjKæPÚõZLË(•”#n×eœ*ıú‰Ê7«Áÿæ…0ágøôCî{šë LZúöõ]æÈÛÅrEÊğ’ŸşêZZš\n¢­®%s¨Ï\0¯Î´ÜbK»­ËéJdğ´é‚2åé™œù/ÆîŸòâ|ÓrŠÊsdIcÇ¿|¢Î’ÄQ(¿~ëSÑ@|4´fÚCG­1- H•\r_Ñeä“”í]ixCIWxuµuM»MEñ²~óFË»Lã\0(8WTërFòÍ9Bœ%ß@®ğ… ˜1wùjS±@<=øØËã\0(´\r#Ş­ËéNzWˆ¯[¶8lxs|yìY¾÷O¢Ë‡ßÊ)‚QLGÓvÕ·u#=IÚ#\ro0—[\'=5ËTõ-™Cƒ~>†¡(R®¸Y—/ÒÓüèÒñï’oêZÿ›tQûØ	S8Ş?áv6¶ì¶‡Zj@vXÃÄûuù\"ADB‘¯Ğ\rûÿğÄ+löG‡í\rÍ{úÅ‡	J{ÚõşŸ.[$ÈğU\0ò!WÄÜôyË×›\n’«®¹å û Ò¸C—+tø*\0]5äò±‹6lİÑb*\0€¢ö	a«\"´MÿeWı‹|£ùŞx ƒºÌ”§g,4Mø€ßË³—®êSQUo\ZK@¦œª×eŠ2)×»Æ°\0l‡~íİ1{ûÎFNğƒ¼ìhhzıÚš»g©1äS@W]¯Ë)t,kÊ™ò\rŸí[\0H¦ö¡¿¼qáòõ[w˜&w «Ô\ZvÕMê¤Aí¾1œš-Ö¨¯§uy\"ÅHÇµ±»ÓÂ@b”µræ¼+M“9Ğ]–¯ÛzñU7.‘cŒF\0§sPú\']–H1“vÅE¾…è;pÄöGŸš1¿1“5Nà@–¬Ü´å²knQGñAà8ï2]H)’²ÅÃæƒ¸‘\r_Ë“Ÿ]ßš9lš°B`‹\0Naª,A\\æ·”ùiÅub“oÁ ^öınÔ½3·74¿fš b`‹\0NÒ\"}B—!RÊèCÕw1¦…è:ôËßİ>{ãöºVÓ„”@âµïºü0$åx—\Z¢©}Èå7Î]¾~[­iÂ`Ñòõo~5 B§1Œ˜J»â:]vH˜\"Îãş……hé?däšés–¯2M¸@±E A\\1¿²râÙºä0å<G|X.¤í\ZB=ûu4±×b•Wÿ/]nHc•‹•Šı\"‚=û7Ç¿\Z¸y±ß|5GR¶÷_ºÌ0Ç²E¥a\"\\Ø³±Æ±½kuy!QHÊw\Z$J=û‘(4‘7Uñ]ZH¢/¼È· Q:ìÙDã«HÚj\rÕe…D)\\TóI¹\0}EÆıÀ	lˆ[¼f9Uÿ Ë	‰bÒvÕ·åÂ|£ÓÂEÁ±g?pj4¡Ö¶EZ—åX®¸Ä°€Q i×ËŞvÏSóØ³8=\ZğI;BèòAâ¹@o3-hŠ=ûn¢§Øé/f9Gˆ³,[¼lXØè¹CWış›jëZL€®cgÁ’Z­.0§Ë‰Súõ”xo£*/»a1{öÁc‹@Ñ5]0 ú¯u¹ qLï\nñ9ËÃÂGØ³(\Z¢Ø_æˆoê2AâËß“œ#ºáÂA#¶>öÜì¹¦‰\n@áğÕ@ÁMÛ^o]H’rD¹àÛ}§ öì¿eÒ³Ø³(-¶+íxWë²@’””ë]c\Z8!íŠ×jÆ>ôÒNöìB…-=§N¯ËIb,[Üb\Zøó9ûÙ³1¶t“-UG‡éR@’Ëšr¦åŠ\'Œ$¡Ø³ˆ\Z¼,ìßÌût I\Zj@øHâØCG®˜9oÅJÓä \Zøjà4\\±ü·ä<G|XKpÎ~ ~Ø\"`ÔÀ±şÄ˜>âSr€l÷\r˜Ø*«ğšï¸÷™éìÙÄ[ş,W6@|EO÷„tN™=âór ÄıÂœ³H˜„oØ§®«§yBNÕ%Ê“ó\r 8`Ï~ áØìO9â=½rúXåUß²lñša0EQûËoœËı\0Ş¤¾\Z¸äW7/’óCœ¿\Z8dÙŞÿèi®Gm2Šz ÎÙ?mÎ2ÎÙÀ(Æ[¨3¾êéœü“²½ÿ’i¿o`…çì%+7l‰Ñõ\Z=ÒıX÷9˜œ4¸B‹söè‰lhO¹Ş`=}Òó¤lñßr`…¹	`Ï~\0‰h#@ñ\'…IÚñÎ•ì oÀ•Ú¡«~ÇŒMµìÙ xújà¨,ş®®		>rıP\nÅ>œ³@±„|‹@{ÚCô4MHá’.÷¾+Ü>ß\0,šsöÏ_±Â´’@!…p‹À‘”-ÊõôLHáSæT}C¼¢,ˆsö‹lxÃrEJOË„/e®øše‹ŒaPŠ=û„U	ƒ)×û™	)~Ê*ª¾*b“o`\"íŠ×jÆ>ôÒNöìrEıjÀ¯©¯bõ4LHé¢/ ´­Ó í¾£W\\{ÛœMµõ­¦\r\0ÂjÑÊõ›‡\\9nœÇÚ}óZPÚÔ©ÚõôKHésáÀš[®Xn¬y¹¨²zıŒy+W›V,\0ˆŠ9‹Ö¬s/¾n…iëFµÕUO»„„\'VåèÉ:Ë7`»jÿø;Ÿ˜Ù˜É5­L\0EON³èÂ#væ¼ü¸b½U.>«§[BÂ—]:ş]–-şhÀ§P>xäÚ¥k6o3­<\0uuÍ­F{`¦œïŞğÏ]´èÂJñzš%$¼±¬)g¦q»aû­\ZsÿÌ†ÖìÓJ\0q²pùúÍ\r¹Î0š-=·R¼WO¯„D#–ã]%ğ)öˆõ²Ï¼8‰i%€¸jhÉ®\ZóÀl9şhWL<Gˆ³ô”JH´¢NR!ò[NÜ¯²fÃúÍ;\ZL+\0$Á‹³–¬êSQÕxòÜxÙxWéi”èF²\"t«\ZØC¯¼qáÎÆ–×M+\0$ÉÖ\rm.½ÎôÔëiÛë­§OB¢u®€šq<Ó˜É¶›V\0H¢úÖÌ‘ßÔLR_	¨âßl•‹ÕÓ&!ñIKËîÏË¿Æ¿\0@Òİ÷èŸîãˆ¿ÑÓ%!ñKkkëûå`ÿ£ğ@reg677ÿ•&	‰o;vFS¶íj9ğ9é€DkÎå&Ê9ñl==’Œ4µ¶ı¸9›ÛeZ)\0 æÈOş\\ÇŸ$7­­­ÿG®ë}+\0ÄÙ«™Ì×õ4HHr“Éd>Ğ˜m{Ê°’\0@Ì´Íàû~BNÊ±cÇŞ!›€\Z¹‚p˜ €8’s[v´œëÎÔÓ!ää4ær?”+I«aå€¨Úİ”Ë¥ô4G9UÔæ±ælîEÃJ\0Q³XEOo„ÓE*ØœË]&WC¾•	\0¢ ½1›»yİ±cïÔÓ\Z!$Ÿ4evıgs6WoX¹\0 ¤²­Mmm?ÒÓ!¤»iÜ»÷/šr¹çÌ+\Z\0„Ê´L&óI=}Bzš“¾xÃ·²@nÊä„:¢IO[„ Ó”Í~C®hë|+\0”N.·­9›ı7=MB\n•ÚÚÚw«ãiåŠw¤ÓŠ\0ÅÓ®Îå¯Nf¦§\'BH1\"W¼oÊp£o…€bØ!?õÿ—!ÅN]]İ{ôÖ\0®, øÔOH˜ÒĞÖöíÆln³ae€ ìhÉf¿¯§BHXÒØØø^uâ\r¹’r=\0AâS?!QHK.÷ƒ¦lÛÃJ\0ùÚ©æ=½BÂcÇ-›€«åÊ{À·2@WV[ùÔOHD£.Â!Wä?ùVl\08µ\\nvs[ÛWô4B‰rš3mçÊ»®ÓŠ\0\'ä\Z3m•êÌ£zê „Ä!mmmÒ;	r!\0\';Ú”m›¬®;¢§BHÓĞºëŸå\n¿Ğ7\0H¤ìruR1==BâcÇ)Wúrhì<!\0ˆ½L.#?õSs!IŠ:w€>Z`o§	@½¡¾\n¬İµëÃz\Z „$9™LæSêDrr`ÿ\0 Ô	Â¦4ïŞı¿õjO!\'Ò”Ëı4Õ7q\0ˆ¶é™Ì×ôjN!§:ßwS&·Ê0‘\0ˆ\r²¡·ôjM!]Ë±cÇÎRÇËId§oRn\r™Ü vğ#„ô(r9»)›-—Ÿ$¶&\Z\0áÑ¢vêU—	×«/!„ô<ë{\'\0J~BHá£\ZıÕ\0§J‹ÂO)~Şlš³¹zÃÄ pš)ü„’§¶¶öİMÙìÅrBÚb˜¨\0§V®gÃ¶l9ö.½úBHésìØ±w¨«6fs/&.\0İÖ¶Tí£ÌÑ«!„„3ê¤#rÒš,\'¯Ã\'3\0]pTıgÕ99ôjE!ÑIÓ®]#\'±ÑÍÙÜ.Ã ³×Ôi¹2™/êÕˆB¢uá‘¦lÛ¯ääÆ‘€Ù¦LîÊ¶¶¶éÕ†Bâõfs&óÓ¦\\î99áqá!$İQYôŸoÌf/àû}BHb¢®@ØtüRÄµ¾Iˆ»†¯Æ¸2!$ÉQGt\\|(››\":i’âähÇ2¹œÅ§}Bñ%“É|²c«@&·İ0QT§>í7¶µ}VsB!§ŠÚ*Ğ”ÙõŸrâ¼]N Yß„\n„]®1“»«9›ı\ZËzXBÉ\'r=S~zú:4JN¬{|-ûÕqûj¿:M¶¾„B‚ˆ:í°:Û >ÉĞ>ßÛ¢ŸÍ–·¶¶¾_SB!…Œ:^ZN¼¶üÄ5õøDlœ €eª1×˜ÍöÏårÔÃ‘BH)¢®Š¦$hÌænæê„^¶µc«S.gQô	!$Ä‘õß«£	š3¹¹roï<¡§µN~µ÷şwØ‘B\"˜ú\\îÓ™¶Á²)Pgd¿œÊ¾ÆlÛS™Ü u’*=|!„Ä!ê,™Ì¿?¡Úy‹£\nìõã[ˆ²£Õ×G\\cŸB\Z‚D¡àB1G…ÆÖ¶oÊå~×”É½ e…ÑUË°1›½¶¡­íÛ²Ù;[/fB!äôQßwœ{ “z+g&Ÿ½êÓ½:\nD.£rµ¨,øgèEH!„ô<ª°4d2_lÌ´õ“ç&}¤Á^_ABáì•~¶|ßÇÉÆ¬o}&ó·{B!%ËÎİ»?¢“A¥ú¹ckA.·M,Cì6Õ\\?´:¤³íÜ––İŸ“ÅCò!„„?êŒ…ÍÙì¿É†ÀQAs6÷„,n‹¥¦“Š]R©÷`‰ôxc¶mdÇæûlöœl‡BH¬£v:TŸj[wı‡:µ¬l®‘ğ6é™ÆLn¥ü·õ¤b1ÙVùé}…z-òü­ÍÙ¶_Ë\"‘z­ê5³>!„ò6Qßo×íÙóQY4?/‹é7\Zs¹ÿ–…µLÕ¡²aŞ”Ë‘ÍÂ$µe¡1›{YŞf¦üİÒãr«;¾†ô)’Û´ıÇ‹tõÿßüyİ›·oÊäV¸Ÿ¶Çï;÷˜ºÌ­üıõªYiÌ´\rQÏE=\'õÜZ[[¿P¿wïÇØLOHØÓ«×ÿ¸>kñ×Z2\0\0\0\0IEND®B`‚'),
(3,11111,'Dunwill ','Vidas','Castillo','Female','09156207431','dsuonpxd@gmail.com','2021-11-08','blk 1 lot 21 harvard vilage tagum',11111,'ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0h€\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0_\ZCæxvä‘ş¯\rœ{Šó‰‡nâNk×¼S>¾3¶úôÿ\0\'ğ¯!Æ;RzV±‹œS}ÌªróŸGü\'‚¼0\Z9VG“ø9Áçò­?2¥µ›7½8éÀ¯%ğ6±©éöDBñÉìí|îÈ\0p{\nêµŞjP¬S‚Q;nƒõÇ5Q‹æºf¯YYC:³6Ò¯‚9«¤…D»C€{Ö\nÜBmÕŸ|s»p>€qşy¥Y%v\\ÎN>g8ı*\ZM›¸³mÂŒÓ½X‚ğ@r¤ñŒæ±b»,Sqe$µÏ5e&2Ç¼Ÿ— &³qoVO“7[_.Ñ!@¨ç­iÃ©,’4lC&px®K\0²`œ5tew\0Üã?Z–íaJš±ĞK¤ÚŞ¡–ÊP„çå<¯åÚ±.tùm_2¡?ğ%üÇõÅYÒµ-›lƒ0îÎ9JêãÜªHºQŞšfM8³‚ˆâÚÊKã ¨V2d%H±&»+ıÎæud_&Gc–N‡ê:V=ï‡¯m˜öJ€òÉÁßƒş&©¤ÍaQ=9OfR=ÍV’5<);ÕÑæeÎq†…E4Jàc\0w4’IÜÚú”ËmÊmğy®“I×ÂFÆÄ-ÈuãëšÈXØ·–~Vô5ï›lƒîy¦ß1NÒVgi}wis.ÁàöşU›¨i¾bÛfyÈãõ“2˜Äo•à~bÛ\\1xÜyµ%¹šVØ®º}ÌQÈm¦VUä«íU~Ò†V†u1Ê¹Êÿ\0OZëm5%bjKÅºç­A}§Á{…B\0-¬1ÏOëCµÊ½·G9nL21ìGCV&d;\\2»Vn<?ujX‡™R~oÏüô¬È¤V%NU½ƒI­nVToXjsÚ¬eÊÉî>•ÓG{g~c>nÉhÛƒÏ÷Jàã®U·¸IfWl®Éèxô§#)Ó¾¦æ¯¦ı•Ìë-‰ã°=…srFÎÌ€Çœ×K¦\ZÛÈ»ÅÄ%vàãv?­@ºL2IºÎC$G8C×8ïéYNéİgfq2$©;#)ù¹çŠ‰&bgŞ0À„WGyh3\"º•l}Ö?ZÆK`·Jò§™0,¹Á#¸ªSFğ’F†›gËç.vñÜ:v£……\08e{×Maa¢ëZCÅx$`:ÇŠæo š4–Ú\\»@Øg°ã5VìJšs»3~Û$*ul8È#Ş†$·Ş¹ù¤f!› 54ƒi.>fÀ*Gë9eİö¥3Ğÿ\0:„İì§N2Õ¢®æpÏİ=+;YU‚Òí·çl,õ88Zİe¾qç¯P}«•ñl¤¤Š	ÚÊr¸õïZGßVb|Ñ~G£¬œíÏò®Ìbm>`r9İÍpÚYÛ«ÄØç%AúŠîm‰WX?1B@ÏRÀ®lBåz\n¥sÀêÄƒ‘š²!m¹Q•éš‘[$Šœ&0ê@ äÕÑí9iFú3<Å”ÄŠsBGP\r\\x·JdÚ~c½èØs‚´›¶¬•Ê£1·æ¨Ş&ÎJ²Ñ²>Fi—e\'#èÑ¾dUšZ•×t,QøÕëûÆË7<ö¨1óşµmø{Nívÿ\0W:°ì{ŸjNWM	5s~\ZˆÊ%\'ª8çĞœÖ³Ë&¹q\rÊ`™ØznÇĞx^-³ÜFç¬ÁúÖ_‹mâ52©*‰pzÖ’‹¿,‹”—6¤Ö^+ù‘#r¸ûİ@æ½CÃ–“ØØy\"6“÷€ã Òªx~xç¸Fv÷¸# ç~f»0XÆ›Qf–¶*%µÚÌeáŒ8§…»]ÊÒF¬\0è	õæœuMÙòQåçøPñTät½yBs*…\nO¥	¥¡:°½¾ÂßÌ»¸m„à¿áYvšİ½ÓºÙFçc)`Ã¨¦k’;iòµĞSéßµsÔÓNyfFÈ n8Á¤÷ĞÆ¥G$t!¼òÕb´‘K‚Ìqœv¬6Úé®Xlï[­ªÙM{yCîôşF©iÚ…¼;VÆqëüÿ\0J9o¹VŒ½îÆf·e,¶7!Ü/îœëÁ¯µf7€Gz÷ıBc,l88äæ¾}·b.t#oN\nÍ)i©è¾”,kœpÎ?Eÿ\0]æ›Á,®Qúü½\rr~\ZfÌJIæb8÷Jí‘YSãÔ÷®j‘œj{¦Q£S›š(çn,ç‰¶q×#$U9£ûª\"HÙàã·5³ªë:pas1.:\"œúgˆ<A¦4`G÷\'Òº(Ò«%ªĞíúÍJPıå®fñ¾eSç½v¹’àÄ#2ä*Œò|ç¹§Ô-.·;½ıjŞ–NìC*ÆcÆXƒé]­Ù^Kc›ØÂtåËSs«×Ş+;Ï\")äo9<¯ ¬Á.ğ]ˆ\n?ZÎ¹Yæ2ÈIsŸ\\Q4Ì°ìC“ßŠ—<®k‡‚…5hÁ6fRO<Zí4IL˜6–*v‚+€Ó¸\0ç$z×I¦ŞùSæùgi\0íÎ}ª—mİi…¼¹ØãÖ°u;Rnîv‰ ã…ÏzĞĞ¯!2K›ºB¡¶9æªj[ä½‘™\0‚8íI^53[´rpÃwolºƒ³&æÂrIú¥t–^ 7vb^FPñ“õ>â›|‚{!pT`cé\\ƒ]µ´­¸6T•a»§®+hâj~õ\\èúª¥BÔ´êl\\ØëW›im!$n\'s{ã¬t+.ëÒH	VòŒæ»8­$ò!mä¾Ğİz~5¢>Çm`÷ry1ÊŸë8$ç¾+iÂ0^î§5IKš¤,ûœ½ªŞ~è³E	ë¹F1ßd÷­˜ô8íà[n|Ììzı=« Ûy‘üãs.àAã¦©É­XG¹¡\"I$m¨øÎ?•aMÔ„½İ¯V5¡Ë5tsÄ—ÎAcœ`Ò })®å-4û=W­o@¶6zp¶…Ö[Œ:{Õîbß~gÎ\0~Æ¶&£Ÿ\"ê,„4c÷•WÃV¬Íy	6¹®cÄÚu­…õ¬‘DÛ£”aÉçQú×u±\'œc®+’ñ™>e¹à®sÓ>ô9Iésºp\\­$Sñ‰4;Õ*òˆ>ÀŸé^+é@X³t¯rÕÇüK®Xğ¾SŸ§5æ¾\ZÑ\rÍÃI F›‚şãß§çPŸ,lÙæJŸ4me­’¤›—€ÄÏ5ÑKI•^Å†*‹C²D!]¹÷ëèkVˆÛ\0ªŞ`l7 ¢É»r§hŞÃ EU[…™pp8?ız‚âÍc,é(W^B–ş•~!‹¨Tã{«p§8àÕ9O1r€¿BÅ²JÙ:ô+³ÜÃd3oğiÑ]I+±bÑsÓø~•fßc³K•%2:g¸¦3DÅò¼»6ÅÈ¬\\†YŠ‚ä:Œµ¢÷ª>fn€1ã­sğÂÉ)x¤eSü\'¥Oq=ØUßr!äö#Óş£RãÔN\r³}&ŠH•‹0oR;Uû=NkVU”ûÀg©®B+ØMÁÌ¯\0móËïı+J;Ç*²rŒ~V^A<¶	FVÔí›YŠáìÒ5uÎ›ÔôÁÈëŞ·vdu¯;´¹kyÃŒy‹‚{s]ÛŞ,\"?ñ2:\nŒ¢‘“©ZÃ#ì‘0˜É*9\\~ÏÜé±ìòùª~r^ûó]F®Ä<r)SHÏZÃ›dŠí”:úÕsiaÁ4®`¸uv\0î# lŒı*&&äüÓ¦y­”¢,I<ıj€Ø Iq*«¯$ô”lÍÔŒ÷’dòcuÈu\0qéÿ\0ê©p¸À4éa•bCŒäò wçµF=	\'ø€ÊŠM\\½ÙŸu$«r\Z9\n¦Ğ	8ÎÏçV­uÛˆæò.˜WƒØ3ü©·`‰‘â‹Ï9ÉRÕBâS;©•]xn1ëC•ô6QMÜ\ZÌÛù\"Db¼2£ğª2ÛZ]ù‡\0¢¹¤ua$G÷ÃTò*Í¦¾ñ¦.°{nJ•ÌıµDø•K„;áPYOsÍ)¸\r·†êj½…À–RªÜ°`3ùçô©aqÁà­6õ5äLÓË©9Á^¿J„ßÍovÒ¤…d8ÚAÆ*¦Û˜ãÌdH˜Îüqôª÷3$Œª¬ª9ëëI¢cKŞÕAÕ­õQ¾P“\"•2úúU+›9#g1*¨ÉÁşõ‹í	¸’ÀüÇÒ¶m.–Îû\'ÓšÎI¡NŠÂRİ?{²H½\"¯Ï¬BÇËKÀß¼™8¯=GåPÜËƒ.Yr€ëşı),´Õ¿¼’)ˆ;dÇÊ<fª2ÖÆ]ÊùVf_0çnFøV}Üd¾Ó€ã9˜«×zeÎ™r±İ U$ì‘[*øô54%Ä/ß6Á#•Õ-4Ù¤*rù˜¬…XBã¦}kZ	yk<W±äàğ+µ¸ÒZ/.fùíßŸ0‡Ñ‡Ö±.ìŒn®‘ÉÀæ®mjo\ZÉ³Çm”%òŒã.+¶¶Û¶dq…“õ5ÆÌ\Z—“Å%Úƒ]®œ¥ÛÁÜ¤ÖU•ìÙdµ±•·2¹\'Ò½CÀzx†kÛ4˜6[.ùqÆ3Ó¯Ö¸[M1…ò‡RP¸½Fyı+Û¼3·ÈÂ€£=8­£¢8*Õnæ<%k5¾ÓìÊK,â&\n0;íîq•äÍæNŒØ=q_L¸ùkÄ¯l¢\Z¦¥\n®f•@üN*ß¼…	¸îWğ÷„Æ¯s\\]¬Q9#j\rÍ×út®ŸUøo¤ZØ‰a¸¹ó7ubcÎ1T<>†ŞÆä+„P˜y äóüšèæ¢ğ§’¤¬ğæ0ÄçqÎIì5¢§dbëÊMVÚ‹<‚5-µÈÎß½ƒŒ×Oá/ìWM¼ÏVcµ$Né»åû¬Aã\rM& ÖrÃ:¡!Cğ{şíô¬å£ÔÙÍÍØ­hV-jæ8Š®6ä{ûşu{Åúi¾Òa~y\";€ê:}3\\Î—q#ŞÉ,½Û,ìxÉÏZîŞ[0ò•ÇzÂnÒ6œZHƒÀ,$…â<1?qœŠôD–%\\ŠÛr\0ë^Má«Å:¼ÈHCeâ»ÈÛË.X®$“œU·wte(¾¥¡|‘E\Z&ÑòŒŠ¯w}	Œ²U9G*}sPìë¶Ûÿ\0ıiînÂ°DwK7¥CwØ«#ñŞåxåmÄ„¹\'ÿ\0ª¤´ò—”‚»›úñUËçığeù·$jsœõªÚ‚ÎìÑ@äyn[ïc…“+v6ÛìtH¢§E¨å¶…£F<àç ×-cf’Y@EêÃ=k¡¶»ÀÑÅ!tš§4™•7}v-\\È^Ä’\r|ù¸¥Ş2ÿ\0:÷kÛãefÅÑ\\F:oÇá7®?´ætùTÊÅAôÉÅkJi6hÒØî|*ŞmÈPï1NsşÄŸáZ¾\"Ö®¬ïÉ8W{¹Á-ƒ‘ò×7á­B=>Cq9%D-÷d¬mJéõ]`‰gÇ˜ÅÙûŒÿ\0õ©ÒjU|—æ[¨á]‹fâŞòF(ì[pNrÙ÷?ÖŸslmæh˜aÁå:öÏZ¯¢h×®ÊÉ%º¸W²ü»O¡î{¥z^•á­\"Ù,-1Î<É%,ÙïßŠôãYEØóësKDÏ9º…u=)éw<l[qØVœ†+Ùb¹RŞEÑŒÂí·x9Á¡¨µO&åa•^nNèÊğzc5Ü”*­JT¤•ÇÁ¬4‹‰@:•:İK3˜Áëš‹RĞF™s‰ŒÊìˆÛpr	3ÓƒÏµQS\0“Ö¹*á”ÑÛ†ÆFhémŒ°Gó7S]&•„ÚÖÖÎ¤rÍ,®MsgP¶—N¶†‘×™Î7}=+JÉ_hd‘ë·9¬d¢™ÛvÎÿ\0EÚÖyí@ÈÊ9ëíP<íss$¤ı	ªZ<ÛVQ5ÜvÊsnr1Ó=‡øÔìĞBÓ’½Û“^fÒM±¦ù˜én<¨‡ø}xÁ®X¿ö†¨€KHş\'Šëo.´ëÈ ÒÙÚ1òÍ3ô@Î3ïÓñ¬ßìÔMgíÖ¨\"°È0Üvõyö®zPTï&sâñ³œcM++«Hˆ U8Ú>§\nåµÂÖ·Ÿ4rÆ	Lpq×ñş_m‘ÆZFcì­fê¦	 U\r™•³ÜñYJ¼z´qP”­kœ|—š»Ê¢9Ñ”)i|¼ğ:Š/‘†½,TïOO¦k¡òÓ(¾‡´èQW\n€\0:\nˆâöÜÙFš3ìe{`Öñ³íB23ÎkZÎÜJ m\n½~PF?:jÆ#b6.éİËßSZâÒH-ã›8SüªUm¨ëb%\nºV&FQÕbqß©ÉøáYà¶`¬6È­8àÿ\0ú¸÷®™·§Î²m#Ó¿µs0•d´Œ9ÚÄü¸èNAşB·„ÔìaC\Z©ßF;S„İZKn„+JŒ€ŸqŒ×=ikšÿ\0º`ÌŒzŒÿ\0‘ÓÚº)¦²ÊÍ„T89u®~K˜ÇI%bÅN_çõ¡¨¸Øª*Ìîde$§ÈÍœáKjFùØQ‘õRG´’y›-÷WŞ¤QÙ’ ¡€ù¹éQirOk¢d’æß³ÁµM,\n£÷l1Ï=Ur\0wÁWÇ¶+I%€G\"M±¹Ã#ĞŠ›Êúl&£c6X¤‘	ÈpŸÂ’*ªÜ0ŒBqüërÙ¢PáHÚË…#‘P‰?}–ÃĞU;ËFf¬´FbÊÅˆÁçµXY$ÀxÀÏJ¹5¥»ùsÂoœ²£à0è@ÍB–se$p7czıjKFKD^@pD¨şµ*ÖÎÏk9œŸ—ƒùÖ„ğ=¹mçƒ÷Cu¬Ù×,0j—bW¼ì[I‰P­\0mÊpc\"µ­<[\"¾Û™UQ´HŒÇÿ\0=k-<µ™Y ¡$ÇId“dˆ0P)­w\'’úƒg­Ø_Â©4ÑÃ!áYÏÓ=?ZÓÓôØÄ“<„>FÕç·­yZ†‰³º¯¦xü«VÃ\\›OùáP‡ƒ³~GŠNÖĞÍÓ’Øïu\r9•IF%6ô¬G°¸v“ÊØs‚sõ_Oñ«L¬³Æ&NÒËò0ú‡ğÀ­Ë\rCJ¸ÉŠìG!çl„)¨Õ1]ÅjcÍò„Œ³ÆØÉi—DÁP €!â<õî?ÏZëgÒ­®şiW,ƒÈ¬[Ÿ\rÉ2ŞbØ\'$Ë¡\\“9ûİâÖh.#¹M¬~`Ã˜ç\\Ö\\‘L¬¬È²d\0X\Zè¯-îbb„o¼Ã¯5•tİNİ¬½1Ş›Iîm	³Tò®pÏOÜn•^ExF%ŒÏ\\×QŒ76Û®œ£(¬ëë63æ9±ƒ¸ƒÆ?ô£½ÕN†=¦øîUĞñÓÖ´!Ü|§pcÎGLÖ|±feÊdğG¥[´4c$°—ä”É­(n2#`«É=*ûAmuP‹¹—ï“ŠÇİ•U`dè9«ÜIªKƒSÔzV<–ÙUÓP½Ó¤³/ä“\"ßÓ½>Öæ$Œ£\r¥»¢®5öö\neôpe•Sœ~¿şº^L¾dÑs†RŒıá*[\\İNöÀ¤g=j¦ö’¨&èÇ#¶*m6aı¡á°ïÓ×Š—»¢Œ¢ÍÅÖÙ\\XjS´€ àóÁ÷®Z+ÈYåòî;U væµ¯îd—€àõ#ùgŠçå•f‘ÑT7\0 \0~UÑ¬£©Ï\nnZ£N¿|ª¤œáíWõÍ!dotò2«4,zòrEqË$¶îÌQN:ƒ].•¬Dör#L†ISj®xcÎ1ïÒ²åê)Å­Qóş¡!Mrá†W¶wu1ë]®š	»ˆÊpr=«šñƒZ½G\00•²@÷®‹Nf-ƒ–}¬yÇZUÖ…Ñİ2\r·ï‚yæ½ÃL<µ\nNNsşx¯-y‘á+\Z­œï<óĞŒV­®·«Z§É4(M¨Oó5p~éçTÒMÌXlë^+®_jq†ÇïÛ‘ïÏõ­	|QxÖÇÍ¾åÇi6/ş:qbäÏ{,ÌYÉbÌÄ’O¹­me©›¹ØhWZ|PÈ“]G±Ï+»Ÿ~t7ÚÆ‰%³I4¤cÌKw Œsí\\•rmæe¤hÜ	1Óê}+rçÌa°JFáëZÃX’ìŞ†{\\¯$/ßc‡rœóšMBÎâ;X¯_a*l’NàF1ëëTîá{ywddt\\êW\r¦ºr¹\0õïX5{¶ojŠ:swº1’kĞV8“OIrO›wJókGÄÍÉ+¹³¸·¹Ó^c™G8Ïn*çœ/¡ÙY¥c?Ã†8õ„,p©!ÚÇÓ‘ık½‚î%œ•o—n8äf¼ëÃr!Ô£.w!G5ŞŞÎÑZ¹²Š?7ª®:ñ¢)Ù&gQê‹w\ZŒ@¥³ô¬Û½M^ÎL™=?ıUÊÜkÚ›¾^å²½Æ?ÃŠ­fÜ’‰¤w#¯ÌI=};ÕÉ÷8İu~X­GKª^[İÈÊWvÒ§=½éö7y]w¸ 1ì;ş•Vk&°™Ë)’&å$=ê×‡må¸Ôšãgî¢R¤¨ã\'ÿ\0­š”¬eWŸ•‘OÖ\r$/²qÑ±Ïé[šDrYY¼®¡Ã¨eAÉ&µ$·“F¬G?8ÍIbÃtŞaÈ+MQ¤£.cÔuõ9~xp©òù;ˆÏ±¯,ÕPÇ©İ#à0™¹Í{¬¶ĞÛyÒ[ûCd«¾x&¼?Ä0=·ˆ/’WÜşnâAëZŞ\nÏC8ÂW»4l˜6rŒ•Vèúÿ\0­miZVl xVY¤RÄ–\'¿Lgt®{KmèÃ».?Q[vwSÛG$*rµ];«Ù£ºåhéUîĞ°H\0)éÇj±µ°•q–WÛ×€q×é\\èy¯kÈB™Æ?ıu4:……•ËFâ{„ä›°G§øÖÑÕÒ´ud,Ó¥¾´MvMÙµıÜ°ª3Ã>µŸ7ˆ#Õìí£½2<©\'Í&G(\0úôü¨×<Möí>m>0Ç6…ÇÌpAÇ•Æ	B\\¬ap àäõ¯C\r>OˆÎQ…Xz¿¥iÖ\Zõñ³–éU\r¾õ}Û¶uÈğrI®PD‡Tç$´aÇFÁëQE¬­œ¬Ó@ó3¦\0İ´{*%ŠæEeE\\õÚ8®ê“N<×¿‘Ë„§(Vj+İ¹³j¥âR¿698®‡Mr»C‚	<\nçìF\nìp1Åt¢vçpİõæ¼yÍ¶Ò>“Ù8ÇS°Ò”É!W{e¤‘°1ÈéÏçPk³2XI±C$‹°o\'ôë\r¶ÖÊffíãœU;¥wó˜mQ“™ÿ\0&³œ´±¥\Z.¤`Ûë\nØk•\\ _¼y_OÓ½o5Ö«}Y¥s`/–™\n§ñš½g¤GxZWS\nrd9\\ı;š¹}JZÇòÆ\nÄ~¤×\'·÷¬jaiGMÙ†‰#N¨ò•ÁäFïj´×¬WŒ.k:ywœ³0ç8k¥ğÚZOö™.Ğ\\ïØÿ\0Q¥RjÎM–áËmne}±Rx¶sZšj›T\\‚Ù–k3W¾·ô¥´b;hò¨\0ó[:FEŒ`)ã9tïıkÊÑ¹p‚ŞÅØ’R²óÄÖ3øyu·™¡\\•8ÚO®1Së÷ÏmjÈ\0óap9Ç­qsÌÏ4EÇ\rÉb\'úVÔh¹&äyØìE8J4»ƒÄsÆå<‘ÜW1ãL&Ÿ¸)e.9^´Gx-íË#üÀsóu5™¬ê+¤˜v‘2q’ĞŠšpj¢]9Ò•)iªfìÙ…c İw•—ä™¦ÚT6ŞF#ñ§]yûÈg\'$a»ñı*,íUR£v:œ×U“ÔõiŞ;úlLç…ãñ¦7HÖXÜ*c¯sÚ¥‘İ·ªps´é§2Æ¡óµpªN8ª[÷ljîWY&[v|Ø;ÙÀéS½ã‰å(¬9âˆîÌ\r6©R¹y©¢”LÂ2’ÖTŞW°âÓ\ròê6¯Îq=)é2–¸!¸ÏµCpJÒ´°•*v€yÜ3Ö‘­#ùÌ[£Ç^¢‡+uŠ¹u¬å*$fPƒ²“ŠKw\'Šb>np9úĞÑŞıL$P~bçš©pÒ£òNÿ\0@ÕŸ*\Z“z\Z÷’Gr$@¯àïì+zöÛJšÌ]Ilc€ñ|¸8ïÚ°.äBD€c»úÖõµßüK99ËÖ©h¬ŒªrÚæ\ZÚGìEIØÇ~¼ÿ\0:¯{o<?¼0<iÜ•ãó«‘}è®&‚‡*äğ‰-î#İ¸\nWÔ|©ëÈ»T±+“õ¨ÈdØ_@+~ÚÁKÛÆÂ§>õ›=Œ–rù‘¶à½ıéF×µÉq×B5;_\"?˜õÏzkË(;‘Š)àƒÍ,,Œ$8lsŸéLvI0(úœš¤¤™\r>¦¦‘¬jQ]Çim;)f‚rœôÈ<\ním5ÍI#cy¥ÈÑ¡9–ütÿ\0yün[Ì íí^£k«Z=¬>d˜İÊI^0ESm˜TŠVv3umSO½Ñæó¯›¹s|­Ã<µÉÜK*á‰ãpÇó®ëRĞí.áy`‚1qŒ«7úë•½±e³FĞ2T2Œ{Š7B…‘Nİ‚X ô4šÅ”“ÚI\\s–É\0Š‡ì¬ì)1“Â†›s,À¥+a~Såœæ’vz­]Ñ“,2]ƒLf­Ä·å”Võ^)öq¤£f~c‘ÏSøV¬°†Óq–L†ÇnÕ7Iİm¦¬Ì±\ZM¹P@Cgj²)I9ìËZ–ğÆVEPµsÉÏQúÕ[˜æK©2>`¡€öâujfé§¢\"ó2Uyîi\'óv«¹ñœÑçy`ŒŸ¦)é²_˜’\0<Ô]KTdã(³FÒö“d±mfã9Èúf´Iv³\"§9\\V*¯ÊH]ã5\0¸t¹s‡oqÿ\0Ö¦¢¤dü‹º­®ÆiEuûËƒŸÂ¹Ô8*ì 05£Kº+1Ô«r1Ue¶*Û\nnÜ:Ö†ôegbt\"‘ö²7ÀÏÿ\0ëVf©n-%òÄ„I€r½F­]VL`“’2	§]Æ’È¢l°‘@#§@ô¬ÓKs¡Å6yN©(Ö.VåáÈÆr?3Ö·t©UÖÑ»¿Ÿÿ\0®±<mj-üOp¨\n†À{ızÔÒ˜;c½9üj\'ğ¦sÂ>û:;ÙÂ2‘ª=j²È.\nìóÛ5[_—i)Ã0ÜqéT,ŒĞ$nFà÷«¦›HóëZ3v=‡Â:<Vú—’F­-À!Káøó\\vµ¤%•è#„™‹?…ºşF½NÂ5G‚Ñ#yöæ¹=bİfµp@Êœäö®¹hzoŞÔåÜÉ8Î;c­N.\'·M‹$ç¥XŠU‰°SvO$v¦_NUO/¨Éç‘X^QFŠ1nÆxyd‘šU9=I¨î­ŸìÊ|£8õæµ¬ì®î¯VÖ;yŒ¥şe \0:óVu.]>Şö	¶ì5\'#Ö¡»­MVçg†˜qxükªÒ¿t‚®{õÅr¶ÇmÊ`w®ÇIíz¬Í´îè8ÿ\0ëÖ-èt×øTŒí$WÀA’8ï]ö¬|ˆY P‚¿ù5ÀØ®ÍRUrFÇnkÒu´†ÙŒªÍ!—®3Û?6Ô‰Û—Vp‹g5ÃÈv³9äšt1A\räfây#À!ÀÇ¿JÑ¼š[‹pÊŒ¤tÙÅgÉ¦_˜~Ğñ‡§#?—Z‡ï;3Íj÷nÙ½3Ù\\éÍ@Nœ“Šæ­Î§ax–oV‘²\"È¾µ³¢ÜºBÖÓE¤°r={SŞŞ%^îHF@Ï^ÿ\0çëV¥­‡MÕ¦Í\ZË	kukŒ«‘Ê†È@0%8\\+2ËWk»–ŠyÂn8A·ƒíŸñ­eµò‰%ØæµiÜºs‹[ƒÉ\Z‚0¤â¼_Çyÿ\0„²ó†ßøèÿ\0\nöy­“a#¯Ö¼‡â/¹@ÛZ#\'Úµ¥ñY—h½Ù“§ˆvğU7~DV¥û4„µ¿eéà:7®ÓïRêà€7v­aM4ŞÇ=KE¤µ/_››Æıà Å3OIÓåhˆe]Ã¦?*	ŒÑ•\'täpj¦¡a4X’5#»míE9Ë®†¢îãbÄ±RF¹X±´æ@§§©ªz†|×¼²&[r\0rÃOÖªZ]ÜÚ±trCuç¯Ö¯M4W@½„Íg:Æ|ØÜ€²{zŠ®¥9+lkN\n÷z¦R+mo,g1Égã(Ä—ğãšĞÓcY[¦Õì+:Æ4+åCJÌ2ÀÅÊıO\\Võ„À\rÑ:°9#¡çİ*©BÌíÁàg^WZ$jÛÁåB{Öö‘ùÉÛ£†\'¡®nêy#(ç‘üCßñ®‡CÕ#“EÔ¥X£ó`ŒI’qĞò=û~f°Šv¹Õ5*stêt5o®£Y¢·„çƒ}9ïRC©ZYÅÌ¡Ès¼×>¯+ÊÌîŠÅ·(5Õq\\8SÛ}sM9;!<T`­ww^\"–ë•yg åy#Ú©J¹û¹ÌŒõ®)µ£Ì\'ÜÔO©DÍ’2Ş¸©…ŒeˆººG\\oã/òÊ¿]Ã¥EqªÈÑ4Qİ2ÆÀ	œ·Ô×-ı¤Š¹\nY…1õBGÊ‡òªPoC9b&ìoı»xØ×3`sÀşº´šÌ±[,QÏ9A÷G™·®EµX`\"†êpj?í	#Z§J[XO;]3°}JW%ƒ÷‘Øÿ\0Z¬×ãhŞnûƒ¯×­`Eüï²8ev?ÜŒš»‰¬Ş‘é÷nG_İúÖŠ=›r¶¦—öÄ€¸ƒØ«UgÕìK,3’MO<K9Âisª¬äÎ¬†Úìh^g´…1’L¤‘øB‚N÷+™Zçe%œJ§Y½ÿ\0¥b\\Ã4m¶$á{™®…nnwrô$v¬ùfFväıíRµ‰²œ–¨Æ’9¤]ã# 6¯Wc#òü¼“øVĞÄ®È¥I#Jq´”C¼{ãùĞ—*±¤kÊÆJÁ%Ã„€cŒÅL¶æ8To$âã¯®)ÊòDà‡Ã’O­Z‚[®à2††•‹öİ@’(â17ä‘ïÓô¦Ë#ùÇdØr2ãS\\$Ñ„Dİ´ã×Á0ÁQ„÷õ¨qw±¤j«ÜšÛPc„°$—ŒzU Ş]¼Ù;Š‘ƒËg+!¢üòJã¦*İˆYÕ”®TòƒÜPÒè[q{î¼·İäŒ#ÆîOOoÆ¬ÛDóÛ!Šä&2¸ëÇÓÖ¨ÜI·6Î„¹ãğ¤ŒÉóWÜ/Ê¥ßD‡eÊiMëfL²F>fªàÕa}ä	ZXİQ±ÂüÇúU›;³%¬¨Áˆ+»ŸéU¢8dI˜áÀ8+ƒÇ4Y¶Dw±£jÊ2ZL`ƒïQ:$²²\0Ç\Z}“30b˜Øa²qš©1X®J£2í<{sIïq­dgÎÚÔpÍ[†1\"e„áXä‚½U½HªÂD-ÉïŸĞõ«C8#[·Î»Ä™õê¨u—-ÿ\0gÃ¹%*Z=¤\0õÏéZÚv¯œiÍ¹r‰å¬±àñêõ‹l®U‘[wLÔá˜7Î£xƒØÔİ­ÎWfÒÊæ’¢ÛQ\07X]qÆ1À<Õ‰`¹··`…§ËsÈÿ\0\Zã!º]À¾\nûŸux‚h”hióÀ¸ÍUŞ˜õ8éV®Õ‘„•OÅ1Ímumr#6³3H¥¿`Ÿ^µ›\rä¬Ñù®ŞİksÆ\Z¥®«emög,ÑLÜÁ#o_¥rVò¼wÂ3Î\0¦×»©µ?y#ºæ7BA\'ŒsùÖËK\ZA\ZÅ0ÉPpy¬S ë¸ƒÛµI)Û¶Dbp6Œ{Éü++]hvF]¤	Kİê“z”ëõrS\'sÇO>¿—5—ùvBßurp8&µ.n,oíb+$‘¦	—œÃÎ•¤ŠºF{&7QÓ œõ9~Yüª$ù‰ˆ7\'¾zU‘\0û1\\~ídhÉ ÷ëT¥SÆöP0z«gñ©J×6ZƒŞInvX­Ó¤™h¶Jqü\'+¤V+’K¼9­ûI] Pí*¡O½QÉZ6ÔãM6Yƒ+ßéU™ÙfHXm à©ê8­[­]ŒSÄ\0N	õ5^şt¹uPêrUGùâßS¦dH¨³nM-Ìè¶q¹]Ì¬H#®?È©.¬æŒN¥yb¯ş5“rìğy\rû¦€M	&ÍcÍÏ;ñ}Ä—Zô“H1û´Uõ ÿ\0­\\Ğ™ßO‰‡ğ>¹Ïõ¬e¿Ó‹¸<­-RÖ,ÀTÖ¹©Q½v75È·][Ÿá);ŠGæÔãƒŒÀ0ö«z±\"	\0ËÃcşNĞv¦¹\0Æ2Øçèj©¦’]\Z«ßg¶Ø¶ûUlµÏ_Ã¾u#½nişŒGP¼óY=ÉˆrY¶ëÍuKXÜá‹´Œı:ÇNK×4»HP\\q¼µ_Ä0E\rõ¡ËfhÛr¸Ê‘:}MT³¼1]J€ÑÈF¨×dßqit#P6²Ÿ›=9ÌÔ(i©w×CbÚâ=±JY²Dã’„a¹üª-M’õYòÁ¶ 1PGàsæıôçŒªÏ\0Ê¡8œäj¥ÿ\0Šï¯í³¶ÚBÛDqı¹&¥C˜«¸èjØƒ*Ïlšì´hYşd9R@\"¸¨IÊŒğN\rwşrñL¸ÏÓüæ¹j«Hô*ÆğÔÉ¶„§ˆ$‰±Ÿ5ÇãÎ+Õ^ÅŸGyrÌbàÇJòùÎ<E<‘à3J·Zô¨ÜÃ£ÛK9UÀV*2GËŠ¶–ÆU6¸š>‹€É<aØü¹“æ“ÈôíZ2éĞ•Ø‘ ÇµWÓŞ+Æhíµ\0Ì£qP¤€õ¢9’MXXı°É¿8e=ŠÊ1è`¥ü/C¼½°‡ÎŒŸŞ¯@ç>•³Y´i®È\0óÏÒµ&ğÍî§<³ÉåÛ«•Byf½Ayá»+k…Ô3$n¥PNr0=ê1:ÒRò!µÓím÷`rù5<Ş`1£.p+I¼´È\nÙ\'û¦«Ü)—Ëhã «d†âª1mÜÓNˆ§%´Ãæi\0\\öäÿ\0âòüC.X½²“Ç`Hÿ\0\Zõë•”ÆNÁŒr	¯3ñ¾‰©j:¼öösL‚-¤Æ7cæ$:Ú•”µ­N7OÄ8“rğ‹½^}Mˆ+º^åWù\nrx/^¹*©¦Î	éæ:¯ó5«oğ£ÄwC,¶Ñ{I6qõÛšÓ®äòÙœìú‘fÜ9ÁÎw¥Oˆä·?9[ÿ\0M:şuÖYü!Ôe‰$}FÑ’ÕféùS&øimm3-Î¨ä¨?r3ùšÎMAê)4·8ß·Áqx$†Ì#î`l¡ú‚1V^Ú&§¸ŠÙ;\"^‡Ó•×é_ÒêGò.]¯š¹cĞTz¶‡•$/t¡C7@NãÛµTªÊqå¾‡¡–Ó¡SŞ{œÅ¼ÓEëEd…ÌØ­˜/Œl¬I9êµ§á-5¯ä»„D±Îª|©ˆfAÉc×n3ùÓ×Ã³È¬ Š6|ŒœqÁä8şu‡:o•ô\'6–2õÔ±o€va¸ ÎÑÿ\0ëÀ£Ã\Zmôë¨E=´Á¥³u€2Yø#½+¶±Ñ¼…-z£Ê+ÉC»i÷­7ìQKhUå¤ªòàñÇõÓJ«R±ó˜¼L*âRèx´Ú¦“ì	#ppD«¤Ó~ëºŒK3ˆ!S÷L¯Ôz×¦x’Ñ¯UEµ¹“æÜ\\/Nj\rösªEö§’Q`àöãŞ¥Ï™ó#‚¤ç\Zœ¯n‡sğ’şÒØÏq¨ÛáHR2­i[ü‰•ZãT›ã\0tÏzïnu„¾½[4ˆŸ9ù³Óÿ\0×Pj^İ[´3˜¢t}hçûÆÛKC–á_‡ãV‰¯f’QÎÑ/\'ğ­[/…Ú*—³v8É2ÊÄÃ5§£é²™„ïò3.Üº×FĞÍ³|Ü.)¶Âº¹‡oàÛ¢¥Û±‚ë»ùÕ—ĞtËk›a”	óÏ0k÷Y¿r[,Î$BPùdœã¸¨Û\\º2ŞbÊ£\r¼zsEäõ¹ÖÔëåû- æ4Ep´ŠQ®##@$W!ÅÃI¾Gûç ±è+vfÁİ! ƒ¹*0~´…\Z‘l×’ácMrZ­»Éw%Ã2ÛqŒ\ZŞ·mşsÆü¶*¸_­sZ¥ıÔÓ$Z&?êóBnáS•AÜæíÆ×‘¿Ù9â’=IU°û²§ •çëN7Ñ(,‘–Æ8n¹íÈªÒÁ<_4¶í†şèÎ*«Ihu§ôîbÃ7˜©çŒÔ±Ìd‹i•Tg9\'¯µRßG‡‰ƒtÃ!üé±d9F\\dõëME§ nÜlYUË—,§#…iÚJ°„.QqßŠÎ{V\Z9\0P1×­J‘\\•r™!NÖ“\\ÚŠZj™<Ò˜I’Tvîù%› 9ªíö„lí,G\'”Å•Ãç`äâ˜âåŒ˜®Sã¥Z„ƒuKrâ³Xn#pÚsØ\n³E©!›a€N;Tè‹Õ’ÎYÑ]Šäç8ã<ÒZ\\y2…`Y†wu_\\T.ò\\ÎÁeïÎÃ‘ME“9ÈÏSÖ‰ZÅÅ´¬Ë>kC˜Ê–İëÔRJ¢à‡$4\rÛj0°Ë°=ÈŸh•gŞËcïtã­\'.Rã7ÌZûi‰Õá—!zóøÔFw‘˜å²	5s‘†œ¦³ ¸¹‰wuBznÍEîµ5Œ¬Í9ØH;¾PrzÒé÷ÛdXÕ°„õÎ9õª~y-çæ#½Ğñ,÷é•§Är—2µ±#†ácp®»OÌò\03œw^XDdí6F*(oìÖİ3E2ğ8ëßõ¦Ïvn˜ùo…äœñRck½1y›ı¹şŒWqg«CöKq3m%pÄö<Wç$ùw6ëŠÜû:P•än	\nıîê“2«­Mû‹\r&ÿ\0+,PÈÎ7ppß˜æ².ü%§§ÍÒB}Îà?¿­f”@P™ÂÉ“œŒ0­1}*Eå1G´\0ääõç4s=®f©É={àû½ÆHÙfSĞ£mo×ük.ûG»µ„·•Bä2?1ÅwTû,`oWeÎQ»zS4û·»vŠcÇåïóÅ\'º5Ršgœ$.›tóR¶Ğ‹óôäWsâ\r#e²L6³y˜c·’8æ¹ytÙÌ×k±ìOj%%ÔÖ9ŠHÛauÜpÀoZ†O1ÿ\0ˆõ5kËxD…“iÛŒŒàœÕ`×Bã®ry©RLÕT³Üu½¤·lÑ .àg±ë[vö›\"ŒÈ$ £ƒœw¬›\r:[ëèâÂ1Nvwş¶+<2É½Ss62ÆsŠV¹5ªßFrº„n.X\r¹À#N}ÁĞåƒm5¯x‡dNà	›9R¸ã\'«½´’Ç½—+íÒ¥6™TêG–Ì§m|ËtONGEUºX¯H„‹¿ƒ<ñĞâ¤šßÉŸt``÷¹¨e¶İ\Z;£Œ’)4¹·5æQ<ÛÅ:Y´–	bÎ=Ìdu=*\rÑÍ‘Ê°çëŸğ­Ÿ‡ŞÅÕÃFÇNr?JÅğì¡ÀÚ:·ä¹…ÿ\0}ÌÖ[o:ÂÙ±òÆ0I=ù^ÈˆµxÎñµHoÂ´ì\0ŸI@yP#ñ¬øQÀÆÒ¥rjé^Ö9±Şg±i2n@ü}«6òsgtó®	‰·àôãš†ÛPM2Ë73FŒd;–Åcßx¦Ëíá-9n~N\Zé¾šj½©æı¥şÒ™İ!Üİ¿Ï5bîf6vìÀ|³\0ükŸi®´¤#sì[Ê\0şèğ3Ó\ZÑ„\\1Û,NËÔ\rÀsëJs¾ÆÛhˆ5i‹Z³¦<²88äÖ2p¥wozèîlå’//ÊEİÎ]ò•f>€èÙ2	ì3P¦’³3ÙÀA€~SÇá]÷‡=#m…—;ôâ¸‰`Ğv±õÛøBdûs«</åÿ\0Ö®Y$å£=\Z¾õ2•òõW$ô çë«ê4kC6É\Z Ç‘&=ûr?Jæµ8¶jòGÏÌ»¹êâµ4ÏêW°£¢\'\'iÏNÄU}JœÊ\nÚš©áË¯²‰c*TÇ¸¦I\'LTzQj)p‘ 3ƒ¾uÑ½äV€½º)Eù¾lÀW+©½İÍãA.ÅyÙ#Z†¬îŒ=’Jèè/n.C5¬’™8ã‘\\0«j`[†1‰AdzëR;Æ²ûMé)$Ÿ*‚0~˜©n4¬t‡yrj’r;Óæ•ô48ÔŠOBXå…¬Õ¤uG9Ênæ¢o$Å›ŸAš³jĞ`Èn=ºÕ+˜0É·å÷=+E\"ífs÷÷–éû ä¾ÓíŠ­	»“k:îÎOJÚ{?µBë\Z¿Í““Ÿ¥i™á\\fD3ÚˆİîCæLçšÙ–dc1†çµm*JcTx¹<TwrDêÜğË´qSÁ4²@­[±ÁÉÆM5£-êµ7‘+F«ÉÈ$ô\'$×5­è×3J÷3HK¸&3œwÏÒº»‰¯M¤Œ‘üáOrsŞõÁËu|¢h\'yŒ„Ä¥‹öçÖ†®sÕœWÄ®ZÒ´»é¡70İ¬qç:“Ø­´+MF`n Wy›ˆ#õ¨tm*î%îHVÈ1cî;şÑE¦Ì¨…+`g#§­BŞÈÛıœn´0âĞ,t9$¹Œ?–Ñ•e0`}r3úö¬xç†é`¶ˆÇo.B¡9¿Ëò®ëû)™v¼ä±ÍŞh†}fâ)&*„|Œ:óşM&šÔª•jKTÌ˜lîînü»tsF;=ê/\"âÊú/´ÂèÊêHnø#¥w:=½¼¶äIˆÎÙë‘ßèiÚ•­ºÙ¹uDA0zµ¬.Ù„pë;õ+Ü\\,ğ‹j.q×ƒŞ¹íBÏû3æërÎÄì^İù­Asi$–qG\"‰å@YG98Éúw§İ\\ipKLP¯óãœqœ‘ßµ´1\n3Mşx—PØFùdùS¦=ÿ\0•vP¥Ô04I\0îCoë=|A£Ú³­Ù¶Ø@-ş}éÚoˆõÜ»ã[ªŒu$œÕµ­Ì)J1\\›˜Z…İá½h%œnVÎÕèøÕñâ[€¢9#ÆæÏçVá°´MBK‰¢iÈÎ¤®zŸÎ¥¾³Ó®O”cÉXÔ.ï­J	İ³7I†\rNáæ(ë\"¾w¨ÊãšØ»·jÊ¾Q~ƒ÷JHüj™Ó¥ŸÈW–ÁUîùş•¡¶âSòÄ#PsÉÎG¥XéÃ_x¯6‹ö‰·O0É\0dÙíU.|2<Ö–9‡–1ò0äúóÆ+`¬çï‘Áãò¬í_Pº´„”Q—ó·µ1VéÅî>ê}7J‰TÀwÊªòHç×ñ¥Ó®tË»—KXb2IˆÔ×4’Rş1<¤–<œ\05ÔXé‰f˜†Rrş!şMZ2RmÙ=>êxó••yç1QÚpùfUNAvè8?şª¯Ï’‰™‡w&«¥Ê)’(÷zàzÓQºĞíI£DÜ«’9ÏµÏj	Ö…Vl+9ã¸úUÄ`Ï†÷íôªrª6¦Ë¼‰hÎ?‡§øÕEYîiI¸Í6jıŠ#m©»æ;xæ™œËÉYJ*ºœ`zş?­j¤¼n§(éÚ™÷d–7 nì­gÍfkuÕjûAGúšqˆlí\\–\"ŠbŞ F‰óò{àu©œã½‘$.yhˆ\'¶ó¥¹* 08İÇLhŒËqó’ª	\n¹ê=)×*ÍjŠÊ¼ePx“ºÔ§}3oªÌ¬F¾”‰o/˜\\>OK~U¦Š¶”Ü­Ôæ£š‹¾PwøñM¶÷*TšÙ™øºG(e¸êO9úS]îS\0Âß8Í<E)$ƒ™°rG¤’;˜­ÁÉ,%`À·z¤Õ¬7I¢½ÅÉØDe=~ZË7†	½‰ø‰5²ìØO1şcÎ&¨Ü«¬¡vFà‘’y¥EÙ!òµ­‰mæÛ	,»0äEF‹ç9;7Ş$ã=º	Ÿ`¡Í(È²Â«›A+’»HX»)<ã¡«ˆfF÷5:È2•ôu=Ür§—\"ÛG“noÕÆ©ÂĞ+ynÒ¡<ä~_Ö¶íä’;w“Ìw(Ãœ×=Éå$H<\0zV³Eq†)¤h]áXŒıj[w\"v’4£»ºO,	]¶çnõ\rüù«0ê(”›x¤1ÛxÍbÊ\'DıÜÛ‡«şµ-µÕÊ\r“ mÜ§¡¶‘“…Í\'»G“»©îŸÊ¶´«»e–6¤ŒHû¤¡®tËå°F}Ç\"¤YaÁ \0ÃÔPå¡.7V=ñRkx™°TJÏÔVn«£Ä°›‹pr:¯·µr«:Æs»I<íl\ZÕ‡VºHRæMùÇÏóîL¬÷1P”v(›K™[#€7íTç±‡ïQK¢µÏ‰š+†[E#(Š¹ëšIµ+Ù·º4Mr¯§=ı++5±²æŞÇ560+½Ttùêİ¶¥ªéè©o|ûcË“æ¯J·\"[Ëo¿vÓ»¯LƒPII!Ä€ƒÈÍZ›Øº4V¾Ô®o§Y®V1&İ¿»ÔÓbº™NåºzVÅ„¶X´w–qÜ;HLeñòŒœÒø›HÓll’êŞcüíLïV>ƒ½ik«²IØˆ]Aqò_B®›¿Ö­[èñ_ZÌ,å_gsNz×&—¹@byÀ­];U{;Œ	Bd˜ËnÆA=k+4ÊjGñ+J{cn\'Œ+‡esÆkğÜx¾<ç1çØ?ızõ/Š·ÖIrÀª«ªò>ñÅy–\njÌ20ÑœøVşîè¸;µsÑ|=lo-–ƒËıæ*·o¥(·´¶ûBIh0ïç=zŠ‹Aó^Õ„jYÄ¼êr+XÙ^\\G00¬kyÁÀëøÔÓ—»cUÔîR·Xvìûb³§„É[8mÄŒV¤¬àª}*´¶¾\\’s´äŒVÜÜ§=;¶kµ¬gc’pFGãZPØEoàG\ZpÁä\'VŸ‡tËYşYî2ªvıÜdqÎ?­høÂÂ-%l·²ËòˆÉ,Ÿ¥_5Äã®ç#=ÍÄfŞ@Uo+·¹?Ö Â» àÔ©¤¤ 4N\09©Ö\np8Åe+\\•~çŸê„G«İS)aøóık¬ğ“\"êvÒe“¿Óù×7âX¼zæ2˜ROà±áw_í+ ã\nÀ.?à@\nÎÇ£zz›Ş$ùõÔ”õˆÁ…v>½UÒPrv³½r&òÓRµ*F‘Áúnø~ş4Ñ¤à‡<wè(sj&\r&¼û‹™\'…¶,œú)©y*\"ª¦Â\0ê*8õ«G`hSPÜŞ¤YÜFNJÏ™Ü#Êö8šæa‡“×<â®\'Ÿv¥´rM`¿ˆb{é¼&O1ÀÜÜv¥lÙÜıÜºæGÆ<Ízê\nQ’÷I¦²‚dp±î\nHÜ3ÛŞ¨jù´ÓÖxcÎ0¡39é\\íÎ·z²Ü$™uFÛ’x5.‘¯¬÷­üåwüÑ\0@UëÁ?•hÒèsûu~Võ-i73ŞO$‹(8=­hâİtû›\n„ŸJ–P d8á±ùR4[G9õ”d\\=İİË{\"1l\0n=*½–ØÑÕÉëÆiÿ\0e€)ˆR{ò*XR[!dŠÄ÷­mÜ/½€ß[„`Ó¢\0>öìcÓšãn®~Í«És¤Ì:3‚İºŠè5½1¯…ºG\"Û¡Ü•íÇ_Óó¬ı7C6‚êK›˜Ìl©ŒàvÍ)k¡„ÕÚ±gJŸ}¼rNx$ôÀ9µWS8øFÀ95o¬é7ÄF’äUËîùqíÏ_Â©\\ë6ÖÎï)ØNÒvt>„SI­\rc(Énoÿ\0hLäù6Å‰\0Œ°¬Èõº¸y„ğ«†Ëch¬›?èrÜ:}©â‘®]>B~¿ãT³ç¼ÔeòŠ9Ç™ˆØ`œôäÓõ&SåW‰ÒÊn4ûµ¼!†åv’‡åÈñ©\'mCCº–6YBîC¦rF+•ÔR†8ãº2Œ`Æ¦MË‘ì+¡ğÌó}„¬\r¥üÆ/‘ÉíŸ^(nÏRUW\'¶¥]_ÚC*Ì-ÊGåTîÈùHÇaş5a¼5ä7úUĞ;”¨9ã¿ãQ]Ş\\µ­ú	Úİ£¤fŒ‘ÁçXVúÜÑÜÂe‘åRvbI	ÚR*´».²Q¨¯Ôè.´‹qqÄçs0Üç’kCKÒ#°¼Ş\'wÉoıu\\K\rÃf!ç9éY—ú†£¥İpìêFPÈ8Ç§ùõ¬”Å:tà¹ßä‘A=ª¦¡:GÌAfô®Oş²¶aJÌ³¤Iòÿ\0VkË‹¨CJdt9ÛÔâ©¶G·ôgg£İC>$*†+Ÿ_óı*ã]BµÜc=«•Ñ\"ºx°¨¢~órOë[åmãˆ°‰IÈíš±Ó|Êä·p‹y:k\nëU¶rHÉÈCëS»À3æ¹EƒXZ›iqÛïa$#zf„õĞs’„oÔ®×²ı«ísÄ¸û§ÓµvšTÿ\0hÒín6æD¬}«\Z!¥Jª%„>Ñ€7r?JÒÓî\"·Óã‡Êp8\n8“ık[İls(I¾dÏ\'´hZF¹Ia(¹ó«*„[¥ÌwQ1`wílã=\0ü:×«ÛÇe¨4Pğ…Šç¡çüş5šìàï™Î+Uk­AVnV’=N:$ÚL†èOÕiå•îŒ¨é•ãµæ­yv\0)q(Ús0?\n±o®^Å o´¾{ƒƒIaåk³HÔïcÔWmğW%x,HçßÖ£KéÚwb…›ËİÀ÷šâì¼S2¶&‰X‚A÷­Û\rjÚâå\0,\0Gï›NÍ)ÁêæÓê’_0	äd}ñíLƒV\\bfQŸOZ¯-ÉHœªDë¸œ	$óÇ¥E\nù£>RªõëúTr£X­.kjGˆœ\0¹àî\'Û`s†‘	=~l\nÉ’Ù¼å„ ’}ùÅW09ä`ÔÊÛ!¨ète´l§ ~”ÕÔ(à¶{Ö(ÆìÆ¥ƒ~3ZÈ¥òOËšQ‡qÉ¨îÍè­¡]Î¥‹`ƒÎ1Uî-‚$¹şöå,F57\rœ\\I~ë±Í]E¾9·ÈŒÃ9üé[ *‹¹¨ù|®G¨¨Øü¤F\nùèií%Îÿ\0õr9qƒŸÖ”]Nœ<;»ìØr3ô¦¡ÔÕN6[\\G)RpÃ>ŞõÕÜiöòÂ$hb2?Ş%A=ëşĞï@WÜçºµ×\"òÕhíÊàÓ–‹S\ZÉèâ%¶m0vòöc®	ı)÷\ZM‘¸¸‘@]¤æ¯iš½²¶_îg’VÖ¥hÖµWæ\'«ríúÔÎrLâçğíÈ; ƒ $†ş_ÖŸg§_+åÂ®>\\cº(®à~vÇ<äŠ9­K‚›O0Ï·\\}W‘~ÒV±È¼WÑ±-•‚	öæ•âåP#`Tã#¥tíöV‘J‡?0ç5¥*ØÍ²ÂC0ûÄcÌ=£±ÃGpŠƒ{Áş%+ƒøÕ˜®‘ƒd«|½Jç¬ğ[¸e¸)8\r\\ôv¶æfa‘ŒúTÙ_CH¥2g(”\0)U€<;ızU/ ùÀ	Ø6zv5+YÊø+r­ŸáÇJVîËö-\\o[¥à…|pÇ¥3{Â¸fúô«i¦Ü$yFÕ#°>µöwQ°+ rHaBQ¹¼t™f;—ò€pÌƒŠÉ‘–SU¢YæÜŒ…0¥Éaœû}é#ó|¶Ê3`gIÅ_B/ìÍfIà&\0cÈéTu&·†×È\'Í,q»$l=¾µkOçÍJî^2¼Vf¥!*„üÃšÑv9ÜW´Ób‰RãŒ“S]F¾cn$b£\0ª£®àİ¥^†yİ®#{€æe\n»×ĞƒÒ¦I½‡M[CŒñ4ò¯‡çÙ)\0J˜QÓ©ş™®?D•û{c¸®ïÅÈ4)!$>(ØôúWér4:”* üÏ´ƒïÅ;«U\\²\\ğDÆ-N&\'Ÿ´Dãúšìi.Áo™£’Çœ\Zóÿ\0Ìaäa÷J2ûz*ì>ßºòG\nÁúûƒÖ”mË¡Í‹¿9FÄ3dzV~¤’&¢ÉŸš@…X’ãdÁ}Nk7T¼3_+”ûªş}j“×S*TÜ¶ØôM›ûÕÔ”ˆ¯JÒ}9õ8Q|×B í2zûuıkĞ/ÔèP©”+÷0NNkI5§³†D€‘—åÏ\n§×Şµ•ïshÚ-IáF(?Ó€#©õıkX`Ó\"Y]’yez=j¶§­]ùLgæãhØ»I\'·›Ãİ5½¤¶ò+M*q£¿^ı)(ó1]£•ñ…ÇÚ|BÒ•\nZ$#ß¨ş•\r´ò$0:1Êœğz`æ®xŞÒ]u\'<…ã9+ó7GM–t1Ö²©§ÊwR÷©Üë5IVQk Ï$“£•wJ¸»sÛÀT#>\\ÿ\0ÈÆåYÚÚ˜VİvRò{dÿ\0õ…mxSd³İ™;vğ+Bë™òÚ<­‘³Ia<rÉçŞ·ì¦´Ö£Ÿ|ÓA\Z,º÷úS5m&+ÈÕ	6qÁªif4[uxÚ`¬ÛŸ€Ç+:iÆ÷1T¥i±Y­¡Óõ¬™£WÜ‹»ğ=ÿ\0*Ó}\\}«æImÂM\"éXëâ	®%‚7X#]à™Tgo=yé[©Ú–‰Ë(O3q!~\\ôÈüënW}GJ­= 6ÃEó i.fIŸÍÃ¾•rÇC¶±·q\ZBÄ¶àÏ,3ØJ•5qä\0Ñ·İpiènqfQQÀ«V)Ó[“[ùŞV«ÂŒtÑ+Í3£>6r8ªëq<öbQ$q+wÚs×ëU?{6.T“Á8­¶/¸h·?ì{tâ¨^<3Ù4rA!³ÒªËq<“$+p§9%öŒŠÉÖoæ°‰Ğ_C$¡Käp¥½°\rD´Õ	Y-LØ®ïn¤ò#w}Ÿ7–Ïõ«:¦¾ÑyIu¦OB@Ò4nô\'ŒsµÈÂI+3³FÑLÜŒô©¢\Zş­—ÌĞ†È•×fï©=iEÍô9áhõ5/o­‘\rİĞ¹~Û*qŸÇğ¬6×®YšÜÊÒYÎAuu\\ÏÓ½hØø\\<¯ö™v¶AeëÏ5±ƒ¦ÛFî ¶Ó4çŸ¥_ÌŸfïÍkŸjg¿‘R2ÊÌ\n€	-^áHæ°vòa”*’W±é\\†¾›áäšÁR¤™x€\0ç¾=Åv^ÖneÑ£³‡Éê?FÅZVW+Ù¾esoQ»ŒÛáíùçRãîû×%Š—q<®Ãl¸!Îí],—QİÜæ‘c«‰ñŞ.#†óNfƒc‘v{ãëJÊRÜÛÙê‹zô÷2ÜEn…ÒR¥ÈÜG æ²VÛXh„º|0A9pÁY³şñéUô?\nÏy·ÏÔäç£\'ùšìağ%¥ƒGw5ËÌ¨7ìÚà;fºı”ug-Z²”•–¿¡“¨Ée:@°,’9ûÂOğãµmjzMæ¬ªÆé6®@S‘øğ+»¾ë\r=ª$©ıÚ§ë[–úÇÛàwVu\\Œƒ‚>•Ã&”‹Œ”—³l®¶+n²U`Àqß>¢–ûkI<È\"ÜÄwªßF-&YX0Ü1±Iª&CÁØvş>‚“F«*ZXêô«çº••_<ã§Òºnƒ#r3ô¬/42[§ÙpOÌ®0ÙëÏùí]‹’ÇQšÖ1[Tdù=ç¨’[Û4L’†tî¡®^[q~ĞÙÚ–å¿…F}k¨âØ;IÏqM’mlì³0çúÓKQU´÷nQÓ4¡gr^@¬G³ZÓ*P`cŒtô¥\Z2œ³uËc&šñÛE¨¿)ëÜU^ÂŒÑ2êWêğÌ’@ƒU,¤gOÀ\0\ZfÅHëÜW}ÅI$í}ˆã3t9¤‘*Ê7|´İÙ¸éùTÌÿ\0*çò£[‚mj†’c\0‘ƒëRyÌË¹[ŸÊ«³PFÓØÔñò¹úÑdİú—enf\\ƒQš\06ÜóÕ­g¬&ö†S”êk›q–äô§$Ì­´b¦PMİšB¬¡±è6ëit¦HnØœò	Á…J¶´•wÛëµçŞ`| ıjå¾¡ulÀÅ<‹Ï<ğ}«šT%ÜİbßTw0Bâå$2)Ğ¹­/²ÎÙıâŸå\\\\~%o:9dˆŒÊqÅt–$Óov¯˜b—·…ÏĞô¬§\n‹¡R«	ìËÌFwõ8æœñN«¸§ÍŒéO•Kä€H\'9ÎsSI†TQÀTõ©æMXM”à}ß2qŠs!g\'É(¹ã¿n8|·Û—$qÅ7$1ù¿\ZJı\n‹w¹UáM­˜œäd1ã¡ıÛDÆPİ28äÖ¬FAp…KmÈç#Õr¦KÜ…=½iêÖ¥\'©˜>Î$WAƒëŒUæÉ§„ûQ$/€ä@ÒŸv±I&\"M¬¾£½TØ!¢\0ç¿­	ô)Y“¢;mÅÛ…QÎ?¥6g¹H‚Ç03…G\'ßÛüóS®À¹hşb3œqQ]Çj·,˜ğr	52“I5RŞ@’]nŸ™««â\re_iòÀùyı\rRœ*Ä±ecµÛ#¡÷¦Àì²îÊ2©ÆO­&ŞÌÑB=‹Sxö6o:Î2İTÖHÕ]ïšaÈœüÛ€ÍIy\"†çŸZ¦áÛ|ˆ2>™ÏøQ¶Ã»ª4b¼vl¶ìzâ­¦ G9 U¬ëV\"5/ü>Ùâ´!\"hÙ†•RIî7ZEäÕ-È½aå\rXmFv\"D\nNyàV2 ßÈm¹ü*ÄI¹(<N•“„zío¹síM{Yc•†w­iZ²ª¾\'\'æ##‹°8|Å–÷¡?Õ!SÏJ|©#µ-NŠ[Èa´iJ\0`ªHÍs—í¡\nd‘_î11ÿ\0ê¨ 1 \n@Î3ÖhQÚBUG½;ib#x»¢ƒ¤¢–?+w©lnİG+©Ê¿ ÷ée°ÜzƒÖ©Ë\'”ÑÎTòrF{Ò±Ó\níèRñ]ÈÖå;rØ÷÷¯4‡ynş®3ù×uâ(¦–ÚGyTJ±³‚®Oóë^r$auİÑ‡?\ZÄU&´=;AvV¹p¤âOáÍt\Z£R¸xerTœuÁÿ\0õW; êC\'†‡•¥á\"Ô\\Ë0.z`ÿ\0‰©¦º³<ROS¾¹Ğ´›Üƒ?]£-JçÓ=kÏ¡oµêè’\0ag9íƒ^·*¬º3©]ØU|c<ÿ\0P¯±!ud\\7É&ÜzskI.§%	»4Wğõ©ñ•\0œpOzÆšäKtñ˜¼—^«ôï[~“0 ƒş:å¼F¾Oˆ1·%†œäÎ+D®`ß¼îZÒ™†¤Ä>>n¹ÅIâ[™¬u­6ò4WX”’¤ãqÉÿ\0\Z¥gwwÃt‘¦ppX¿ı|Ó¼kyÙÄ‹´»ªàç¦8ıhLI;œ·5¨^Ú\\¼1DÍ 	ìsÏçX¶r‘oŒÕ~â9íìJ¾vy›½³·ÈÕ+&ıŞ?‡xÍa&¹µ=\Z+Ü²;›Æ’ÛßJË½ÙFĞ?„d*Øğ¢$²ÊZFV*²®âh|#\0_õhàO=ÿ\0Æ®øM...vÅ\"¨Øy?…;+lc­ÍÖA–làòHÏò¬;Í2]N(ä3a9B3“ëÖ·L¸l3Ü/štz\\‘ÆB\\„QÎ\0ÿ\0>•<—%Ê6³fğ|LªVá•¸İ‘Áªz¶u\rìpY\'îw /Æîık¦‹Í’5tş~»qT¯µWòï.ØH§´“ü¨Q¹”©S^Cì^[M>Ş)-Èuˆgæï·Ë\"¶`Û>÷Z…o¾Ö°Ï»[„d^:ÇŸĞW-®Í}%Ú¼Aá‰:|ØÏ­hİÒI]jl\\5Èµ{dpªA<qÖ¹èoî-$œ³…;GOÏœt¨¬ä¹x™ä2ŸSÖ³®$ºÖ/ÆÒ&!03É¿°¨Wb”’\\Í	wâ9§,ª²\'r§i–>\Z¿ºl¬ÖÑWÌÉ,>¿\Zèôß	ÇdÂâ@ÓL£¨\'h=ÍiÌ·\0(\0w-ÍT]ˆönjó0ì´+[…ŞŠò7 ‘’?ZÆ6ıd£ÛwŸfæI˜€Ê²ı¤/ĞPÕµFŠš[¾Î­7ziÆ2½9™nó6óÜS.¤[Ã±çÍG5ö/]ŒŸ¸@beA‘õÿ\0õÕ¿ê&eu5XÄQ˜ığ¡§ë\\ÏŒïÂÚZ@Xî’BåIéÿ\0×¬kmTÛÍ¶äÀÛ¸•¢“pØÊ«”$´=´ÜGÕUF=«Œñ¦¸#±‘2™ÚPÌğ¨éŸ¯›eâÒÉ‘\'#ã·ZK[ôf RMÛÙIÏ=U¦îÅ*¾î›•ôj-!\rş°m9ôÁÖ·á(Õ$‚İàùPÇå€¼qúğ*[oé‹4Dİf8ğcvìúkWşİ*Kô9eTF¡U~Ué§lyòŒ–·1üÙ?90@ “Ö¤·ÅåäfGeoáÁÁúgµtŸÙöòHÒibûØÆq‘ŒsĞÔpXZŞÜ¼–Šw†@û¹È×j\\¾ôPFå£ÔEÒ¤…™ŸwÍœ\nÑ:>–«æ<W[@å=ı…jZÜÍ*HU™\0RqÓ?Z­©^^Úé³¼&ÅS¸¦²I½Îå‡‹ø‘™£ß¤:ì‰\n,q˜÷ó–l_ğ®«í“Kb\0Kÿ\0Jä­Âê2Z^YÙ˜.­×K­^„3]!˜‡(Œ“è¦­«lnéÁE[F5nşÌ­nÁC\0IÉÇw¯\\<²ÂZv^µ[X¹íçËxäuÀÜAâ®h¶ğßn[›µ\rõ@€Iö©W½Îjµìû9ç»…~i\0«(÷â­¼I\"–f9îG°-ís++Ï$8LTì‚9ã]ä óÖûš(»j|î® ãG­6LAıi“´œqK&6±$ñßÒ½+»ê\'ª»+HÌ$Ï½Nß4ci÷¨¥RpwsHïOD-ŞéCKr#±WNá“S«mûİ}EBXFìé•©#b@$Yjå©µù¢#€H9ÈÍÃ9§¥LNî:­WÀV?.[Ks=v,#6À¹ùzóR8ÛÜşµ][“Sƒ‘‚}iG™ì[’«v4íÅç>†«‚@$ö©2§“šM]j7+;š6ú­å›ÜŠ=7gô®ŸKñ{±d½\nU‡úÅÛõá\\>òAÊ…¾sšv[‚¼â£‘Ij‹Sw=»K¶’æšŠe`ô•~†¢—NÔ•òmò;sùšò3V»Òî£º·”Ç2}Üçê+Ù4oÛø›JUc¾€fXÇèÃÚ°©K—U©J¤“Ô«-•úyR½³Î¤\rÉ“ÏÖªK\rÄRlû9ÜØ PSZNdyC´ÄÆ„`vÿ\0<TB÷¢-Í¼üı{Ö.ÇDoc!a»–c˜ñÙÁçó©E¤ó&Ô¶™ŸØ®?k~öÚHÜ.ÒTÖˆŞ/\'Ìq$`7n´’¾£çhÊh.v+}šBOS•çõ¦Om~m÷¥¬Š YxüóZ“])·ÄHÙgàö§}¢w³xc‹ï/\0§Ş¡ÎÎnâ¹f!å…QX¨*¤ñùÓà±:yU;²cÆ^)“ê‘ìq¸çÍMk©,qm’8CøÓjæŠ¦…=GK\nşÒ…‡%G?­g-»IUpw ô5¯w$W*@‘cRrvƒÇÒ›Z*ü²|£Œà’\Z‹šÒšÙ•ímÄ*À¾WÜsZbDm¡W9õ¦³ÛlØ#ewUˆo ÜÄ£*zõ¨çOqÍÃdQqµX«ƒÏ¥$w†(İ\0n	ad…!ØX±fÎJw©­à±İ¶æ]œdAıÎ(æì¦ºã¾\"6ÛŒ…ù‰¢Şù$+\nÌ2íZ1iº\nüÏ¨Ü0#ÿ\0©†áÕ/® Œ¡äşZEJTí¡¶’\Zí%Äè[$u5eì­­å`a‡<j9ôÆ[s4»~cò68õöéTåÕÅÔXX–óıš¦W9Ó“1$µŠGpFÓ½$ÖB[e`	#8Á©~Ş×25¥š·@\\ı¡yYáB#„H;ZN?ñúM>ç}$ífŒKØ^PD‘“µ\n€İ1Íy\\Ö!%bIàã½CY‚Qc;„aƒ±›?©5æ3«¥Ë¦òvœS<·\")EXôÌdÔ`/’9÷àš–ÎMBÎı¦†&\\1Rá3èk?ÃÒ‘sfİTfº‹¸P‰Vx¿xäyJÇzõê1Ö¦19ñ\r«XÕ_^Åbğ<·Î\0!v×-­ÜS·\r½å-ÆA’s[E”]Äõ¦j¯I!•Œf6cøpyüñ[µÌp*’§-\r[êw¶÷7–²EÙdP|Û‡›¯\0]\r®ÖÒİİŞŸí7* Ë Î;¹êOq\\—o\r¸¼i‰g‘…€9Ÿç‘[:‰/´»9­-Lb)‰,Ò.YN1‘úuÍifÖ„´äÎo3]Ş4³„W^Ú1Ö’î/µi&-·T~‚Ÿs*,Ä‚y>µA§»ó\nÅ\nuàç­s©5±¤SH¥«@¶ñ#(m¹Ç\'üúTï†`NÀüê]T^´*÷ °6ç9ÅS³92EG-Ş§]¦§¤Ír.|\"ÑœpGò~lÒøVñ­î‚\'pzuéÿ\0ÖªV%eğŒ«¸ƒæ#ÂŸáK•Šú2ç\0ü8·}ÌÚZÜô/í‡P#FrzàŠgÛuÈ0²/L…ÿ\0\Z ¼E‘ämÁXq×şº±&¦ˆ6HÇ\"©EÛs-/±œÓ_YÛHd+8\n3ëXº„rkQÆÿ\0êç9UpÍØ­Í_QˆÙf2W$rø\0×¾%û)ŞÑüÃ÷e\\dN~‚±“å•…R¤>u5|y{r×šuÁ„Û@pTüÀ’rùÕİ^İœmò×ksY>º:†š\\¼¨Í9À,ĞcÇZëf±·~Xıî§5ĞìÅMF+Ma­æû4¬B€ªI=éš ¶Ñå‘ç‘Ã\0£¾©ıqùVõæö˜\\	¶ àı\r\ZV—oon®Ñ	d`~g=MJ»v&wlgÚñòÙv1Èæ©,®å‹KŸåŠÖ+eÜ±Ä‰ß\0b±ŞUåÕ°>QÓ×Ÿşµ\r4ÍbîC$ÄJŒ¶©äTõ[¢m\\F®ÌzcŒšÑ7(\r­ÇµsÚÎºm.(â;Ôîşt?yXRi+³˜¸k˜®A˜³J:sŠŞµ½yáÚĞºcşz¾õ& ×\Z¢\\[Â]£ÇEÆ}3ÿ\0×ô­û;Ã$r4ğl·µ-r´Œ©üWGŸxÂW“ZT (0<dœš|Ğ	¼7<ˆT´P$Á±Êá¶ÿ\0,şuOÆ’´ºã;ªÆÁBíQŒb¤ğÄiz·Ö×ØNÄx?¥oµæ{hêC¥]´Œ ·Î¿•kÇ,Ít¼“ÆĞx®fÉZ+´•éï[6÷XE(Àó®@­ Ó•ìsÉ%±ŞY^(‘–bê);sÈ8Î{ŠºÉöAfWÙoù“°9ı8şUÇ¦¡q8Î×\0Oò®‚Şá¼²Ld#|åIÆqØşÓ62”]îv:¤Z…Œ*é÷æÔƒÁÎ?Ï5_F1X^Is‚>Õ&pN}«K©ä’Ü©¬C9aÎ3U¤šy5«hÑˆ(¹ÉÃg¥5î´‡F-Ô²=RŠÅ™òIînøïÖ«jğMD’x\'j)u8¢·3J2\0UÈîj„Œn\\ÜªŒ2§Ö¸^›öIê_x-#ˆÅ\Z‚œq‘ŒRÍz.—Ë’§aëYë*1ÃçµrÊh¥2˜8úS•Ø¬“3î4»i	/>•^ÂÚ)€Â†\0~ğœknâöÒœ<«Èük*ìYäËäõ{Ôí¢%Æ-ìjØi~QÔÔù“òFFxàf¬y®ğ²IÀÆsÓô¨Œæ5Ä‘#j\Zm•7>zØñ1QJ¡‡CÍJ%j9	dÈùXvõ¯]÷\"S’•™^UÚ¼ıiĞ;Œö™/Ì8*H±Ó?Z—{j¾ŒÁİÏ$÷¢!ˆ$úÒÌI ç§µ66\0’H§®¯\"y#=*	rÊ¸ëšY·\nJãœÑ¸:ĞÒ–ŒI+	\\c‘V0qÇJŠ$o3†ÜjGvÉÊşœ¶ƒ¼RĞr7)Ê£¿ji°I\" m<“K[\nêHFp\nI÷§/Ö£ûÇœûSÆÕ\0¾¦’º‰Èì½\\Óïî,.æ	Z9c9ú}\rg@3Ö¥BI\'zÔY”®‘í^ºOÙ}¡$UxÛ÷°£ÿ\0­ÖºWÑ¤@^)HÙ!râkÁ4jïH¼K«9š9—¸=G<W{oâ-Bò%êEIãçÛ2sŠæ©M-MUå¬YßÁ¡ÎfVAÇ@;U™t(eÂ°õâ¼ºçY¿ÜJßM Ü~ôÎAıim®ešmîC`†Á$îÇjÍG±¤¡$·=t&ŞW\0ÜäÍ>)’A£,°jâB>]³sùóSZxkMdw€L$Ã*¿ğñÓõ«C@ÒĞ3-œA±èOéKC&üÌ[½ÃÖrHgDŞ‡ZC“À=[¶Ò´Y IÊ\r¬22œõÇ¥rW?Ú6÷72ÜùHÜ$Áì£¯åLƒYÕ ‘”–ÏäÏ­7$ŠtemÎ—X³Ñ,lşÓ5¤+· Æ2~ƒ­yóŞ$×W-g=ÅÕ	Î¥jß´WwûJöw‘GPğ:õ<VAx-ç+l’Ëg.ãS+t:pôÚ$ÔÆ@+ãª‰d<nÃp:Š³s±Ùr\nüªG=°*qdˆWE*¹ÎÍG*êt¨Û¡M–VÆKcëV\'ó\ZŞ\'b~é}ÍKi\\\\^o-‰Æqœ}jÍİ”i:@$wÚØÉÀà¢„Úw±ˆ«À‘¿RDì¹·+6æ×ÖŸ-²íWó6‘‘Œu¨­š?´l”³)=Oz9´Ğ6ÕÙ×xneI»QlÈÀ`”m‘.åfhÀ,}M\"H°É!·¸™cf-µ\\¨5k\\°–ÚĞÜ,“§ ÈÁü>”÷9$¬ÌëYŞÈÍÌ®½q÷xÇ\"Àâ>XGæôû¤ŸÒ±^iË5ÃÓ¥:	%`ø»>:#mëŠÍ&İÎ¨Oİ®Âe·j•>Ns¸‚My† ¨—²\0Oã^‡>ÒY]å|‚ÎMpúİ¤pjÒ!ùQ”0™ªZn*õT¡dlh¬TZ8ÀÃ!Ïâ+·H2ØaXäÕçú[í·„‚Zõy³\\J>Ï–êà´ÜàŒğ?óê)Ãâ0«ïA6aI8Ş3FXàV~¡gwuo…‚fÁçld×·ivvd[Aßø\0Ísºİİ¬rÉûÈã±ö) 0íÀ­½hóó$q0ù±i«q-´¨ª0Ã#ñØTQH—Kæ¡;OLÑw=¦ óyRÍs1ŠF6äqüÿ\0J†{¥ó–4‹d‰\Zù ñÚ©Y›ÃÅÓö‘E{åUe#ó|ÇÖ¯¡E†g+ÉgœJÆ¿•İ71à\Z¿fdšÚ5{¶8E\\šÂ´]´9-b¿)kŠÄŠÀ¶“Ã#¥lë±Íœ‹:H„à ÆyÎ[9\nyÁ5Ïh¤™è¾Ÿ~…¨@PÇ}ğÂ¡ğ­Á‹T‡Ì\0†)Ï¥QğµÁhî!9!Ôçş?¥E¢Måj±=fRsşğ­ã}Ù“WrG¨jú…Ü6ì6ù‹†#nãaÿ\0Ö®LøSer÷EÜñ‚€qøV®³tëhÂß\nÛvïG¯Ö¹x ¸1TbG9#­Då£Ôó«©](\\Ó³2MfZ]B+}­ò«ã\'ó#ŠÂº¼³6wˆ×(÷*	$ùÖ½á{WÄ\r-½Í¨ÕùäÙ°…\0ƒÇ*ğõÿ\0‡¯-å¸İÛ8mïk¹ÕT­“	?…éFOW¹Ÿ³R…º£Ò~XÉ&–é¼ªÆ¨ÃÜ°$ÿ\0OÎ»I-ä.Ñ¬ÌJ€FkÆü-®kZ|Ú®guå¼;\\o]Ã\nvĞñ‚?*îÇŒSÈ™g}»˜œ(õıs[Ô§È•ÍéÕŠV}W\Z³GzÖÁäŞ­·õâ¯ÿ\0EB»ƒ±û„õ¨¾Ík<É:ˆ]˜oY“ŸQWdeeùİxë‘XÙô7W“»#kt ï=5™sÃpŒ¸	Œš½!\\1`cµPiaYİóò†É4Ë¸ö+Ô=kšñB°³b›>lœõÏô­‰å€Ç#!¶œd÷®êYä¸_:tÄŸ3|ı½CæKMªIXÂé$1Ç´ªÄœ–n?úõĞéî‹u°¹9_JÂ[+pä:ä:úÔi}iö•o·ÂŠ!Ù×?¥iMk«U¡©…ñ\n×VIå”ı88şX¬Ï	ê1ØkÎà]ÊÙ=™Jÿ\0ZÔ¸ğlWN%]~ÒRã,Ï¹Ï×iÍO§ø>ÖÂã|ºÅ‹àƒó$„c=:\nè…;3¥¤béB;2Te\0«0}…2¡k:¤ƒ‘óWIkáİ*ËÎFñ+½·(İ Éæµ ³Ğ¢AæßË79æË şf„¤›2µš9»mr¶²2á[Íè?*Ø‹Ä~Sl\ZdFEç÷®O#±®†ŞçB…N 2®r¿è‘Œ~f¯§ˆôër6W;ºgËEãëšéŒÒİÊ›{Pë\Z´ñ‰mt¸J÷híˆü«*Ú]N-z9oK	p$›ISÛ¸®å¼d…1ö)‰Á ™‡øW9çèÒ]´Ïc+ÌÍ¼ƒrzç¯ššNí\ZB\r+u=;SÒ¡ºÓà˜b42Ñ©ûÄã™±Lˆ Ú\0Ç^‚¹ƒâ;¿³2¥½»DW‘,äçòaKˆÜÂË+ÚDvÆÜ~¤×,•ÕÓ6ÙŞÆÈŒ1Ø~÷j†\ZUAŒæ±$×av#íQ\\°ªŸÛVÌùj0s×¬¬Ë³}Ì[Ç÷1¤Ó¢¹ŞáÔ°ä	â¸Æ×ì+›œ·NU*5û%“,ìIìš#k‡,š;á}n\\7nEwpĞ€N:×Ş\'²‰øwİÔd…/ü&0lcJØ ”ZÓV„¢yz(e!†®j?,…89ÇriIÃçØiÄ«—ñ¯J~ì¬rÓjq²D-…^\0Ü{Ô1q/Ì?J‘Ügç<{u¦«&U	ôÜ)E¤ö­¢7@9>õ\Z|¯È©åQŒ’~‚«3î8©r¿ÂZ½‰\\bCsïL~õ§ \rÉíïQ³÷†jewkJú\"hFÑ×ŠyÃ`“ëQÄASŒt§FÙn§wº±.÷º%jíÈÍ#œ\r»Iœ®9¦á·vœæ¦Êú\rÏ[!åG–29Î~•ç’r}Í8¶F<RLÂ”´Ü#{Ø@A8nj`[ZŒ \n?<¾åçéDlËç$9*ÙÒ5&Qr¨ç=‰ïX|Ÿ›4ğpF	©”r³µ’`ÕvÑQ&}­¹„yò+#Dº[è\ZİÜ	T|£\0®†\r>ÙW2HûŠ•\'=2=«–O•êv©ó+…Ï4(¯q ŒÛÄAˆÿ\0sŸ¥MºîUŞõ#·Œôç&¸/0ùqÄdDZN=ªX¥HY@´P;¶z~•Éû7º4e–¸\rœô>¢³î¯V8>BÍÛ§Ö´d³…ÕYPn#\'5’öå÷Fµ½«&îî8öf.©9{ü(‘Š¨Vã©ëÛëúUeß»%AlñÕoPW;rÍĞ’}8LÊ|¹Æ2}©´ÏJ‹÷l‰Œ’4œ˜Ô\0@ÏJ·ûTø’æQ»€k6<#«3rXg§¥\\µ¹Ã+…ÎÓQ\'Õ	hY¶6œ8f‰Éœş5nàšuR[9<\0j”«¨Œv°ÛëŸÿ\0_çRGzâ	\"\'æÛÁ<f‹ë±\r_RÜoFrªÅOCŞ³c0Å©²²€\n¢\0)†ïËêàFp+5îciŞMÌà9ëR¢Ó3¢\"#Fˆà3Ç­ÍV]CTÒ’Ò+Tˆ:&ç–QŒ€3é\\Sjb@ (^~c‘õ­¿í‹ç¶µHÕR3\nŸ1º¶\0VlpÕ¦Å\r½î.â@ƒ$\"–ş¢‹+(¾Y	×õıh“P•ˆ2e°oSZßn°h„sÜ,œlØ­¸Ê“lËšq8ùlP!ßÛÔô¯;ñ˜u`cmÌÑ©>İ¿¥zõÍŞ‘m‘ı•ß\0ºŒÆ¼·Æw?j½j*F¡‚ã“:ŸÃõ¥ùµ)§%r®…\'ú*Œò×©ø[Px¯¦ƒÊw†hâvuçË8Æqïı+Èt§aPŞõ¯Tğ®«m§¥Ä÷s$P%²³Èİ‚öıh„’“¹Uéhz¶–|·Û•À8Îx¬VÍ-î%x¶«O#;$ä÷<şä\Z§Æ\re¯wi~]º•C“îM`ß|Gñ¡òÍ¨²/¤ci_Öºº¹ç{7s½ÖomôİF[‰5Kµ›åU†(¾ïòHëÖ¥¾‘~¾c[Ş³HÄ™\Za’s×¯,íq!y™%É&ºX/\"[F\0“<`OãRïî‚®¥NLîäÑt{¨f5ßîÉVËŒduí+™ÔL\Z[¬)Ô2H³»)^yíÜc±k=È‰„ õ$œÕ{:ÿ\0)%rŞVB`ãnNqOŞ{œUn´‹8k«óvÍæ&u9Îi¶Ÿ3öÍuW>\0Ô\ZÖk¤6êÈ¬åC˜r?Â¸èØ™FÑÇZÎªiÜèÃ>duŞ’¸t¹fÃáAçpqÛŠ¯i\"ÅpKå‚° ç´.u¨cßÃnÈõùMB…RşhÈÀÀ¡¨¦Òøš=3Q{v)o¾Oïõ\0Vİô×›ePÁÀÀØ:¥nİGú4ƒqRÈ9êAëı*Ÿm0.åG|–¬çyQçÕR“÷v9ÛË{Ô	s<R*?!ÈëõôükY5Qá+ò#XæÖ@äœç*pßç¥kÊwŒ*Jä<OsmƒåÜÅæ«…a“ó\0GëNåÑn(PQ—5ÎÃÂDşÓÆÖkˆå¥eË(ÉPsùW¤Ú<Í=«î“™;m=ÿ\0C[~¸EğV”†E#8Ry$±éTµÈlõh&o–âàë ÏËøƒüëÔÄ%(œtcûÇlmG:éHímÀF[,[v>µ‰?aóä@ÇŸlJuÜï³æC¹¹ÇÃjaŸQ•Øa‰¦+Šİµ8EèvŸğ˜E12F>ñ?®*¥ÿ\0‰M¼m+E8Ê‘Ÿ@\rsºn«ı+\\¸ÜÊ‡ËÔÖ&»âÍbã|ï•tz\n¨òÈu#±­yã{¹ÁTDE<qœÿ\0:Êşß¹YÎAìEb†,Ø±ŠœšUÚ±Ï7s >\'\0\r¨O®ê‘<I>$ƒşù9®cf\r7’p;S•4–Xì[_„¯\nŞÀšš=hG-Øg\\R±0äŠÒµºÀIõö§f´¹qšoTt­ªÈü˜Û\'“ƒŠcj·\n\0òÈRy%‰ªé4Ot?\\Sç ¨BÇÔ÷©çhèQ]mµ+†û©Ó§=jC©\\ Öo›(ÈA>´™wuQwq¨&ìi\rBä0´=íÙ$€¤ä\n«èü’F?*\rÖËÓÖ›vÔnÅ{tI=éEÌì	${Ue¸VœÓ–éŒ¡Lyô\"³Œîô%ö$pÒd¹Óµ5ÚRJ´‡è)†è¬„˜ä“RÇ<RaÔÄÖ³—*¹=FˆämrsùĞavÆ\\Œt$œŠWœ9æ‘®¡\'Øé´¹¯Ôm=ÇBà»1õ&£D‘ÆIÜ3Üó@œH*EM%X+gĞúSpŒ]úæú²\nóÙ¥ó—´ïQ3bqÿ\0Ö¥;BnêOS^¤’¾¬âäjÍç!Ÿ ¯lQ>`l’\r5ØÉš|Áäô5š÷tÕÛw&vÀ$3Ö©>3>j¸ÎN?»ôª²/%³Æx§Ë­ÂÈš3ò`çu2^9ÏÍ”±7¿Zs‚Šwc¹¥Ëîİ7‹²“‚;ö©#À“0i31Æ0E><‰˜î5*WØR»}‰™È\'˜‹óg¨›äıiIÚÉÆUÒW&1W\ZÀ¶G ƒNSŠ…X¼›Nâ¤äœu§¹BøSŠ„“er;è?ü1àS—h¿½3îuÍ\'‰úU&ö}	7ŒsÇ4íãvqP\0Äàô*¨lóéU%}„´Õ—l§{{¤™$(PäW¢Z?ÚtÔ¸W\n%`S¡8çÒ¼Æ1¸³]„®|åk#*Şbözüºz×-xû§E&ís§rÖñ*oŞYrv·AQ¥Ê°À@ÎêYvÂ$F®àX€M\"(™2‚Î93ıx®N—:â®˜mÄÖËÈÀ¯\0:š¬Ö’[Ÿ7rŒ}â{\nÏ¹ÕnmEÀD™è Çó¬y5&3óÈù9ÚìH¡¥s%w&\rZÕâDXäÎ(sƒşµfÁg$aãõrå;ˆì3è1I,Ò—.ª¡õïEúS›‚²+‹>vü¸ê}Å&Ô·RsÉ<\0jM¹o5¥b[£§ÅHŒŸ?N¦£–Ì¿m.ãe¸MÍµÎs‘òô¦äyQ\\’{T¥v\Z<2p§óU\\º°ã9ìjœzJR3ï%˜2;H\rœÕe\nX³Îyô©§o´#«)0GÖ­èZMµô³´rªQ»çÚ‡x¿{cE	F7dä¥ªºrÇ®ã×ğ©ÿ\0´äm>¼©@QvŒ`d×Iq¥X¥–ñoÚÙİ·8•Æk„¼1Aµ”à/Z3”Ô´$Kß4“æ1ÁîİjëŞ…“ÌñƒÒ¹½·Hwù{GlœÓ\ZîI€ÜøÇ-ôò7¯u\rå¼Æ7ÍïŸZãüHZAÄfÉÉ8ïWäºò€Ì;·5uy%Ó‚ø;zqŒUE¨ƒ’Q±›gºÖyr9ÍT¹¿ñ¿{)ett¨ÎXùc>õAXçSŠ[ØæœÛV%U2 sZhÓL™\nvc+°r2#Ş»m>!„5äÂ@ÚncŸjs“KAF•õg\nt›ˆNü½éë˜°ÌHÇ¡Åz½·†­/aIMÁ¹Ã¯A×šÊ›Ã+H¿ÙrÉ	dH2=úÖqš¾¡:*Äšêë\Zw›q,²<mµÀPqéßÒ­^jPiÅZ8¥ùÈ\nà—Om?UšÕÃíê än^Ùù£¾TàVöR´™ÊÓŒ¬ÏO°iu7í±Ç©ÈS‘Ïnµä‘G_› Òùé¸ƒÜ=E00-“QRIÆÖ7Â·Ñ­¦Ş½µôs#ÊÜc¯LZ%™×Q”‘É–üNjŒ‘NqÍKq 7lw¹$ÖQÑnt7iê_ÍŸ²ÈÏ¸(åxãëWlï-îÔ¤3°`2I­s?nŠãI·¶i+\Zr§\0ê*ÓhWmæFû¾]Å0y8éõ©²zœs©+û¦ÜW~eñµK­ÍÏÎ§Zá|gmy’âT¹Ø»qèpMlèâæ+µ™#l®OjÍñõäÒCam#eiÀ\03NUrc7=Í/Ü$·\r±\\úÄÿ\0ZÄñS1‚Ø$&KyAÉ9ÿ\0<ùÒxRßMÚW#{üƒê?Æ¶d¶†ïF¸ŠRäaœtã\"»¥%dsR¦ÔÛe·Ô¡¼³¶¹‰NC`„••\rˆÔµ9@UY€8ç°t\rzHl\r£ù•9ìÉ®IÔS™ÊÜ{Šç–“²;é6ÙÌø²$ÓïÚÎ&ÎÀgÔö®oxÉ$rjÿ\0‰.^ç^½•Ï-3×”½sUÊ¡Rí–Uş\Z‘3|Ü}\rV8õ÷©ƒ®îx5WÖæVV,2Œr2=j	# åy§ÆÀ·Ìjc‚qÆ¥[Z]‘fŠ¡IäŠXşWkA,fhÌ‰Œ‹Õ±Àüj\r§;˜TÊÑÜ55-¶ù{›?0ä\nœ\'\n1ßše¤ªê¬„+¨!‰ T@ÓÎV	»sYZîÇb“¶„foİõÈúô§’ŒÁcpÃ\0æ«sö¦G8Ãa·ŒcëD›b—)µ¨äU6º„­m7-…„dn\' ¦Ç™ à{bŸÁ\0¸SûÅ<Š‰îšrXpWõ¢\\¶¿S5uru„9p]8-‚j\"@mÃ ˜¨ãÛ{‚kvÊÒÖ@‚yoìzQEj7R;™mÒ©•˜c’OzdVñ™$Ygr\\æ·¯ôe…KFNßzåæó|Í„½ºÔÚÎïb/ÔĞÓÖ%¸ŒÎÇœäñT5p#ÔÜ[±10r?Ö™ºâ1°+T®ŒÔÈy÷ªMßa:Ëe¸’Ï:p®}ù­.ù™Õd‘K=3Y¢/1r?JØÑ|1ª^´ÁmûN÷8Pê]‰½nÉ‰Â–$–=Í78·8ïP³>T‘ŒrrjPÊë’>•èrXÂ)µ~…wÇ<àç¥-¾7b™0O½´äRÂä¶İ¸§¡§%©j$Ò‚F7Pù‰İZ”“†{T–õO™nM;·v>ß)&­ÈFp¹N7uIù»·Jµ#\'ßÉ©já«dH³¸€sÁ*“™-ŸÂ ’s“š›å8õ¦ÛHIX]ß5ÄÛÏáNF»\'¿@y¦JÀW$ŸZÍIuõĞze!ÇÖ*§\'–¤iQ-“”Ñ!~vœšœn4İô&Ş’E1eVb\0Î\\SBç5&à§j/&„ÔUÊVI>Æ““÷ø¦ ¹?0§äâùªÓ\"Úè=NÑEih·k¨C %rÛXÿ\0²zÖnŒ‚>”èÎIby¬å¯CHİ;€×K,Å–\'g?ÄFÑP¼®ò€÷B,œüœŸ¥W‚ešÚ)\\¹Ş9ç\0\Z<¸Ûˆ /\0^zvÜõ©$õ-¬	,~dÏ$¸nsÆN*	ü¸™%=ÍkØÀ÷Ö¤Dè<¶Î3oÊ™>“t’<ƒ=àÓçKS	»M™fü™\nÆÜÿ\0ÍI¶ò~¨#Eéæ	ü*ì¸ŸÉXŠ!Î\0j½ÅÂù¤ü¹¬¹Ç£gm!gÃG#)\0wéı*Xà›¯NjŠêQ[C1û²W½P¸×Ó…ÜxèH©”ÇDb­±¿ím\Zœ¦yíƒUd¼ŒoÙFĞX“ÔwÍs’ß]J«½¼´n¹â«DræG·İMC«f®J/CRkø71VŞ¾¡qšu¦­unìñÄË´íY+v©¸\"¨MÜ¯&AÇµR½üˆ•VÕKíbşú#Üy*H<şµ^	R8KI#Èàän<š§æ799Í4FIÆ*İ’µWRúXµw|ÒE±sózœšÊh™óÖ¬‘Àüé7çó¡-n¶Š¢6qÎÖ¢½ŒÅ0A#¯­Yv`SN{@©ó†qCÔÏ™´q·.âRI4Ø›,;÷­\rVRJ®1ß5›;=\nıš}NïH²\'¾ÕĞis[ZŞ$o™q#ógfOéXzßîâ®ËLŠ)› [½c{IĞ–/AìçÁní¤©È=²)¯i{=á™/JÛºãË‚AÆÏ×š‹Z·0­±XËG¸ïÁäzŸju†¡uåÂ¬ˆ±ƒƒƒ’åF£i$SÖ´V6)vç|¶à’ûpY{çùÿ\0úë‹¸…Ü1U#ê÷Ç-›`‚Oäk€Õ­áµıÓ#+à2¾ü†ÿ\0ŸÂ»0‘„ïf5J6œÇ¸	1Ö¡çy¥^hVâñUsÈÁTz“Ú ¼‚KKÉb‘BºœÈ?Ê£Y5‡…›níŸ|qŠ³nö×6ÆâüênpFEhjÒ³İG>~ôKŸ¯ùÅaÖçMDÛLİÓtŠİ_/“\\W¢iĞÿ\0eı¯Smˆ¼·Ó§ç\\o‡Vâ{Kt’7URKã?ãÔWe4cR³[\'wŠ;—Õ¸ÆëI«;\")Qå\\Í> “N¹‰³˜	wå˜±U+ƒÛ×§jçotø54[«é\"{˜\\ã.6°È$­vÿ\0ğ‡hÂ´LÄ¯!5…nËá]Cqc=İ»Æ<§0ÅAè~½GáZE&ô§ÌËvç@×Ø[.––ì ¢\0Tû2ÿ\0ZÆO³4òY»Æn*ñ“ÉÅuÚv±ÄLWN¾Eìf€¨Î¼ëÅÚoöv³#¬Œ<ïß#t<õçØÿ\0J”ıët\núFéş£m‰eTùr\rÀ{ş¢ºKBˆ>ï@{šçíÚIõKynI!8ßß¥i½Ú%¬¬ƒ”$ƒè0y­iêìÇE«s÷ˆí÷]½Òq°ğıjÄQ¦»Qf·zz.2®¹ÆËE+ÆÜ2±ê*ù–ÆRŞàN3OUƒŠ‰sœ`sŞºÏ\niqM¬Y<¹p¯¸©õ\0‘úRŸBySÙ™3i—ÖÖË<¶Ì‘°\'\0ô$u­x~ë[½Û~í0]‰ÀüŠô‹/ûVKÑrvHí„e9p0;ÂšShò]DHtw?ãúştÓOThĞ6V:~öyÓtQÆK\0>÷s^Q{oö‹©$H¼´g$\'<{f½—RÓíµ(<™(nêzÆ¸s¦\"I$R(wF+¸E\'gñj*–JÇmü©9\\zUÛKv›÷ˆÛ=3Šß¼ĞÄ„¼_)=±‘K’Ö–ÿ\0wÌŒœõ	4î™šæOİ2$DIÏUvoã=j´Ñ&`Î}+Hİ£DTÀÉàÖŒvĞ˜ƒ2‘‚´9;ê\\*»ØçVÊáˆŠ–aÈ®ØèÆlJ›õÉ­©ãq[Íc© †Îzuıh“R¼°!Û¡Æ)ÅBZ˜ÖªÓÕ“Ááä8i*	 \nÈ‚ÊY.DÊ@¹¡Kq3O!`îà)ÉäVÍ´Ú·îãNzöÅ]“VFzÏS—¸’ò¤å#ø…Cab\'Gv‰N.:×_q\ZJ¬óÚ+0ùwc#äÕ8ìö£½¼júÅ&¥k©Jú½rëOLeKgß¬fÉc„0?8®Æâ	IÉ c×Ö¹­r9Öİ‰ÚrqŞ“w‡LR[6 €¦B9=«Õ´Kë|=h$”ïÁ\0ò2y¯(Œ°Ú§njít8„öQÆ]rN\0&×R±\r(¦q²ÒtÈõ!u\nƒ“×uDßx7-øÅHÎ{w¯F<­œÉ4´eyæŸN”Ä#Îå±ÇTÎ‡®IZ‹;[ sÛšoGä\nwE·_İñ“ôªlprH\"¬«î~URBC\nVkPçi‰ş~¼U‹‚BŒàgµQ‰«ÒåáÎ)]=£­ÈSkõã+T$qT‘†ìÕ;HmŒSMì6ÓØtr)h”î‘Qs¼sÅTñƒÀõ¢9Xçi9=*Z³3Rw,—%Âã8©@$ç?Z®¬WÛ½H7yëëO™5bŞ¤¡Ã6ÿ\0^¥P9ç¢Âç=»Ò3<‡†ùjZW\ZZØ“;›}sNeÚ½rÙ¦(D àš\0,¼võ«kRdšb‚7dœR‚Yò§ŠnÂFià$tÍOb”ÇG¥]K=„–*(÷ƒ?Ë?_çVl£ºB#Flzw¬ï	í“ÄVñ<jâ]ÊŒààşkÔVXÎ÷QÇÌ3Ò¸k%	iÔï£SİÔ¥¤@m-®BÇ»\rÃ§Lõª—ş ‚÷ ¿8æ«ø¦A¼b˜ĞàïÃrEqÑ(Şä»Á<Öº4PöìÒÔ5¹®eÿ\0G£=*„ßiv\r4¦=üc¹¨~ÔÌÃËãŠ†Y×ÏÁûÀd“ëD[ÙhoË–K*\r§$¹4ÆºHØ*œ\n òï€OçQ3I>ô·dJ½ö-µÃ6íÇsHd%1· ÔPÂÓ¦ñÚáùÆ(åFR›z6$à)wà`“Ş£9éÓq’p=jºhfåbA¸MÉÏ5ü	üi¢@\rî„šn÷-©¨¦ŸœdSdği²)o›?&›ZšêS–Fó7ƒœt­+KÆ¹„ÆÉ–Q÷³Ò©:ñŒU5¾’ÖS°[Œ\nK™H™%mRs\n,là’ÑˆÌdB\'a#Ÿ|V‚…òÂ]*ƒ–†2Ä(ùéãl[3‚½+¬Ñ¯\nåòÃkŸ(ã?*ò{Ô‚Y!+ä±1ÂàÖÏ^k„qïšÊ:–¡vòZùJêÓ‘•<‘ı½Aae#Ãşí“Ô+¥U°‰!Œ33<ÍËÈ[%lÀÀA¯5»hz)²Åµ¢F…|Æ9õ¬}WÃWó$ix…\\å¡”•ü3ßñ®’ÙG]½kA0äÖjm(\'¹â:©éó,e4;máw(#£\"³îd–îvñ¹NŞ•ïo.JƒÒ±u\rMÔÕ¼ûUYüµˆlqø÷üs[*©«4déÛcÇ7b	®ŸFÓ\ZåÖ{¹cE#<úšØ\n×É+Om£iZê4ı.8âUAò¨ÀÍml½õ*ÙFb\n¡I÷ÅmÃxwÍ>;t‹\0#¹«‡SÒ²¾¦…‹oµ.Rg×‘´ü­ìEsW¾0¾Ñïî#›O\rÀ…]Ê:ÿ\0õ«¥»Õ¬ln>ÆŒ$¼-8Ú=ÏãXÚ´Ú®Vk‡I£Jvñ®ŠjÎì‰««#7FñçÛ^hÆ—\"óó2I»¥;ÆPGu¤ØÜÈNÄ—f}Ã?û(«Ö7zD3E´p‚pÆ8vĞUˆ—Ñ¦‹o1$²‡U=pÉıjf’wH™\'k3„»˜} ÇP«Ğõ	‘dëP|Ş_xQÇZ,ûš•{»Ó“¶¦õ¥úÃj‘ytc­r÷¶sÜê_¼Ùº’!a¼íÏ(­m+NƒåãŸ_¥ki7ª0‹µNVô9?Ã×“N„Â@Èäñüëº±Ñ•cFË$‘UÆµtqieõ«bÌÆ2*TÛFöåwE%»™¶‰dŞ¸ÅZeçëXú‹,3’NAZ¤h?&ÕÏ,k[+)jo^N\r«bWGè\nGã\\ôv¬JÍÁë‘Ö’}Qf—e¹İIëRB·.@3äväRæKB\'rÊ@BàÈ¤ı+>îÎòêåm1¶Uùÿ\0=kU-® ÇŒcš³oks2ˆ÷s´ì¤•Ñš¾Ç)†nö3©]ßÂ¹§\\é7Ze—Ä³3d8ëŞºåyP°Ú™¦z\ZS,’ÆÈè£ñ£‘=Ì•5Ís“Ñgcq\"º$ïZs¬SH’:\r«ê9¥Öî¤Ó¡†eÍœúu¢Òà_D²É…,3ƒëY;§îšÆß,Z½º6P¢ñŠÒK„.ñÏ½qZ¬rZ^Ÿ*A±¹ù\nû\Zµ[Ù#TiY‚¶s€ü…_6—{™9r½QÖ_ßD°’’©°zÑe}XîpU‰Ç5ÊÇ¾eÂò:ŸjÔ³Q\Z–—äşá5šœ¯äLjóJÄ÷70‚N9ı+‘ñ©,<ç!³]=Â¨,Ê3ìk‘Ö••—q«İ´’i™1Æ§\0d\Zë´P¶`å@%€ı+”ce:÷®ÎÅĞZDG$ =«E¢·FaZ>Ñòœ r©9ëS7qŞ È\rÁAëŠ˜í=b½Áoˆi%fˆKe¸8¨åQ·9ü©äÀtÇzdì@FjâîµNä±Ğœñj	#$î\'ÔsKòRÊ¹\\tÍK‹èRq[”Õ¹5dĞj¬ÀnàŸz=Ê1š‹_rnÊ„áÊ’>µ\"à¯$ãÖ¡GšKgéH®yçƒïSutËV{ÊrøÜqšµ=ëTXâuÁêjêŸ,dà“D[nìVKFZ\nçÏÖ¤@£ïµV\r#…ö©víàg¤æ«™*[–8\'¥!ÈlŒMEİô>´ìã‚8§ÌÄİÅè.8=éKã‚i1§÷7\'\'ùT»šŞèXØüzbœÄ+eºı(¨<ô¬C7>µ½ô%=uEÍ\Zş[\rB;˜ÏÌ¹^»ƒ©Í#FrXw¯?ŒÙzb»[è›Ljşğ{œÿ\0ZÊ²KŞ:ğí6âaê—;ÁæóòÇ¹¬K›¦y0¤ªg€E.³¨!»—2|ÁˆéYbã<î&¹u:9£¡í.©É¬ó133nêrhšpñŸxvªq³rOSRÖ ç}âlœš¿ešÅŸğÍcÆølÖ¥•ÜJB»úÕÙ%{™Ù_BóZ/˜,î¦‰mäûÛÉíÏ&¤x‹|²\nÑEGLğjÖ‹C9Zæ$ŠrÜÔ!êx­k¨F2eLŠ›w\'™\rf$Œ)2yÎ{ÒVàqIÁêsYŞÅ«FF9¤ó°yÍ5ˆÇ<{Õ9¦\nx9¦T¤‰ç”•$\Z£\Zè±?8Í¹zõ¨alJÇ5½-$aQ7Z6¡éV#;NsœúÕ˜œŒTèû›¯B\'‹ë 0=j(n7kQ¡9Ø	Áõ\"¢•Äq³“÷kö]InŸ¥gˆo’È×—:lô(fÁÈ5£k34‹Çë\rbmÃæãÚ¶,J&ò+È²±ìİ=ÖN™éZ1Ë“ĞXñ>à¥NzUĞÒz’Oz‹Óûã­E$9ë¼\Z†9ÙHg¿5kÌ.¹úÓ±*å\'‡kdÒÈù—ô«Dî\'§­5AcÏãCvCçÈ¡ƒ.ìßé\\V³ãÑgæ[ÙFLÜ1¸{ñë]ÓÂ¹ÀÉ=ëšñ7„­µ¸\ZTEŠôt˜nô\rëõª¦ãx–Ï(šşyäf–G‘‹1fÉb}kkKœ‘–ÛäÖÖw§jkwÑ°Aæ¶m Ñ°+{¥±•Úz•´¢Ò¸h³H]ÊpH•ç ×çÖ/\Zy \"g;WÓ5ë¶6qM¦˜Z VXÊ7A5áW‘˜n$‹$˜Ø©Ï±ÅÔNíj_µ“Ïãœf¡‡\"LzÓô\\y¬	ê9«	nb½s“ê)BÓ²´P‹4\"FİókN6°8÷¬8GZ¿mq°¸ìQåâb¥¬NïN×\Z \"ºË¡é&y_¯¨­­Ñ¼+,l¸9ç¶×ä@9ã‘Ò´¡Õ^Ñ÷Fr?‰sÁúÑW\n¾ôtb£?v¢º3¯ugŸSÚB<SdÄéè;\Z‹QÒşš6s2 ƒÇECq\Z˜ÌGnê“1^7rÙõ­§‚ƒˆúôÜ®¶+éÖ³µÂ«	\"Œ“ó•âºûic6«ê3Öµ´kxäÑ­İÔe?©«†ÊüíÅxu)û9µÖ¥ïFıÌ´¾Q‚H_j=V0Hôö«ZB!:ö¬«¿.\'T`Ô©»š*i²hïTI)f\'seG\\\n«©H÷Vî¶å£ôÚp±¥ŠUEL%ãƒÅ>gpöK©Ë=†¥qFó\nFóÆ}ªM6Îú¥‡XÇQ¸*éMÄc®Üıj¼š„1dyŸ)ìMO2L«$ô\"º±µŸsÎò:ƒŞ³F™,jDi—ÏBjÜºÍªd™zäâ¨Ëâ{5RU$•OQû{²E±¿ò¢8ó×‘SGfâL;äŸCYŸğ•@î¸ ª:UË]Z	vşsŠJ:òØ®D¥{š%VÏçöîz\ZÎŸ\\²vd–ß$wØ5;êV-&0§³0Õo7L”\"…\\¤­RÛ—soujQ’ÏNÕ\"³ÁÎà¿¦)¶*ÖÊbrCg½>ô[,¨ö°¤Sƒ’S½Ew¥Üê¤ŞKãæ`3ŸÂ®4šZìÌç(³B±ciÎ:ŠT˜O#=ˆªèŒŸ)ÁúS‰#Œ\0kÑ›å9ÓÕÜ´¤ÃçšŠã±\'§zb±1\'>â¦!¤\\àzRk j™YXğÄàU•d–>O©¸=LÔÑ·^k-İĞçm¬G<{@*÷ÅF­–È%˜U—,éúÕFÜ¬0sš\Z{Š÷ÔmØ%ƒ×ôªÁ‡BÇñ«rá¢Ãk?ØsS$·ºv\'Í\0ÕÈ‰q’6Z¦IàòqÖ¬+‡@G¹©O¹M|Ë{ã\0“R,äcëU£Q»9éRîçå(vè	÷&JÄr)áI9=ª Îy Õ…!WúÕuĞ\Z‘€\r8!#®)G+‘×ëR$RLÁ[yè=jÕŞŒ”Úè5Pg$\Z{g£¯¥u\ZWÃıwPòÆ¶‘÷¥n!]®ŸğÃJ¶^òI®ß¾NÔÏ¦c)Á;\\´¤ö<ƒÓ§sZz+âröş*öü)¢@¸]2ØĞİüë3Xğ¦Ÿwjâx­æÇÉ\".0ÀÖs«º6„\\esÃ5Ø£Z¸Ë»’9Õ%NsÅlx£Ï]~s*ÎLtQık\"°nÎÈÕ·{’‰Ilšc¾V™¹³Ş—~õéŠÎZ­Jº$Væ´­­bO<Öb“æ=êÍµÃDÙãÚ‹++KCDéÌ¿vB?\Z|Bòİ¾I˜àŒÒ¥ßš8á½ê^IRXóéZŞVÔÏg¨²Iq2|í·è*¬¨ˆ99o\\Õóó!RÙ¬{‚ÈÉ85Z´Dš¸Æ89àĞ¬ÅDòç…›ùæ³k••ìYw5Ÿ3zâ¦•Á\\µFfàäT«·r“æ¦8íQÇ óI¡Ü1ÀÅF²…—$V±ÒFsi£nt=*nTç½fÁp$`V­€2¸’Còö×*ª¼xÒs•†êŠÑiÑÉ#|Îø\n=0ÏãX;şlúÖ×‰%% ^ÃwãÒ°Spk(TsWgL©F\Z#Ñ´kµ½Ó‘¿Œ|­õşºÓRÑŸAï\\7†õ1iuåJO•!Æ=­wêÁ¹Ï×\rXòHê¥+ÇBıµÙ\n9ù½«R;\0fçØÖjbãYóäœ\Z„ivm‰ŠËÏ©5¡Ğh~b?\næà™A&´`’2y98àÓ^d³TL1óÎsN<Œâ«!\rÈéSå‚ŒüóFû˜6?=€e Ÿ\\TøÏ¥Œ—Vã‘Ò÷ˆ|;µï.bæ)@ı¨®\"ÒÚ[KÃÄL’#`×«d5ÏøƒJkˆ~Ól¹¹Œd\09aéúÕÓI¾VD¶º&²lZã5ä^.Ğ/lï®/ÕU­%™›z’v’zÆ½/JÕ#œ,,\nÍıÜu¨uôOêi*¨O!ÎObAüÀ­ù]\'fŒy”•Ó<ßÂÖÊÿ\0h–UR úõãü÷«Ú€%5ÍÛÜËk¹a•Õs½M^[Ùnt§{õ¥$K³\ZŠñ½ËF^p¤Ô‘NzUÿ\072¾AÁ¯G™-ÑÂü‹K$ŒjÓ@8&¹¸]•»zÖ¬3oQÒºiÉxˆéfo\"£zŒzÎ¸ƒÊ|µÂ1çÚŸä¸œNõb`—0’]\rûºMK][mn+X#„H¢…äö¤>$„c¼q\\Èò’A°ƒŸNA­X´‹gU;0[¨jğj§ÙŸCJIÓ¼Y¢|G–9ªWšµ³Æï›óıiÉ¥ZG÷Ğ~#5!°²n|´ÀèvXÊ17U-ĞÅ—T2	\" şÜwÈŒe€ê¥m¬Ò¡5À=Hª—FËOUf‹*ÇnvŒ“Ö¡ÃÌ~ÒÛ£1®ïn—)¼ßFS}q.Æ#®j­Ü7*égR9<u¢8Ú8Ø1`ÍÔ÷¬Õ9\'tÆªİYœ¼îìC1;Xs“ĞÔ2Xá˜Æxö9§kPË&¦©\n;·ÀÉ5Òi~Ô.­ÓÌ‹Ê	sj¾—{‰I¦cøzÈ]ê‹ñ«+)\0ß×òÍtÒiÒXJ#ò–X3…#^=>µµ¦x=leK§×‘…Ú+sì(§y“éZ{H¯1MI½V?\r‹ÇÃ¦	8­ˆümÙ#¹t~Å”5jÆ‚,@ç­Mu¬ÚÛ²«9pqı(S}åºÔç¦ğz+4±^n?íåKı‹w\n52\0à¨8¥½¼³ºVò®.•‰èœÈŒâ³#ñ±¦³)•n­Øí\'\\v9íÀ­#6´f|‘nÉœKF‚MÍ‚}3P\'qÆÚ™@fç–¥òÔîé]ò3Ö÷eP[§Uõ©›níQH9Û…úÒ†%‚¨îsQª[¯³	¹è\rE¥¯5;„eÀlš®êD˜#\Z­[–|ÂàN*ù[“×¥(~@ãµ˜/œôì(§¾£I_Q²’Wüj”©¶@øıjìŸ0“»ĞU9ÇÍœœÔÏ]´—Ğ‚>éïN]„á}*É+‚jEãøÖI_qÚÅØ€èGjx}„ç©¨G\0b§\'8\'ëU¡KN„èÄãùTë’~lb¤Ó4ËRèGmcüLxUúšõ?xVËIT™ÂÜ]“#û£úĞê(êË§ÎkÃş¾Ô¶ËwºÎÓrüä};wë^¡¢xkKÑÓı\ZØyås¹ÿ\03ı*X\np:qW£p:Šæ©RSô6å[éÇjã©©Ç²nà£a²>•Fu\'$gJ¼ÜóÓ5«îy4®c±ä_4Â^;WÎlôoä?*óB»OZúRşÒ+¨$†tªUÔ¯ñ6‹.…¬Ohã1¾şòŸˆéøUE&KŠZ˜²•Úx9õ¨ÀÁ8©zÔN `ÔJ=„‰yn•n&Wlµ\\Õˆ¥Æi¥a¦hyÌƒ§zxšx\0È;Wµ$˜cÅ]Šá8KÌ/¡j(IÊMGq²EŞ™ÏÖ¯•†A‚âª\\Æ±ƒ³ŒûÕ«§¡“qfc9\r‚¤ı)7yÈúÑ&íÙj&fT»ßQ¡Û‡©ªó0íøÔ€¹™ïŒR“)9u\Z±ŒÄôíTæÆxkÌ\næ«Ë‚2M-PuÃ€Õ½gv‘\\Òd*ÂLè@&µ’rˆ¡.Y\ZÚÄg—øÖB’;Õ‰\'¢’Ù\"¡eç<`ÑNü¶aQİÜz3+8¯AğŞº—Vëo9ıìCÕÇ­yÈ;»ô«6×\rm*ÊŒC)â´”•™0›‹¹ë/r1•şuXÎ7p9®SO×Ø,„sß<ÖÊİç çµp¸Ê³;c8ËcnÀa’rjüw$à{×4·yç®EvO$ñéG3¹ZlW$€20jı´Øáy®bÒì2ğ1“ĞÖŒ.sĞö¡«Hİ.3ÅKöÈ–“†ş\";õ«‘Jßñ4’Ô†‘k ãiç<æ ”wƒ­4 ´ıİp9§f¶%´r:şš#&ò1Ôîq×õÎkºŒïáæ´P~vÜáëÏéÅç)Ï?…p^\"Ó®,¥‚:Ôıõî¹ş•ÛB¢œ}œşGj2Œùáó<èÆBœrimIƒÕi‚!WoÖ©º¼rd`ı(§Í	Y—+N6E¢Al½ŒĞîÍG¡¸§9+Üà×g´rèqÉX¶éV­g+ ~Rk+Íps‘¶¬$€  æµNS\ZMjtBnr*Ô3w$V3«.z~5e.Üt®ˆÕG,¨ğİ5tHd`wõô®r;Œÿ\01]b÷ÍæM!HW­ş•MÃšeQU#+DYU Á¤X¥nLüzb·®´øåQä¶Ö±¬Å´”78Ç­xr“æÓcÛ‚•µ(ù^\\…CZ³õ<Åjï#†RvãÔ×L¶`®gÖ§‹O·\\1Ïæ¥Yh6®qş\Z‰ÚI‹ÆÛHãŞºEÒy”‘µ:õ5µQGƒ…ô(‘‚qWyv2…]ÙRÏC¶·äF¡Ï%»šÒ&1ÂŠ£>£ ‡/sÆk™Õ|k±ò¢rÏßšæMQÖÜj6öQ2@u\'Šæ×ÅÒİ40è¼§5Åßj²4¯)ÚİéúÕ‘ìçŠîPñ°b§¿·Òª.\rØ}A¿ñ*An]Ñˆøkˆ¿Ö~Õ|×/.×b0Æ\0éV_\\’ş6!C  €2+\r¬Hf,w(ïŠ¨EËtTæš².O«9*Lìõ¡mL–íc¿¥6;İ2ÀŸ©«qxzIr›S¨c€+UïXÁ½l·\ZTŸa#éMÈ1î«·÷kyxóÑÿ\08MñŒ.9í]ò”T½Õ¡Œ”}íÊî¿&@ïÏÔ$mÈ=êĞS´ÇF<¯^õ“ßÈ¥6‘ğqº™)#–jy\\¾=ø¨Øå½sQ9ô.ïä a9ÏzE^0@üi¤íF\r5K‘ÉäĞ¤¶‰:ßAÍqÚ ¸@W }jo˜/ÍDÌì§•-X¦å5P£\'52ÀştÆsÁ¦ä·SÍeìoÎû\ZÌ¸­};E¸¾}Ç÷qíßè+)œzšô-ì]YDF•ÏlŠ&Ú‚är’:\r\Z(,¡X!@¨£Iõ&ºKyGL×52r\rj[O0;äó\\ûêÎ¥\rø\\õÉúUø¤$px¬H¥\'n5£œ­@®iÆá¸\'¯`I•ı9¬õö5f69Š-¦k–[?J‰ÆG¥<1=4ãŞ—¨åŒ¶Gë\\oü6uÍ+lK›Èh	ïê¿w.¤š©4{×€óR·Ğ7>`udr’+) Ô`ƒƒšôoˆşkK§Ö­#>L§7\n:+qó}ó¯: ~\'ô­4¶„´È9SÏ\"¤¹ÃµŸ)ÏZnã¸œTÙ68š\nW±éVÑ†sYQÊ¹æ´mİ©â«EªÕ¡vç ûšt«ğ±lP»s°c±¥^ì?:Ñ7}dŠRe‡\0ŒT\rÔUëÊÃíYr9İÍKWzs\"ª»dóÅJìvóŠ¯!½dİ˜ç*6­ÜqL\'¿Zj×¸ú¤«nXàƒšš\'ÈÉ=+JmI1ÀğJğà€iŒÄ¶1š·p¤Â™Àe­o©Ì€œ©§:©]ÀóéQ,ƒ×š‘]]¹àúÕ\'ÑÎ÷BÃ1Ã8õ®‚Îÿ\0x\0‘ŸjÀ–!Œ“ùQş^ELá+YšSÎÒ9AÈ©ÄİóøŠæ­õÊ•£Ò²ä?\ZãiÚÖ;9“:/@ÆrkZÖğ7g5Å.¤L½hÛjÊÉÔÅK¨¹Ò+¥À!¾nÕv²H%5ÉG¨ƒó1W­ïÒF¿NG4İî-ÎÊ)ÕÇõÍL¼¹ë[õn8­HæFPX;zT»!=u·#~SPÏ\0“!—‚=*U”9l­=GËÍ\Z’Ùæ¾#ğy‰¤ºÓ”y0c§?ÃşÁ¿-Œô5ïïfÎ1ï\\—ˆ<mª3Ï	ÜuÊôcî?­uSÄ]rÌÆT–ñ<  VÎy©LÈÿ\0(ÅYÔtÙôËƒ\rÔL:g¿¸õª;î8®ÈùÒWz’ãÈ§&õ|çåô¨K0=i2İØĞŞ¤ºjÆ¤Nzç5?š\0äOµb¬…:1Õ:\\É»=j£Vú39RMèmÚH\ZUWçšë¬õ)B\n\0èç)s$sn\røV”:ÆÜÏ¾+š¼eQ§Ñ4 ¼ÏFMK~@lä~ua&Ü<{W®2¤JÊWµmZê›ÔÙ?Zå”d´jÇMÑÔyê=)†èG’â¹Ùµ`¼)³åÕdfà£®*¹t¹º:·Ô‘ˆüÇš¡6¨Ò3$`³{s\\Ú\\ËrûId\\äœv­Ø1ß§4ÛĞNöº9ê—Ö²¬;¶—MÇœdé\\‡^mîÌXœ’OSë]\'Œ[Ø†à[frxã5Ë!ÃŒ}3U‰„Ó:û‹a•\rØR£sgõ®rK†ÜÙ”ô­}^æXô}>Ùh„®¿O×5…÷ãÆ94ãÊ«S.kGQ#¸|íÎ}óW¡½~w“Ç½Q0<[[Œõ`™@có}kXÎ-YŠkK—EèÆD˜õd^Ê¼y™ñ *óFNâ°ÍJ”b¶¹\rà8;8ê+¥ğÇõ/¹kd)n:Ìãø\ZÙğ/Ãû­véo¯HlP÷KŸóü«»ñw‰ßÂ\"ÛIÒ­\n@>fÌä{{ÿ\0ÕÓ)7.Z{ÍÚoSÇ<AáGÃz”–—1tå$êV±-Ş„b¾ñv¾.øtúä&+ˆ\"2£ gò9¯Ÿä$¹.7b·„ãRÚ³G<¡i´@û[’8úT,A ô¥erù\0…¨Âîl“Ç~+5¸$­«@ù‰Áô>•$±tèjF\0qÏ&›Æ	§\\ÔÅEiršw¸ÂzôÌ·<p:SÏ©$ÓNÓËzÒkAjÙ^BÛ³´ÅÏ&¦u¸æ‘S?QúV)¨èk%qà<•¿ ]›k„B~V`{g½bÆ\0½ÍZ‰ˆ`ÀíÁãšwû$srËCÓmåc½_°zşµËh·æxHc–Sƒ]X##<ıkV´:–½M¨%Â‚\rhA\'9\'Õ‹ÀÏ½hÅ Üj‡¢Ô.–æÜ/Ğ“ÉëV†x$ûVtrU¸Üqš•+è-ÊqÎy©WqàŒš®s‘S¬™çiÙ±­eÁïÍBé•éÅNs·}ûÔL	=\rKCNæeıŒWvï±«Æà†ë^âßKáİaàùšÖOš	uô>ãü+èÖ_—•Ïx›Ãğkº\\¶S¤üÑ¾2Q‡CIó|È ‘P\0âµµ=*çJ¾šÎñ\nÍüìG±¬ƒ/ÓœÖ–]Û‘.ÕsŒàŸZ•cÊr=ª·™Ï\0ïW¢†X€>n*V‹QÅŠ/^<	€úU•¿…¸=\r40cóÇŞ¡–a¿•ëzË2º4+d{\ZÍ”ÜTë\n*äg?Z<¥aœsTß.Å$ûŸ9¨\\1íZbãšF€78ÅB»w`İŒ¦zƒG–ç€\rlnÀ©„\n0ÜUsEhW0Å¬ç9ªX¬fïÇÖ¶†ÑĞ\ZP½ñG6š\rÓ]L±bá/ÒŸ,NÙÉëZlCu\0Ò*Ç*)ó;hÅE#ìœÓ…°<m5¯å!è:Ò¬{N6ŒÒæ{¡Z&WÙOL\ZV´Î\\VÒªç<RùC<b¯n#QLÉ×æû½*o õ\0Æ´ãP¾œõ©V5-Ğ\Z›èSÜÇ6­Ø“ŸZQo$x*Æ¶–ôÅ=`8Qõ©‚l‡$Œ¤7@îYµn;û´`Ãh^ù«BÜ£¯½e`)¥Üjw\'ƒ]’6ùÎ1]¿Œ¬ ş•ËCé’iVÜÃÌlC{´İ>b”»‘iª‡#T÷­HoA5æV:”Ğ’^k¨³Ôƒª’NÚÉÅÅêUÓ:§›<}*=Ñ1“T\"¼V?Z°¸õæ•…`»Ò­õg†æ’&şõ¯8×|yhï.L±uòÉù‡°<f½Md#œóQÍ–$ö­aQÃb%Ï–ÚH$d\Z9UuÁ¨vy5î—¶–“Ä#šİO÷“5Î^x#J»ÉˆIjÇœÆwÈ×B¯êc*rèy1Ë\ZqÜŠêo|¨Û†0<W	>m­ùñ®~ãL»³¥Å´±×+ÇçZ¥ªfi>¨¬öÍL¡F8É¦‘ÉúÓ·c&«•§~‚NäèÜç\'Š·Ä‡*ßZ „îõ­ÍFŸVŸû‘)ÃÉŒâªê×dŞÂÅx‚<²Ã¡<æ«Ï©\\)Á@Øt¯B±ğŞŸfŠ<³+wisøt­)tk˜öIkÎ<±ŸÎ¸êN›5QoVylZËE\"ï]Àõã¥tÖW)um½#†ƒš~±à,q¥°¡…Ûù\Zçíüı:,ƒ/¦£•5 5+X¥ã-†hÎ0Äsï\\˜\\6GOZê¼[\"ÊmäV\r•À#½rÙ¨æ˜¯$¬OsrfTÏğ(QôÈÀ¯=ê2”Òr03Z^-[XÛØ%rÃÚ•A,:’j²4† AÀ¨c“÷Ù\'òÓ@I[Ş7bÑ£–u”!ëËS$Ğ®ÿ\0Ö&ßïoØd$$À8¡de|äŸzÖ*Îëa.[Y»¯|Uyo\"·Ñ¡ò,\"ÁÈ&6c“éÚ·\"øáÍ_HŒkö¾l©ƒ»“ÔcÕá-!ÀÉ\'ØšA3mÎïÀk«–œµ…©G•s—ã_ˆ‹¬X®£Cö]8cp+‚àGCÀ¯:–CærÍ-µ¼÷®±[ÂòÈÜ\0ƒ&»]áv¯y‰õ\'‹O³ş&–L0ü1Z´¡beÊŞ‡\nÌH9ö5]ß\';xÓøÊÇFÒõCm¤j	u ŞÁ²s‘ú~µË–Âä®A<T·ÕâĞn÷»ÒÂç\0ZBAàOéK½BuÎ:ŠÍêö\Z½½á¨ïÖ£l–ğG\'ŸZŒä®i5.[®˜ÖBGÊ:$ÎIüi¡óòœÔ±0İ³Ï¥.[;Í­I<±jzFp9Ï<Rùd`óLÔâ?^+KØJÖ±sN¸{K•|ü§ƒƒÖ»{9üÕÈ#œ×\0Œ\nqÎk¢Ğoƒ¡….ƒíşsXÕ‡ÚF´ª4¬Î¾İÁëWàm£©8¬ˆœºÇŠĞA€3Í`Ò:º£^Ü@È$rkB`I\'½dBÇƒšÑğ5f¤m“œejÆñ¸\0k:)^õeX¶\0${÷£AY–s†\'}éw\00{úÔ;øÁ9§#\'¦CJÃØs`óÇµC\"“œ“R†)­¹¥qÜá|sá%×¬„°Æ¢úû·ÛËîéÿ\0×¯šÉ¢™‘ã(êJ°aÈ\"¾œ–0êÙç~:ğ‰¾MJÉ1r ´ˆ¹&Qôõª¡6±äÛJŒg9¥Ù‘‚O‡ òiî\r9rÚËqn®(ÎOçHÌ1Í4È¥k8ÙiÔjHp?6q‘ONAŸL¥-‘‘W¦ì¥+’’Gìå@ÍA»ÔœÒnÁÀ¥º‰ÉlÉwüÙÁ8õ º±¨€íÅ.1Şï¸\'Ü¹ÈÁ©w…ëÔÕnœñšx;†?Z]Få}‡‡àÒ´Œ)…GPØ .FKgÚ„šØ~âî=sŠU‘ıM;äÀj§äì…ÎÈØã<Ğf‘Ÿj0¡G“N\0“÷ªÓMv&0àÓÒåæ«óH¨ø-ÉÁ¡%{‰É½Í”º]™\"¥K¸·aù¬xåêó©ŒäsM¤İ‘<§A…Æ|ÜgÚ•Ô#dÃØÖÎèrM]†ëwŞn´&ºƒØÒŒ«gš•­ÉÚH&³Ò`G³§Î·JÈä\r£9\'­5yhŠrióÛn]Ù#ĞÕ^-FKYLr7Cß½n\\ÀS§\"¹½nû9•.œşŠÙŠ2¾ÇEi®b	ù}I½k©†ş•ãĞêL÷ˆ5±eâ€rÅO¿Ÿ+FŞÑlzü7¡ÔÚ¦2g\rŸnµçö~\"BsşG5±m­#ù¥à\nKA6nO yB”ªà19æ©E0“ç\'“T¯îÚÜÆpMLavRĞÓ–bpib0(à2¡†A¬a~d\\õjsÎ~¢Ÿt$ÓÜ–çBÒ.X³ÙC¼ÿ\0\r§ô¬ù|#¥HxY#÷IõÍh}§H5$3o\\–ëTªÊú²=œY²İ»Î˜(>£ü+v?#N€¤*àt>ôñ0MG-Ä{°ø\n*Ü¥-Ş„{(§t†.°M¯õàÖ¶±}„6OCŠåõ6·Y‘à—¯ßşUR1}èFOqQêiÊºôWÌÛUoNõ‰â¯JÅç€¤Æ2\0|w_~zU=,Ïö¨‰™CÎxö®âğFXl‘ƒU~[4O)ó®®åì¢WR	Ö ê@w®×â.”tí`:dCs™LgŒş¼ş5ÄœvÈ4º‘(¤¬?*B¤’ÀjšŞ)åÁTbì½k¡Ò´­çÜ…Ïğ¯\\{ÖÊü¼Ò0m£\nİ„±ÜTÆÈùÆ@®›WµP«2.İ¼63X3á‰ÏáIÉ»h6’ÔÕØÃƒ‘ƒøTÄ‚Ù~•^¾ „ãœñRìsõïQ)¹u±KšÜÉ¯lŞÆìÀçsø¨c9K0sMw3Ñ †Ä^F®†fÂå}†rzÊ¼îBY	G½zÓ¢Úæ‹Ğæ¡YJ.2ø‘èpxŞ-6m%¡Ó$\nC±MåÏ®à?˜ïX——³jÎN£âeuaÑ÷¿˜År¨İÌ}x®·KğdwV‘ß_êöÖvíêà±üjËHètÅ·rcáxmÈmNîáğqå@g·Zå‰Ì„&@ïšôØ<\'á¨tyõ3-õì)òåT.N@à`zÕM+@ğ÷ˆc¹[;¨¤šbFxÇO¨«½Ö¬—)jyêÈ½|Ş´ÒNqÏsO–1²ñÁ#­Fn@Î+rÆ\\¬^èìx\"œXœ€)«î\r.ì)84š¶ô\08ä\nt*ÂN1­5w7Z‘sè9ô©wcº½™o‚8ÍH7\09È^)N**rä6åëZFVDIk¦Ä‹ÊäSÚI²ê7İÂœâ«ÆÌù$b•A<ã w§-Ew	]İŒûÑqÓ­lBAmÅ«ÑoA>[8Ü:\néà” pOq\\3‹Œõ=+Æép0ëš»™<ŸÂ²àcÉ«ğ>NI¬ÛW$Ö‰°qš´„g9ÍgÆÌ}ªÒ6:÷¥è+–Ë¸£2g­3~G0°İÍSójYó9Áâ¤S¸àÕ!/4õ™jZC±g×æâ uÇjcÏ·€p{óQƒÆ1øTéĞ¥æyŸ¼ÈeÕôè°\0İ<J>®?­y¡|óÔ\ZúNIäcù¯*ñßƒ³Iªé©º7;¦„”=ØOnÔ#9_¡çÌÜ’sÅFXõ—w\0i¥òxÅW“%&Jç½óÍDÄúóFáÁïC]AİìJ[…ÈÎN\naûÓCäàÓå]‰C^‡ÖqœãéPäŒàu §=)$ú°g§ZpÜ}j	Î:?cÅ>T·Ø~\0àÔŠ}J¬$à“‘OV;¹<S¸ä…˜?ƒK»#¦sQ’	ëFşÛ…=-p˜õ§jV$óQ1ÁÍ İĞ÷¢.û´L8ÆM&ÁÇƒõ¤\\I¡Ø7×ëDä––ŠÙÎ\r(—\'ùj\r¹9ôõ¤ÜÊqŠ İ‘mˆn­OBÃ¿õXõ8õnG|SLm\Z’À’zUË;¢¯Y°Î7`ŸÎ§¢Pzjq–¤É»Œ‹}oåğdô&³¯lØ4ˆøÏ ú\n«¦ŞyS©wëÍnê%g_5F<ÈÃd÷8æµv2ø]Ïu1JÊGÌ)Cdg85gW5;ŒcÍR–ö¨’ksE©rŞè«MkÙ_²_õ®}àô©bœ†Ò¦pH¸³Ğtıh…Ùæüµzâée‹~FS\\-µÉ\\`ğkEµ$‡Ê¹¬ÒOH—[SrÑŸ!±ÍjBB[;«”²•‰É­T¹;v†ç×Ò‰Eli~¦”’°” 9ÅY¶“$$ZËYYÆ$ÿ\0xÕ˜ädõåVŞæÀa‚ÇV}İÂ³ãĞÒ­Òì\nIüë>fumû7)öÍ\nëm‰Q¾ã\n­Ì„«íÁ©¼«˜ÔQ ÿ\0dóUí~Ë-ÂåŠnşëWAk£Ü¾\ZÙÃ\0ßtõ­£k¤ÌîÒĞ—ÃwéK˜ó	Î+º”)#oLdÖ$-øš ·\0à‚Wñ«Ğ\\	<šu7IZ×ôa¬hRĞyöçÍCxê3ôÍxÙÒnAè\0>õô=áS‚åaëë^EyÙnä·c“m%Z•gÜ™{ÊÅ-%E½Ÿ—\"üÁ^€¬@5H·$¨ä\Zl—°pŞ•*i¶J¡ï6E¨\\³BÉÇĞñX)#9`ø\\t­0VYÌM2émÚD£#œ´š}jË”‚ØpA#ğ©ü¾7c5Z¥NWŠ±¼¨Ú™^kv£Ê\'îÚç±Ï#]ZKk~ÑªJ¥HÈúŸÎ¼P„ÃqáˆädwÁ#4Q^•\rc$sb ¨ÕN=JBOö‚Ÿ\\f»Oè–·Q>§­ßì´„}Íç{LöOj(¬Ûkc®–‘m\Zr|H…w[ÚéQgìÚ°:…ú“nÕ‘ãËÙmÓN¶¶Óalù‚İy|rMV|Ü¿xª%—C’lÈ­‘ŸsMA€ß/­Sš¾¦0c3×iÈïNWöëëEJ	É ri!A\'ï~4ğv6G9¢ŠR§´*iZä‘°$–ÍZGQ§ëEN*;9;£.ì	§n@zEâKl’ŞuŠ]ã‚ÚX],±ÆÁ¹ qE†&(ì¢ß³¹¹÷bxz¾h¢¹\Z.œœ•Ù¡	Èêxõ«ŠNÚ(¬îRÄíã“P¹aƒEW{\róp9ÈÏ\"Ê6äfŠ)Å&>¥y\';NI<šøëÉõ¢Š†µWùqš‰ÔK€xÅR\ZÜó¯øKæ^é„o¼öê~ùÏ%}>•æ’BñÈÑº²²}h¢¶§³1“|Â}ÑÉ¡F‘ŒQECÓQô›ñ¤zóEGUroaÛ‰èzS”ûãI¢ŠµÓl™M\'€	¦‚sš(¬“³)6*“AüéNCdgÅV›ƒvNM&G\"Š)IÚ|¡ÒâŒõÏáNÏ\0´QRØŞÂ†§4„ÜãŠ(¢\Z2ÜVÃºŒ“MÈÎ	¢ŠÚÄ=1ù†NsOW¸¢ŠË‘jÃdL#œcÖ¤B\nßTE·«ô/[3nQœ{×Le2YCÉ!A\0QEvBO–ÆM_CÍµbN§pMçDd¶\rQ&RZ?)9£…8ïE‚~õ‰MŞÅˆnZ.A£äŒ¹Vô\"Š+Gn;\Z6ò£”æ­ÆæŠ(i8šÅû·4`p\"%=ªe˜ÏQÖŠ):q½Éu%a%Û ó#$JlwSÆ¬#×¶EVoâå5m¤jYÃo}\nüŠ&é¿Ğ×ImÒnc\nædÛ¸d÷=P›W\ZmÜ\\4÷I.79ËmzÒã\0İ8àQE\\$Ú¹Ü³,€©lüµå>$ç\\º<¯ï3ÇĞQEo\rÙÍVMnÒ¯Î{÷¡’L³rh¢¹+JÓ²5¨YíÎÖÇ§Z ‡èÃ×&Š+M•ŒiÍÊNãâO¼	sSüœóíÚŠ(åº”»3GÿÙ'),
(4,124833,'asdas','asdasd','asdasd','Male','09123456789','sda@gmail.com','2021-11-08','Tagum City',124833,'ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0h€\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0èƒÁ©É9aQü¡2§‚I©\"?{v>¹¨DîÄ—!qŞ–2|¶sĞqO}»÷­);ßŞ®ákà¨$u5cÉR{š´0xbyëÏ¥A*€6åp<•.íèW©)ı9íÖ—yÏ §§*:`\ncæÈÀ=è½‚îâF™\0ƒ÷)ä…$SPìpAÉ<ĞÃsœ“Ç<Tók¨1¥rA¡äS—9Rü¹ÆpßÒ—gÊH=OåCdër%ààõÅ #€qšNHÈj@¤.sœÔÛK©fNTâ¡UÛ×¿Jty1îcœŸZÛ<àŒ6)ZÚ\rh8±\nqÍ\"ÌIÃO\0í§*ê?Ùæ‡¦á»œŒSœ€c\'İsO@0SpNh‰´—Ğwäc8Á¥Ëä‚>^Ç½:4ù‰êrh/ÍŒ’\0æ¢pÁæ§bNâxÏ)ù°?ÎhOP9ZÂĞ™$Œ\02†çÛ¡¯.¼€#}àÃÚ½«RŠâXvÇ`z‚Tçşú¯*ñ$&;ÆtØsÉÙŒf´Œ›ĞšŞÓœÒ¦EÀëMÚÄäõ©”™\'­V†L…\'½ É\'Û½8¨cÖ–09§­ÉI¦ÕV5j]É©÷Æ:S­‡ñzS}‡°ç%FD¤g&Ÿ!lôëL#¢-!Zã¥\0êiŠ	hn¹ïO^yïUÌî°íÿ\06jy`{ã5	lsjU`‘#$ÓO¹2I£“œàPÒgæ™\nåzòy4™ß&1Ò<¨³	!2MU¸bqêäj,O^¹ªW<¾İ«²¶„¯ˆˆÌuèóUEÜ3•n ~µ<š—-…B¹.y=…I½Â|£“PGó1c÷G¬¬nT°8©+¶WåÎâ\0”éíäS„X<*9T—À\']Y[<MXŒ“Ç_ZEıà\0uâ¬å.ô“w*OB7# ÆÜµ$Hd,Ç ¤‘Fş\r0Š÷dÔñ¸š²Àùx•Y\0u4YÛQ7rÎÒÊ\"ºÍn&MÁˆ9Í`#¸®£ÃÅ$dFl{S‰•ìv:NÖ·‘˜Ê‰9?7µ{6_È]àdu+Ğû×izj\\Zù¯*©BFÖ½F‘ZÎqÚö»ş´æß%Œ!ohš._Z‹Û­˜ãÌB3è{\Zàî¼=}3B‚`X˜7éÖ½¸ï]\\Ø^ªAòÇ0Ü6Œ{óù~u$ïÊk¦œ­{¼5äz·ïà‘\0Fºéë]È®S@mVYTÍŞA–”œûc&º¥û´WÜœ´^–Tn$š½PL¹&²NÌì­hØËò9§,vJ´V“æ¶æ¹æ¸´VtÏÒ™åÜ=jÙ¦0çÓ!¦U’ßwâzW7cÕµ×¼çìvDÅ	şü‡›è:VŞ»u,V‹ikÿ\0—äÅşÏ÷ŸğnÆÂ->Î+hGîãõ>ÿ\0RvÔ›½‡Én&¶’át+Ÿ¨¬Ÿ	³·‡-•Û/xÛêÖàëšÃğğòn5{?ùãzÌ£Ñ\\nÖ‹İ4›, ½j¼ÉP*ßE\"sĞ{ÒL3¦Aß¸Èª’(çv`A$Õ7\'¡ëÒ”#¡94Ò1OarqQã¿ãY½Sƒ¿0àx§±Æ}sQõäö¨¹LÅ\nXc8ÇZ‘\0æ£÷¯O­MÏzÎÇrĞpÃÊ •¥q†l¯çMóœòqN|ïÏQÿ\0Ö§n İÄEEW•¤!qœdçµaXƒ©ªó7É $ÏãI^ãi¡aa³yæŸ´œá#Ö“h% Uşµ*¾3Æ:ş¤¬‹³Ïò£;²r)«ÄÌŠ”Èàg½MºØDEäƒŒŠ-ƒqJm?­\n¤yÇSU}rÓÇ9üêO(ŒÆÓ¤-ó?_”sQ¹Wc*ªÔRDØùNO\\U“–U4À ¶OJ¥p¸İ§Ë÷5${‚î\'8£’rG½(ùBƒéëP÷(cÂç{Ó”‘ÏrZˆ0ó\0$òjB:İ¨Z€±–C”¬Hb qœçëLG9Úä€[¨ô§Äú\nÂJ¹àj>|¼‘ÔÔÍ&àN\04×%‚ëHf&µ<v°1±ÈíÍyF¹z.&8O,}sšö-NÙ\'Ã\0	\'nâ+É<CiİÈ ó$U<ÈF¥\\5•„Îi™89ÅNÀ)ª¹¯z›]Äq[$îg&ˆ\0¤8Û‘Oo½Šc’)Ø’@Ì1ÍXE\"<Šd –É5`‚ “Uê+²7b””·¥É\'Ö¤\nBc	]A’2iS;É9©F\0Ï4Š¸íÖ«¦‚zÍ=ƒ«ü=iåpàñôà7n49\nÍØÒB¹9=¹4và~&¥DÚ*¶w;°ËPIÉ÷5`!cœSe^séI‹–Ú‘*í8©ù*@Æ*ÀÉÍJœj¢Ğš¸°¶}*Ãüİz/8ÍE\0İ&EZ1“òıjÓ¾æ.*äqÆXïnÿ\0¥¼~5q Î\0ÅOäm^GZV-ïnŠç<“ZïjÃh“Ò–;ş/^ôkĞ2Dm$ã·½@Šv’ıë¬:9’È¸ f¹Û«wŠ‘Ò•®=zXæyüj¦ş05`©ò›šªß/¥\ZÔeç·¼?0ûti!Â1ÁoJç#$œ×IáĞ‹t¬Ü¶~PW?ÔUSøµ\"¢N\'°h$eˆg+Ï5ÛèR4RKnÄwÕçºEÃYÎ’²\0Ñ¶véÚ»M7Sšöçu´Ä˜Î\\üÌ3ƒ§?Î®×MÎñÕ˜9…TÄGBGJŠÚUšt93ÍLy®F¬ÏN\rJ)éJ:W#i¨_ÚëMaw+Kª³@şåÖºÄûµs¦àgN²¨ÚKaÔÖ§R\Zƒr¹_ZiZ™²iœš¤ÎiÁ•¨Ü¬jÎìTd±<ëS°¬-I›T¿]\"\"|•KÖİşú±ëíõ­!«9j$„Òbkû¹5©”¯˜<»Ta÷\"õú±çéŠÙÅ<(\n\0 ¥aë.Ğ´ Eö£È?å’|î}°?­V²zò$µ5ñÏ5Ïo[ÊŒBÇyd$8àş†¸Mkã9ËE£Ø*œñ5ÑÉú…Ô×ê$Õ5Û“qvó8Q÷UG ¥ikfD“kCéµuhÃ©§AÈ4ÙÊO5CÃª†t¾w²ÆIÿ\0€Š¾üıjÄ+Úå	²GcTÛjäüœç¡ôªoœôĞŞB8ç­FzsR¹ÇZˆç…õ¨fˆa œö¦°¦(cĞóÅ5ºœÊ•ËLÃˆWã=ju#$ñT¥Cc‚qV­Ï™{Ôjv$š,B?y&ìî$ƒO”r<Ô0ç?=[úT²0~sÒ„ŞÖ@ÙÇcš‚aËŸ™—·Ö§W§àÒH«°är3Î*FØF¤ª·=ƒ…#æÏJÜç *À¶¼i961Šƒw,y¥Á\rÉëü©İW®8â˜ãçQÉÁÀ>ßç”ÄH„\0G¼ïaÔSÑ†ñĞÍ,¶áÔƒš-\r\0\0‘Ï­)$ï õëïQ…>fsÀ4£…|Õ,vº$\\ù=iA9Ş„aäƒÏ4àrØô¥v!„¶pÔ¹Ú¤ã¶)ÄïŠal¦1Ôâ„®R\"EÜÜôÇZ‘åÉ”Øƒ	¦\rÂq·?­#7¡;GSEõ´%)˜Á*G9Í+\0Nó¤ŠMÌGğ…ãó§“º@:â§ ’!ö6zÉ¡[=³OuÜÌãÍ10‡•º(jèM¹(rÃœ{×”xÚæ,à,d’¸9Ïÿ\0Z½‚â0Ñ³>â«Îzò¯ùó]ÈpbT·SÏAWMêL–‡	\r×­dy}~µ]€ML\n•À5º2hŒ}ãšağFy«^îG”ÄC(<“MÈA?054êvífŞÔŠd¨LÄÕWe¥¡Qa;ºÔÆ#Ó5l\'—\'÷¡aßãŸ|P˜¹J&!É&£)…É«²&ªRIâªï ¬VU,séRmÁÆ:Št+‚x©L_6G&˜8‘Éç ©Ö\"p\0<ÔÂØõ«‘@W\0ŠHJ7+Ø§€ª„¡$õ­+¹‚øÕ€TàTÆÈ·S	êzQ;ñ€sR²a2Ã­Men%¸]ÃÖµV2”KV–¥ArOéW’Üã\'jìPB_Ã5\"ÂYÔÓëEú™ò¢½½©i7V&·ûˆ\0É<â´ÒÜDœdœúS\"Ò\'9È¦†ôZ%{øxÊ£dã¹ô­k}8K $õ4Û+1«#òäŒúâºk?.=î>f§}Z•–É6qŒ\\o‰tfŒı+ÑÚ1ÔU+«U62¬ÛhÖ:+<~VàxÏZÏ•Ğ}kµñFĞ*ôÏJãä)µUÕ‚ÏrÉÎ+oG‘Öú˜ÎáÃ#®+zàñZºt/s Tm­ØçéîDÓhõƒ{½«L¡ŞçvÓƒn0HÉëÇTx‹Q‰$ÛÚ\"¿v	Œ\n3Ø‘–aÓ¸¬\rrÚá«O*İÄ<Â‹²/?•fIm{&ÇòÛr¶GËş<\ZÖåg\'#”lÎÊßV¼[…–³i–Ë¬L7d÷ÜÇšèSÄºşŸm/ÛµkŸ?*öñ‹PDñœd‡+õí\\~”ö—Ml%‚;Kè\'W›vÌ7WØúgéí^¢í¥­Øİ2ù–ğoqÌ¡ÀÁà\0Gl~Ø«FKßW8ş«8T¼e¡ÌOã}Z-JÎkølà¶¸£ºu2|œüÅTğİô¯GÒmFº]a&…¾éµBşdµsw^Òµ}*ê;t[[Èn$Q(€M¥kÎµ(¼KğÛVßo1Ky¹F\\´OìG\"²’§YrÃFtBœéOë3Õ|KâFV×ŞÕ]ënê$Wö#.}r+ÏSâî¸·­;EjÖíŒ[•?/Ñ‡?kÏõ=ZçV¾šúîc-ÄÍ¹ÛüôÒø`@Ús4Âì—(	üêaf®\\æäî®A°øÁ¥Î1{eql¼˜•¡ı+ ‡ÇŞ¸ûº´\nOi2ŸÌ\nóÍ›70#{”™b~õ´Gßˆ\ZJo¡µE¢yéš¿Äiú|³Ç©[ÜL˜á‰÷nÃÕÃ7Å­?I±hôûIooec$óÍò)õ8ê@è:t¬‰ßMqÍ­¯ıù_ğ¬©¬4K–\"H¼¼ÿ\0Ï1Š¨ÆœVÅ\');Ì©­üHñ&´\Z9oš?º·ZãĞ÷5ÊI+±ÜX’{“’kzãA·Î-å|ÿ\0´Aÿ\0\n¨Ş½ÆQ7Zú\"×\"fWVÉ$UÛMÍÒDœ³ tÉ§¶…¨õÎsZ\Z6‡©®©lím\"F²©va€\0<ÔnÊr´=GÂ^%Õ4ˆ\"Òu=6âX\"\\E<c\'‡µvKâ;ïó¢Èş8ôÍr»×ÌùO~2j×£€G”ÛOV;YènJÎC•¹OøÚ#Q™ÏÊá¾†°üÏ3îã>ô¬¥³¹TöäTI&h§ca=s¦ o_åY¹qÂœ{iPÊz3Œõç5›¢¨‹¬Ù”ÂÃª£O9\0#)>ã¯åT®Vî^L¥qØ)¹¤eõbˆÄ	å~´±DRç#î*”:…´#\\Ä˜ççlS¯f\\wo_4?:Ê×Øïô.¡;ıìzÓ‰İ&ÜğOZ¦\'·@ñÜFHÇ*â­+§\08lw5-jvC+|¤mï¹§J»÷’Äpy£.áK\0õ¦I)bÿ\0íàrh[½C	\Zö5,Cæä÷ëYÍpæ\0zu8©!º(èOZ›«šò2à=2qÍ1È9\'9Š®ó\rÀ“Á>”«2»±\'\0úĞÚdò2Ú`?&Ÿ’WÎ*ªN›òXT¢QŒ’8÷¤cUNãÛ4 eGqÍ!”3qÔqH;±Ô¶*¢O¸FÀÂÄrŠ‘\\ùâ«£b9ù©Å‚õïÅJVwîI¹·ê u§F™ì)›Ê‘‚:ĞØUqœ6x$ÒoR†ÈÛ™€ùV–&%6‘øÔ2cp`q•ÍM…\\zÔ´1¨Ûf`s•f5?xõ5T|í»¯ÍšœnFÆ„sRĞ1]H.r:u¦Ë”\'– ^M­ÆHşt³Èrzôª@E´:`AëÏ¼hè°ü‘†bär:{óøW l=øy ×)â«5©uzA\0¾}º~TÕ¯¨5¡äLŒ³a†qR “ŒÒNq!n\núúÓSïWBM£m¡.ü´ö…Ö`OZĞÒ Uº‘éWn¬Ÿw<Š¦Š:EîCãåïU¼÷…ãŞ¶ „‹fˆ©õ>ÕVäMŸNÕ*VlÓ–æl‘–òü½\r\\–?\'t@\rX[EI$ÎIÅY—W%Nî9>”9]è	’[ùŒ6½j«ÂQØc&·cˆÇtU\\ÊÇQÜ–“($?»fÛŞ§µ€I;ª*Yb&2€I®ZÄÆ?Zµ#>VB±ç®)áã­YòÂ@ÌhX_Ë]Ã\nÃ š‡vRĞÍdvrÜúUI¢Ä½Iõ­³\0Û‘ÔUcnyfãŞœ]·¹’ñn•@õ½¦ØÁeNzúÔVva»qÀöôık§‚Ü.à p8«¾¦mÖ6~XaW õ©máÌÊï€G5sÈ/ÉÕˆ-Ê’ÄÓ„4D!2°QøÓE·›q³¤y}=?*¾Ğ3üˆv³u>‚¥È¡FR%ù‰ã&¯bBÒÔKr€Œ¼Øì3Àş•ní*}j;XE”`<b¬T¶ÄˆöƒíP:’MZÔTRÛš†‹Lç5ûAqe ÆN2kÉîã	3.+Ú®Wz€A¯)×-ü«Ç#œ±ü*¡®àÎl¯ÍÍ\\¶¡Èb1èj\'Œ‚M[²€M2GİH©ªZ2[ÓSªğî©i{ºü…c¸;í¥w G61Éô#ÿ\0]mOáWÓü!ı­pq:]›w€®Jñ×v~Ÿ`¿…¼€¬ÉÃíÜ#Šê2Ürx5±‹c¹ÒN…¬Å:ÛV),êà`1î{V­]\\Æ3P•Ö¨ÇŒ#ğ(FôÏzè,5ûû{g´fùH ·¯\\ViğİÓ«K§]Ã}nyİ	Ã¨÷^µÊOq{kpë*K™ù•SÖˆ‰¨IÜ÷Ÿ‡^,“WÕ¯tûÇİ;\"Ë»w2€øà)üë¾Ôô»=fÆ[+èh$«‡Ô{×Ì¾Ö.ÿ\0·¬PI²á¦T†ãvÖRN9=××#¥}§x‚íK¤xX1F‘ùlÀàíoLƒŒÑ^J‘\naéOäxO>ê®mCÜi¬~YG%=š³<;ou¥Íîí‘©ÔüÇÿ\0­‘ù×Ñº¦»£Ø[/Û®c1Mò…\ndŞ>€+‰×ô‹¬RßC†4‚rdÄ|Œ zvãÚ®×¾µîN\"0ZEwı z2ş\"¤‚¾}ÈûP	ÆqøV¡ğ­Û¶”‹êî?¦jÒévº\\AnoÒ\"~o’&lÿ\0*4èeb°Ò4â7;\\“QşÓ¤é¼®Şğ«FçH_½{9çª¨ÿ\0ëÓ$rÃoªLtH§k’å®åo°iƒƒı¢­XX4èÀòíÀ>»‰şµ\\Z\\¼™K•\\ñæ0©Í­ïÓãıâå¿­;.ær½îH<Œ| t§Æ#!NGZ§4:‚ä™mãı­¸ı+>iw\r“jöq7©`Ìï¦¡ÙnROtoı®5l™\0Ç^y¨¥ÕíãlyŸ™®sÉÓKwâ\0üç0Qúf•n|/lÙ\\?LÈ$lşc¥•ê_³”I|R#%b(O¯R*Qâ]R6 ÛÄØä–B3úÖ_ü%ú|+²(’1è°€µR[îùbÜ¾À\n9£{X©P–çCgñwŸO…ÔL`îızÖÑñ}”©¾k‚O÷¢#@¯:›ÅÂNÜäv-×ôªíâ¹F@·÷ÿ\0õÓ¼{±w;ËŸê7’ÚÙ¢ÿ\0i€ç½dİK©^•inÂí‡rOá\\—ü$w¯÷#ã?İ¤:Ö£0ÁFÈ=…%5}‡ìdú®Sû6WùK<ã%~•ÀKq\'ğ±Ï®kzç]ÂÑ¼Aƒ“ı1X²Æ„‚A®5$I¶ŞŒª&¶ì‚Ş¤sR›ÛÖ oÏ>‚¬ı„•¥[|â‡ï0MØd7×;¾s†Ï^õ£%Ü°ìİ4Ìì3÷øªşZ:á€5T–‰³x4îÓ°¼îhKy~½e¸\\ó–cÍJ—º³ª8»Ÿk>À<ÃÖ‡¸Šâ$Ámã®áZ6æŞ Ìn×ñÈÒæĞÑ;Bæ\\š–®²“aN?Öñ©mïõ·D+?Í&Á™[ƒÇøÔ“¨iÜú±şuzÎ\0Ñ[1şsøÿ\0\Z˜¥ÍfŠmû;˜òkÚÊ1S{qÁÿ\0­ŸçL-×aï%+Ó–4²Ä½ñL¸²dŒ‘’ÁÛ>€U8ŞZ	¤£v	ã-`/eúqş(ñ¦·ÚòR=2?Â¹‰TÄpiyÆ\0éQdÃÕbøÛZ9-xàöàqúSÏ5ƒÖèç×jÿ\0…qÆVÏQVD€¯<\Z¸¨µª2r’gR¾;Öcû×;ñÿ\0LĞJ?ˆ:›åIûøWI~SN	°òüŸZn”^¢ç‘İ/¯Æ¤-õızÄ;ì’`·Ïû‡ÿ\0Š®VŞ2ë‚:t4ÙãUlÔ:0İ¶w±×\'Ä‹˜°¿f„ãı“ÿ\0ÅTÿ\0ğ´‰96QƒŒƒş5ÁùbCœP¶»ÁÄg#Ö§ÙEš¦Îş/‰±oVkvôÃŸğ«kñ:Ì^ÕÀé’äÿ\0ìµæ/ñš,zb¡g-ÎÒ1ê*=’mOW?4ÉCaq?ßV^±âËJİ£1HªWŒ`à×™“8\"®€Tc4ı„^àæûƒ›FsëQÂ	“‘Å<€ËïJŸ+Í\n6&÷:Í”6@Ç8­¹ Ve væ³t>O#9ÁëÒ·¶nÁÅaQ´ÎˆÅ2·)óÃ§ŠÑJçõu#Œ}i|°‹ÅgÌÍl‘›wk¶4`l<ûŠ²bY¢%1ßŠ¸ñ‰\"(Ã;©`‹ƒœàb¯ ™€ÑmfÀê*œöËÑ©ä²æ¶®¢\"B\0;½MIqg¾bàvcõ­#äfÑƒö6•QÓÕkìÂ\" n÷­T’Ô{Ô‹ş§OFA™q\"û´}œºN¾õ§,>db?ö€8«×láö»IéĞÑ°Ì™-öÅ´¸Œ}*Üx‡ãúÖûZ³¾[§¥1­A,01Ómu*Ú\\«§Øùaó½õ­UL>BğN*híù\\¯J´#ÛÖæmÍ3š±\nœp2}=*Ôƒœã9«‰\0ÕnfÑN8N\\úšµºª©ø·7¹«ÛÒ¦	ÇîKDp¡\nsÔ’iøàâ«Ó<ĞFÂå!9ö¨åéR1äqPÉÏJLidÁÍyï‰àpä›©¯AœœŸZâ|D›¦Ş@äQ¨;Øâ\Z.zué[Ş\ZÓÒ{èä¹\0Ã’yÿ\0$VTªÎ;Öß‡‚vdÜŒˆÉ\rúV—·¼sÍJJÈô«ë;uŠâP’`Ä€õmÅy]õà›^Hbó¾r \0Nà8Šô`±2;IŸéNŠÖŞ,–Ñ¡<æ9©úÌ-f(aÜYÉé¶—±Û´’²ÏG•ü¾~Jê´Èof°ó®u	5ˆùQá@¬~¬	?ZI!¼ÈÒ0ãI<~´™,£‘Î+\'‰WĞ¿«J÷)é÷FãÄ0[ÏákkKS.É®$·`ÏŞÜW£jz]®™åXêâiP\0–ÑJ¬0L/¼ùöm`>•JT’6óbs££)ÅoLl“\"XVåvÎ¢=fèÌ«4M8æL‚GáV±§”>õbØpMÃlÏ¸ù×™^^êNÅe»™‡¡jÎ9l°äúÖ‘š“»`ğéìzeï‹<9l0uf?ôîüø®zohƒw“£	I9İ0_›Üœf¹o²³a\Zx°%zŠ—U_@XtÇø—qÙk¥Cí*Œÿ\05Ù‡È°Æ=¢ùÕ5Ó1ÉTƒLöÜÙK¼¾4ñ™öd_Hğ¿ÈUFÕµ‹ÃûÛ¹Û?Ş‘¿Æµ†’ƒï:æ¤\Zj\0	\"£Ú5¡j’1ÒÖíØonONzU¡¤Ü2ä†5 ¶‚9‹ Ü¼zTæ•Ún°§®1UÏÔ™Aô2¥³û*8*·¹æ«cëŒa[ÎÜ‚ZQ×Ö¡6ñB²ñIÕ²[špxr_{0`à\Z²¾°ÙóE“êÎi¶ºÚ8á(ü*GÔ%fâXÀüëDÖæÒ¸õĞlcàD£Ôõ5*é6 ÿ\0«ŒÇTÍ4ƒ&ì/®*)&‰?Ö^7ĞMit•‘™îjKX× \'Ó˜Íd“·ğ®zâú3ÄQ³ıçâ²æ’îgcª}\rKv*4æõ)Io‘	Jt6³°$.yÆ}*iux@[iÃ£0~µ$\Z„‘…Dù>ëšRI+£±E§a¾EÀ8ò¨ÈŸîœWæÔÀPRÑ·wÉHÌflËŒ€Ğåer’efÜ­÷‰4‹9WËÆéVË,|ˆ\\ı\rKjòFrFq•Ñ\Z%£¢á\r°-héûG–¸ó”ŸÀÑqˆ<¡\rË@MEdãaãµ­7&î‚ÉÁØITù®ÍÇÌsõÍhY€m­¹àÎİı‡øVuÁ\"wã©$ÕûÛ¹ÇIÛÀU¥ïRê’f¹27#éVç\\[ªÒÜŸûèŸñª¬¤LÀıàyzøm…†r\"çè	ZDÔi¨¤rW°†nAã½T[uëšÔ¿R!zÌó[Ğ\Z™_v\rëaÂ<‘š[ŒšŒLûxÀ9©IuõÁ+—`°éZ	¡$ƒ{:‚ÛÍ;pêÒ¶âŠô¨yµqÚ!K^å¸Û¡\ZNÁ´7õÅT¾ÑFÊøõâ¶L7J«›é}@şU<v÷`o®yä|ãÒ¡Ê]r-ìaØhr}æQ·ĞÖ‘Òv’0ßğ,Uß²ßâşèç¶áş ±ºn\rıç?ôÚ—´’ê3$éSpR—±\'?Ê¦O@¹gmÌz’™­?ìÇ-{xí·ÿ\0Z¦o/?ôÛÿ\0­Rå\'Ô­;¿á‰°U#?XÅAuáh¥‰†$éOÒ´Æ‘1ón.ğ;yæ£—@¶“î5ÖÚ¸b?-R½ÉÜànlÚÎå¡c¤Œã¥VÜ<À\0®ƒ\\Ó£^‡¨\'8®xdN\rnŸ22jÒ;­gr£­õÉÍaèK‹Tb#­o 8Î3\\³mÈìŠ&P:ÔÃ£8Æ*@=ªK‚¼ö§*a³)9ÅO¯R9¦&TšìuÍZh…ÂãšœD2*Rƒø{Ö‰™´sïhcº˜Œ`išÙh·3ä}î´Ãl3¦ªä²”Qo}ÍëœV‚D\n’jXávò*aœpy§v+#:H†p8Í7ìá±íÖ¯2.zÓ‚Â•ŠHasR$y©}*Eà\n.KA`Z™õ¦…õ©yª»!Ä”sOè9¢<Ú¤aÖš!¡ƒÎj79ëRãŠE$pqıjˆ[ÍA!ÀäÕ‡ªócó¡B|G<×\'âDÂ‡?Jë&äõ®o_ˆËg!ô¥¨nw`Šµ£‰L¤Å2ÆÀƒ’»¿CÖ³Ùò~µ§¤ \0†­¦ô²3‚÷¬tÉ}¨ª€/¢Àé›Aş4ŸÚ\Z³6ìx÷¶ãQ)8Éh,sœ{\ZâÓ±×eÔwÚõRÜê<z,(?Æšóß¸çQ›şù_ğ¤ÚI8üi?‡½R±\r\"6{Ş÷Ó©áLİrIÿ\0O¸Áí»ü*W%¸\"˜p:Š±5tT{bÇ-#·Ôæ”Z\0s½½şcVĞQœuSçb°GfŒ\0²zsJmöŒÇ^iìqx¤ìrO´ùÄâ®8£jøô À$Ñ´sF¤‚¢œç§u!p6ÓUx9§*–8Å8Ë šì#FİéH±\0ÙÆG¥L©ê(`}jµ¸-Z%¦ù@gŠ´c¯çLØKcŒS²Bm™[\0/ZM®$óVÌaFG5\\óŠmØ›+YˆxƒM9eäÕ‚ƒœ}ê21Ş•µ±V±Ñ·8Îj6PWñéV0\rÇN”Öå-®WË‚\0©>Ì8zUÕz½ÉÀ\\â²¼®m£w(ı–ByPE!·ï·®<…£ÜA‘ˆÚMJæcĞ¡;I8«Ú5Èí¦.\\È%#…‡øÕr—©£)d´<G7Ó>`¦Ş„ò«ì_šó`R‘ÓŸœW.3ÆjëîØ¤í³Ù(ü6œş•Ì¼apqÒ•:–°ÒµÈ.9•ç5r×‹xÉo7‚;p*¥Æ<Ålõ5»¯’¡[’Çº–ìWNŒé	7Rr3¸ŸÖ­ê.XqØªƒ31Ëg#½X¸P!nyÍZİ‘5tÉI´`y9ÅaÚMt®ŠÖ®IÁúV§R9ÁïQ+-Ê”nîˆ@Ç~5,}rsJ=zTŠ¸9 V.è/cfÉG–¿-t¶¼ˆ.2s–l<¾MtšvÆæZ—sH»êÉYº€\05:0}jÂÛïn9ôók‘ÎµfUÑUbÙÏ¸«‹Ë:õî@¥DØ1€)ÿ\0yöç´šãL$r¬ãHÈ]yb;àgùÓşq“¥HBOaÈ©Õ;`H$ní¡	D\01ã­HnH\\óÿ\0×§y’äáÈö§¸µ9¿£dÈ…ÀQó7¾ó¯8QºáAàf½W[ˆ^ZIçcA–#§9¯/ …Ï¯>•´šI®k³Ğ4´òí\"çøkQgÚ¶ØPuù}*âHx\'Ş±lëEäõ<b¦ÊœdÖKê1¦WxÏ­*Ş#2°o”{àTÚàÚFĞƒSÆ;ŠËŠì`î8v€ËŒŒSåd9¢ú¯={ÔÂ\"yç& IG¯­^u#\0w«Q\'˜¬-ùÎZcğ«ë*làóLÊ‚sUÊ.b¶28)\0zÔÄƒ5{QaÜ„hÉßši©i”š¾õ2\05îj@ÙæšBl“ŒÒäsŠ„ÉÎ3Mó3ÔĞ\"âÉÎjS =ê’KsL{°ñVŒäh\0u¨`3ÈÀ¬k½_ËÏŞ uÀ¬;¿|Ä‡n•ª‰Ï)Tú„hæÓš¡ı©Ï°H¹\'k‹¸×d•ÎHì	ä~5R-G2ääûÕ8#.s¿•ƒr‘©§™g(îTãŠÍ´ÖdÄ“Z»ÅÄ|ò­Ådâk]`ß{ t­Í0ƒ!HaëX±†3íc‚:Ÿzè`á\0;ÕVøn‚š´´-ù‡¦y§†5ù8\ZwNsŒ×&¯s¨×4›ÏLÓJğp}i{õÎ:Ó²è@›ˆl“N\'f£r3•4İäŒÕ&6—BF!ò3Ò›ò¨ÇZ‰\'\"—náÏïq=<ô¥P&‘ “GÊš­Izî7Ë:b¤H:šr¹`SÕÏ ‘HMé¡Æ9äšzƒHÅJLóša\'v@}1M4N¢à6;Ó¹aŒ)ŠŞÔüâ­Jà @4mÇ$ĞpN24€94œ›H	\0uü©„“Ò”©âƒ„qEÁ¤Æ¸cõ*mÎGÒF:â˜Ü“UóFS*qÍ Ô§#¥;=ŒzQ\'d;ˆ‚õÉ÷£nz’8 ãÎiş[u\'­bÕ‘¾‹R@£ f¤E9¤ıîiX:¥Uš{…Ğ¨¿B3Vô8¥HáiYJ°›` Ş?®j¢9É\0qWô¦}–¨x•³ÿ\0£Wr%~…ë’ù!1–IïÆÆ\'ô¹öWÁ,+¢¹ÏœJäşî^Ÿî5aœŒçÔGmA+–§ywæ²˜Ş4SØ?Î²šYwgq-îkÒlßË˜Ø\'½gkªbÔmfÉ\r»×éş5Ñ¹;ÑÙ¤×1æ@şXş\"¤V§öŒ7¶o<)<â»K•2Ã\"9;`}\ry”¶L—m’Ì®Tc¯ªÚ7çµ8ä+\Zâ†M¬¼\Zè4»)Â=PäúÔz½²®€œg<RrÒÅê™Ï”+Æ)È¤·&¦(F8ô¥UÏ5/ŞÜV/Ú… ]–2Å}k´\'wøÖÕ™ıà#­G*[—ÇF‹åã óÏ\\Ô™/Éˆ5M³`G×µZG\'¦9ã\0T>ñ…êøÜ{Ôà|¸êİsŠb^1Ş¬	P?¥¨5}‚ ËÔ.=ÏçRGôæ”œsQBçµC‰#B©´±Ûèy©5ÆíÁ‡ºŠE¡p2*]Å¹$œõÉÎ<ÓL,ckH.,f<îd œñJòk¨Ê\\lìOëZô‹²\0\n©\'ÓğükÌ51¾è9]¹­i¶L¡¥ÎÎÚMÖHßÄŠß˜¬«½_æØ	\nUïVŒ€x}£4*¦@®rhŠ© òz’k5nk-‹zÄ—SKË–|úÖO˜Ê\nšcMêqøÖét9å&tñjfN²§J¿´ˆÁC×\röƒŒgŠQpùÈj«+’ÙéöúÚ0\0IÍhÇ©/\nÍ†5åVúŒˆxr\0«©­Hù­\r!ó¯îGó\n•npIõÍyí–¼£jœgs]¦¦&ùƒŒû\ZYi¦t¾w½?ÍqÜÖ0¸ó}V|ğ\'ŠµÍ\rŞâ†#>µU\'É¡¦=±Lve‚à}i¾nz\ZªÒñÖ˜fÀÎx¤,´ 6	ÅD× Íf]İmCƒóVî»ö|ƒ¸ãƒV£r\\’:‹M#R	½ÍsºˆFQ‘ÔW+y­<İ¿:Ê–W”ç&š‰”¥sjç_w|b¾„ÕWÔüÎ¬ÄŸSY‚Öi~acÔÔÉ§ÜúV¼Úò2É”7|}MK§ãÖ©-­Â¿LÕ¤†^ãò]²yfBÈ9*MtZUãùËò_• ñ\\òZÊ\\|„Ÿ¥mØÚ?Ú!!qóyä{ÖRÜ¨£›4:¼ÊÌtÓ!YX‚=ëŸÖU Öî\n|ÂÃŸ^kvâéo\Z9áãr\rãÇ5Wº™µ8ŞLU`£&“Íb¡€Æ)yÏ<W9³DÛsŒÒ|¬@É¦çƒƒŠPÊ:æ™,A…â3Ú›¸ûAnÃš¥‚c²ziÙ €i˜÷E0¹ßÁÏÖšZ“\'¡6àÇ½;¨àMæÁ8æ¦=)é±)ŒËÔ¹bFqOÁ°¥ÆšZh í!©A8äÒô^”§”ìÂâcM4  Çz‘Xd‚\ry4Ú¶Âcg­/#\"‘O»}Nióîü¼\Z‹Ìêsš{8¦á@àÑf	®£ŞÅF[\'ëÚ¦Îq‘LÊ÷iØ«¤1‡è)ÁT®Sdb:\nj†nôjK}@ \r÷©ÙPÙj?â8ıiÃ\0e¹&²³kC¦[è8»Ë~TÕ”îÅ\nTôÅ+r=(hÅò	<Uı\"BÍ	(Bªº«vl°&³7¿t$wÅh[	¤°µòƒ‡_5¾R~n?•5³&nÉ3Zí™fP©œ«ƒÙSÍc8ç¾µt%õ¼¤^K„+àÇÎ>CYÌÜôÏ>•\Z$\\G+l;ÿ\0»Îi|C˜¶òH\'&‘$Ë\0êõê­=‚Ÿ›\0‚{`óúUÅö®¬ËŠzg,+ƒ´ù|C6T\\>=~ñ¯@³plâ”°\nQI¯?°rúŸ›œîrù=y9ªõ¸£g#¬!°2œÖ³¯`ó# /áZ)$›zõé’‚G<\ZÎşf–99mZ69ö¨|—êZé$µ‚~´Ãb3š®mBÆ=¼.HÎzÖÍ¬lqŒšµ™œŠ½ˆ%GÌ=M]ÆIZ09íSÆN_¯j±m†Áî)Ì»°6çµ+}1§)\'w·¬w}óŒô©\n*€0GášvPŒ!ÏÕi^ûÂ£‘Üı)ÛºƒóvéM\0:\0{œ\nxTàŞõ/°Äi#¤ÔŠá‚F};Ò®å¨G…Hr\0Å+´¹›¬eìä\\G9®Ä0}™mY¾ô»ĞzEÌ\"HÙsÕH®ÄÒyÂÚ<\rĞ3+c¾qş­6®S_»±«k›F…:Ÿ(¾ÕÎ]Á,3À¶å]V”3¦@\0ù¼±ŸÊ’âÑel”Ç<RÚL–´8ò¢Oáğ¨†šó¿Ê8®©ôÄ`8«úr§$|µ¢š±›‰ÊÇ HNIÅHŞ˜råõÅvğÛ =^Hc#/µáìÑæçÃÓyõ\"«I¤İÆÙØĞõ¯O’İzà\nÎ¹¶ˆœàG3‚8Y`laìEkX^²ğÜûV¼öHÜµTØ¨è¢Ÿ0½™³g¿‚qøÖ¢M»k™·\rjA1#­\'©I;›\"p8Ïã0>µš.9Æ?:“Î©Ø²Ì“½êœ·AI<\Zl’ƒÀ5Fà–#¥1\\­w!Rñ‘Šæç[—#œ{Öô±\'uD#…JDXÆ‹G\rË¹úUû}5ğ•}Pg$U˜¦O,8£™ÜN\"A§ÁÀy4ÈÊàŒÒG}o±Çû¦§\ZÍ˜êì?àI!:4C’:ö¨ÛKDä(úÕ–Ömq_îÓR¶™¶‡ù½Å\nL›K%éÅ]ŠˆRBwıÚ¸@\\\nM±Y^çâXvëñ€À\Z}«vZ^\"·\r2ÉÁ\0|Ù¬ÛbtÅ)ß—CEkè^1†MÙ…@û³Œp;Ò¬ÁA&•œ}î™¬“î[¸)ã§çHXö£{cÖ¢f,Ü“Å!nH[‘O2 Ö¡f?ÅúÓIÉë@™1\0œ“B(Nri€’¼Ò|İ;\ZjàZ†ëš˜T€zş•Uî	éOÉ^wp)Ü8m¸ã“Lİƒ–Ï4°!p_µ9€\'¦1ëE„÷#ÜíÔàP…³ÉÍ8 ìE&0zÖ‰ º{ç¨4¤dµ78ïÅ(céš-~¤ì(7„ãi2Îq>¦›†^ õíJúj\'&‚Oáô ¯~ho¨¢í1l&ì”¤â˜[°=)»½E=‰jâ3ñM-Î	 Ó÷yQùĞÀpF(i±¦ã°ÓÃc4ì£ cëJ+‚p}ieWj#Û»°ÅaGŸ•M£ T˜R6:ĞØÌ‚x V®’àÅ\ní#o™‚Gn?ÏjËy\"µôlyq!98zcøÕ6í¡”ÕËZ«ä„©ûË \'i9ùzqüë	Á×C©YâànI@ÉîTÖ1A»æéØÖv\\º”´euRÃ;NŞµ±f¢H¶É5@„tïVc˜Ãqo.>@v7Ğÿ\0ú«HY;iòèfê—’é¶ÓÙ‚pr#ÿ\0tò?,Ö^‡§K%ÂÌF#şñk{\\°ûUÜ/\'İ\n@÷¥Òc	Â\0XõïN£²ĞT¶»\'ç¡p9ïLòw¾_ZĞØ™€?# ÏÊGZÅ#fÊ«n½ò*E´;‹¸ø©Â)a’¹õ\'ù¤SøõèjÌM tì(çrî=´³aÄ§#Š®%ËõÈ÷¦×pEø~l€qÏ\r9œ*ü©’}³üª ˜ªã’}§e8ûŞùÍ(¼J¬`ıéˆË•\\0]¸lîíSFøå²=0Æ’ó<Š:¨ü)\"PÇ8>¼Ó©”ûÓVwCÈQšWL,Yß˜œÙ§ ç\nN;óU]üÂ9ã>´…Šò8ëKPµÉe-·v9>ÕÂø‚İÌé´¯1ÉíœWs½Ìg=ëS±Ò7—3ùUGrºX§§®ÛxÀÂâ­•æ¢·\01Œ• \"İÇ¤Şº-×+\n†]JOÌÿ\0€¡s§´Çåé\\ş©¦u\'’Oµ4Äâ‹-âdÁ$şÓ[ÅÖQË9Üñ\\‹Y]<Û\n9èA«&Œ$³òÔî“o_zÕF&2rèi¿­¤;ŞV=ˆ5BOÄÏµ ­rêŒ0ÊãB)ëšÀ/#\ZÕA%©›”ÇXš´Rœ®}jÚÊAçÒ³–Éb¶Œ1‚ŒŸz·\nÇ•‰w—àîÔÊ\Z	;Ù–•	«ÅÆsSGjO$Uè­ÊöëY]£u©U!cÉ©<¦Åk[ÛÆGåVM˜\rÈëM15ch[Üš‚XÈ\\ã8®˜ØŒgBîÌàãœUnCg0á™ª	Ï¸ş#Ú·–Ëæù…`]Ø]M©K.\0Œ6è*tOQ?!é÷ß3¶¹Ë¹o!º‘<×ÚŒT€qĞ×y§É%±Ù,@®?\ZÇÖô¡wr÷Ä£?,Œ	õÍt®[hc(ÈäŞk‰yYdÚ;n5{N·º»W)+|½FMX‹B¹/†hãRy%ë¥Ó¬ã†İmà]î£æÀäæ“dY£™t»ˆşô¾3İ«oH±º»O1IdÎ2{Vı¾”$\0ÜD0zJÕµ°[y7Ä}Üa‡½MÓĞiò²½†Ÿ$K‡ííV¥ˆÅi\0=1U§œïvsšŒj×“‚0Ü†¹”ÄlW®8ë]ŒĞùÓ#;®HàHIúT»ÚÆ°HQœ–ô¤$74ŒIôæšÃŒgò¬íÜ§©&HİFO\\Ó‘Û4¬r9£bC ¢”ci9¦ ô;\0ü¨ç4å+œö¨Á9\"œXÓv{S‹%“^€óS.\\şUY˜ÍJƒÍQÄrp6ñL’@ü¨üê5œc¦)ÉÉ4ìº]I8ûÃğ¤P:±$Ô|cŒã½(|p98¥`ô&È8\'¥ ­Ç|TaR)Û‰éU¢\0,ÄäOÜ3œö¨ıézã5Ka5æIOZc54zQ‚rhw\0xšChÁxÒ˜u<R½÷Ã÷úÒ<€J$àRrERØ-rŞÎxüèÚG±R¡$ cŞ›€O=ı*[•ìmf5IU<`ÓJ–9\'¥XEÈÉ\\c¹¦å:3SÍga¤Èö2‚{\ZÓĞ¤I#¬ñ£–ç¡/‘úUãa9ëZ:\0(À\0ñ\'ş†¿áO£¹5/¡kUp—PçºÊ?¦²vŒ`±Ílj›EÔ!—)ÿ\0Çõ¬6Éfl·ÓµJI\"c{’0ÂœTÄ´–Ò#d³cªŞïïR$˜“ôhk®Åû—i´ô”Ëûö5”·-ĞÈù[¿¥iÚ³L’\'lgšÈ¼Py¡ëUºÔ”¹[5–bOİ\"œ$$gúUW& ‚R;š²§8ùÈïÉ¬Ûè,H\\¾O§µ(†hRXsƒH”l-Gœp7d¹íMAÏ…8rØÉÍ8ïÖ˜ÓcU0wgšz8\rĞÒ„Áj’8Bğï×&“E!rîÚKS÷&rFXĞ\"!³»#°Å/–pqëÏZ48Î¡p8è¢ º–A¹*àd»ç\0TÁ¶¿_˜w›wxlu8fdwB…JnÛøƒÎ;\Z¨¤İˆ¨ÚÇiú¸fˆ:–© àóüë@)l—\'ğ¬;MÎ¾Óà*LÎ|µê§oÓñüë£TÔ~tUIKBhIÊ7C²ıàMV‘öÂ%a¹a…\\ÊGQTâKÈ‘“YŞÚ›ÇW©‘¦Ë$åŞ@7o8ÀíÅl ÿ\0¯YÖVÒZ‰÷Œ/˜6{äğ­{Sh/©iAÚ}j½ÅªÌA#$t«1òp{Táô—˜vm5XàŒ¹¤À†ÆÈäörGê+ {pİqUÈÁ­êœíæ•Æúr™¬ˆÃ‘ú\Z¤º]½´§d\"#ï×ó®¦KqÌ†£6¸8ÉÏ&µSv3åW1’Énï­jZéĞ•Ç¥±Ø«1Û‚@´¡ˆDWŒûÒv\ZLªÖ¢(ÂŸ¼}iÑ 5j_™óQ•Ç\'”£¢%¶Xz{V“¨Ú:dÖm¹!×3Zn1´ã¨¡\nHrÀ­H™< “•®™òzâ©Ê£wNkU±„·2M¯<sU.,¹Î+`>ÔÙaÏ8•‰9fµnÆ«µ³1ÉPßoMkTşªÅvğÃšw4LÉ:rÉÏ’w§=kFÚÕÆİ &*Ô|VW\0dR&H’~2yj¼Œr*XõÅYÇj3h—\nrj…ÁÁ õ«ò¿¬ù› ‘C%£ÉIÀäş•Â—Rädñ]êJÚÜLçA9ü+‚|îç…fİ™´pŞ9çšã5>ÔÓe¼ñÛµ\'q“y‡§¯­1™ACwëKœšWÖÄØfæÍ?\'© w¦õæ‚I8¢É»\0õ¹zwÖ£Löõ©8\'½R²à3¾ŸÏ¹æ˜€’)ãÖ™\rPW¸ìg)ÔRî$÷æ©;®;8Ï#œò9¤ÉéÔQÈäÒ¾ Ò¼óKæ€qLÏÀúÒÃ¾õJZJ	ëŒSIbÙÎ\"ä¨É¤l‘ÒGeÕÚ\nûšnĞ9ÉüèƒHÍŸ¼E;µ Y.ïâ¦8*~SœÓò3Í1;àSºÖ|qïQ«’84æ\0ó¸})Aâ‹vi\Z…÷7Íœ\Z@Ø=3j.[’çÚŸå–èÕ.W)ïfôô¨™@n(*àx¥	–É©I¦Zv\0ñŒV¿‡€<ƒ’”îÿ\0ıaYÁ1É$úÖ¦‚¨…İ@ÜÛ‰>¼ñıi­tdÍéqúØæØóò¬½ÿ\0Ù\'úV>ì0äûÖÎ°í–›ó´qƒŒü¦²JN8õ¨× A÷#ÜN@Í9@Î=xæ‘Óœš‘C0É?JhÓ­É`¹6ÄàÊj¥èycr¤õcnìdA@~^İi+ìW*oR­†ñ@\"´1œän)¢5UÈ9õ§çÚ†®\r\0GŞù½iÁnC\rİéWsÈúŠ€àõ5aë¸.I\\ÒùªNy\'éLØqƒŸ­\"l%›¯¶i=@HOÊ¯\'ŒTÃ~İ£zS1‘”fûĞ2v“Œh[*†#œzP¥¹$*Ş\\åœz(©7Øy	Îªèœ\0W„ëŞ°<HH† „ù…°½A­YçÈ—¬‹Ö‘ïcEaÆ@­)¤äŒª»D_\nÇÉ3nN	=ˆÿ\0õ×H[šã¼+pDìŸŞZë°çœãÖ‰üZ•±+mÀ¦X¨6QãœÊ61–ô¨ì%ÙoäŒsY´™qz–\'‹0Ì@åSäGôÍT…‡­$dgPÇäcµ½ÁãúÖX­¦x¤åÑŠ·Ô\Z¥tzsj]ŒÇ#iŒ\n¥ç Õ¨Üu\"‚™?f¢|TÊC})¹¦CEY†ã?Z`IúÕ¿+w^ja:ğjĞCÅéRI•8ïR*´Îê)1ÜF9äS	ãšŒ>2Iã4,I­Cfˆ#óv­E#Ë\\òzÖ\\9x­1‘ñÇj	ˆò8ªR²ZÑ´!ƒ:Ö}Ìe]²:V©YÒø¬Æ‰8Å5œŒóUO,œœR¬»¹è²îT@°«\nr9¢¤«\r¹)è„\n´=(hhj1š”8Ç4İ…yïQK•¡\'Ğ‡ é$ã¯BæQŒõ)ó‚¢–cØš½k Jø–õŒ1€˜ş«HSrfS«nÎY¾“Ëû*eNïŞsúV&3É5¯â›ÛKeÒÂ4Kx³GWlòIïÍbÉÁ52ŠƒrW1“ÖƒŒsÖ£>€çŞ”œqÖ³h±K\09¤,IùiœšAîO6bzUNîÔ›ÉëFáš3ëŞ„˜]Üzô§’9¨şŸ‰¥\0c’iëpdÉ¸œ©©\0\rÁÍB¹ëœz‘XwÜY	ØàÓ€Æ“#G4Af—3êŠxèzÑ¿ÔÒdòZœäf¬,ÃÌç4¸!¸¤îGÒœ^*\0p89£æì:Òn%±ÖœNj–„İŒŞ:0¦’{`ÓˆsÖ“ sÅKÕİ‚wKád‘Î>”íølqHI\'Ò—AÜnÌœæ˜é‚Nx§“Î3œS	ƒMI!7ró¨ú©È§=MD	,H_Öœ$$àäTÉ(½²w&;p:õ4õl}ÓùÕs&\0ã4ğFì‚*\\›bM\\¹~g;¾µ@Ê¼˜Èİ¸–õäV<Ì§ukè E$‡$åOSâ’nìSWH]xµXŒ‘şµ¸ïÀª –äŠ·®!{ë.~\\JOıóTÄ…\0f¯ £¦ƒ‚ç0P×=jî\\1Ï½I¼‘´dâ³ÔÑ¶Œt4¥cUË‘Àëš¬¤Ó·gœœ\Z5l¢L\07-;våÜI¨ÕAã&§@T|¸¥vè\n’gæ?†)ÁGLœõÁ”;u<¦šä–÷÷ªÜ(·EH+÷N*\0Ìœ”­8İÀ)4õ‘&ÒO+¥8&Wïíü3Q™†@Àq@g\'§çE¯ ìJ ô\'ñ¥eÉêEEûÁÆGçORzî_¨¡;hn3ƒù×3â\0ËzÂT,L`Œcr®k¨vİÎx÷®OÄKrš¨ty6†î×¥mOâ3ª¯ø\\îÔp\0B~•Ú÷¹®Ãrõo®~•Û$êÜíÀ¨ùŠ‚÷G•bzæ™gì©µÀÉ=~µ!p~´ÛP¢Õ	\0sYµr­bxí®&ü€òcƒ…5sP±»™ ¹Òo–0e]¼«~½j-?R}:FdbUºŒõ­k=~ÛS‘£í±¶6á®º0R[œµêN\r4´0|¹ áÑ”ûŒT‰\'­v#t‰†D‘J¬ú^Ÿ1!¢17û\'¥jğİŒ£Kt`Ç ãšœİkLøy90]¶?ÂštKÔûª’{«Ö.„ÑºÅS}JX§›ëRÉkwï2ŞQÜ|¹ª2ÜëÇÖ§‘£XÎ2Ù•Â÷¬ë‹€9ÏëL»»á¿*Ãšáİ	$ñÖ¦F±‰¨“™úV„]¹¬ËgTRädÖÄt©±Dñ!fö­«…g@rk>ÙvğjÕÌ™ÀãÅis97qÖÒípjYJKzk8HUz)†2G^µhÊ¤o©‘¨ÂUI}«ı³4NpÀã­u×1¬£\"¹íWEšè,¶q<—q¶5ÎáK•±)%¹rŒàÏ¥N¬ğG½G¥x_[š0ÒÚùÿ\0®éÖº(<$ë´^®=\"Lş¦Ÿ³dKF:¹èÀsS\"[j)f=”d×M¦[¹­œ#u?AWc“l`[@6\\ST»œ³ÇÃì+œÜZìØÌkò~jì~³Œæêf”õÚ>Qş5®ñ\\¹ùœF§>æ˜Öñ¯ßİ)ÎFãZÆ1GL]W¦Å\rĞÀ¥,-‘GeÌ×;âKö°Ñ¯®ÃfHccrë]5Ã£(V*à^•çïÄÙF<éÀ%z\0¿şºéVQ¹ÏM¹Í]qîL–,I$±îj_¨æ¡³Ú-—=jÆĞØæ¼éÉ\\÷a°ĞNq)Ã¥+·©£5—]Ín&à:šÀÒ½\r¥^ú€ÀOLR““Í“ÓšL’sŞªíê<õàÆsI“ëO\0nÁ¦Ş‚]Å]Şµ İŒ•â‘p2iÀäc4&;‡Ş/>´å`zi<Ğ‰zl/nM#d¶N:_pÔ¯R(²Av/×¿{µ7$µ($œU(ßPwF1Á§\0sÉÆi»Èô&‚Äc8©oQk`o¯Ò¹JÌäQëÅSÛ@Ó¨Ş8¤Ç9è{ĞO8ñ4…²A&’nÃÑùRmã‡4¹]İ3Mo½Á•î¬+\\¾¯N”»ãÒ“iÏ N?\ZN*ú›4Á”šEPNq†4üñ–š\\ğqÇò§a+\"Dàà;“Zú!ÄÒäm#®{Ö2É¹°fµt=Ëq/¼góÈ¢/¢\"z×·«Q\'ô¬ã‚ÙÎ1W¼D»± t2c?Aÿ\0×¬İ§ªã?Z]5î?=óGšIÀéô¦1éK×¥†Ñ™	À´ì;\0\0ri›ÊãÎœƒGÖ’EjYEeèKómäš‰d~ïëNó7(d±|À‡$\Z7“ÀbI¥V\\gkñCny\0Œ{qRØ\\nÖ-’1RˆÇ^´*á‰\'>Õ,cæÉP¼èLcU	23ëLdÁ9cVY€^0ZEU9mËÏcÖ‹ê!HÎæ¤1‘Ÿ»»¦M9ˆÚ09úÔfBx9ç“BÙI7uù~µâ¸M)\'àK‚§?xşGğ®€0‘Æ9¬_YómL †\'•Pø‰ŸÂÊ¶ûÓ¹Û»åPŠº–\06\0ÉXÙÍm©[C#–ÌùF03´Ÿç]X‚È4ªó\'©4¥Ì®.yŸÒ™nÑ‘ps¾´üç¨äÓ!+ä $zPjÚšv|ñÏÖ±á–(|[+’…fÁ§ô­Ó&Ü’AãŠç,tf¹¾½¾ùb	‹íÚ\'×§éZÑwfU]¢{a@¤ãÔv«q¸uÚÛX{÷¬+Ó<p¿+½C{Ö“x#¸85êÁ6rIØÓÑ;nÁV=Áüißd||’‚{¬øîrp³sèÂ®%Ü«P0õSÙ¢Q’ØÎéìJb¹Fû»×\'¡íô¦K²C¶{ubNÜ2ç\'*j	¸È=óVRâ7ä5dù–è.úri\Z-×2XÂr3‘ÁÇ­S>Ğ%“p†HÎr\nÊkªhá—;‘#ŒäzSM¬,åŠs¸6A<‘PÜ{ªÔ]N|x:Ã‚—3tÎ\rH¾ğıLyşµ¶-ty03üY Ú¶>Yä)àóëShš,Unæ+xf@r·jOºb˜şCó^Fà&¶Ì2®Ú	Âã”ê}úÔÃ™\'í•Æwõÿ\0ëP£<eTc/†ÉyõÚµr=Ê3ó¼ö±V…¹8Ì²“\r…\'ûÔÿ\0²Fÿ\0|;åvÍ×ßëUË9bëK©\ZÛéĞ.DqÆXgùÔ«tXì†& ¼\0GojbE$íPN2qÏ)ÆxĞrÃó¥§c>iKâdnÜ&F~cß=8ö©‘neˆÎp¼qèÈ¨¤Ô£Lã·sQ›‰X…\\Á$cfŸ,½zk}K‚Hí‹Û–>:ÓdÔd qYLê¤4ó àŠwqÿ\0× …Á9Èp=Î*•5×S9byt…§¾%¶ıöëµFMA<ò(ÈNz}æ?€¦Ëæºó”V?v!·¯¿\\Öt·ÄÛ‡Ş9çšÚï±Ë:ÚÜ’Wc»`Ø½O÷›ë^Mñ>êGšÆÜ3ãÓœJô«™@óc?çŞ¸O‰Z3ìu††%òiû¤Ãô­ªBĞ/ˆO‘ÄYÊ¯(Æà9ç½Y¬Û4òæ`¹¢rˆ×WG¡õïk‹ŸSJ\rÖ£-‘Ç_ZBI<Ö\rš’9¤İßùÔeûM\'ƒš¤„É7‚8ı(ÉÇ?Î™»¸æƒÈâ•ÄK»räôåÿ\09¨Tã½=§9Ç­=AnL¬2	àÔ€œç5ä÷4¹ç4ÓAfH\0<ºĞgM7â›–ÎéO`»Ø™F4ÁÀ\0ƒQ\0Iå±øÓˆÿ\0\Z‰·qÄúœfšx9\'ŠV´3íš]ªW¡Öˆ~‚ŒÖ”àÓCéû†Şs‘Rp	Á¥$d\0is‘’1HÇ8Í\\—q$®)¼d)[$cÖ·RL«´¬Ï4…rrM\rÇÖ“$}áEÚØZš…³œv¦‡yæ¢yX6	9£€æ¥HÒ|¸ÇçM$²ğ4˜O4ğ9#Zl…±9=}«cÃÍºâsŒ±O_zÌeSÔûõ«şùÓö\0~fš‹H‰jM®sqjJ“’ãôÿ\0õÖ`]­Á85¥¬±–¤Fõú‡ëYìŒç9ÅJÕ)#üiTîÏ\'w¥H\"É â^GÔ^ÈÒö#ÚIÈã#)ÀôëO	ŒÃ>”Ğ9ÉäûÔ¡ó\\o˜;æ…˜!Î*`Œ2€G¥0*–À¦í³\rnH—xÉb9™ÏÌ\0ëŠ†5üzÔëŒcú÷¬õl-¨§æèiÃ…À8=EG½áKì8üéÀ±ôÁ!Ês’y4Œ¤r3Šx\rÙ¾¼Sw¸ã\0óÍJ#xÎHj•aİÁa8\")Ü	ïéOVl-šwğpX“ŞªêVbâÜ˜¥Ä«Êæ­–$å€¤l7µ-Ü\Z24«k¹¯^{ÆÊPx§ğéøšÚ#ç¨•NéQ¼ä¶JU*]êÍ(Ğv²E¶8³z¯€ Bs=*Îì±ÏÖ„|ä8ô¬½­•†îYóK`\0*%¶ŒÈd(»Ïñ`SK`ä\n•–ùj=¤›Ñ›*P]¢Î#Ómä\nBÏÊ=Î+Z2d€J§v@Ï=(·´ÈCÄ\n—_’1éQY?•#AÈgŞ¾¢Œm|.&¢úÄ—›\'I‡B:u©×Ü¤©ëÁ¨§‡rî^´FÇ?:Ö×9”‹æÊåÃ®Iù‡#ŠPå	&&şQêÌ[×ôæ¥Ä|òE¡2‘+!Úq½{úŸj.¥ ˜îÆ@~¹ªBã¦zw©Qâaó äääTJ*æ’\\\\Œe	É#±éßñ§-ôÌ›yWp$ezc×Ò³Õbİò»ƒ»wjAÂ:c´’ÜŸ­bé¢V‹nrÊ<‰9Œ¡)Ÿo”€E´¼©o¸/¯µSÁ]›®\'lXr}é¤ŒÏ1\n0rı}èTÑŸ·eÑ{;mÅ³É¼ãğúšG¸»*Ihb7rı¡ÿ\0\Z¢LaWs;le˜œıj4x(¡p	äõ4ı‘ÄX™å ¹{ìà„BqÏ×¿JvÕ-î$Úıd8_ş¸¦…SòŒ.;qPM©8ÀUçÜÕ¨I½gˆkrâ$à(!€#8ÜÃœ÷ëRlPKË3>N@fà~÷’<„‡ÚHÇĞùg\'êjıƒêfë¶jı®Ò\00ôU¨%¼b7 <™æ©¬{y\'ó©\når9ÅR§CªÙ^k‰gfùÛ¹â›»3n ş5bòÙç©«3\0°\\r1“ZsrèŒù¯¹—4‚+„UEp£’ØôïX~.¶›Uğã@×\0š=­·1“Zò8ûXû ÔŒı?\Zn¦†míÚ7v°ó8\'dcó¢®¹X7şÕ÷G6™6šÛf-ÑºƒøÓ	çæº¢WqG]Ğ¿pÂª\\h‘9Ì$¡=1È¯UÍï¢ı_•hs¤Ò‡=\Zµs§][’Le—ÕyëUãb‹§±“‹B3dò)ä÷òN8¨‹1<š%î/éAíŠ:ÒŠ4û<çšx<ši\0/¹§.>•7Ô	F6âœ¤g•Áô§ î?Z`L\\:Ğ°¨‹İ(cÔĞÕÁ\\y\0óÜÓ@mß74d·LS˜Ÿ^E=z>Ôõ9êjÍŒÒ‚zæ«mÄÚ&?Joø¦ç€NE\0œ‘Í\Z àIã<{ÒqÉíMäMÄğZNïA%¨}Şçšc[©¥9<“IÈúûÕYX›ˆrN3Í/Ldu¤àäç‘A$ğNijĞïc@)c–4¨y9Î;Q´)ûÜ\Z]ÃÛ•Öˆwª»O¥*\"õÏĞÜœb›Á^´Æ£Ô•‚ã8«zlœ€ª_STw°ùN{ÕÏœŞİqŒ şt÷ÒäMÙkO›»\\ôËƒ|cùTÑ‚*Muÿ\0Ò¬ırıû´Ï02€@ÍJøtí|\np6OJWÆ•\nÊÇ¨5-ô,‘¿Hì‡còŸjŒ09Î9>½jX÷u\0Æ•ŠV¶¢ùx4tcŒf¥Y£\nnôäµ#\0O\\ŒÓİŒœÔEÃtr‡=ªãª‹ƒ<ãœ	’9ªAÃq’sÖ¥VÈäş4Ÿ ¬XYFAÉ<Ó9”œ1\0w¨^Eè}sOFÇSï‘R‹K±h&’àş5ğ:ŸÇ4Æ“®A¦[99¨r±´(ÉêÇù¿?­&æn3À¦gÛ½)\'‘XÊ¤ºq¥ì8å¹ÏJ88Å7© ”a×n{Tİ³T»1!¹µÆêÿ\0^¥’hñ– \ZgİÛè*lU†³ŞŸ¤>XsÜUig;‰1°çÖ›öÄL“íUn‚±éZs%Æ›n~\\ì^¤Øüj)ËÕr¬¼Öw†îåšÁÕe±¾ÕF@GLúV…ÚÈdÊ@Á1ôüs_U‡—54ÏÏqôİ<T“îlÁ\"\\GƒŒŸCL6…9Îj•ƒìùGtâ¶ò ‘Tî¶9oÜ¬±Œñ€Ş”-ü\'ÜUŒŒóJJ…ÈäÒæe\"›Får”Bxäà•iFî§¯¥;oÍ‚pq!Hˆ “‘š\ZQÆNŞ”éå$ûßÒ²å¹ÁÏ<şã\"*4‹Í6îİ)·ÏjÎIÀèO<Ô¦| !ºk_gcRäí.ÑÍ\'š	ù˜v¹ª†nÆ¡7%KçÒ©Sfr‘§‘´ŸÊ«w–Ù‡¤Šò2ê²ëÓ­\rÕ»¨\nê3ëQ.hlŒ¼Ê	§Ê~gƒÎ{ÔÂ,r?Ö˜ueÀÁÆ˜Ñ®ÒZ±u¤÷emÌÉ†úƒQùà\'éJÑ{dl’3ïQ$Ó¨ÀÅR¨º‰¹t*B›g<CRLØˆò½şõ\\hB€p+6ödØR\'Ëò8şïUÌÈ÷¹µ1e÷‘sÄ?\nY_\ZeÉç1X\'o÷Z¯3‹wÚIßÜ…üë]Ö¦·±1$!–R¥2G9éøU×­êz8,\rYÖD´(;|9^jxNr„9zV\\sùé¸}êÀ•\\}õ9¾Z¢iİŸ£EİIÆ9õª³iöÓä²ú\rZ :+qÓšgñ~=«½ÆìÌYô7U&	2{5—=´±1Yceaí]$óÍ5£©VPW¸5¢®öÜÆT¶8qŒğM.H<\Zê.4KiÆPŸıŸ•dO \\G–VcÍl§Cte9œàsŠ‘\\¢£x<·ØèÁºá¸4ôÒ©G©‹MhÇû•0?/T`I»<Rzl	Ü”$õ¥ÈaÚ£Æy¡WæëúÑr‰ÛÓš:ıi¥ı&áœÓNä’nÀSJO»S<Òà‘ŒşuBi‘“HIê)àúÒ¶ìñÒ”¶]„É$ œ	§W’3L?xÿ\0*€ïqFûÙ¦ğz)¼u#CCÿ\0Ö¤äÓ*ÉÀ^¦ƒ‚ØÅE×©¥Á#G­_3\"Æ‰2à5!\'€I¸¥Éyüé¹Éæ‡äkk\"@«Ÿ¼iÜg­0D:ÔéİÉ÷©’WĞQué×š¹¡077 åW>Üš•rÙ f—ÃÍBçåp.sïJïkƒ±7ˆˆÚA¹üETF(ÛÍ[ñ\0W¸µ‚côªÍ°Œ¦©%bb·`òyœç¯Z`ô4¡P6¥(3‘Š\Z4L|1¶H=ªlc‚pj%bµÉ\'#?ZIê\r¡Ø\'õ§®Ğ,}é»C?\'¥H0LÒ’Ôi¡Ç#8¦¸Èè}iøÜy8› *8ù±S¶£õ¨G$PêXdy¥MÌ2ÜRœ±À2•µ:)RrW^AÅHä;S~X×s8õ4ß7se¾;ô“Ÿ2:£M&H0M1¥Täœ}9¦^LHİ…x§ÏÀ©°ÇzÍ&ö6Ha•ÊDÇêqMó\'à€©ÙÍ\\‰@_<ãš§ÿ\0-ºäP×AŞÂ2Èç\r;‹QËE,]õlÕŒ†—\0:R_‚[¯$ÒR*ä°¤d`“íRÆ¹‘²ß-T¶“v8«‘s&ìãùPÕÆW»‹ºŠÍf/0P3Z×gääñY:xó/›pû£\'óQ»Î£GÔ#Ó òÙû‰Î1é]ÚÖâßr¶ä~ö®3;NG±5MŸÊ¸¶ıïé^éûcÅÌr¨WN¤t‘ÕÀ¯ou=‡$VÍ»«ÆNAëY–Ò3ëZ«më’ƒwPAÅ{.IÆçÈÎ6cÈÄÔl@=MDÑİB@I7(ìãúŠîHË)õNjRìB/!P2N\0ëT®u\0§b¶{zÓb¹¶—äy‚/«qV•tÅ]Ñ„Niéª¸ªI¥h˜Œg¸9ØÇ´ñi3òQ¸ö5Ğ	a…^=1H×J\0†¯ÛË¢8Üw“0ÛNœd$v8ëBÚÈ\rgëÓë[ßhùOÉÏ¿jîù\'fy÷¤«Íô&QŠÖæĞHÙûñQÿ\0gİk#8®€]N1Í5¦•úÍh«Ít0”TŞæ*iSrpAïšÆíCa_À\ZÙW™Jü£:SÙ®\0F	éÒŸ·™*†e¿Ûm×n\\g·¡­H®÷(YŞ’k–‚2îÁp2s\\åŞ³=Ä¥bÇÊy;F\rO+«­‹WŒw:Ÿ´Ç{äuEõsŠÎ¸× ˆ”L­êxË“,’\räŸ¯AW3·•<óÒ®8XîÉö©hË¯}sx~w§¢¯–5`xîq“Ğ{Óá‚8Ğ1*£Ö³µ\rKi1ÛŒoïøQ9ÆMhR©ˆšŒz”o˜µä„sƒøqXÚÌ\"]6`GEİôÅh‚;æ¢”	\"`xW‰V|ÒlûJ4ı”{}„ÛTÁéÏ\"µ×Y1F7H0r¬E\\‹v:×]Ïj“÷njÃ*”Æ)ÇƒzÖp¥Äl¹n0Gõ«é\"·\'+ìx®wcBN[\'zw9À}hPİ4ã˜¤š*áƒ×8£h9æŒ‚zgñ¥8ÀïNë ˆ.-b¸M’¢¸#¸éôô¬\rCHkmÒBI®?»]O\0*6]ÜøÕÆ\\¦s¦¤pã#\r(­ëı9¤ƒ*øåpOÒ°6°àäV°÷¶8§MÅê8İ}éGAÅ1³ŒfŒsZ$ìF£¹\'<ñKäSrCšRÅ45bZyşõ\"±\'®jqÖ€ÀsßÖ•Ğ‰·x4y„ç=j Aè\ZıÜ*ì4ÖÄ›É¤ÎyÎ(? \\r:ÔßUpa»\'©#¢ÓwØ8íà6:Õ;H,÷\ZczUbNiK†éÁïšk:ÉúÕ]$\Z#Xœ}öšMÊyô¥äç-‘I€Ç±RškRì×Qé İœô©|ÀHçñ¨ğŠ¸8Í7pŒb‹¡]’É oâ«:\"êwƒñç5šN_¦iè¤‹‰“¶–¬µ¯76¤íÏåT|ÂGJµ­çíVäıÒúUUëÎj”­E>›öß¿I»+ıÓêidb•AÆZ¥»ìh‡g’iÌàãš\n–îE+àŠZ…Òa»\'½Xá‡Ydà\Z²£v0x¤Ó+r@¹={S7·šGS‚iÊ¬ù\0ô§’ ‹,\0\'¡©“IJ›”‡y|3UYX¶7géÅ\\LÉìä\Z§^R;¦±¾§£m†Ê¨‹Ï$úÕ¸\0H˜²ãŸ<¢[Õ—Š¿;ùVÍêj[±w!‹\\18?•îÊG§AL²á‰=é—äyŠO<ñÍCÒZì^€n0{Vd„‰¶œ®*ô$˜qYÓ\0“õæ\n.Ârw:/X4X\"£„1õ¥¸\'a–=©_”[Œ¶  \0ò:ÖŒXIÍf[uÁ­Hğ¨2y\"†•ÊZï‹<óŠËÓC¶ç¨ëZZƒ\0<6*š31?‘§\r…ŞæÈ\0ÓøU<òxÅ\n9¦¹çêVàìtšEëO\Z³1óWålÒº»	ƒ¯_˜uRyıjóİ:í¬¦‘üCÔW_ÛİÀ³@ÁĞô àğ¯ ÂVXr½ÏÍ°R¥UÔŠ÷YÑ<@òyïÀéUŞ­CT¢Ôå·\\Î¦T–G×Ö®¥í½Æn|gšİÂQgŠí¹ŸsdNä\'?J¢ÖÒÀwÃ!<r¦·ßkŒ‚p}ÿ\0Ïù5ÖáÉô­aQ­ÌœngC¬yqĞÍjÚêVw\"@¡â°¯mË\r»8îMgˆˆè;VÎŒf®Œe4¥fïj¸ ÷é¦59àW\rõÄ?rcÇ÷¹µ\"×NÓ¾5¼ƒøW3¡%±o•­¯)S®9ïJc¬•ÕÆæà¶yâªÜøˆª•…A“ÅĞz=C nI,Òº¨ØÖ5ß‰cBVÖ3#g†è>µÎÜO5Ô›¦•œş”è-Œƒ#Öº)á–ò2N]\"Kyu=ì¡¦lã½\0¤ŒÕ¸­ÉÅ\\XDYÜz]Ñ‚²2÷ª2¤VøÀ#\'©©æxm¡ŞØs·¹ª÷7¢J¯$ñíXóOó4²>}I9¨nû•ìŞÖ-\\_¼çs‘/EÏùö¬¹&.Ù$éUg»Ë0€ñKæëÚ¼¬]u\'Ë¥Ëp^ÁsOwøÕ¸àæ‘Ûä$úTKÉÎN*;É¼»w>€“\\7=gc˜ƒ.ó6:ÈqôÍL¬AÀ4Ëe\"ß{gw9¥İÏN3\\Õ$œ´=ZWQE´\'íg¦	­\0`Ï9íŠ¡5Y»}+DN•“f½Amb?6r\n¶1ı)®%AòÊ_ıáÍK´°š‰›œ\nÆ†¤îÌ|÷ÅJ³Æ[\r¸{*&W\'§àlÆ8¥òc£(Ç*ÀûƒšPO¦j†\'ÚÛáÎ})Ás¶CŸB3NÈCÙH9â³ïì\"¸Œ¸\Z®ù9tàwĞJ²ƒ»ò¦¥Ë±œ£Üã.cx%1È0G?QëQ“k¬¾²K¸6?QÈ>•Èİ«[LÑ89ZèKœs…˜¤÷¦æ¡ó	<’3Nß¦µ½ÌZ±\"¶ræœœ\ZŒtÎ)A$óKqlKÛøÒïõ¦d­Ï½­Jm=JIÜsÅ3ÌÜpãšf	$ŸÒ…*2:U4¤òÜg9\0b”’z)1Ç ~4»èH£Ğ«Y\rË`v¤|´àâAéÍ8‚Íıs*îš³7D|p1øĞ=8õ¥?6\0lb•‰š`İ„1‚ šo’3Œæv0r)YˆaÛ<T©j;´†ÊƒÍYÑûTÀ±È^j“có©´L5íËt \n¥;²^«RM]·İÛäp7ÏÒªàuÅZÖÜ­Í¨Áİ×¶1ş5LËœš˜·mB#×ò1Š\ZLzõ¦yÅíQ,qš9šeØ²²àc)bWõP¿<’1OIHä)Şã±8SœŒñV\"Gr9?•CnZwÀÆÚÔŒ3YÍØŞ\'-@*¢ÿ\0ZÏ½›\rÔV„Œ¡I®~yŒ³ãÂ±O»;)Å#Zo³œlÓc;#œQlŒàšŠò@°+]—§B¶&½.|ÕûçX\\Õ-%æ~¤y©u	w:ùÅT·°ÔºY—“É¨¯Ió#“RÛ·#­U¼;Ÿæ¢Ö•Ê½Ñ¡ú¼}k2èpY‡Î¯ÅŸ$‘~µFøı1õ¤•‚öÔ±nPEI)8É^İ²*v9õªqBBÛ€XdçsW€qÓÒªÀ¤uıjÓ€Çµc=Ë35F}éºbå2H9¦j$±ã¨ô«\ZjüœóZCb•ÍqœñQ™3O“\0r:Óa@KyÎj[WìIÉÇ¯z—LÔe±>lD†\'æ£sĞÔ\';°IÈÏ8ª±r0H«§QÅŞ&s§\Z‘å’º=MÔ­µP€$à|ÑçŸÂ= Y\ZXHW<:5pÌğ¾ôb®:0<ŠÛÑ¼b²Í5¦¥µ^çdd~Ÿ…{˜\\j’Üù\\Ç(tŸ=QÒ[ê!Úö^ªÇŸÎ®&¨„âRcoöº~uRHâºE’2»Àù\\vª¯”o.póÃW¡hÉ\\ùçx»3u¼©ÔòXdr1ëY—V;AòÎNsoZÏÜñ¹k{†Qè9«ëÅÊgı¥Ñ(ü$¸©nQ›äà®ÓŒæ¢ó2ÙúV½ÂÁ¨F^	T¶2}kâ “k¹õ­n¤®fÔ ìR¿CïB€WÌn7*rpW’;zÕ¨!p@CÈü;Õ$c\'aĞ[¹\0ô­°Z|Ó0\\6“şÉ¬éuP¸KdÀõôúUa†o2VÎ9946ÙŸVj\rFY8·Œ$`Ÿ™€ÉôªÓ\\ù+’YŸ°ÍU“QPY#pëYz¤p]÷Èz-D¥jÍéR”ß,5-ÏuäÆeœzgø«ëQ{†Æp£¢•N[™nä.ç9ü‡ÒnkÌÄâô[A‚ËÕzz²x‰=jÒğ~µ\n!§´íÜ€+…³Ñå¶Å¥r³µy[ÈØ½Xâ­Ï9¬ëÆ2İ\"@5.Ö4¦¯!«HUHÏÓB`ŒU†)ç?qİ\\õ’iÀ›Ø¶:U­Üà\ZŠ\"D|qš’5ÎIÍL•ØÇ± i€î=iíœ`S\0š—a«–¥#HvúÒnÂÔe†qëTaÁØsŒÔá×şuYIŠ›<sŠ[ĞZ†\rÍDÑ#¨*}EFäóDs•l0üjœP![ÌL	G÷…dêök„ÉßQÇ¿µn,‹ #5ĞğX`â®\rÅİ3)¥Ôà\n‘ÁÉ¦mqÈ­ı^Ä6ë„$÷†?\\Ö89ÍuEórVe…` ç3å‰QPdwÎŒ¶ Ó2e„aÉ\'4™!ø\ZŒJIéN,ÄçŠ-ÜOÈ—æ`y¦²t$€{Ñ’:Hû‰à\ZúšÂ• u8¦ôÎ:}i»Ÿ¸4ªÀ4ıA6ÄQœjPÇĞÔg€sMÎx¬üã°›W: A<äRó\ZÔşÇq¸ŸJS¤J:sÜb¶m-IKs9N½(9c‘Œu«í¥OœazqšKŸ£Ç^k7$I#1ÑÜå±Å\\ÑHK©×\0Î*s¤Í÷=³RXéóÙ]<³hÚsŞ¬tÑ²C\\[ãnÆ\n¢WÔŒÖ†©Ës/<œÚªy£ãÊ$ûÕ[B£+dãš3œíüjSäåbcøRlrYœJLÊ\'’zÔööŞsíì9&–y\'|ŒrN+Ma‡\0ğ:ÖR—.‡D!Í¨Ø£H¾UPMK•ë•Y–İƒŒö©KÆ±m¶vEYhW½”%»œÖ-]y\0Õ½^R°°õªš\"ä¹â’WenoÙ¬½PœV8<µ«r§ò¥6VÅ+2sš†ñ‹İ…Sriúc³üßZƒ;ïóèi[Şl9´5£`‘ãŸrwL¸p.jœ¤™CzP·Ô}Ñ¶ØG\\ûÕ;ì¹ñõj6&<õ5Nğç”YŞèoamxSÅ]ãéT,Ù[{Ö¢\0ÀsÖ¡ÉŞÌk]GÇÀö©âzãŠIßÁàSäcŒæ£[d^±r:Õı7gÙóß8¬ûÓ™qïZv£mªû\nÓ—B®I1äy¥L¤`ƒÍDçÔqíRöŠ†Ğ\\6T’Nê¬¿ëdòsR+Æ •ŠJ>b7ñÒŸÂÆ¯5–À6¯uK±úŒëZdùÉ¬áøH9›_ı´ƒ¶ÄTZjnh:ÅÍ¼xWl£xÏİü«°·Õíu\\b)„ûWŸ[–·Õ1İL8Ç¨¥iLI#éQÅÊ6<f•Gf¬Î¦î‹<È½Ô¯øÕO´Àğà®÷ÍdÛê÷¶‹±dßãcò\0ö¦Ë¨Á(chÛºŸ…z0ÅÂG…[+«¦¨Ù#¨1Î»dö¨î/nV2“Ë×<:ÆÈ¼‚ÀûÔgT ğæ´öğî`°uV–/‹ÃnàcÖ÷RÎròd|\nÇ“Qœ÷ô¨$¿cÈÜ~¦¬Ç¸gÔ{# óá<—.øû£ üzÕyïGóáAíÜÖÛeÏÊp}…DA±$–<“ëXÏºÓÊ¯¬ÙfãZ3I$vàü¸Ï_Â©G<…Ü’O_Zf›nd½¼Sü,¹üA­è­BŒœWZÓ“ÔôèĞ…(Ú§cŠ¸\"ã4§	94\0Äå«ÜÚÃ±HñŒš™\"ë‘œÔ‹ÍÀ5¥«\r2#ù¿:Ï\rÓ¹éÒ´®¤[ğHrp9¬ÕR˜Š‰¶‘Ñ‡‡4®;ã­\rÁ\0fœ3»9¥…L’ÇÍ%mNô‹\0d}Ú^G~=*En	ıi¬AúÖníê>£9R}ù¤|€i„¶ÿ\0j3éŠ­‡kfÂóP;óÅHÄz\Z­\'ûÄÔ»· lXFEK#úş•Z\'$éRLØ\0Š¸»!Ä†\\ŒÓ°ÜSQ\Za”yœÍV-IefPZMë‚j„Ä1\réK¤¶*šM	Øs3<m¾„V%İŒpJB¢íí‘[xI<À…G¨D× .K»¶µO©Ï8)-Qm9\r<C\\lJÌ73+•,xõ¦›¹GñøV©jq5­?³!\'ä_Â¤6ñ÷+,^KŒîéO]FcÎF}êUÄÑ«äÅ·•éëR%ºœûšÈşĞ”ğG~µ\"ê3`ƒŠ¦¤µBå4¾ËÉ(N}êÓ­ØÑ`ú‚jšê“ÈÓ—Vp>dÒ¼®%rßöM·$ıãHt«f\\í~}êí~0cıiF®6üÑ}»U5+Y‚º:¡ª¬cæB~”ÿ\0í˜;şúëX§“’zúÒ…p3Šm¦õ4pFÚê‘° ‡ÏÔcùĞº¤Gûü{Ö¦üiÁIRqúÔ¤„á¡´úšq¸óÒ¥‚ú+¦Ø2$^£©¬5İêµ.œs¨M>àíïş*våWDZÛš³ÜCou™ÕU·\0ÄgúT¿i€¶C\'ãY:¹ıôœãwôªÏv\"‡+¢’¹Ô”lí\0M2ÆA\'ÇëŸŠ™ƒ^	­XĞG<°äšÍÚÆ´ésbXçíUnÜ,Xõ«ç8èk.õÎğ2kf÷=Ç•hZ´_20ùÇÖ¤`=ª[l* ô5&Bó»äÍ{˜šÜÙ!1NĞÀXß\'æ5KWcæ’\0«š3µëÈ5v\\º\nêö5ÃØ äw¬­\\3Mh³Tu˜ÉÏçY¥©Em:|[²x9¢ØpÌ	É5›m7•#õëZ¶g9zÑÓ±zšÚ„U[—ÎjrAëÅEÍ×ŠÍDÖå¸÷ÁªWä($·¦jêš¡|sòæ…{•}	l€=sÀ­$8ïT,TlÏz½Èéš‰Ç]\rĞæ!%OéH¤àä­4–(sPÒ}\n3¦Ç™»ÅhBÙr1k>Ly™Æjô\\Æ¤ô§ÍufxûÀç½?qÏJf{ƒÅ.rx<TÙ\\¡ãF;úÔw#£gîò)ù;~cÈíM9fç‘G:NÂDd¸#“Y¹ÄÉùmpqë¾´ÚÌ¾ş½«>ÜÖï~ê\"ÄgúV‘Şâ–¥é”ºoO¾œ¯=*äR‰bVæª°!	<~4ëc˜Æ~ëà‚}}+ZrèÎlM4×2/,\\Š¯-±<ŒÖ¢ÇJI\"ãƒ[­cÆ}ƒšÕ0œtÍ\';Šµ!Y3\'È8éQ´,;\ZÙò0Ùã†»9éJâ²2İ›œb­Ci’=ºÖ€Ãğ©„!WÒ›Ø–bi±…Ö5QÁÃEŒÿ\0»ŸëZç\0tÍQÓÀ:¶ªıŒ‘®~‰ÿ\0×«Í\'`E6ger1Í¸ò*@ªG—¯ëMó\09Ï#°¤ûÒoE\\³c¾O¨¤r¼çŠ¥-ÁÌ`£©Ç›²¸ãŞ4Æi7–Ê€Iô4Ğ§ŒsŠåœ¹™éSŠŒRÛŒµ,KåF8ïP¨.û¹À«(CñYìjHzzkiÀ©=E5¹¤Ğ†‘AéMa‘ÓšPÇ¾2i®ØÎ(°Æe€Æ@ÅWf‡qRÈxÎj³¸<ç¥RöÔ°¤¤˜ƒÆj([sdóN—æàT›LÉîFX1ƒMÜCp)„ç€0iN1÷ªùz æ±4º<ƒÏÖ¢ˆ’ØÎ9¦Êc<Šl[‹ƒÓš[´#D\0Û‡êi°ÊTùgè´ŠøÈ$Ò.	Èè}(O˜Îw^¶òn¨0²ÓÖ²Á=Íu—ğ5Õ«ÆH™®EÁFV_˜VĞµZ°Öä™N;Ğ##&š¤¿~h9õÍ]ìÎ{k¨òÁÅH¡p3Áõ¨È\"•[#ƒIİ—]	w\0N)€	5;‰æ‚\nN}¨QÖâq±1ùÍ\nHİŠŒ1¨9ıM9n=QÔˆˆ9\'­L»@Âõ¤ÉÆĞhÎxÅB–º–ôzÚ¬2N\rFß.@ÏÖ¥TÜ»‡œr½&ÓbIˆ•Î^¤qRéÃ\ZŒŠü³Ï_q@=dI`HÔ¤ÈùDyëß\"›Ñ]“%ÕT³ÃÁ-“Œ\n…mw8ëÆ+Bi7Ë¸¿±ô¡\0Ú\\ıïçYsÉètÑ¤Ò»\Z• d*vÎìôÍÅ°jYœTõÔêI\"\'!SüMcÜÒc=MhÏ)\'oAÖ©8ù·cñ«I^áv‹PãÊQO•vÇ‚AÏz†>„æŸ+1ã ŠNÆ‹c™ÕN$?­XÑ÷ÈŠ­©d`Nit™YÀ\'\'õ­-x™ı­\rìØ8ÍAÌD`sRîôËµ&OZÇBîìsD/AÖ¶,Xì<šÉœbNjíƒüãĞV5!nk±ùzóP\'ßéÆiÎÜqëNQ==*-vl‹C!FO¨^`6\0ëŞ®‘ÆxªW<È3ëBZèbİ’ ÕÀİ±š†Ô~ìb¦$ãñëY;ŞãLrR7^N\0£#i Ó½y5+q•COçSÃ÷=M5Ôg¥*ÄÇ_¥SJ2A ’¸c?Î˜sÔšÍ÷.ãƒ6E/;½»ÓrvòqšC“ÎzT]\\Hqór6ÕCPqÉóUJÑ\0ƒóVnB_ê9›Œ¼VĞÙ“&_vÉñ©b\0€Ç×?J®üËß#ŒU•BŸ^´¬Ó¸™©iqç!\rÄ‹Á9ãŠÊIJ êçíZó­Âƒ›¸=«²œ“G›Z“ƒºØyœÒª.zRñÏZÔêÌ‘DwdsIåÉëR~S=T€zgHÀ/ZŒ¸Òã¹#Ö‹’Ñ£¶ã~íÕ®ä\0ç°À«mŒdæ³´7\'HWo½#»ŸrXÕ½çpÉÅUÓv\"Ì•›#ŠäÇZ±ÈæªÊï#mS…êMK’±q‹nÈo’íq+Ğ’¥P@*,q.ØãUx¥aÎ\05É:©»Ô©òn\"’x-òÍ5Ü!Ú)ñBYşóuÍN›·yjc)c|>HÎi¬Ù=©ƒ*Ã¡¢é­IH»ÛƒŠN3ÁÁÅ1åÓ˜ŸZ›®ƒbIÏ4ÆlŠ	¼ÓIcB$™pAâ«HËœµ;œxõªÒqØZE´¬1ğO¨÷©$ûÜ½j›¶p)Ò±ÏZ«\\†õ¹œ7Sõ¦n=zŠ	8ô¨ÚP£×ÔÓZq;©ñpàsQ+–PA§ÄrÙ\'½6É¹qtÀ©ÃØX¾8Í:2IÉzmIæRS#Ö¹R.è‘Ñ¾jëYR8¬\rr3å«cåªLŠº£1<ôãœà”Ìœ\ZUÏr	>µ­´º9ÀœÍ†ïIĞğÔ¬HïJ2¹×¸üílcõ¥ƒ’3õn€œ¹§n#‘×Ú¥¥}Æ¤º\'Rp0ZLŸ½iwÉëZ+Û`qê¼¹çµ(\nHgÛ4QY½¼â¢‡°ÂŸ¨Àö§½UncvXŒ“ÆÜT¸HùUFqÚŠ*‰A&İÉbˆ©ŞÀdô³0	Ç¢ŠLìHD}Ê1Ï­,’*®ãÔQE+\'¹£V3^Vİ‘ë“šqË/+òš(£•IØ\0íJíò± úQED•¬ZÔåõ%İ3‚¡Óß`ÑEkIİjgvä4{€éI1&7\"Š+	hô6iY˜3¬!@â¥µ8äõ¢ŠÙE3³T”R <dph¢³HÙ¶N2£®*”àùÊsŞŠ(zrü(æ¥,x\0qEÍ:Äµ°ÔRuP\0<QEk$’)#&œ¼6¢Š”®KĞzvõ¦±8(¢¡½K¶‚‘Óà	âŠ*â˜Æ<ŸZÏ´]××ãvr}ğh¢œ¬Rv±a]¼íÉõ«Ê£o&Š*£®äİŠ6·\"¤T”oPh¢¡¾Wt)$ôe¸oäIò°î:\ZŸÌ8 ÑEuBmÅ6pU‚ŒÚA»å<óL\';ÑEjÑ•ˆO®j¥ëùV³HsòÆÄ~TQBÜ’¶–V“j§êÃ~\'ŸëOi~l`š(£fÙ+qÅ¾óqıÑŞ˜Ç=2?\n(¯?ÚJOSÒ§¤ \'i\\uäûÑE]‘ è¢ŞŞdƒ§ARäŠ(©nÁt#úâ›È<\Z(¦µ@Xğ:sŞœOËÇZ(¨»L–GNEˆïEqÕƒ#“\'*œ¤ä`ıh¢­$ Fç8§K Ç¥RLLªÌGSÖ£l²c4QZô\Z§°â¬BTuäÑEh×Rwdƒ$äÔêÇË>´QRÆ÷±Mï\\¸ïItufèÿ\0xŒ¯j(­W-Å$¬Îc€Äb•ˆÇph¢µÙ\rj46G\\óO?Z(¨z•1óÅ*ç¯j(§Ms]±-…N>a““NÜIíš(¢Mì(ŸÿÙ');

/*Table structure for table `dentist_patient` */

DROP TABLE IF EXISTS `dentist_patient`;

CREATE TABLE `dentist_patient` (
  `id` int(11) NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_patient_idx` (`patient_id`),
  KEY `FK_dentist_idx` (`dentist_id`),
  CONSTRAINT `FK_dentist` FOREIGN KEY (`dentist_id`) REFERENCES `dentist` (`dentist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `dentist_patient` */

insert  into `dentist_patient`(`id`,`dentist_id`,`patient_id`) values 
(1,124831,3),
(2,124831,5),
(4,124832,7),
(5,124831,8),
(6,124831,9),
(7,11111,10),
(8,124831,11);

/*Table structure for table `dentrix_logs` */

DROP TABLE IF EXISTS `dentrix_logs`;

CREATE TABLE `dentrix_logs` (
  `log_id` bigint(20) NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `source` varchar(50) NOT NULL,
  `actions` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL,
  `TIME_STAMP` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `dentrix_logs` */

insert  into `dentrix_logs`(`log_id`,`dentist_id`,`source`,`actions`,`fullname`,`message`,`TIME_STAMP`) values 
(2,124831,'appointment','edit','Marc Spector','User edit appointment id: 1','2022-05-15 11:23:13'),
(3,124831,'appointment','insert','Marc Spector','User added appointment id: 18','2022-05-15 11:23:16'),
(4,124831,'appointment','delete','Jane Doe','User deleted appointment id: 18','2022-05-15 11:23:16'),
(5,124831,'appointment','delete','Jane Doe','User deleted appointment id: 1','2022-05-15 11:23:17'),
(6,124831,'transaction (service)','delete','Jane Doe','User deleted transaction (service) id: 13','2022-05-15 11:47:19'),
(7,124831,'transaction (service)','delete','Dhen Sierra','User deleted transaction (service) id: 6','2022-05-15 11:47:54'),
(8,124831,'transaction (Service)','payment','Dhen Sierra','User added transaction (Service) payment of patient id: 3','2022-05-15 11:48:40'),
(9,124831,'transaction (Item)','payment','Dhen Sierra','User added transaction (Item) payment of patient id: 11','2022-05-15 11:49:09'),
(10,124831,'transaction (Item)','payment','Dhen Sierra','User added transaction (Item) payment of patient id: 3','2022-05-15 11:49:33'),
(11,124831,'balance (item)','payment','Dhen Sierra','User added balance (item) payment of patient id: 3','2022-05-15 11:50:03'),
(12,124831,'patient','edit','Jane Doe','User edit patient id: 3','2022-05-23 15:40:12'),
(13,124832,'patient','edit','Juan Dela Cruz','User edit patient id: 7','2022-05-25 14:59:10');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) NOT NULL,
  `dentist_id` int(11) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_dentist_id` (`dentist_id`),
  CONSTRAINT `fk_dentist_id` FOREIGN KEY (`dentist_id`) REFERENCES `dentist` (`dentist_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`employee_id`,`dentist_id`,`employee_name`) values 
(1,1,124831,'Dhen Sierra'),
(2,2,124831,'Jane Doe'),
(3,3,124831,'Marc Spector'),
(5,4,124831,'Name Name');

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_unit` varchar(20) NOT NULL default '',
  `item_desc` varchar(100) NOT NULL,
  `item_cost` double NOT NULL,
  `item_brand` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `item_id_Unique` (`item_id`),
  KEY `idx_item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `inventory` */

insert  into `inventory`(`id`,`item_id`,`item_name`,`item_qty`,`item_unit`,`item_desc`,`item_cost`,`item_brand`) values 
(12,1,'Archwire',2,'pcs','Good Condition',1800,'Tooth Experts'),
(13,2,'Molar Bands',0,'pcs','Good Condition',50,'Tooth Experts'),
(14,0,'Payment for Balance',0,'0','',0,NULL),
(15,3,'Toothpaste',10,'pcs','Good Condition',300,'Colgate'),
(16,4,'Brackets',4,'pcs','Good Condition',500,'Tooth Experts');

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `patient_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `patient_id_Unique` (`patient_id`),
  KEY `idx_patient_id` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`id`,`patient_id`,`fname`,`lname`,`mname`,`gender`,`contact_no`,`email_address`,`dob`,`address`) values 
(16,1,'Rey Vincent','Canlas','Brao','Male','09123456789','vincent@gmail.com','2001-04-08','Tagum City'),
(20,2,'Maritess','Brao','Bondalo','Female','09123456789','maritess@gmail.com','1975-05-01','Tagum City'),
(21,3,'Rey Vincent','Canlas','Brao','Male','09123456789','reyvincent@gmail.com','2001-04-08','Tagum City'),
(22,4,'sdfsaf','asdfasf','asdfsaf','Male','09123456789','asdfsadf@gmail.com','2021-12-23','asdfasdf'),
(24,5,'Reynz Edda Marie','Canlas','Brao','Female','09123456789','reynz@gmail.com','1989-01-03','Tagum City'),
(26,7,'Mariaa','Welch','Luna','Female','09123456789','marialuna@gmail.com','1993-06-15','Visayan Village, Tagum City'),
(27,8,'Alexis','Blase','Clarido','Male','09123456789','alexis@gmail.com','2000-07-13','Tagum City'),
(28,9,'Divine Grace','Pagios','Bonggo','Female','09123456789','divine@gmail.com','2000-10-24','Tagum City'),
(29,0,' ',' ',' ',' ',' ',' ','1900-01-01',' '),
(30,10,'asdasd','sdfsdf','fsadfmsdfk','Male','0912345678','sfsd','2022-03-20','jbzdjas'),
(31,11,'John','Doe','Does','Male','09123456789','johndoe@gmail.com','1991-02-28','Tagum City');

/*Table structure for table `patient_appointment` */

DROP TABLE IF EXISTS `patient_appointment`;

CREATE TABLE `patient_appointment` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_dentist_id` (`dentist_id`),
  KEY `idx_patient_id` (`patient_id`),
  KEY `idx_appointment_id` (`appointment_id`),
  CONSTRAINT `FK_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_dentist_appointment` FOREIGN KEY (`dentist_id`) REFERENCES `dentist` (`dentist_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_patient_appointment` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `patient_appointment` */

insert  into `patient_appointment`(`id`,`dentist_id`,`patient_id`,`appointment_id`) values 
(14,124831,3,2),
(15,124831,3,3),
(16,124831,5,4),
(17,124832,7,5),
(18,124831,5,6),
(19,124831,5,7),
(20,124831,5,8),
(21,124831,5,9),
(22,124831,3,10),
(23,124831,5,11),
(24,124831,5,12),
(25,124831,5,13),
(26,124831,5,14),
(27,124831,9,15),
(28,124831,3,16),
(29,124831,11,17);

/*Table structure for table `patient_balance_history_items` */

DROP TABLE IF EXISTS `patient_balance_history_items`;

CREATE TABLE `patient_balance_history_items` (
  `id` int(11) NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `amount_paid` double NOT NULL,
  `transaction_date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `patient_balance_history_items` */

insert  into `patient_balance_history_items`(`id`,`dentist_id`,`patient_id`,`transaction_id`,`amount_paid`,`transaction_date`) values 
(1,124831,5,2,250.5,'2022-03-22'),
(2,124831,5,2,200,'2022-03-22'),
(3,124831,5,2,300,'2022-03-22'),
(4,124831,5,2,349,'2022-03-22'),
(7,124831,5,2,1000.5,'2022-03-23'),
(8,124831,8,4,1250,'2022-03-29'),
(9,124831,8,4,1150,'2022-03-29'),
(10,124831,8,5,1500,'2022-04-15'),
(11,124831,8,5,300,'2022-04-15'),
(12,124831,3,8,50,'2022-05-15'),
(13,124831,3,8,250,'2022-05-15');

/*Table structure for table `patient_balance_history_services` */

DROP TABLE IF EXISTS `patient_balance_history_services`;

CREATE TABLE `patient_balance_history_services` (
  `id` int(11) NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `amount_paid` double NOT NULL,
  `transaction_date` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_transaction_id` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

/*Data for the table `patient_balance_history_services` */

insert  into `patient_balance_history_services`(`id`,`dentist_id`,`patient_id`,`transaction_id`,`amount_paid`,`transaction_date`) values 
(65,124831,3,1,86.6,'2022-03-22'),
(66,124831,3,1,0.08,'2022-03-22'),
(67,124831,3,1,1500,'2022-03-22'),
(68,124831,3,1,250,'2022-03-22'),
(69,124831,3,1,200,'2022-03-22'),
(70,124831,3,1,50,'2022-03-22'),
(73,124831,3,3,1020,'2022-03-22'),
(74,124831,3,3,30,'2022-03-22'),
(75,124832,7,4,600,'2022-03-22'),
(76,124832,7,4,450,'2022-03-22'),
(82,124831,5,8,200,'2022-03-22'),
(85,124831,5,8,550,'2022-03-23'),
(86,124831,3,9,1080,'2022-03-29'),
(87,124831,9,10,3280,'2022-03-29'),
(88,124831,9,10,20,'2022-03-29'),
(89,124831,9,10,200,'2022-03-29'),
(90,124831,9,11,200,'2022-04-15'),
(91,124831,9,11,127.6,'2022-04-15'),
(92,124831,8,12,500,'2022-05-05'),
(93,124831,8,12,625.45,'2022-05-05');

/*Table structure for table `patient_balance_items` */

DROP TABLE IF EXISTS `patient_balance_items`;

CREATE TABLE `patient_balance_items` (
  `id` int(11) NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `balance_amount` double NOT NULL,
  `last_payment` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `patient_balance_items` */

insert  into `patient_balance_items`(`id`,`dentist_id`,`patient_id`,`transaction_id`,`balance_amount`,`last_payment`) values 
(2,0,0,0,0,'1900-01-01'),
(3,0,0,0,0,'1900-01-01'),
(4,124831,8,5,35.67,'2022-04-15'),
(5,124831,8,5,0.56,'2022-04-15');

/*Table structure for table `patient_balance_services` */

DROP TABLE IF EXISTS `patient_balance_services`;

CREATE TABLE `patient_balance_services` (
  `id` int(11) NOT NULL auto_increment,
  `dentist_id` int(11) default NULL,
  `patient_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `balance_amount` double NOT NULL,
  `last_payment` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_transaction_id` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `patient_balance_services` */

insert  into `patient_balance_services`(`id`,`dentist_id`,`patient_id`,`transaction_id`,`balance_amount`,`last_payment`) values 
(1,124831,3,9,220,'2022-03-29');

/*Table structure for table `patient_prescription` */

DROP TABLE IF EXISTS `patient_prescription`;

CREATE TABLE `patient_prescription` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_dentist_id` (`dentist_id`),
  KEY `idx_patient_id` (`patient_id`),
  KEY `idx_prescription_id` (`prescription_id`),
  CONSTRAINT `FK_dentist_prescription` FOREIGN KEY (`dentist_id`) REFERENCES `dentist` (`dentist_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_patient_prescription` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_prescription_id_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescription` (`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `patient_prescription` */

insert  into `patient_prescription`(`id`,`dentist_id`,`patient_id`,`prescription_id`) values 
(1,124831,5,2),
(2,124831,5,3);

/*Table structure for table `patient_transaction_items` */

DROP TABLE IF EXISTS `patient_transaction_items`;

CREATE TABLE `patient_transaction_items` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `transaction_item_id` int(11) NOT NULL,
  `sub_total` double NOT NULL,
  `amount_paid` double NOT NULL,
  `transaction_date` date NOT NULL,
  `is_paid` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unique_transaction_item_id` (`transaction_item_id`),
  KEY `idx_dentist_id` (`dentist_id`),
  KEY `idx_patient_id` (`patient_id`),
  KEY `idx_transaction_item_id` (`transaction_item_id`),
  CONSTRAINT `FK_dentist_items` FOREIGN KEY (`dentist_id`) REFERENCES `dentist` (`dentist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_patient_items` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_transaction_item` FOREIGN KEY (`transaction_item_id`) REFERENCES `transaction_items` (`transaction_item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `patient_transaction_items` */

insert  into `patient_transaction_items`(`id`,`dentist_id`,`patient_id`,`transaction_item_id`,`sub_total`,`amount_paid`,`transaction_date`,`is_paid`) values 
(1,124831,3,1,2130.5,2130.5,'2022-03-22','true'),
(2,124831,5,2,2100,2100,'2022-03-22','true'),
(3,124831,5,3,2700,2700,'2022-03-22','true'),
(4,124831,8,4,2400,2400,'2022-03-29','true'),
(6,124831,8,5,300.56,300,'2022-04-15','false'),
(7,124831,8,6,4435.76,4435.76,'2022-05-05','true'),
(8,124831,11,7,300,300,'2022-05-15','true'),
(9,124831,3,8,300,300,'2022-05-15','true');

/*Table structure for table `patient_transaction_services` */

DROP TABLE IF EXISTS `patient_transaction_services`;

CREATE TABLE `patient_transaction_services` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `dentist_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `transaction_service_id` int(11) NOT NULL,
  `sub_total` double NOT NULL,
  `amount_paid` double NOT NULL,
  `transaction_date` date NOT NULL,
  `is_paid` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_dentist_id` (`dentist_id`),
  KEY `idx_patient_id` (`patient_id`),
  KEY `idx_transaction_service_id` (`transaction_service_id`),
  CONSTRAINT `FK_dentist_services` FOREIGN KEY (`dentist_id`) REFERENCES `dentist` (`dentist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_patient_services` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_transaction_services_id` FOREIGN KEY (`transaction_service_id`) REFERENCES `transaction_services` (`transaction_service_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `patient_transaction_services` */

insert  into `patient_transaction_services`(`id`,`dentist_id`,`patient_id`,`transaction_service_id`,`sub_total`,`amount_paid`,`transaction_date`,`is_paid`) values 
(22,124831,3,1,2086.68,2086.68,'2022-03-22','true'),
(24,124831,3,3,1050,1050,'2022-03-22','true'),
(25,124832,7,4,1050,1050,'2022-03-22','true'),
(26,124831,3,5,1750,1750,'2022-03-22','true'),
(28,124831,5,7,1750,1750,'2022-03-22','true'),
(29,124831,5,8,750,750,'2022-03-22','true'),
(30,124831,3,9,1300,1080,'2022-03-29','false'),
(31,124831,9,10,3500,3500,'2022-03-29','true'),
(32,124831,9,11,327.6,327.6,'2022-04-15','true'),
(33,124831,8,12,1125.45,1125.45,'2022-05-05','true'),
(35,124831,3,13,1000,1000,'2022-05-15','true');

/*Table structure for table `prescription` */

DROP TABLE IF EXISTS `prescription`;

CREATE TABLE `prescription` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `prescription_id` int(11) NOT NULL,
  `medicine_name` varchar(50) NOT NULL,
  `medicine_dosage` varchar(50) NOT NULL,
  `medicine_day` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `prescription_id_Unique` USING BTREE (`prescription_id`),
  KEY `idx_prescription_id` (`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `prescription` */

insert  into `prescription`(`id`,`prescription_id`,`medicine_name`,`medicine_dosage`,`medicine_day`) values 
(2,1,'Dolfenal','10mg','Every Lunch Only'),
(3,2,'Dolfenal','10mg','3 times a day'),
(4,3,'Anti-bitic','10mg','3 times a day');

/*Table structure for table `print_table` */

DROP TABLE IF EXISTS `print_table`;

CREATE TABLE `print_table` (
  `id` bigint(50) NOT NULL auto_increment,
  `tempdata1` varchar(300) default NULL,
  `tempdata2` varchar(300) default NULL,
  `tempdata3` varchar(300) default NULL,
  `tempdata4` varchar(300) default NULL,
  `tempdata5` varchar(300) default NULL,
  `tempdata6` varchar(300) default NULL,
  `tempdata7` varchar(300) default NULL,
  `tempdata8` varchar(300) default NULL,
  `tempdata9` varchar(300) default NULL,
  `tempdata10` varchar(300) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `print_table` */

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `service_id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_cost` double NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `service_id_Unique` (`service_id`),
  KEY `idx_service_id` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `services` */

insert  into `services`(`id`,`service_id`,`service_name`,`service_cost`) values 
(22,1,'Dental Cleaning',750),
(23,2,'Braces Adjustment',300),
(24,3,'Dentures',1000),
(25,4,'Dental Implants',2750),
(26,5,'Braces Package',30000);

/*Table structure for table `transaction_items` */

DROP TABLE IF EXISTS `transaction_items`;

CREATE TABLE `transaction_items` (
  `id` int(11) NOT NULL auto_increment,
  `transaction_item_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `add_charge` double NOT NULL default '0',
  `item_cost` double NOT NULL,
  `item_qty` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_transction_id` (`transaction_item_id`),
  KEY `FK_item_id` (`item_id`),
  CONSTRAINT `FK_item_id` FOREIGN KEY (`item_id`) REFERENCES `inventory` (`item_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `transaction_items` */

insert  into `transaction_items`(`id`,`transaction_item_id`,`item_id`,`item_name`,`add_charge`,`item_cost`,`item_qty`,`payment_date`) values 
(1,1,1,'Archwire',0,1800,1,'2022-03-22'),
(2,1,3,'Toothpaste',0,330.5,1,'2022-03-22'),
(3,2,1,'Archwire',0,1800,1,'2022-03-22'),
(4,2,3,'Toothpaste',0,300,1,'2022-03-22'),
(5,3,1,'Archwire',0,1800,1,'2022-03-22'),
(6,3,3,'Toothpaste',0,900,3,'2022-03-22'),
(7,0,0,' ',0,0,0,'1900-01-01'),
(8,0,0,' ',0,0,0,'1900-01-01'),
(9,4,1,'Archwire',0,1800,1,'2022-03-29'),
(10,4,3,'Toothpaste',0,600,2,'2022-03-29'),
(12,5,3,'Toothpaste',0.56,300.56,1,'2022-04-15'),
(13,6,1,'Archwire',35.76,3635.76,2,'2022-05-05'),
(14,6,3,'Toothpaste',0,300,1,'2022-05-05'),
(15,6,4,'Brackets',0,500,1,'2022-05-05'),
(16,7,3,'Toothpaste',0,300,1,'2022-05-15'),
(17,8,3,'Toothpaste',0,300,1,'2022-05-15');

/*Table structure for table `transaction_services` */

DROP TABLE IF EXISTS `transaction_services`;

CREATE TABLE `transaction_services` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `transaction_service_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `add_charge` double NOT NULL default '0',
  `service_cost` double NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_transaction_service_id` (`transaction_service_id`),
  KEY `FK_service_id` (`service_id`),
  CONSTRAINT `FK_service_id` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;

/*Data for the table `transaction_services` */

insert  into `transaction_services`(`id`,`transaction_service_id`,`service_id`,`service_name`,`add_charge`,`service_cost`,`payment_date`) values 
(153,1,1,'Dental Cleaning',0,750,'2022-03-22'),
(154,1,2,'Braces Adjustment',0,300,'2022-03-22'),
(155,1,3,'Dentures',0,1036.68,'2022-03-22'),
(159,3,2,'Braces Adjustment',0,300,'2022-03-22'),
(160,3,1,'Dental Cleaning',0,750,'2022-03-22'),
(161,4,1,'Dental Cleaning',0,750,'2022-03-22'),
(162,4,2,'Braces Adjustment',0,300,'2022-03-22'),
(163,5,1,'Dental Cleaning',0,750,'2022-03-22'),
(164,5,3,'Dentures',0,1000,'2022-03-22'),
(168,7,1,'Dental Cleaning',0,750,'2022-03-22'),
(169,7,3,'Dentures',0,1000,'2022-03-22'),
(170,8,1,'Dental Cleaning',0,750,'2022-03-22'),
(171,9,2,'Braces Adjustment',0,300,'2022-03-29'),
(172,9,3,'Dentures',0,1000,'2022-03-29'),
(173,10,1,'Dental Cleaning',0,750,'2022-03-29'),
(174,10,4,'Dental Implants',0,2750,'2022-03-29'),
(175,11,2,'Braces Adjustment',27.6,327.6,'2022-04-15'),
(181,12,2,'Braces Adjustment',0,300,'2022-05-05'),
(182,12,1,'Dental Cleaning',75.45,825.45,'2022-05-05'),
(184,13,3,'Dentures',0,1000,'2022-05-15');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `user_status` varchar(45) NOT NULL default 'active',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id_Unique` (`user_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`user_id`,`password`,`role`,`user_status`) values 
(11,111111,'dÃ¶duO`_Ã‡Â©< ÂªÃÃ‹\\J','admin','active'),
(12,124831,'Ã†Â°7&Â®ËœfÂ¥â‚¬Ã˜wÅ 2Ã¹','dentist','active'),
(13,124832,'Ã†Â°7&Â®ËœfÂ¥â‚¬Ã˜wÅ 2Ã¹','dentist','active'),
(14,11111,'â€Â¬U2e$Â©Ã¤Ã¸â„¢â„¢Â´\Z?','dentist','active'),
(15,124833,'Ã‰Å“ÃŒ45bÂ¿C\\â€”Â³Ã™\\~','dentist','active');

/* Trigger structure for table `patient` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trg_insert_patient` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trg_insert_patient` AFTER INSERT ON `patient` FOR EACH ROW BEGIN
	DECLARE col_id INTEGER;
	DECLARE uid INTEGER;
	SET col_id = (SELECT MAX(patient_id) FROM patient);
    END */$$


DELIMITER ;

/* Trigger structure for table `user` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trg_insert_user` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trg_insert_user` AFTER INSERT ON `user` FOR EACH ROW BEGIN
	
	 DECLARE col_id INTEGER;
	 DECLARE uid INTEGER;
	 DECLARE urole VARCHAR(50);
	 
	 SET col_id = (SELECT MAX(id) FROM user);
	 SET uid = (SELECT user_id FROM user WHERE id=col_id);
	 SET urole = (SELECT role FROM user WHERE id=col_id);
	     
	 IF urole = 'dentist' THEN
	    INSERT INTO dentist(dentist_id, user_id) VALUES (uid, uid);
	 ELSEIF urole = 'admin' THEN
	     INSERT INTO admins(user_id) VALUES (uid);
	 END IF;
    END */$$


DELIMITER ;

/* Trigger structure for table `user` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `trg_delete_user` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `trg_delete_user` BEFORE DELETE ON `user` FOR EACH ROW BEGIN
    
	IF old.role = 'dentist' THEN
		DELETE FROM dentist WHERE dentist_id = old.user_id;
	ELSEIF old.role = 'admin' THEN
		DELETE FROM admins WHERE user_id = old.user_id;
	END IF;
	
    END */$$


DELIMITER ;

/* Function  structure for function  `funcAuthenticateUser` */

/*!50003 DROP FUNCTION IF EXISTS `funcAuthenticateUser` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `funcAuthenticateUser`(uid INT, pass VARCHAR(50)) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
	DECLARE rowCount INT;
    SET rowCount = (SELECT COUNT(user_id) FROM user WHERE (BINARY user_id = BINARY uid && BINARY password = BINARY aes_encrypt(pass, 'dentrixkeypass')));
    return rowCount;
END */$$
DELIMITER ;

/* Function  structure for function  `funcGetUserRole` */

/*!50003 DROP FUNCTION IF EXISTS `funcGetUserRole` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `funcGetUserRole`(uid INT) RETURNS varchar(10) CHARSET latin1
BEGIN
	DECLARE urole VARCHAR(10);
	SET urole = (SELECT role FROM USER WHERE (BINARY user_id = BINARY uid));
	RETURN urole;
    END */$$
DELIMITER ;

/* Function  structure for function  `funcSum` */

/*!50003 DROP FUNCTION IF EXISTS `funcSum` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `funcSum`(value1 INT, value2 INT) RETURNS int(11)
BEGIN
	DECLARE values_sum INT;
	
	SET values_sum = value1 + value2;
	
	RETURN values_sum;
    END */$$
DELIMITER ;

/* Function  structure for function  `isAccountExist` */

/*!50003 DROP FUNCTION IF EXISTS `isAccountExist` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `isAccountExist`(uid INT) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
	DECLARE isExist INT;
    SET isExist = (SELECT COUNT(*) AS 'Total User' FROM user WHERE user_id = uid);
    
    IF isExist > 0 THEN
		RETURN TRUE;
    ELSE
		RETURN FALSE;
    END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddAppointment` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddAppointment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddAppointment`(aaid integer,
                                                                aadesc varchar(50),
                                                                aadate date,
                                                                aatime time)
BEGIN
insert into appointment(appointment_id, appointment_desc, appointment_date, appointment_time)
values(aaid, aadesc, aadate, aatime);
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddEmployee`(did INT, eid INT, ename VARCHAR(50))
BEGIN
		INSERT INTO employee(employee_id, dentist_id, employee_name) VALUES (eid, did, ename);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddInventory` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddInventory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddInventory`(iid integer,
                                                             iiname varchar(50),
                                                             iiqty integer,
                                                             iiunit varchar(20),
                                                             iidesc varchar(50),
                                                             iicost DOUBLE,
                                                             iibrand VARCHAR(50))
BEGIN
insert into inventory(item_id, item_name, item_qty, item_unit, item_desc, item_cost, item_brand)
values(iid, iiname, iiqty, iiunit, iidesc, iicost, iibrand);
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddLogs` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddLogs` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddLogs`(log_did INT, log_source VARCHAR(50), log_action VARCHAR(50), log_name VARCHAR(50), log_message VARCHAR(100))
BEGIN
		INSERT INTO dentrix_logs (dentist_id, source, actions, fullname, message) VALUEs (log_did, log_source, log_action, log_name, log_message);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddPatient` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddPatient` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddPatient`(pid INT, ffname varchar(50), llname varchar(50), mmname varchar(50), ggender varchar(10), ccontact varchar(11), eeaddress varchar(45), ddob date, aaddress varchar(100))
BEGIN
      insert into patient(patient_id, fname, lname, mname, gender, contact_no, email_address, dob, address) values (pid, ffname, llname, mmname, ggender, ccontact, eeaddress, ddob, aaddress);
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddPatientBalance` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddPatientBalance` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddPatientBalance`(pid INT, bamt DOUBLE, tdate DATE, ttype VARCHAR(10))
BEGIN
		INSERT INTO patient_balance(patient_id, balance_amount, transaction_date, transaction_type) VALUES (pid, bamt, tdate, ttype);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddPaymentItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddPaymentItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddPaymentItem`(tiid INT, amt DOUBLE, pdate DATE, pdesc VARCHAR(50), iname VARCHAR(50))
BEGIN
		INSERT INTO transaction_items (transaction_item_id, payment_amount, payment_date, payment_desc, item_name) VALUES (tiid, amt, pdate, pdesc, iname);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddPaymentService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddPaymentService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddPaymentService`(tsid INT, amt DOUBLE, pdate DATE, pdesc VARCHAR(50), srender VARCHAR(50))
BEGIN
		INSERT INTO transaction_services (transaction_service_id, payment_amount, payment_date, payment_desc, service_rendered) VALUES (tsid, amt, pdate, pdesc, srender);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddPrescription` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddPrescription` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddPrescription`(pid INT, mname VARCHAR(50), mdosage VARCHAR(50), mday VARCHAR(50))
BEGIN
		INSERT INTO prescription(prescription_id, medicine_name, medicine_dosage, medicine_day) VALUES (pid, mname, mdosage, mday); 
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAddService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAddService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAddService`(ssid INT, ssname VARCHAR(50), sscost DOUBLE)
BEGIN
     INSERT INTO services (service_id, service_name, service_cost) VALUES (ssid, ssname, sscost);
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcAuthenticateUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcAuthenticateUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcAuthenticateUser`(uid INT, pass VARCHAR(50))
BEGIN
    DECLARE result BOOLEAN;
    DECLARE role VARCHAR(10);
    SET result = funcAuthenticateUser(uid, pass);
    SET role = funcGetUserRole(uid);
    IF result = 1 THEN
	SELECT result AS 'IS_AUTHENTICATED', role as 'USER_ROLE';
    END IF;
    
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcCalculateSubTotalItems` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcCalculateSubTotalItems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcCalculateSubTotalItems`(tid INT)
BEGIN
		SELECT SUM(item_cost) FROM transaction_items WHERE transaction_item_id = tid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcCalculateSubTotalServices` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcCalculateSubTotalServices` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcCalculateSubTotalServices`(tid INT)
BEGIN
		SELECT SUM(service_cost) FROM transaction_services WHERE transaction_service_id = tid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcCheckAccountExist` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcCheckAccountExist` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcCheckAccountExist`(uid INT)
BEGIN
		SELECT COUNT(*) AS 'Total User' FROM USER WHERE user_id = uid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcCheckIfItemExist` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcCheckIfItemExist` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcCheckIfItemExist`(tid INT, iid INT)
BEGIN
		SELECT COUNT(item_id), item_qty, SUM(item_cost) FROM transaction_items WHERE transaction_item_id = tid AND item_id = iid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcCheckIfServiceExist` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcCheckIfServiceExist` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcCheckIfServiceExist`(tid INT, sid INT)
BEGIN
		SELECT COUNT(service_id) FROM transaction_services WHERE transaction_service_id = tid AND service_id = sid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcCheckPassword` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcCheckPassword` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcCheckPassword`(uid INT, pass VARCHAR(100))
BEGIN
		SELECT COUNT(PASSWORD) FROM USER WHERE (BINARY user_id = BINARY uid && BINARY PASSWORD = BINARY AES_ENCRYPT(pass, 'dentrixkeypass'));
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcCreateAccount` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcCreateAccount` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcCreateAccount`(uid INT, pass VARCHAR(50), urole VARCHAR(50))
BEGIN
	DECLARE result BOOLEAN;
    SET result = isAccountExist(uid);
    IF result = TRUE THEN
		SELECT result AS 'Error';
	ELSE
		INSERT INTO user(user_id, password, role) VALUES (uid, aes_encrypt(pass, 'dentrixkeypass'), urole);
    END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcCreateReceiptPrescription` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcCreateReceiptPrescription` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcCreateReceiptPrescription`(dname VARCHAR(50), pname VARCHAR(50), mname VARCHAR(50), mdosage VARCHAR(50), mday VARCHAR(50), rissued DATE, pdob DATE, paddress VARCHAR(50))
BEGIN
		INSERT INTO receipt_prescription (dentist_name, patient_name, medicine_name, medicine_dosage, medicine_day, receipt_issued, patient_dob, patient_address)
		VALUES (dname, pname, mname, mdosage, mday, rissued, pdob, paddress);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteAccount` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteAccount` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteAccount`(userid INT, urole VARCHAR(10))
BEGIN
	DELETE FROM USER WHERE user_id = userid;
	IF urole = "admin" THEN
		DELETE FROM admins WHERE user_id = userid;
	ELSE
		DELETE FROM dentist WHERE user_id = userid OR dentist_id = userid;
	END IF;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteAppointment` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteAppointment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteAppointment`(aaid integer)
BEGIN

delete from appointment where appointment_id = aaid;

END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteEmployee`(did INT, eid INT)
BEGIN
		DELETE FROM employee WHERE dentist_id = did AND employee_id = eid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteItem`(iid integer)
BEGIN

delete from inventory where item_id = iid;

END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteItemFromCart` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteItemFromCart` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteItemFromCart`(tid INT, iid INT)
BEGIN
		DELETE FROM transaction_items WHERE transaction_item_id = tid AND item_id = iid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeletePatient` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeletePatient` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeletePatient`(ppid integer)
BEGIN

delete from patient where patient_id = ppid;

END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeletePrescription` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeletePrescription` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeletePrescription`(pid INT)
BEGIN
		DELETE FROM prescription WHERE prescription_id = pid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeletePrintTable` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeletePrintTable` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeletePrintTable`()
BEGIN
		DELETE FROM print_table;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteService`(sid INT)
BEGIN
	DELETE FROM services WHERE service_id = sid;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteServiceFromCart` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteServiceFromCart` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteServiceFromCart`(tid INT, sid INT)
BEGIN
		DELETE FROM transaction_services WHERE transaction_service_id = tid AND service_id = sid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteTransaction`(tid INT, ttype VARCHAR(10))
BEGIN
		IF ttype = "Service" THEN
			DELETE FROM transaction_services WHERE transaction_service_id = tid;
			DELETE FROM patient_balance_services WHERE transaction_id = tid;
			DELETE FROM patient_balance_history_services WHERE transaction_id = tid;
		ELSE
			DELETE FROM transaction_items WHERE transaction_item_id = tid;
			DELETE FROM patient_balance_items WHERE transaction_id = tid;
			DELETE FROM patient_balance_history_items WHERE transaction_id = tid;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteTransactionItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteTransactionItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteTransactionItem`(tid INT)
BEGIN
		DELETE FROM transaction_items WHERE transaction_item_id = tid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDeleteTransactionService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDeleteTransactionService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteTransactionService`(tid INT)
BEGIN
		DELETE FROM transaction_services WHERE transaction_service_id = tid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDentistPatientRelationship` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDentistPatientRelationship` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDentistPatientRelationship`(did INT, pid INT)
BEGIN
		INSERT INTO dentist_patient(dentist_id, patient_id) VALUES (did, pid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDisplayBalanceHistoryItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDisplayBalanceHistoryItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayBalanceHistoryItem`(did INT, pid INT, tid INT)
BEGIN
		DECLARE if_exist INTEGER;
		SET if_exist = (SELECT COUNT(*) FROM patient_balance_history_items WHERE transaction_id = tid);
		
		IF if_exist < 1 THEN
			SELECT a.transaction_item_id AS 'Transaction ID', a.transaction_item_id AS 'Patient ID', a.amount_paid AS 'Amount Paid', DATE_FORMAT(a.transaction_date, "%m/%d/%Y") AS 'Transaction Date'
			FROM patient_transaction_items a
			WHERE (a.dentist_id = did AND a.patient_id = pid) AND (a.transaction_item_id = tid);
		ELSE
			SELECT b.transaction_item_id AS 'Transaction ID', b.transaction_item_id AS 'Patient ID', a.amount_paid AS 'Amount Paid', DATE_FORMAT(a.transaction_date, "%m/%d/%Y") AS 'Transaction Date'
			FROM patient_balance_history_items a, patient_transaction_items b
			WHERE (a.patient_id = pid AND b.patient_id = pid AND a.dentist_id = did AND b.dentist_id = did) AND (a.transaction_id = tid AND b.transaction_item_id = tid);
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDisplayBalanceHistoryService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDisplayBalanceHistoryService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayBalanceHistoryService`(did INT, pid INT, tid INT)
BEGIN
		DECLARE if_exist INTEGER;
		SET if_exist = (SELECT COUNT(*) FROM patient_balance_history_services WHERE transaction_id = tid);
		
		If if_exist < 1 THEN
			SELECT a.transaction_service_id AS 'Transaction ID', a.transaction_service_id AS 'Patient ID', a.amount_paid AS 'Amount Paid', DATE_FORMAT(a.transaction_date, "%m/%d/%Y") AS 'Transaction Date'
			FROM patient_transaction_services a
			WHERE (a.dentist_id = did AND a.patient_id = pid) AND (a.transaction_service_id = tid);
		Else
			SELECT b.transaction_service_id AS 'Transaction ID', b.transaction_service_id AS 'Patient ID', a.amount_paid AS 'Amount Paid', DATE_FORMAT(a.transaction_date, "%m/%d/%Y") AS 'Transaction Date'
			FROM patient_balance_history_services a, patient_transaction_services b
			WHERE (a.patient_id = pid AND b.patient_id = pid AND a.dentist_id = did AND b.dentist_id = did) AND (a.transaction_id = tid AND b.transaction_service_id = tid);
		END IF;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDisplayBalanceServiceItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDisplayBalanceServiceItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayBalanceServiceItem`(did INT, pid INT, stype VARCHAR(10))
BEGIN
		If stype = "Service" THEN
			SELECT c.transaction_service_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', f.balance_amount AS 'Balance Amount', b.amount_paid AS 'Amount Paid', b.sub_total AS 'Sub Total', DATE_FORMAT(c.payment_date, "%m/%d/%Y") AS 'Transaction Date', DATE_FORMAT(f.last_payment, "%m/%d/%Y") AS 'Last Payment'
			FROM patient a, patient_transaction_services b, transaction_services c, dentist e, patient_balance_services f
			WHERE (a.patient_id = pid AND b.patient_id = pid AND f.patient_id = pid AND e.dentist_id = did AND b.dentist_id = did AND e.dentist_id = b.dentist_id) AND b.transaction_service_id = c.transaction_service_id AND b.transaction_service_id = f.transaction_id AND b.is_paid = "false"
			GROUP BY c.transaction_service_id ASC;
		Else
			SELECT c.transaction_item_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', f.balance_amount AS 'Balance Amount', b.amount_paid AS 'Amount Paid', b.sub_total AS 'Sub Total', DATE_FORMAT(c.payment_date, "%m/%d/%Y") AS 'Transaction Date', DATE_FORMAT(f.last_payment, "%m/%d/%Y") AS 'Last Payment'
			FROM patient a, patient_transaction_items b, transaction_items c, dentist e, patient_balance_items f
			WHERE (a.patient_id = pid AND b.patient_id = pid AND f.patient_id = pid AND e.dentist_id = did AND b.dentist_id = did AND e.dentist_id = b.dentist_id) AND b.transaction_item_id = c.transaction_item_id AND b.transaction_item_id = f.transaction_id AND b.is_paid = "false"
			GROUP BY c.transaction_item_id ASC;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDisplayBalanceTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDisplayBalanceTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayBalanceTransaction`(did INT, pid INT, stype VARCHAR(10))
BEGIN
		If stype = "Service" THEN
			SELECT c.transaction_service_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', f.balance_amount AS 'Balance Amount', b.amount_paid AS 'Amount Paid', b.sub_total AS 'Sub Total', DATE_FORMAT(c.payment_date, "%m/%d/%Y") AS 'Transaction Date', DATE_FORMAT(f.last_payment, "%m/%d/%Y") AS 'Last Payment'
			FROM patient a, patient_transaction_services b, transaction_services c, dentist e, patient_balance_services f
			WHERE (a.patient_id = pid AND b.patient_id = pid AND f.patient_id = pid AND e.dentist_id = did AND b.dentist_id = did AND e.dentist_id = b.dentist_id) AND b.transaction_service_id = c.transaction_service_id AND b.transaction_service_id = f.transaction_id AND b.is_paid = "false"
			GROUP BY c.transaction_service_id ASC;
		Else
			SELECT c.transaction_service_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', f.balance_amount AS 'Balance Amount', b.amount_paid AS 'Amount Paid', b.sub_total AS 'Sub Total', DATE_FORMAT(c.payment_date, "%m/%d/%Y") AS 'Transaction Date', DATE_FORMAT(f.last_payment, "%m/%d/%Y") AS 'Last Payment'
			FROM patient a, patient_transaction_services b, transaction_services c, dentist e, patient_balance_services f
			WHERE (a.patient_id = pid AND b.patient_id = pid AND f.patient_id = pid AND e.dentist_id = did AND b.dentist_id = did AND e.dentist_id = b.dentist_id) AND b.transaction_service_id = c.transaction_service_id AND b.transaction_service_id = f.transaction_id AND b.is_paid = "false"
			GROUP BY c.transaction_service_id ASC;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcDisplayTotalBalance` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcDisplayTotalBalance` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayTotalBalance`(patient_id INT, filter VARCHAR(10))
BEGIN
		IF filter = "All" THEN
			SELECT pid AS 'Patient ID', total_balance AS 'Total Balance', transaction_type AS 'Transaction Type' FROM patient_total_balance WHERE pid = patient_id;
		ELSEIF filter = "Service" THEN
			SELECT pid AS 'Patient ID', total_balance AS 'Total Balance', transaction_type AS 'Transaction Type' FROM patient_total_balance WHERE pid = patient_id AND transaction_type = "Service";
		ELSEIF filter = "Item" THEN
			SELECT pid AS 'Patient ID', total_balance AS 'Total Balance', transaction_type AS 'Transaction Type' FROM patient_total_balance WHERE pid = patient_id AND transaction_type = "Item";
		END IF;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetEmployee`(did INT)
BEGIN
		SELECT employee_name FROM employee WHERE dentist_id = did;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetItemStock` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetItemStock` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetItemStock`(iid INT)
BEGIN
		SELECT item_qty FROM inventory WHERE item_id = iid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetMaxColumnAppointment` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetMaxColumnAppointment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetMaxColumnAppointment`()
BEGIN
	DECLARE num_row INTEGER;
	SET num_row = (SELECT COUNT(*) FROM appointment);
	
	IF num_row = 0 THEN
		SELECT LEAST(COUNT(*), 1) + 1 FROM appointment;
	ELSE
		SELECT MAX(appointment_id + 1) FROM appointment;
	END IF;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetMaxColumnEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetMaxColumnEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetMaxColumnEmployee`()
BEGIN
		DECLARE num_row INTEGER;
		SET num_row = (SELECT COUNT(*) FROM employee);
		
		IF num_row = 0 THEN
			SELECT LEAST(COUNT(*), 1) + 1 FROM employee;
		ELSE
			SELECT MAX(employee_id + 1) FROM employee;
		END IF;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetMaxColumnInventory` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetMaxColumnInventory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetMaxColumnInventory`()
BEGIN
	DECLARE num_row INTEGER;
	SET num_row = (SELECT COUNT(*) FROM inventory);
	
	IF num_row = 0 THEN
		SELECT LEAST(COUNT(*), 1) + 1 FROM inventory;
	ELSE
		SELECT MAX(item_id + 1) FROM inventory;
	END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetMaxColumnItemTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetMaxColumnItemTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetMaxColumnItemTransaction`()
BEGIN
	DECLARE num_row INTEGER;
	SET num_row = (SELECT COUNT(*) FROM patient_transaction_items);
	
	IF num_row = 0 THEN
		SELECT LEAST(COUNT(*), 1) + 1 FROM patient_transaction_items;
	ELSE
		SELECT MAX(transaction_item_id + 1) FROM patient_transaction_items;
	END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetMaxColumnPatient` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetMaxColumnPatient` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetMaxColumnPatient`()
BEGIN
	DECLARE num_row INTEGER;
	SET num_row = (SELECT COUNT(*) FROM patient);
	IF num_row = 0 THEN
		SELECT LEAST(COUNT(*), 1) + 1 FROM patient;
	ELSE
		SELECT MAX(patient_id + 1) FROM patient;
	END IF;
	
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetMaxColumnPrescription` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetMaxColumnPrescription` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetMaxColumnPrescription`()
BEGIN
	DECLARE num_row INTEGER;
	SET num_row = (SELECT COUNT(*) FROM prescription);
	
	IF num_row = 0 THEN
		SELECT LEAST(COUNT(*), 1) + 1 FROM prescription;
	ELSE
		SELECT MAX(prescription_id + 1) FROM prescription;
	END IF;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetMaxColumnServices` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetMaxColumnServices` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetMaxColumnServices`()
BEGIN
		DECLARE num_row INTEGER;
		SET num_row = (SELECT COUNT(*) FROM services);
		
		IF num_row = 0 THEN
			SELECT LEAST(COUNT(*), 1) + 1 FROM services;
		ELSE
			SELECT MAX(service_id + 1) FROM services;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetMaxColumnServiceTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetMaxColumnServiceTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetMaxColumnServiceTransaction`()
BEGIN
	DECLARE num_row INTEGER;
	SET num_row = (SELECT COUNT(*) FROM patient_transaction_services);
	
	IF num_row = 0 THEN
		SELECT LEAST(COUNT(*), 1) + 1 FROM patient_transaction_services;
	ELSE
		SELECT MAX(transaction_service_id + 1) FROM patient_transaction_services;
	END IF;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetPatientName` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetPatientName` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetPatientName`(pid INT)
BEGIN
		SELECT fname, lname, mname FROM patient WHERE patient_id = pid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetPrescription` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetPrescription` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetPrescription`(did INT, search_filter VARCHAR(20), search_keyword VARCHAR(50), search_medicine VARCHAR(50))
BEGIN
		IF search_filter = "All" THEN
			SELECT CONCAT(b.fname, " ", LEFT(b.mname, 1), ". ", b.lname) AS 'Dentist Name', d.prescription_id AS 'Prescription ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', a.dob AS 'Date of Birth', a.address AS 'Patient Address', d.medicine_name AS 'Medicine', d.medicine_dosage AS 'Dosage', d.medicine_day AS 'Medicine Day'
			FROM patient a, dentist b, patient_prescription c, prescription d
			WHERE (b.dentist_id = did AND c.dentist_id = did AND a.patient_id = c.patient_id AND c.prescription_id = d.prescription_id);
		ELSEIF search_filter = "By Name" THEN
			SELECT CONCAT(b.fname, " ", LEFT(b.mname, 1), ". ", b.lname) AS 'Dentist Name', d.prescription_id AS 'Prescription ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', a.dob AS 'Date of Birth', a.address AS 'Patient Address', d.medicine_name AS 'Medicine', d.medicine_dosage AS 'Dosage', d.medicine_day AS 'Medicine Day'
			FROM patient a, dentist b, patient_prescription c, prescription d
			WHERE (b.dentist_id = did AND c.dentist_id = did AND a.patient_id = c.patient_id AND c.prescription_id = d.prescription_id) AND (BINARY LOWER(a.fname) LIKE LOWER(CONCAT('%', search_keyword, '%')) OR BINARY LOWER(a.lname) LIKE LOWER(CONCAT('%', search_keyword, '%')) OR BINARY LOWER(a.mname) LIKE LOWER(CONCAT('%', search_keyword, '%')));
		ELSEIF search_filter = "By Name and Medicine" THEN
			SELECT CONCAT(b.fname, " ", LEFT(b.mname, 1), ". ", b.lname) AS 'Dentist Name', d.prescription_id AS 'Prescription ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', a.dob AS 'Date of Birth', a.address AS 'Patient Address', d.medicine_name AS 'Medicine', d.medicine_dosage AS 'Dosage', d.medicine_day AS 'Medicine Day'
			FROM patient a, dentist b, patient_prescription c, prescription d
			WHERE (b.dentist_id = did AND c.dentist_id = did AND a.patient_id = c.patient_id AND c.prescription_id = d.prescription_id) AND (BINARY LOWER(a.fname) LIKE LOWER(CONCAT('%', search_keyword, '%')) OR BINARY LOWER(a.lname) LIKE LOWER(CONCAT('%', search_keyword, '%')) OR BINARY LOWER(a.mname) LIKE LOWER(CONCAT('%', search_keyword, '%'))) AND LOWER(d.medicine_name) LIKE LOWER(CONCAT('%', search_medicine, '%'));
		ELSEIF search_filter = "By Medicine" THEN
			SELECT CONCAT(b.fname, " ", LEFT(b.mname, 1), ". ", b.lname) AS 'Dentist Name', d.prescription_id AS 'Prescription ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', a.dob AS 'Date of Birth', a.address AS 'Patient Address', d.medicine_name AS 'Medicine', d.medicine_dosage AS 'Dosage', d.medicine_day AS 'Medicine Day'
			FROM patient a, dentist b, patient_prescription c, prescription d
			WHERE (b.dentist_id = did AND c.dentist_id = did AND a.patient_id = c.patient_id AND c.prescription_id = d.prescription_id) AND (BINARY LOWER(d.medicine_name) LIKE LOWER(CONCAT('%', search_medicine, '%')));
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetTotalAdmin` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetTotalAdmin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTotalAdmin`()
BEGIN
		SELECT COUNT(*) FROM admins;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetTotalDentist` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetTotalDentist` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTotalDentist`()
BEGIN
		SELECT COUNT(*) FROM dentist;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetTotalItems` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetTotalItems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTotalItems`()
BEGIN
		SELECT COUNT(id) AS 'Total Items' FROM inventory WHERE item_qty <> 0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetTotalItemsTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetTotalItemsTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTotalItemsTransaction`(tid INT)
BEGIN
		SELECT SUM(item_qty) FROM transaction_items WHERE transaction_item_id = tid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetTotalPatient` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetTotalPatient` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTotalPatient`(did INT)
BEGIN
		SELECT COUNT(id) AS 'Total Patient' FROM dentist_patient WHERE dentist_id = did;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetTotalRevenue` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetTotalRevenue` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTotalRevenue`(did INT, date_today VARCHAR(50), service_type VARCHAR(10))
BEGIN
	IF service_type = "Service" THEN
		SELECT SUM(a.amount_paid) AS 'Total Amount'
		FROM  patient_transaction_services a, dentist b
		WHERE a.dentist_id = did AND b.dentist_id = did AND a.dentist_id = b.dentist_id AND a.transaction_date = date_today;
	ELSEIF service_type = "Item" THEN
		SELECT SUM(a.amount_paid) AS 'Total Amount'
		FROM  patient_transaction_items a, dentist b
		WHERE a.dentist_id = did AND b.dentist_id = did AND a.dentist_id = b.dentist_id AND a.transaction_date = date_today;
	END IF;	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetTotalServicesTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetTotalServicesTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTotalServicesTransaction`(tid INT)
BEGIN
		SELECT COUNT(*) FROM transaction_services WHERE transaction_service_id = tid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetTotalUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetTotalUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetTotalUser`()
BEGIN
		SELECT COUNT(*) FROM user;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetUser`(uid INT, urole VARCHAR(10))
BEGIN
		IF urole = 'dentist' THEN
			SELECT * FROM dentist WHERE user_id = uid;
		ELSEIF urole = 'admin' THEN
			SELECT * FROM admins WHERE user_id = uid;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcGetUserStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcGetUserStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcGetUserStatus`(uid INT)
BEGIN
		SELECT user_status FROM user WHERE user_id = uid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcInsertBalanceAmount_Item` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcInsertBalanceAmount_Item` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertBalanceAmount_Item`(did INT, pid INT, tid INT, bamt DOUBLE, received DOUBLE, lpayment DATE)
BEGIN
		INSERT INTO patient_balance_items (dentist_id, patient_id, transaction_id, balance_amount, last_payment) VALUES (did, pid, tid, bamt, lpayment);
		INSERT INTO patient_balance_history_items (dentist_id, patient_id, transaction_id, amount_paid, transaction_date) VALUES (did, pid, tid, received, lpayment);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcInsertBalanceAmount_Service` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcInsertBalanceAmount_Service` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertBalanceAmount_Service`(did INT, pid INT, tid INT, bamt DOUBLE, received DOUBLE, lpayment DATE)
BEGIN
		INSERT INTO patient_balance_services (dentist_id, patient_id, transaction_id, balance_amount, last_payment) VALUES (did, pid, tid, bamt, lpayment);
		INSERT INTO patient_balance_history_services (dentist_id, patient_id, transaction_id, amount_paid, transaction_date) VALUES (did, pid, tid, received, lpayment);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcInsertPaymentItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcInsertPaymentItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertPaymentItem`(tid INT, iid INT, iname VARCHAR(50), acharge DOUBLE, icost DOUBLE, iqty DOUBLE, pdate DATE)
BEGIN
		INSERT INTO transaction_items (transaction_item_id, item_id, item_name, add_charge, item_cost, item_qty, payment_date) VALUES (tid, iid, iname, acharge, icost, iqty, pdate);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcInsertPaymentService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcInsertPaymentService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertPaymentService`(tid INT, sid INT, sname VARCHAR(50), acharge DOUBLE, scost DOUBLE, pdate DATE)
BEGIN
		INSERT INTO transaction_services (transaction_service_id, service_id, service_name, add_charge, service_cost, payment_date) VALUES (tid, sid, sname, acharge, scost, pdate);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcInsertToBalanceHistoryItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcInsertToBalanceHistoryItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertToBalanceHistoryItem`(did INT, pid INT, tid INT, apaid DOUBLE, tdate DATE)
BEGIN
		INSERT INTO patient_balance_history_items (dentist_id, patient_id, transaction_id, amount_paid, transaction_date) VALUES (did, pid, tid, apaid, tdate);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcInsertToBalanceHistoryService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcInsertToBalanceHistoryService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertToBalanceHistoryService`(did INT, pid INT, tid INT, apaid DOUBLE, tdate DATE)
BEGIN
		INSERT INTO patient_balance_history_services (dentist_id, patient_id, transaction_id, amount_paid, transaction_date) VALUES (did, pid, tid, apaid, tdate);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcInsertTransactionItemRelationship` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcInsertTransactionItemRelationship` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertTransactionItemRelationship`(did INT, pid INT, tid INT, stotal DOUBLE, amt DOUBLE, tdate DATE, ipaid VARCHAR(5))
BEGIN
		INSERT INTO patient_transaction_items (dentist_id, patient_id, transaction_item_id, sub_total, amount_paid, transaction_date, is_paid) VALUES (did, pid, tid, stotal, amt, tdate, ipaid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcInsertTransactionServiceRelationship` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcInsertTransactionServiceRelationship` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertTransactionServiceRelationship`(did INT, pid INT, tid INT, stotal DOUBLE, amt DOUBLE, tdate DATE, ipaid VARCHAR(5))
BEGIN
		INSERT INTO patient_transaction_services (dentist_id, patient_id, transaction_service_id, sub_total, amount_paid, transaction_date, is_paid) VALUES (did, pid, tid, stotal, amt, tdate, ipaid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcPatientAppointmentRelationship` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcPatientAppointmentRelationship` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcPatientAppointmentRelationship`(did INT, pid INT, aid INT)
BEGIN
		INSERT INTO patient_appointment(dentist_id, patient_id, appointment_id) VALUES (did, pid, aid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcPatientPrescriptionRelationship` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcPatientPrescriptionRelationship` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcPatientPrescriptionRelationship`(did INT, pid INT, presid INT)
BEGIN
		INSERT INTO patient_prescription(dentist_id, patient_id, prescription_id) VALUES (did, pid, presid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcPatientTransactionItemRelationship` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcPatientTransactionItemRelationship` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcPatientTransactionItemRelationship`(did INT, pid INT, iid INT, tiid INT)
BEGIN
		INSERT INTO patient_transaction_items (dentist_id, patient_id, item_id, transaction_item_id) VALUES (did, pid, iid, tiid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcPatientTransactionServiceRelationship` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcPatientTransactionServiceRelationship` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcPatientTransactionServiceRelationship`(did INT, pid INT, sid INT, tsid INT)
BEGIN
		INSERT INTo patient_transaction_services (dentist_id, patient_id, service_id, transaction_service_id) VALUES (did, pid, sid, tsid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcPrintTable` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcPrintTable` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcPrintTable`(temp1 VARCHAR(300), temp2 VARCHAR(300), temp3 VARCHAR(300), temp4 VARCHAR(300), temp5 VARCHAR(300), temp6 VARCHAR(300), temp7 VARCHAR(300), temp8 VARCHAR(300), temp9 VARCHAR(300), temp10 VARCHAR(300))
BEGIN
		INSERT INTO print_table(tempdata1, tempdata2, tempdata3, tempdata4, tempdata5, tempdata6, tempdata7, tempdata8, tempdata9, tempdata10) VALUES(temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcRollbackQty` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcRollbackQty` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcRollbackQty`(iid INT, iqty INT, tiid INT)
BEGIN
		DECLARE inventory_qty INT;
		DECLARE transaction_qty INT;
		DECLARE original_qty INT;
		SET inventory_qty = (SELECT item_qty FROM inventory WHERE item_id = iid);
		SET transaction_qty = (SELECT item_qty FROM transaction_items WHERE item_id = iid AND transaction_item_id = tiid);
		SET original_qty = (inventory_qty + transaction_qty);
		SELECT original_qty;
		
		UPDATE inventory SET item_qty = original_qty WHERE item_id = iid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchAppointment` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchAppointment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchAppointment`(did INT, search_filter VARCHAR(50), search_input VARCHAR(100), date_from VARCHAR(50), date_to VARCHAR(50), search_status VARCHAR(50))
BEGIN
	   IF search_filter = "All" Then
		SELECT d.appointment_id AS 'Appointment ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', d.appointment_desc AS 'Appointment Description', DATE_FORMAT(d.appointment_date, "%m/%d/%Y") AS 'Appointment Date', TIME_FORMAT(d.appointment_time, "%h:%i %p") As 'Appointment Time', d.status AS 'Status' 
		FROM patient a, dentist b, patient_appointment c, appointment d
		WHERE (c.dentist_id = did) AND (c.patient_id = a.patient_id) AND (b.dentist_id = did) AND (d.appointment_id = c.appointment_id)
		ORDER BY d.appointment_id ASC;
	   ELSEIF search_filter = "By Appointment Type" THEN
		SELECT d.appointment_id AS 'Appointment ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', d.appointment_desc AS 'Appointment Description', DATE_FORMAT(d.appointment_date, "%m/%d/%Y") AS 'Appointment Date', TIME_FORMAT(d.appointment_time, "%h:%i %p") AS 'Appointment Time', d.status AS 'Status' 
		FROM patient a, dentist b, patient_appointment c, appointment d
		WHERE ((c.dentist_id = did) AND (c.patient_id = a.patient_id) AND (b.dentist_id = did)) AND (BINARY LOWER(d.appointment_desc) LIKE LOWER(CONCAT('%', search_input, '%'))) AND (d.appointment_id = c.appointment_id)
		ORDER BY d.appointment_id ASC;
	   ELSEIF search_filter = "By Name" THEN
		SELECT d.appointment_id AS 'Appointment ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', d.appointment_desc AS 'Appointment Description', DATE_FORMAT(d.appointment_date, "%m/%d/%Y") AS 'Appointment Date', TIME_FORMAT(d.appointment_time, "%h:%i %p") AS 'Appointment Time', d.status AS 'Status' 
		FROM patient a, dentist b, patient_appointment c, appointment d
		WHERE ((c.dentist_id = did) AND (c.patient_id = a.patient_id) AND (b.dentist_id = did)) AND (BINARY LOWER(a.fname) LIKE LOWER(CONCAT('%', search_input, '%')) OR BINARY LOWER(a.lname) LIKE LOWER(CONCAT('%', search_input, '%')) OR BINARY LOWER(a.mname) LIKE LOWER(CONCAT('%', search_input, '%'))) AND (d.appointment_id = c.appointment_id)
		ORDER BY d.appointment_id ASC;
	   ELSEIF search_filter = "Between Dates" THEN
		SELECT d.appointment_id AS 'Appointment ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', d.appointment_desc AS 'Appointment Description', DATE_FORMAT(d.appointment_date, "%m/%d/%Y") AS 'Appointment Date', TIME_FORMAT(d.appointment_time, "%h:%i %p") AS 'Appointment Time', d.status AS 'Status' 
		FROM patient a, dentist b, patient_appointment c, appointment d
		WHERE ((c.dentist_id = did) AND (c.patient_id = a.patient_id) AND (b.dentist_id = did)) ANd (d.appointment_date BETWEEN date_from AND date_to) AND (d.appointment_id = c.appointment_id)
		ORDER BY d.appointment_id ASC;
	   ELSEIF search_filter = "Status" THEN
		SELECT d.appointment_id AS 'Appointment ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', d.appointment_desc AS 'Appointment Description', DATE_FORMAT(d.appointment_date, "%m/%d/%Y") AS 'Appointment Date', TIME_FORMAT(d.appointment_time, "%h:%i %p") AS 'Appointment Time', d.status AS 'Status' 
		FROM patient a, dentist b, patient_appointment c, appointment d
		WHERE ((c.dentist_id = did) AND (c.patient_id = a.patient_id) AND (b.dentist_id = did)) AND (d.appointment_date BETWEEN date_from AND date_to) AND (d.appointment_id = c.appointment_id) AND d.status = search_status
		ORDER BY d.appointment_id ASC;	   
	   ELSEIF search_filter = "Specific Date" THEN
	   	SELECT d.appointment_id AS 'Appointment ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Patient Name', d.appointment_desc AS 'Appointment Description', DATE_FORMAT(d.appointment_date, "%m/%d/%Y") AS 'Appointment Date', TIME_FORMAT(d.appointment_time, "%h:%i %p") AS 'Appointment Time', d.status AS 'Status' 
	   	FROM patient a, dentist b, patient_appointment c, appointment d
		WHERE ((c.dentist_id = did) AND (c.patient_id = a.patient_id) AND (b.dentist_id = did)) AND (d.appointment_date = date_from) AND (d.appointment_id = c.appointment_id)
		ORDER BY d.appointment_id ASC; 
	   ELSEIF search_filter = "Count Today" THEN
		SELECT COUNT(*)
		FROM patient a, dentist b, patient_appointment c, appointment d
		WHERE ((c.dentist_id = did) AND (c.patient_id = a.patient_id) AND (b.dentist_id = did)) AND (d.appointment_date = date_from) AND (d.appointment_id = c.appointment_id)
		ORDER BY d.appointment_id ASC;
	   ELSE
		SELECT 'Error' AS '';
	   END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchEmployee`(did INT, ename VARCHAR(100), search_filter VARCHAR(50), search_input VARCHAR(100))
BEGIN
		IF search_filter = "All" THEN
			SELECT employee_id AS 'Employee ID', employee_name AS 'Employee Name'
			FROM employee
			WHERE dentist_id = did AND employee_name != ename;
		Else
			SELECT employee_id AS 'Employee ID', employee_name AS 'Employee Name'
			FROM employee
			WHERE dentist_id = did AND employee_name != ename AND BINARY LOWER(employee_name) LIKE LOWER(CONCAT('%', search_input, '%'));
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchItems` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchItems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchItems`(search_filter VARCHAR(50), name_of_item VARCHAR(50))
BEGIN
	IF search_filter = 'All' THEN
		SELECT item_id As 'Item ID', item_name AS 'Item Name', item_qty AS 'Quantity', item_unit AS 'Item Unit', item_desc AS 'Item Description', item_cost As 'Item Cost', item_brand AS 'Item Brand' FROM inventory WHERE item_id != 0 ORDER BY item_id ASC;
	ELSEIF search_filter = 'By Name' THEN
		SELECT item_id AS 'Item ID', item_name AS 'Item Name', item_qty AS 'Quantity', item_unit AS 'Item Unit', item_desc AS 'Item Description', item_cost AS 'Item Cost', item_brand AS 'Item Brand' FROM inventory WHERE item_id != 0 AND BINARY LOWER(item_name) LIKE LOWER(CONCAT('%', name_of_item, '%')) ORDER BY item_id ASC;
	ELSEIF search_filter = 'By Brand' THEN
		SELECT item_id AS 'Item ID', item_name AS 'Item Name', item_qty AS 'Quantity', item_unit AS 'Item Unit', item_desc AS 'Item Description', item_cost AS 'Item Cost', item_brand AS 'Item Brand' FROM inventory WHERE item_id != 0 AND BINARY LOWER(item_brand) LIKE LOWER(CONCAT('%', name_of_item, '%')) ORDER BY item_id ASC;
	ELSEIF search_filter = 'Out of Stock' THEN
		SELECT item_id AS 'Item ID', item_name AS 'Item Name', item_qty AS 'Quantity', item_unit AS 'Item Unit', item_desc AS 'Item Description', item_cost AS 'Item Cost', item_brand AS 'Item Brand' FROM inventory WHERE item_id != 0 AND item_qty = 0 ORDER BY item_id ASC;
	ELSE
		SELECT 'Error' as '';
    END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchLogs` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchLogs` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchLogs`(did INT, search_filter VARCHAR(50), search_input VARCHAR (100), date_from VARCHAR(50), date_to VARCHAR(50))
BEGIN
		IF search_filter = "All" THEN
			SELECT log_id AS 'Log ID', dentist_id AS 'dentist_id', source AS 'Source', actions AS 'Actions', fullname AS 'Employee Name', message AS 'Log Description', DATE_FORMAT(TIME_STAMP, "%m/%d/%Y %r") AS 'Time Stamp'
			FROM dentrix_logs
			WHERE dentist_id = did
			ORDER BY TIME_STAMP DESC;
		ELSEIF search_filter = "By Source" THEN
			SELECT log_id AS 'Log ID', dentist_id AS 'dentist_id', source AS 'Source', actions AS 'Actions', fullname AS 'Employee Name', message AS 'Log Description', DATE_FORMAT(TIME_STAMP, "%m/%d/%Y %r") AS 'Time Stamp'
			FROM dentrix_logs
			WHERE dentist_id = did AND (BINARY LOWER(source) LIKE LOWER(CONCAT('%', search_input, '%')))
			ORDER BY TIME_STAMP DESC;
		ELSEIF search_filter = "By Action" THEN
			SELECT log_id AS 'Log ID', dentist_id AS 'dentist_id', source AS 'Source', actions AS 'Actions', fullname AS 'Employee Name', message AS 'Log Description', DATE_FORMAT(TIME_STAMP, "%m/%d/%Y %r") AS 'Time Stamp'
			FROM dentrix_logs
			WHERE dentist_id = did AND (BINARY LOWER(actions) LIKE LOWER(CONCAT('%', search_input, '%')))
			ORDER BY TIME_STAMP DESC;
		ELSEIF search_filter = "By Employee" THEN
			SELECT log_id AS 'Log ID', dentist_id AS 'dentist_id', source AS 'Source', actions AS 'Actions', fullname AS 'Employee Name', message AS 'Log Description', DATE_FORMAT(TIME_STAMP, "%m/%d/%Y %r") AS 'Time Stamp'
			FROM dentrix_logs
			WHERE dentist_id = did AND (BINARY LOWER(fullname) LIKE LOWER(CONCAT('%', search_input, '%')))
			ORDER BY TIME_STAMP DESC;
		ELSEIF search_filter = "By Date" THEN
			SELECT log_id AS 'Log ID', dentist_id AS 'dentist_id', source AS 'Source', actions AS 'Actions', fullname AS 'Employee Name', message AS 'Log Description', DATE_FORMAT(TIME_STAMP, "%m/%d/%Y %r") AS 'Time Stamp'
			FROM dentrix_logs
			WHERE dentist_id = did AND (TIME_STAMP BETWEEN date_from AND date_to) 
			ORDER BY TIME_STAMP DESC;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchPatient` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchPatient` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchPatient`(did INT, search_filter VARCHAR(50), patient_name VARCHAR(50), patient_gender VARCHAR(50))
BEGIN
	IF search_filter = 'All' THEN
		SELECT b.patient_id AS 'Patient ID', CONCAT(b.fname, " ", LEFT(b.mname, 1), ". ", b.lname) AS 'Patient Name', b.gender as 'Gender', b.contact_no AS 'Contact Number', b.email_address as 'Email Address', DATE_FORMAT(b.dob, "%m/%d/%Y") AS 'Date of Birth', b.address as 'Address' FROM dentist a, patient b, dentist_patient c WHERE (c.dentist_id = did) And (c.patient_id = b.patient_id) AND (a.dentist_id = did) ORDER BY b.patient_id ASC;
	ELSEIF search_filter = 'By Name' THEN
		SELECT b.patient_id AS 'Patient ID', CONCAT(b.fname, " ", LEFT(b.mname, 1), ". ", b.lname) AS 'Patient Name', b.gender AS 'Gender', b.contact_no AS 'Contact Number', b.email_address AS 'Email Address', DATE_FORMAT(b.dob, "%m/%d/%Y") AS 'Date of Birth', b.address AS 'Address' FROM dentist a, patient b, dentist_patient c WHERE (BINARY LOWER(b.fname) LIKE LOWER(CONCAT('%', patient_name, '%')) OR BINARY LOWER(b.lname) LIKE LOWER(CONCAT('%', patient_name, '%')) OR BINARY LOWER(b.mname) LIKE LOWER(CONCAT('%', patient_name, '%'))) AND ((c.dentist_id = did) AND (c.patient_id = b.patient_id) AND (a.dentist_id = did)) ORDER BY b.patient_id ASC;
	ELSEIF search_filter = 'By Gender' THEN
		SELECT b.patient_id AS 'Patient ID', CONCAT(b.fname, " ", LEFT(b.mname, 1), ". ", b.lname) AS 'Patient Name', b.gender AS 'Gender', b.contact_no AS 'Contact Number', b.email_address AS 'Email Address', DATE_FORMAT(b.dob, "%m/%d/%Y") AS 'Date of Birth', b.address AS 'Address' FROM dentist a, patient b, dentist_patient c WHERE (BINARY b.gender = patient_gender) AND ((c.dentist_id = did) AND (c.patient_id = b.patient_id) AND (a.dentist_id = did)) ORDER BY b.patient_id ASC;
	ELSEIF search_filter = 'By Name and Gender' THEN
		SELECT b.patient_id AS 'Patient ID', CONCAT(b.fname, " ", LEFT(b.mname, 1), ". ", b.lname) AS 'Patient Name', b.gender AS 'Gender', b.contact_no AS 'Contact Number', b.email_address AS 'Email Address', DATE_FORMAT(b.dob, "%m/%d/%Y") AS 'Date of Birth', b.address AS 'Address' FROM dentist a, patient b, dentist_patient c WHERE (BINARY LOWER(b.fname) LIKE LOWER(CONCAT('%', patient_name, '%')) OR BINARY LOWER(b.lname) LIKE LOWER(CONCAT('%', patient_name, '%')) OR BINARY LOWER(b.mname) LIKE LOWER(CONCAT('%', patient_name, '%'))) AND (BINARY b.gender = patient_gender) AND (c.dentist_id = did) AND (c.patient_id = b.patient_id) AND (a.dentist_id = did)
                ORDER BY b.patient_id ASC;
        ELSE
		SELECT 'Error' as '';
    END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchPatientBalance` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchPatientBalance` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchPatientBalance`(pid INT, search_filter VARCHAR(50), date_from VARCHAR(50), date_to VARCHAR(50))
BEGIN
		IF search_filter = "All" Then
			SELECT patient_id AS 'Patient ID', balance_amount AS 'Balance Amount', transaction_date AS 'Transaction Date', transaction_type AS 'Transaction Type' FROM patient_balance WHERE patient_id = pid;
		ELSEIF search_filter = "By Service" THEN
			SELECT patient_id AS 'Patient ID', balance_amount AS 'Balance Amount', transaction_date AS 'Transaction Date', transaction_type AS 'Transaction Type' FROM patient_balance WHERE patient_id = pid AND transaction_type = "Service";
		ELSEIF search_filter = "By Item" THEN
			SELECT patient_id AS 'Patient ID', balance_amount AS 'Balance Amount', transaction_date AS 'Transaction Date', transaction_type AS 'Transaction Type' FROM patient_balance WHERE patient_id = pid AND transaction_type = "Item";	
		ELSEIF search_filter = "Between Dates" THEN
			SELECT patient_id AS 'Patient ID', balance_amount AS 'Balance Amount', transaction_date AS 'Transaction Date', transaction_type AS 'Transaction Type' FROM patient_balance WHERE patient_id = pid AND (transaction_date BETWEEN date_from AND date_to);	
		ELSE
			SELECT patient_id AS 'Patient ID', balance_amount AS 'Balance Amount', transaction_date AS 'Transaction Date', transaction_type AS 'Transaction Type' FROM patient_balance WHERE 1 = 0;
		END IF;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchPatientItemTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchPatientItemTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchPatientItemTransaction`(did INT, pid INT, search_filter VARCHAR(50), patient_name VARCHAR(50), date_from VARCHAR(50), date_to VARCHAR(50), ipaid VARCHAR(5))
BEGIN
		IF search_filter = "All" THEN
			SELECT b.transaction_item_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', b.amount_paid AS "Amount Paid", b.sub_total AS "Sub Total", DATE_FORMAT(b.transaction_date, "%m/%d/%Y") AS 'Transaction Date'
			FROM patient a, patient_transaction_items b, transaction_items c, dentist e
			WHERE (a.patient_id = pid AND b.patient_id = pid AND e.dentist_id = did AND b.dentist_id = did AND e.dentist_id = b.dentist_id) AND b.transaction_item_id = c.transaction_item_id AND b.is_paid = ipaid
			GROUP BY b.transaction_item_id ASC;
		ELSEIF search_filter = "By Name" THEN
			SELECT b.transaction_item_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', b.amount_paid AS "Amount Paid", b.sub_total AS "Sub Total", DATE_FORMAT(b.transaction_date, "%m/%d/%Y") AS 'Transaction Date'
			FROM patient a, patient_transaction_items b, transaction_items c, dentist e
			WHERE ((a.patient_id = pid AND b.patient_id = pid AND e.dentist_id = b.dentist_id) AND b.transaction_item_id = c.transaction_item_id) AND (BINARY LOWER(a.fname) LIKE LOWER(CONCAT('%', patient_name, '%')) OR BINARY LOWER(a.lname) LIKE LOWER(CONCAT('%', patient_name, '%')) OR BINARY LOWER(a.mname) LIKE LOWER(CONCAT('%', patient_name, '%'))) AND b.is_paid = ipaid
			GROUP BY b.transaction_item_id ASC;
		ELSEIF search_filter = "Between Dates" THEN
			SELECT b.transaction_item_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', b.amount_paid AS "Amount Paid", b.sub_total AS "Sub Total", DATE_FORMAT(b.transaction_date, "%m/%d/%Y") AS 'Transaction Date'
			FROM patient a, patient_transaction_items b, inventory d, transaction_items c, dentist e
			WHERE ((a.patient_id = pid AND b.patient_id = pid AND e.dentist_id = b.dentist_id) AND b.transaction_item_id = c.transaction_item_id) AND (b.transaction_date BETWEEN date_from AND date_to) AND b.is_paid = ipaid
			GROUP BY b.transaction_item_id ASC;
		ELSE
			SELECT 'Error' AS 'Error';		
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchPatientServiceTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchPatientServiceTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchPatientServiceTransaction`(did INT, pid INT, search_filter VARCHAR(50), patient_name VARCHAR(50), date_from VARCHAR(50), date_to VARCHAR(50), ipaid VARCHAR(5))
BEGIN
	IF search_filter = "All" Then
		SELECT c.transaction_service_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', b.amount_paid AS 'Amount Paid', b.sub_total AS 'Sub Total', DATE_FORMAT(c.payment_date, "%m/%d/%Y") AS 'Transaction Date'
		FROM patient a, patient_transaction_services b, transaction_services c, dentist e
		WHERE (a.patient_id = pid AND b.patient_id = pid AND e.dentist_id = did AND b.dentist_id = did AND e.dentist_id = b.dentist_id) AND b.transaction_service_id = c.transaction_service_id AND b.is_paid = ipaid
		GROUP BY c.transaction_service_id ASC;
	ELSEIF search_filter = "By Name" THEN
		SELECT c.transaction_service_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', b.amount_paid AS 'Amount Paid', b.sub_total AS 'Sub Total', DATE_FORMAT(c.payment_date, "%m/%d/%Y") AS 'Transaction Date'
		FROM patient a, patient_transaction_services b, transaction_services c, dentist e
		WHERE ((a.patient_id = pid AND b.patient_id = pid AND e.dentist_id = b.dentist_id) AND b.transaction_service_id = c.transaction_service_id) AND (BINARY LOWER(a.fname) LIKE LOWER(CONCAT('%', patient_name, '%')) OR BINARY LOWER(a.lname) LIKE LOWER(CONCAT('%', patient_name, '%')) OR BINARY LOWER(a.mname) LIKE LOWER(CONCAT('%', patient_name, '%'))) AND b.is_paid = ipaid	
		GROUP BY c.transaction_service_id ASC;
	ELSEIF search_filter = "Between Dates" THEN
		SELECT c.transaction_service_id AS 'Transaction ID', b.patient_id AS 'Patient ID', CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) AS 'Patient', b.amount_paid AS 'Amount Paid', b.sub_total AS 'Sub Total', DATE_FORMAT(c.payment_date, "%m/%d/%Y") AS 'Transaction Date'
		FROM patient a, patient_transaction_services b, transaction_services c, dentist e
		WHERE ((a.patient_id = pid AND b.patient_id = pid AND e.dentist_id = b.dentist_id) AND b.transaction_service_id = c.transaction_service_id) AND (b.transaction_date BETWEEN date_from AND date_to) AND b.is_paid = ipaid
		GROUP BY c.transaction_service_id ASC;	
	ELSE 
		SELECT 'Error' AS 'Error';
	END IF;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchService`(search_filter VARCHAR(50), name_of_service VARCHAR(50))
BEGIN
		IF search_filter = 'All' THEN
			SELECT service_id AS 'Service ID', service_name AS 'Service Name', service_cost AS 'Service Cost' FROM services WHERE service_id != 0 ORDER BY service_id ASC;
		ELSEIF search_filter = 'By Service' THEN
			SELECT service_id AS 'Service ID', service_name AS 'Service Name', service_cost AS 'Service Cost' FROM services WHERE service_id != 0 AND BINARY LOWER(service_name) LIKE LOWER(CONCAT('%', name_of_service, '%')) ORDER BY service_id ASC;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchSpecificPatient` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchSpecificPatient` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchSpecificPatient`(did INT, pid INT)
BEGIN
		SELECT CONCAT(b.fname, " ", LEFT(b.mname, 1), ". ", b.lname) AS 'Patient Name' FROM dentist a, patient b, dentist_patient c WHERE (c.dentist_id = did AND a.dentist_id = did) AND (c.patient_id = pid AND b.patient_id = pid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSearchUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSearchUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchUser`(user_role VARCHAR(10), search_filter VARCHAR(50), search_value VARCHAR(50))
BEGIN
	IF search_filter = 'All' AND user_role = 'Dentist' THEN
		SELECT a.dentist_id AS 'Dentist ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Dentist Name', a.contact_no AS 'Contact Number', a.address AS 'Address', b.role AS 'Role', b.user_status AS 'Status', a.profile_pic AS 'Display Picture' FROM dentist a, user b WHERE (a.user_id = b.user_id) ORDER BY a.dentist_id ASC;
	ELSEIF search_filter = 'By ID' AND user_role = 'Dentist' THEN
		SELECT a.dentist_id AS 'Dentist ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Dentist Name', a.contact_no AS 'Contact Number', a.address AS 'Address', b.role AS 'Role', b.user_status AS 'Status', a.profile_pic AS 'Display Picture' FROM dentist a, USER b WHERE (a.user_id = b.user_id) AND BINARY LOWER(a.dentist_id) LIKE LOWER(CONCAT('%', search_value, '%')) ORDER BY a.dentist_id ASC;
	ELSEIF search_filter = 'By Name' AND user_role = 'Dentist' THEN
		SELECT a.dentist_id AS 'Dentist ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Dentist Name', a.contact_no AS 'Contact Number', a.address AS 'Address', b.role AS 'Role', b.user_status AS 'Status', a.profile_pic AS 'Display Picture'FROM dentist a, USER b WHERE (a.user_id = b.user_id) AND (BINARY LOWER(a.fname) LIKE LOWER(CONCAT('%', search_value, '%')) OR BINARY LOWER(a.lname) LIKE LOWER(CONCAT('%', search_value, '%')) OR BINARY LOWER(a.mname) LIKE LOWER(CONCAT('%', search_value, '%'))) ORDER BY a.dentist_id ASC;
	ELSEIF search_filter = 'All' AND user_role = 'Admin' THEN
		SELECT a.user_id AS 'Admin ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Admin Name', a.contact_no AS 'Contact Number', a.address AS 'Address', b.role AS 'Role', b.user_status AS 'Status' FROM admins a, USER b WHERE (a.user_id = b.user_id) ORDER BY a.user_id ASC;
	ELSEIF search_filter = 'By ID' AND user_role = 'Admin' THEN
		SELECT a.user_id AS 'Admin ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Admin Name', a.contact_no AS 'Contact Number', a.address AS 'Address', b.role AS 'Role', b.user_status AS 'Status' FROM admins a, USER b WHERE (a.user_id = b.user_id) AND BINARY LOWER(a.user_id) LIKE LOWER(CONCAT('%', search_value, '%')) ORDER BY a.user_id ASC;
	ELSEIF search_filter = 'By Name' AND user_role = 'Admin' THEN
		SELECT a.user_id AS 'Admin ID', CONCAT(a.fname, " ", LEFT(a.mname, 1), ". ", a.lname) AS 'Admin Name', a.contact_no AS 'Contact Number', a.address AS 'Address', b.role AS 'Role', b.user_status AS 'Status' FROM admins a, USER b WHERE (a.user_id = b.user_id) AND (BINARY LOWER(a.fname) LIKE LOWER(CONCAT('%', search_value, '%')) OR BINARY LOWER(a.lname) LIKE LOWER(CONCAT('%', search_value, '%')) OR BINARY LOWER(a.mname) LIKE LOWER(CONCAT('%', search_value, '%'))) ORDER BY a.user_id ASC;
	ELSE
		SELECT 'Error' AS '';
	END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSelectPaymentItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSelectPaymentItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSelectPaymentItem`(tid INT)
BEGIN
		SELECT transaction_item_id AS 'Transaction ID', item_id As "Item ID", item_name AS "Item Name", item_qty AS "Item Quantity", payment_date AS "Payment Date", add_charge AS 'Additional Charge', item_cost AS "Item Cost" FROM transaction_items WHERE transaction_item_id = tid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcSelectPaymentService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcSelectPaymentService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSelectPaymentService`(tid INT)
BEGIN
		SELECT transaction_service_id AS 'Transaction ID', service_id AS "Service ID", service_name AS "Service Name", payment_date AS "Payment Date", add_charge AS 'Additional Charge', service_cost AS "Service Cost" FROM transaction_services WHERE transaction_service_id = tid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcTotalPayment_Item` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcTotalPayment_Item` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcTotalPayment_Item`(pid INT, search_filter VARCHAR(50), date_from VARCHAR(50), date_to VARCHAR(50))
BEGIN
	IF search_filter = 'Total Payment' THEN
		SELECT CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) as 'Patient', SUM(c.payment_amount) as 'Total Payment' 
		FROM patient a, patient_transaction_items b, transaction_items c, inventory d
		WHERE a.patient_id = pid and b.patient_id = pid and b.transaction_item_id = c.transaction_item_id and b.item_id = d.item_id;
	ELSEIF search_filter = 'Date Between' THEN
		SELECT CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) as 'Patient', SUM(c.payment_amount) as 'Total Payment', date_from as "Date From", date_to as "Date To"
		FROM patient a, patient_transaction_items b, transaction_items c, inventory d
		WHERE a.patient_id = pid and b.patient_id = pid and b.transaction_item_id = c.transaction_item_id and b.item_id = d.item_id and (c.payment_date BETWEEN date_from AND date_to);
    ELSE
		SELECT 'Error' as '';
    END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcTotalPayment_Service` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcTotalPayment_Service` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcTotalPayment_Service`(pid INT, search_filter VARCHAR(50), date_from VARCHAR(50), date_to VARCHAR(50))
BEGIN
	IF search_filter = 'Total Payment' THEN
		SELECT CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) as 'Patient', SUM(c.payment_amount) as 'Total Payment' 
		FROM patient a, patient_transaction_services b, transaction_services c, services d
		WHERE a.patient_id = pid and b.patient_id = pid and b.transaction_service_id = c.transaction_service_id and b.service_id = d.service_id;
	ELSEIF search_filter = 'Date Between' THEN
		SELECT CONCAT(a.fname, ' ', LEFT(a.mname, 1), '. ', a.lname) as 'Patient', SUM(c.payment_amount) as 'Total Payment', date_from as "Date From", date_to as "Date To"
		FROM patient a, patient_transaction_services b, transaction_services c, services d
		WHERE a.patient_id = pid and b.patient_id = pid and b.transaction_service_id = c.transaction_service_id and b.service_id = d.service_id and (c.payment_date BETWEEN date_from AND date_to);
    ELSE
		SELECT 'Error' as '';
    END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcTotalUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcTotalUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcTotalUser`()
BEGIN
		SELECT COUNT(id) AS 'Total Users' FROM user;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateAccount` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateAccount` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateAccount`(old_uid INT, new_uid INT, upass VARCHAR(50), urole VARCHAR(10))
BEGIN
	IF urole = "admin" THEN
		UPDATE USER SET PASSWORD = AES_ENCRYPT(upass, 'dentrixkeypass'), user_id = new_uid WHERE user_id = old_uid;
		UPDATE admins SET user_id = new_uid WHERE user_id = old_uid;
	ELSE
		UPDATE USER SET PASSWORD = AES_ENCRYPT(upass, 'dentrixkeypass'), user_id = new_uid WHERE user_id = old_uid;
		UPDATE dentist SET user_id = new_uid, dentist_id = new_uid WHERE user_id = old_uid;
	END IF;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateAdmin` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateAdmin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateAdmin`(uid INT, ffname VARCHAR(50), llname VARCHAR(50), mmname VARCHAR(50), ccontact VARCHAR(11), eemail VARCHAR(50), aadress VARCHAR(50))
BEGIN
		UPDATE admins SET fname = ffname, lname = llname, mname = mmname, contact_no = ccontact, email = eemail, address = aadress WHERE user_id = uid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateAppointment` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateAppointment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateAppointment`(aid INT, adesc VARCHAR(50), adate DATE, atime TIME, astatus VARCHAR(50))
BEGIN
	UPDATE appointment SET appointment_desc = adesc, appointment_date = adate, appointment_time = atime, status = astatus WHERE appointment_id = aid;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateBalanceAmountItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateBalanceAmountItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateBalanceAmountItem`(tid INT, did INT, pid INT, bamt DOUBLE, paid DOUBLE, received DOUBLE, lpay DATE, ipaid BOOLEAN)
BEGIN
		DECLARE total DOUBLE;
		SET total = paid + received;
		IF ipaid THEN
			DELETE FROM patient_balance_items WHERE transaction_id = tid AND dentist_id = did AND patient_id = pid;
			UPDATE patient_transaction_items SET amount_paid = total, is_paid = "true" WHERE transaction_item_id = tid AND dentist_id = did AND patient_id = pid;
		ELSE
			UPDATE patient_balance_items SET balance_amount = bamt, last_payment = lpay WHERE transaction_id = tid AND dentist_id = did AND patient_id = pid;
			UPDATE patient_transaction_items SET amount_paid = total WHERE transaction_item_id = tid AND dentist_id = did AND patient_id = pid;
		END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateBalanceAmountService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateBalanceAmountService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateBalanceAmountService`(tid INT, did INT, pid INT, bamt DOUBLE, paid DOUBLE, received DOUBLE, lpay DATE, ipaid BOOLEAN)
BEGIN
		DECLARE total DOUBLE;
		SET total = paid + received;
		If ipaid THEN
			DELETE FROM patient_balance_services WHERE transaction_id = tid AND dentist_id = did AND patient_id = pid;
			UPDATE patient_transaction_services SET amount_paid = total, is_paid = "true" WHERE transaction_service_id = tid AND dentist_id = did AND patient_id = pid;
		ELSE
			UPDATE patient_balance_services SET balance_amount = bamt, last_payment = lpay WHERE transaction_id = tid AND dentist_id = did AND patient_id = pid;
			UPDATE patient_transaction_services SET amount_paid = total WHERE transaction_service_id = tid AND dentist_id = did AND patient_id = pid;
		END IF;
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateDentist` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateDentist` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateDentist`(ddid integer,
                                                               ffname varchar(50),
                                                               llname varchar(50),
                                                               mmname varchar(50),
                                                               ggender varchar(10),
                                                               contact varchar(11),
                                                               eeaddress varchar(45),
                                                               ddob date,
                                                               aaddress varchar(100), display_picture BLOB)
BEGIN
update dentist set fname = ffname,
                   lname = llname,
                   mname = mmname,
                   gender = ggender,
                   contact_no = contact,
                   email_address = eeaddress,
                   dob = ddob,
                   address = aaddress,
                   profile_pic = display_picture
                   where dentist_id = ddid;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateEmployee`(did INT, eid INT, ename VARCHAR(100))
BEGIN
		UPDATE employee SET employee_name = ename WHERE dentist_id = did AND employee_id = eid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateItem`(iid INT, iname VARCHAR(50), iqty INT, idesc VARCHAR(50), icost DOUBLE, iunit VARCHAR(50), ibrand VARCHAR(50))
BEGIN
	UPDATE inventory SET item_name = iname, item_qty = iqty, item_desc = idesc, item_unit = iunit, item_cost = icost, item_brand = ibrand WHERE item_id = iid;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateItemQunatity` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateItemQunatity` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateItemQunatity`(iid INT, iqty INT)
BEGIN
		UPDATE inventory SET item_qty = iqty WHERE item_id = iid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateItemStock` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateItemStock` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateItemStock`(iid INT, iqty INT)
BEGIN
		UPDATE inventory SET item_qty = iqty WHERE item_id = iid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdatePatient` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdatePatient` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdatePatient`(ppid integer,
                                                               ffname varchar(50),
                                                               llname varchar(50),
                                                               mmname varchar(50),
                                                               ggender varchar(10),
                                                               ccontact varchar(11),
                                                               eeaddress varchar(45),
                                                               ddob date,
                                                               aaddress varchar(100))
BEGIN
update patient set fname = ffname,
                   lname = llname,
                   mname = mmname,
                   gender = ggender,
                   contact_no = ccontact,
                   email_address = eeaddress,
                   dob = ddob,
                   address = aaddress
                   where patient_id = ppid;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdatePaymentQuantityItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdatePaymentQuantityItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdatePaymentQuantityItem`(tid INT, iid INT, iqty INT, icost DOUBLE)
BEGIN
		UPDATE transaction_items SET item_qty = iqty, item_cost = icost WHERE transaction_item_id = tid AND item_id = iid;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdatePrescription` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdatePrescription` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdatePrescription`(pid INT, mname VARCHAR(50), mdose VARCHAR(50), mday VARCHAR(50))
BEGIN
		UPDATE prescription SET medicine_name = mname, medicine_dosage = mdose, medicine_day = mday WHERE prescription_id = pid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateService` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateService` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateService`(ssid INT, ssname VARCHAR(50), sscost DOUBLE)
BEGIN
         UPDATE services SET service_name = ssname, service_cost = sscost WHERE service_id = ssid;
END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateTotalBalancePatient` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateTotalBalancePatient` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateTotalBalancePatient`(patient_id INT, tamt DOUBLE, ttype VARCHAR(10))
BEGIN
		UPDATE patient_total_balance SET total_balance = tamt WHERE pid = patient_id AND transaction_type = ttype;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `prcUpdateUserStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `prcUpdateUserStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateUserStatus`(u_id INT, u_status VARCHAR(10))
BEGIN
		UPDATE USER SET user_status = u_status WHERE user_id = u_id;
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
