<!--- <CFQUERY NAME="animal_milk" DATASOURCE="alibaba">   
    INSERT INTO dbo.Animal (milk='#form.animal_milk#') WHERE id='#form.milking.id#'
    VALUES
    ('#form.animal_milk#')

  </CFQUERY>
  <cflocation  url="milking.cfm" addtoken="no"> --->

  <CFQUERY NAME="animal_milk" DATASOURCE="alibaba">   
    UPDATE dbo.Animal SET milk=milk+#form.animal_milk# WHERE id=#form.milking.id#
  </CFQUERY>
  <cflocation  url="milking.cfm" addtoken="no">
  


 <!---  update Personel set Isim='Ahmet Şerif' where PersonelID=1 
   -- ÖRNEK KOMUTTA PersonelID değeri 1 olan kayıt bulunur ve 
   Isim sütunundaki değer Ahmet Şerif olarak değiştirilir.  --
    UPDATE TABLOADI SET SUTUNADI=YENİ DEĞER, SUTUNADI2=YENİDEĞER2 WHERE ID=IDNO şeklinde komut kullanılır. 
     --Where şarttır. Where olmazda tüm kayıtlar aynı şekilde değiştirilir. 
     --Delete komutunda da where çok önemlidir, where koşulu belirtilmezde tüm verilerimizi kaybedebiliriz. --->