<CFQUERY NAME="animal_milking" DATASOURCE="alibaba">   
    INSERT INTO dbo.Animal (milk) 
    VALUES
    ('#form.animal_milking#')
  </CFQUERY>
  <cflocation  url="milking.cfm" addtoken="no">