<cfcomponent>

    <cffunction name="getAllClientsJson" access="remote" returntype="string" returnformat="plain" httpmethod="GET">
        <cfset clienteDAO = new planetum.components.dao.customerDAO()>
        <cfset var clientsQuery = clienteDAO.getAllClients()>
        <cfset var clientsArray = []>


        <cfloop query="clientsQuery">
            <cfset var clientStruct = {
                "codigo" = clientsQuery.codigo,
                "nome" = clientsQuery.nome,
                "data" = dateFormat(clientsQuery.data_nascimento, "dd/mm/yyyy")
            }>
            <cfset arrayAppend(clientsArray, clientStruct)>
        </cfloop>

        <cfset var clientsJson = serializeJSON(clientsArray)>
        <cfcontent type="application/json; charset=utf-8">

        <cfreturn clientsJson>
    </cffunction>

</cfcomponent>