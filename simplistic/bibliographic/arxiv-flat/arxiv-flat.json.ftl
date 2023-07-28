{
    "summary": <#if subject.findValue("summary")??>"${subject.findValue("summary")?json_string}",<#else>"",</#if>
    "author": [<#list subject.findValues("authorName") as name>
            ${toJSONString(name)}<#sep>,</#sep>
    </#list>],
    "url": [<#list subject.find("link") as link>
        "${link.findValue("href")?json_string}"<#sep>,</#sep>
    </#list>],
    "id": <#if subject.findValue("id")??>"${subject.findValue("id")?json_string}",<#else>"",</#if>
    "published": <#if subject.findValue("published")??>"${subject.findValue("published")?json_string}",<#else>"",</#if>
    "title": <#if subject.findValue("title")??>"${subject.findValue("title")?json_string}",<#else>"",</#if>
    "category": [<#list subject.find("category") as category>
        "${category.findValue("term")?json_string}"<#sep>,</#sep>
    </#list>],
    "updated": <#if subject.findValue("updated")??>"${subject.findValue("updated")?json_string}",<#else>"",</#if>
    "arxiv:primary_category": <#if subject.findValue("primaryTerm")??>"${subject.findValue("primaryTerm")?json_string}"<#else>"none"</#if>
}
