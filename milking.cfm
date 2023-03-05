

<cfinclude  template="./header.cfm">




<CFQUERY NAME="animal_milking" DATASOURCE="alibaba">
    SELECT id, name, kind, genus, sex, milk 
    /* Canlıların sadece türlerine ve cinsiyetlerine göre getirmek için olan query */
    FROM dbo.Animal WHERE (kind='inek' OR kind='keçi' OR kind='koyun') AND (sex='dişi')  
  </CFQUERY>

        <p class="fs-3 container-md">
          Süt Sağma 
      </p>
<cfform  action="inanimal.cfm">
        <TABLE class="table table-striped container-md">
            <thead class="table-primary">                  
            <tr>
                <th scope="col"></th>
                <th scope="col" style="text-align:center">Canlı İsmi</th>
                <th scope="col" style="text-align:center">Canlı Türü</th>
                <th scope="col" style="text-align:center">Canlı Cinsi</th>
                <th scope="col" style="text-align:center">Canlı Cinsiyet</th>
                <th scope="col" style="text-align:center">Toplam Sağım Miktarı</th>
                <th style="text-align:center">Sağım Miktarı Ekle</th>
 
           </tr> 
        </thead>             
            <CFOUTPUT QUERY="animal_milking" GROUP="id">
            <CFOUTPUT>
        <TR>
            <th style="text-align:center">#currentrow#</th>
            <td style="text-align:center">#name#</td>
            <TD style="text-align:center">#kind#</TD>
            <TD style="text-align:center">#genus#</TD>
            <TD style="text-align:center">#sex#</TD>
            <TD style="text-align:center">#milk# Litre</TD>
            <td style="text-align:center"><a href="inanimal.cfm?id=#animal_milking.id#" class="btn btn-success btn-sm">+</a></td>
        </TR>
            </CFOUTPUT>
            </CFOUTPUT>
            </TABLE>
        </TABLE>
    </cfform>
