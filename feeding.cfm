<!--- --Beta--
Hayvanların isimleri girilerek ismi girilen canlıya yem miktarı girilen 
box veri tabanına eklenir. Veri tabanında hayvan ismi ve yem miktarı
ilişkilendirilerek verilen yem miktarı devamlı database de tutulur. 
--Geliştirim.v1--
İlk aşama yukarıda ki gibi yapıldıktan sonra hem satır içerisinden yem 
miktarı girilir ve toplam yem miktarı o satır içerisinde gösterilebilir.
--Geliştirim.v2--
Hayvanlara özel olarak tahmini günlük yem harcama miktar verisi girilerek
tarih 1 gün arttığında yem miktarı düşer. Kısa sürede deneme için saniye
olarak denenebilir. 
--Geliştirim.v3--
Yukarıda ki işlemlerin tamamını Hayvanların kendi özel sayfalarında yapılması. --->

<cfinclude  template="./header.cfm">




<CFQUERY NAME="animal_feeding" DATASOURCE="alibaba">
    SELECT id, name, kind, genus, sex, feed 
    FROM dbo.Animal
  </CFQUERY>

        <p class="fs-3 container-md">
          Yemleme 
      </p>
<cfform  action="feed_inanimal.cfm">
        <TABLE class="table table-striped container-md">
            <thead class="table-success">                  
            <tr>
                <th scope="col"></th>
                <th scope="col">Canlı İsmi</th>
                <th scope="col">Canlı Türü</th>
                <th scope="col">Canlı Cinsi</th>
                <th scope="col">Canlı Cinsiyet</th>
                <th scope="col">Toplam Yem Miktarı</th>
                <th>Yem Miktarı Ekle</th>
 
           </tr> 
        </thead>             
            <CFOUTPUT QUERY="animal_feeding" GROUP="id">
            <CFOUTPUT>
        <TR>
            <th>#currentrow#</th>
            <td>#name#</td>
            <TD>#kind#</TD>
            <TD>#genus#</TD>
            <TD>#sex#</TD>
            <TD>#feed# Kg</TD>
            <td><a href="feed_inanimal.cfm?id=#animal_feeding.id#" class="btn btn-success">+</a></td>
        </TR>
            </CFOUTPUT>
            </CFOUTPUT>
            </TABLE>
        </TABLE>
    </cfform>

