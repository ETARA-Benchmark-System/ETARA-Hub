{
    "authors": [<#list subject.find("author") as author>
        {
            "name": "${author.findValue("given")?json_string} ${author.findValue("family")?json_string}"<#if author.findValue("affiliation")??>,
            "affiliation": [
            "${author.findValue("affiliation")?json_string}"
            ]</#if>
        }<#sep>,</#sep>
    </#list>]
}
