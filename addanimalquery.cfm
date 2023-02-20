
<CFQUERY NAME="animals_listing" DATASOURCE="alibaba">
  INSERT INTO dbo.Animal (name, kind, genus, age, sex, lastexaminedate) 
  VALUES
  ('#form.animal_name#','#form.animal_kind#','#form.animal_genus#','#form.animal_age#',
  '#form.animal_sex#', '#form.animal_examine_date#')
</CFQUERY>
<cflocation  url="animals.cfm" addtoken="no">
