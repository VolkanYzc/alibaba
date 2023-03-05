<cfinclude  template="./header.cfm">

<CFQUERY NAME="animal_feeding" DATASOURCE="alibaba">
    SELECT id, name, kind, genus, sex, lastexaminedate
    FROM dbo.Animal
  </CFQUERY>

        <p class="fs-3 container-md">
          Muayene 
      </p>
<cfform action="exam_inanimal.cfm">
        <TABLE class="table table-striped container-md">
            <thead class="table-info">                  
            <tr>
                <th scope="col"></th>
                <th scope="col" style="text-align:center">Canlı İsmi</th>
                <th scope="col" style="text-align:center">Canlı Türü</th>
                <th scope="col" style="text-align:center">Canlı Cinsi</th>
                <th scope="col" style="text-align:center">Canlı Cinsiyet</th>
                <th scope="col" style="text-align:center">Muayene Tarihi</th>
                <th scope="col" style="text-align:center">Muayene Tarihi Ekle</th>
 
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
            <TD style="text-align:center">#lsDateTimeFormat(lastexaminedate,"dd.mm.yyyy")#</TD>
            <td style="text-align:center"><a href="exam_inanimal.cfm?id=#animal_feeding.id#" class="btn btn-success btn-sm ">+</a></td>
        </TR>
            </CFOUTPUT>
            </CFOUTPUT>
            </TABLE>
        </TABLE>
    </cfform>