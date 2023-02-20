<cfinclude template="./header.cfm">
<cfprocessingdirective pageencoding="utf-8">

<div class="container-md">
    <cfform>
        <br><br>
    <label>İmport Dosyası Yükleme</label><br><br>
    <div class="mb-3 col-3">
        <label for="formFile" class="form-label">İmport dosyasını ekleyiniz</label>
        <input class="form-control" type="file" id="formFile">
      </div>
      <label>Örnek İmport Dosyası</label>
      
      <br><br>


    <br><br> <cfinput id="excel_import.cfm" type="submit" name="kaydet" value="Kaydet"
                 class="btn btn-success me-4">
    </cfform>
</div>