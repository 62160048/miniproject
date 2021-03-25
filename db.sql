CREATE DATABASE store

CREATE TABLE IF NOT EXISTS store.goods (
  goodsID INT(11) NOT NULL AUTO_INCREMENT,
  goodsName VARCHAR(100) NOT NULL ,
  info TEXT NOT NULL ,
  image VARCHAR(200) NOT NULL,
  PRIMARY KEY (goodsID)) ENGINE = InnoDB;

INSERT INTO `goods` (`goodsID`, `goodsName`, `info`, `image`) VALUES (NULL, 'Bushiroad Sleeve Vol.2734 \"Shirakami Fubuki\" hololive 2nd fes. Beyond the Stage ver.', '- ใช้ในงานแข่งมาตรฐานทั่วไปของ Bushiroad ได้ (Top Store, World Grand Prix, Asia Championshop ฯลฯ) - 60 Sleeves/Pack - Size: Sleeve: 92 x 67mm สำหรับการ์ดขนาดมาตฐานเช่น Weiss Schwarz , Buddyfight ,Rebirth หรือ Magic the Gethering #sleeve #weissschwarz', '01.JPG')
,(NULL, 'กล่องพลาสติกใส่การ์ด Bushiroad Deck Holder Vol.1242 Hololive Production \"Shirakami Fubuki\"', '- สามารถใส่การ์ดบัดดี้ไฟท์ ไวส์ชวาส หรือแวนการ์ดทั้งเด็คที่ใส่ซองคลุมไม่เกิน 2 ชั้น รวมถึง G Zone 16 ใบได้พอดี - Size: H97 x W73 x Thickness 62mm', '02.JPG')
,(NULL, 'Bushiroad Sleeve Vol.2729 \"Roboco-san\"hololive 2nd fes. Beyond the Stage ver.', '- ใช้ในงานแข่งมาตรฐานทั่วไปของ Bushiroad ได้ (Top Store, World Grand Prix, Asia Championshop ฯลฯ) - 60 Sleeves/Pack - Size: Sleeve: 92 x 67mm สำหรับการ์ดขนาดมาตฐานเช่น Weiss Schwarz , Buddyfight ,Rebirth หรือ Magic the Gethering #sleeve #weissschwarz', '03.JPG')
,(NULL, 'Bushiroad Sleeve Collection Mini Vol.500 Cardfight!! Vanguard \"Star-vader Chaos Breaker Dragon\"', ' Bushiroad Sleeve Collection Mini Vol.500 Cardfight!! Vanguard "Star-vader Chaos Breaker Dragon" - VG, สลีฟ, แวนการ์ด, ซองการ์ด Specifications : 70 Sleeves/Pack Size: 89 x 62mm Material: PP Printing: Front: Transparent / Back: 5C (4C + White)', 'sleeve04.JPG');