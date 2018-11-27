<#-- @ftlvariable name="data" type="ca.myclassmate.IndexData" -->
<#-- @ftlvariable name="data2" type="String" -->
<html>
    <body>
        <h1>${data2}</h1>
        <ul>
        <#list data.items as item>
            <li>${item}</li>
        </#list>
        </ul>
    </body>
</html>
