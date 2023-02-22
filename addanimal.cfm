<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <cfprocessingdirective pageencoding="utf-8"><!--- Türkçe karakterler için  --->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            Ali Babanın Çiftliği
        </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" 
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" 
              crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" 
                integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" 
                crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" 
                integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" 
                crossorigin="anonymous">
        </script>
    </head>
    <body>
        <!--- NavBar Başlangıcı --->
        <cfinclude template="./header.cfm">
    
        <!--- NavBar Bitişi --->
        <!--- Canlı Ekleme Kısmı Başlangıcı --->
        <br>
        <br>
        <p class="fs-3 container-md">
            Yeni Kayıt: Canlı 
        </p>
        
        <br>
        <div class="container-md container-fluid">
            <nav class="navbar">
                <div class="container-fluid">
                
                <div class='container text-left'>
                
                <div class="row g-3">
                    <cfform ACTION="addanimalquery.cfm" METHOD="post" class="">
                        <div class="col-md">
                            <div class="form-floating">
                                <input type="text" name="animal_name" class="form-control" 
                                       id="floatingInputGrid">
                                <label for="floatingInputGrid">
                                    Canlı Adı
                                </label>
                            </div>
                            <div class="invalid-feedback">Example invalid feedback text</div>
                        </div>
                        <br>
                        <div class="col-md">
                            <div class="form-floating">
                                <cfselect name="animal_kind" class="form-select" 
                                        id="floatingSelectGrid">
                                    <option selected>
                                        Listeden Seçiniz
                                    </option>
                                    <option value="İnek">
                                        İnek
                                    </option>
                                    <option value="Koyun">
                                        Koyun
                                    </option>
                                    <option value="Keçi">
                                        Keçi
                                    </option>
                                    <option value="Köpek">
                                        Köpek
                                    </option>
                                    <option value="Kedi">
                                        Kedi
                                    </option>
                                </cfselect>
                                <label for="floatingSelectGrid">
                                    Canlı Türü
                                </label>
                            </div>
                        </div>
                        <br>
                        <div class="col-md">
                            <div class="form-floating">
                                <input type="text" name="animal_genus" class="form-control" 
                                       id="floatingInputGrid">
                                <label for="floatingInputGrid">
                                    Canlı Irkı
                                </label>
                            </div>
                        </div>
                        <br>
                        <div class="col-md">
                            <div class="form-floating">
                                <input type="text" name="animal_age" class="form-control" 
                                       id="floatingInputGrid">
                                <label for="floatingInputGrid">
                                    Canlı Yaşı
                                </label>
                            </div>
                        </div>
                        <br>
                        <div class="col-md">
                          <div class="form-floating">
                              <select name="animal_sex" class="form-select" 
                                      id="floatingSelectGrid">
                                  <option selected>
                                      Listeden Seçiniz
                                  </option>
                                  <option value="Dişi">
                                      Dişi
                                  </option>
                                  <option value="Erkek">
                                      Erkek
                                  </option>
                              </select>
                              <label for="floatingSelectGrid">
                                  Canlı Cinsiyeti
                              </label>
                          </div>
                      </div>
                        <br>
                        <div class="col-md">
                            <div class="form-floating">
                                <cfinput type="date" name="animal_examine_date" 
                                       class="form-select" id="floatingInputGrid">
                                <label for="floatingInputGrid">
                                    Muayene Tarihi
                                </label>
                            </div>
                        </div>
                        <br>
                        <cfinput id="save_animal" type="submit" name="kaydet" value="Kaydet"
                                 class="btn btn-success me-4">
                    </cfform>
                </div>
            </nav>
        </div>
        
        <!--- Canlı Ekleme Kısmı Bitişi --->
    </body>
</html>