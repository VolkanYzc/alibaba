

<cffile action="upload"
destination="C:\ColdFusion2021\cfusion\wwwroot\alibaba"
nameConflict="overwrite"
fileField="Form.alibaba_import.xlsx">

<form action="uploadfileaction.cfm"
enctype="multipart/form-data"
method="post">

<!--- Excel'den veriyi okumak için --->
<cfspreadsheet action="read" excludeheaderrow="yes" src="alibaba_import.xlsx" sheet="1"
               rows="2-1000" query="myVar">

<!--- Excel'den okunan veriyi tutmak için --->
<cfoutput query="myVar" maxrows="#myVar.recordcount#">
  #myVar.col_1#
  #myVar.col_2#
  #myVar.col_3#
  #myVar.col_4#
  #myVar.col_5#
</cfoutput>

<!--- Tutulan Veriyi Database'e kaydeymek için --->
<cfquery datasource="alibaba" name="myVar">
    <cfloop query="myVar">
        INSERT INTO dbo.Animal (name, kind, genus, age, sex)
        VALUES
        ('#myVar.col_1#',
        '#myVar.col_2#',
        '#myVar.col_3#',
        '#myVar.col_4#',
        '#myVar.col_5#') 
    </cfloop>    
</cfquery>

<!--- İçeride ki Excel Dosyasını Silmek için --->
<cffile action="delete"
	file="C:\ColdFusion2021\cfusion\wwwroot\alibaba\alibaba_import.xlsx">

<!--- Animals Sayfasına geri dönmek için --->
<cflocation url="animals.cfm" addtoken="no">
