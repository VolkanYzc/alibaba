<!--- Database ile ilgili verilerin alınması --->
<CFQUERY NAME="animals_listing" DATASOURCE="alibaba">
  SELECT id, name, kind, genus,sex, age, lastexaminedate
  FROM dbo.Animal
  <cfif isDefined("form.animal_name")>
    WHERE name LIKE '%#form.animal_name#%'
  </cfif>
  ORDER BY name
</CFQUERY>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <cfprocessingdirective pageencoding="utf-8"> <!--- Türkçe karakterler için  --->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ali Babanın Çiftliği</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
  </head>
  <body>   
    <!--- NavBar Başlangıcı --->

    <cfinclude  template="./header.cfm">
    
    <!--- NavBar Bitişi --->


    <!--- CF Etkileşim Başlagıcı --->
<br>


    <div class="container-md">
      <nav class="navbar ">
          <div class="container-fluid">
            <CFFORM ACTION="animals.cfm" METHOD="post" format="HTML" class="d-flex">
              <CFINPUT TYPE="Text"
                NAME="animal_name"
                MESSAGE="Canlı ismi giriniz"
                class="form-control me-4">
                <cfinput id="canliarabutton" type="submit" name="gonder" value="Arama" class="btn btn-success me-4">
                <a class="btn btn-danger me-4" href="http://127.0.0.1:8500/alibaba/addanimal.cfm" role="button">Ekle</a>              
                 <a class="btn btn-warning position-absolute bottom-center end-0" href="http://127.0.0.1:8500/alibaba/import.cfm" role="button">İmport</a>
            </cfform>
          </div>
          </nav>  
          </div>

    <!--- CF Etkileşim Bitişi --->


        <!--- Canlılar Liste (Veritabanından) --->   
        <br> 

                   
            <TABLE class="table table-striped container-md">
                <thead class="table-success">                  
                <tr>
                    <th scope="col"></th>
                    <th scope="col">Canlı İsmi</th>
                    <th scope="col">Canlı Türü</th>
                    <th scope="col">Canlı Cinsi</th>
                    <th scope="col">Canlı Yaşı</th>
                    <th scope="col">Canlı Cinsiyet</th>
                    <th scope="col">Son Muayene Tarihi</th>
               </tr> 
            </thead>             
                <CFOUTPUT QUERY="animals_listing" GROUP="id">
                <CFOUTPUT>
            <TR>
                <th>#currentrow#</th>
                <td>#name#</td>
                <TD>#kind#</TD>
                <TD>#genus#</TD>
                <TD>#age#</TD>
                <TD>#sex#</TD>
                <TD>#lastexaminedate#</TD>
            </TR>
                </CFOUTPUT>
                </CFOUTPUT>
                </TABLE>
            </TABLE>


        <!--- Canlılar Liste Bitişi --->
              

</body>
</html>


<!--- Canlılar kısmıda arama, ekle ve import dosyaları yapılacak.
Listeleme en fazla 20 tane gösterecek. Devamında diğer sayfaya geçecek. ---> 