<cfinclude  template="./header.cfm">

<CFQUERY NAME="animals_kind_listing" DATASOURCE="alibaba">
    SELECT id, name, kind, genus, sex, milk 
    /* Canlıların sadece türlerine ve cinsiyetlerine göre getirmek için olan query */
    FROM dbo.Animal WHERE (kind='inek' OR kind='keçi' OR kind='koyun') AND (sex='dişi')  
  </CFQUERY>
        <p class="fs-3 container-md">
          Süt Sağma 
      </p>
<cfform  action="add_milking.cfm">
        <TABLE class="table table-striped container-md">
            <thead class="table-success">                  
            <tr>
                <th scope="col"></th>
                <th scope="col">Canlı İsmi</th>
                <th scope="col">Canlı Türü</th>
                <th scope="col">Canlı Cinsi</th>
                <th scope="col">Canlı Cinsiyet</th>
                <th scope="col">Toplam Sağım Miktarı</th>
                <th>Miktar Girin</th>
                <th>Kaydet</th>
 
           </tr> 
        </thead>             
            <CFOUTPUT QUERY="animals_kind_listing" GROUP="id">
            <CFOUTPUT>
        <TR>
            <th>#currentrow#</th>
            <td>#name#</td>
            <TD>#kind#</TD>
            <TD>#genus#</TD>
            <TD>#sex#</TD>
            <TD>#milk#</TD>
            <td>
                <div class="col-5">
                 <input type="text" name="animal_milking" class="form-control" 
                id="floatingInputGrid">
            </div>
        </td>
            <td><cfinput id="animal_milk" type="submit" name="ekle" value="+"
                class="btn btn-success me-4"></td>
        </TR>
            </CFOUTPUT>
            </CFOUTPUT>
            </TABLE>
        </TABLE>
    </cfform>