<cfprocessingdirective pageencoding="utf-8"> <!--- Türkçe karakterler için  --->
<cfif isDefined("URL.id")>
    <cftry>
        <cfquery datasource="alibaba" name="milking">
            SELECT id, name, kind, genus,sex, age, lastexaminedate, milk
            FROM dbo.Animal
            WHERE id = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer" >
        </cfquery>

        <cfcatch>
            <cflocation url="milking.cfm" >
        </cfcatch>   

    </cftry>
<cfelse>
    <cfset milking = StructNew()>
    <cfset milking.id = 0>
    <cfset milking.name = "">
    <cfset milking.kind = "">
    <cfset milking.milk = 0>
</cfif>


<cfinclude  template="./header.cfm">

<div class="container col-md-5">
    <div class="card">
        <div class="card body">
            <cfif isDefined("URL.id")>
                <form action="add_milking.cfm" method="post">          
            </cfif> 
            <cfoutput>
                <cfif isDefined("URL.id")>
                    <input type="hidden" name="id"  value="#milking.id#" />
                </cfif>

                <fieldset class="form-group">
                    <label>Canlı id</label> <input type="label"
                        value="#milking.id#" class="form-control"
                        name="milking.id" required="required">
                </fieldset>


                <fieldset class="form-group">
                    <label>Canlı İsmi</label> <input type="text"
                        value="#milking.name#" class="form-control"
                        name="milking_name">
                </fieldset>
                <label>Sağım Miktarı Giriniz</label>
                <input type="text" name="animal_milk" class="form-control" 
                id="floatingInputGrid">

            </cfoutput> 

            <button type="submit" class="btn btn-success">Kaydet</button>
        </form>

        </div>
    </div>
</div>
