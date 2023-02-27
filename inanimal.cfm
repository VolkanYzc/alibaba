
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
    <cfset milking.milk = "">
</cfif>



<cfinclude  template="./header.cfm">


