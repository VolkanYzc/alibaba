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
<cfform action="feed_inanimal.cfm">
        <TABLE class="table table-striped container-md">
            <thead class="table-warning">                  
            <tr>
                <th scope="col"></th>
                <th scope="col" style="text-align:center">Canlı İsmi</th>
                <th scope="col" style="text-align:center">Canlı Türü</th>
                <th scope="col" style="text-align:center">Canlı Cinsi</th>
                <th scope="col" style="text-align:center">Canlı Cinsiyet</th>
                <th scope="col" style="text-align:center">Toplam Yem Miktarı</th>
                <th scope="col" style="text-align:center">Yem Miktarı Ekle</th>
 
           </tr> 
        </thead>             
            <CFOUTPUT QUERY="animal_feeding" GROUP="id">
            <CFOUTPUT>
        <TR>
            <th style="text-align:center">#currentrow#</th>
            <td style="text-align:center">#name#</td>
            <TD style="text-align:center">#kind#</TD>
            <TD style="text-align:center">#genus#</TD>
            <TD style="text-align:center">#sex#</TD>
            <TD style="text-align:center">#feed# Kg</TD>
            <td style="text-align:center"><a href="feed_inanimal.cfm?id=#animal_feeding.id#" class="btn btn-success btn-sm ">+</a></td>
        </TR>
            </CFOUTPUT>
            </CFOUTPUT>
            </TABLE>
        </TABLE>
    </cfform>

