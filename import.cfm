<cfinclude template="./header.cfm">
<cfprocessingdirective pageencoding="utf-8">

<div class="container-md">
    <cfform action="excel_import_query.cfm" enctype="multipart/form-data"
    method="post">
        <br><br>
    <label>İmport Dosyası Yükleme</label><br><br>
    <div class="mb-3 col-3">
        <label for="formFile" class="form-label">İmport dosyasını ekleyiniz</label>
        <!--- <input class="form-control" type="file" id="formFile"> --->
        <input class="form-control" id="formFile" type="file" name="alibaba_import.xlsx" />
      </div>
      <label>Örnek İmport Dosyası</label>

      <br><br>


    <br><br> <cfinput id="" type="submit" name="kaydet" value="Kaydet"
                 class="btn btn-success me-4">
    </cfform>

<!---     <cfform name=""  action="uploadfileaction.cfm"
    enctype="multipart/form-data"
    method="post">
<input type="file" name="alibaba_import.xlsx" />

<cfinput  type="submit" name="yukle" value="Yükle"class="btn btn-success me-4"> --->

</div>