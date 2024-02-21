<cfcomponent>

    <cffunction name="getAllClients" access="public" returntype="query">
        <cfquery datasource="customers_db" name="getAllClientsQuery">
            SELECT codigo, nome, data_nascimento FROM tb_cliente
        </cfquery>
        <cfreturn getAllClientsQuery>
    </cffunction>

</cfcomponent>