{
    "published-print": "${subject.findValue("publishedPrintDatePartsYear")?json_string}",
    "type": "${subject.findValue("type")?json_string}",
    "prefix": "${subject.findValue("doiPrefix")?json_string}",
    "title": "${subject.findValue("title")?json_string}",
    <#if subject.findValue("shortTitle")??>"short-title": "${subject.findValue("shortTitle")?json_string}",</#if>
    "publisher": "${subject.findValue("publisher")?json_string}",
    "container-title": "${subject.findValue("containerTitle")?json_string}",
    "short-container-title": "${subject.findValue("shortContainerTitle")?json_string}",
    "URL": <#if subject.findValue("url")??>"${subject.findValue("url")?json_string}",<#else>"",</#if>
    "subject": [<#list subject.findValues("subject") as subject>
        ${toJSONString(subject)}<#sep>,</#sep>
    </#list>]
}
{
<#if subject.findValue("publishedPrintDatePartsYear")??>"published-print": "${subject.findValue("publishedPrintDatePartsYear")?json_string}",</#if>
<#if subject.findValue("type")??>"type": "${subject.findValue("type")?json_string}",</#if>
"prefix": "${subject.findValue("doiPrefix")?json_string}",
"title": "${subject.findValue("title")?json_string}",
<#if subject.findValue("shortTitle")??>"short-title": "${subject.findValue("shortTitle")?json_string}",</#if>
<#if subject.findValue("publisher")??>"publisher": "${subject.findValue("publisher")?json_string}",</#if>
<#if subject.findValue("containerTitle")??>"container-title": "${subject.findValue("containerTitle")?json_string}",</#if>
<#if subject.findValue("shortContainerTitle")??>"short-container-title": "${subject.findValue("shortContainerTitle")?json_string}",</#if>
"URL": <#if subject.findValue("url")??>"${subject.findValue("url")?json_string}",<#else>"",</#if>
"subject": [<#list subject.findValues("subject") as subject>
${toJSONString(subject)}<#sep>,</#sep>
</#list>]
}
