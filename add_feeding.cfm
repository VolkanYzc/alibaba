<CFQUERY NAME="animal_feed" DATASOURCE="alibaba">   
    UPDATE dbo.Animal SET feed=feed+#form.feeding.feed# WHERE id=#form.feeding.id#
  </CFQUERY>
  <cflocation  url="feeding.cfm" addtoken="no">

