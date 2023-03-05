  <CFQUERY NAME="animal_milk" DATASOURCE="alibaba">   
    UPDATE dbo.Animal SET milk=milk+#form.animal_milk# WHERE id=#form.milking.id#
  </CFQUERY>
  <cflocation  url="milking.cfm" addtoken="no">
  


 