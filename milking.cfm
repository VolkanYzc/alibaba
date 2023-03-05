




<!--- --------------------------------------------------------------------------- --->
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
            <thead class="table-success">                  
            <tr>
                <th scope="col"></th>
                <th scope="col">Canlı İsmi</th>
                <th scope="col">Canlı Türü</th>
                <th scope="col">Canlı Cinsi</th>
                <th scope="col">Canlı Cinsiyet</th>
                <th scope="col">Toplam Sağım Miktarı</th>
                <th>Sağım Miktarı Ekle</th>
 
           </tr> 
        </thead>             
            <CFOUTPUT QUERY="animal_milking" GROUP="id">
            <CFOUTPUT>
        <TR>
            <th>#currentrow#</th>
            <td>#name#</td>
            <TD>#kind#</TD>
            <TD>#genus#</TD>
            <TD>#sex#</TD>
            <TD>#milk# Litre</TD>
            <td><a href="inanimal.cfm?id=#animal_milking.id#" class="btn btn-success">+</a></td>
        </TR>
            </CFOUTPUT>
            </CFOUTPUT>
            </TABLE>
        </TABLE>
    </cfform>

    <cfchart>
        <cfchartseries type="pie">
        <cfchartdata item="New car sales" value="50000">
        <cfchartdata item="Used car sales" value="25000">
        <cfchartdata item="Leasing" value="30000">
        <cfchartdata item="Service" value="40000">
        </cfchartseries>
        </cfchart>