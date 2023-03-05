<CFQUERY NAME="animal_milk" DATASOURCE="alibaba">   
    UPDATE dbo.Animal SET milk=feed+#form.animal_feed# WHERE id=#form.feeding.id#
  </CFQUERY>
  <cflocation  url="feeding.cfm" addtoken="no">