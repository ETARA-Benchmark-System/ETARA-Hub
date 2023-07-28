{
    "abstract": <#if subject.findValue("abstract")??>"${subject.findValue("abstract")?json_string}"<#else>""</#if>
}
