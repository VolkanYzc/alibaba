<CFQUERY NAME="examination" DATASOURCE="alibaba">   
    UPDATE dbo.Animal SET lastexaminedate='#form.examination.exam#' WHERE id=#form.examination.id#
  </CFQUERY>
  <cflocation  url="examination.cfm" addtoken="no">

