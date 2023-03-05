<cfprocessingdirective pageencoding="utf-8"> <!--- Türkçe karakterler için  --->
<cfif isDefined("URL.id")>
    <cftry>
        <cfquery datasource="alibaba" name="examination">
            SELECT id, name, kind, genus,sex, age, lastexaminedate
            FROM dbo.Animal
            WHERE id = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer" >
        </cfquery>

        <cfcatch>
            <cflocation url="examination.cfm" >
        </cfcatch>   

    </cftry>
<cfelse>
    <cfset feeding = StructNew()>
    <cfset feeding.id = 0>
    <cfset feeding.name = "">
    <cfset feeding.kind = "">
    <cfset feeding.feed = 0>
</cfif>


<cfinclude  template="./header.cfm">

<div class="container col-md-5">
    <div class="card">
        <div class="card body">
            <cfif isDefined("URL.id")>
                <form action="add_examinate.cfm" method="post">          
            </cfif> 
            <cfoutput>
                <cfif isDefined("URL.id")>
                    <input type="hidden" name="id"  value="#examination.id#" />
                </cfif>

                <fieldset class="form-group">
                    <label>Canlı id</label> <input type="label"
                        value="#examination.id#" class="form-control"
                        name="examination.id" required="required">
                </fieldset>


                <fieldset class="form-group">
                    <label>Canlı İsmi</label> <input type="text"
                        value="#examination.name#" class="form-control"
                        name="examination_name">
                </fieldset>
                <label>Muayene Tarihini Giriniz</label>
                <input type="date" value="examination.exam" name="examination.exam" class="form-control" 
                id="floatingInputGrid">
                

            </cfoutput> 

            <button type="submit" class="btn btn-success">Kaydet</button>
        </form>
     
        </div>
    </div>
</div>