{
    "feed": {
        "entry": {
            "summary": <#if subject.findValue("summary")??>"${subject.findValue("summary")?json_string}",<#else>"",</#if>
            "author": [<#list subject.findValues("authorName") as name>
                {
                "name": ${toJSONString(name)}
                }<#sep>,</#sep>
            </#list>],
            "link": [<#list subject.find("link") as link>
                {
                "rel": "${link.findValue("rel")?json_string}",
                "href": "${link.findValue("href")?json_string}"<#if link.findValue("type")??>,
                "type": "${link.findValue("type")?json_string}"</#if>
                }<#sep>,</#sep>
            </#list>],
            "id": <#if subject.findValue("id")??>"${subject.findValue("id")?json_string}",<#else>"",</#if>
            "published": <#if subject.findValue("published")??>"${subject.findValue("published")?json_string}",<#else>"",</#if>
            "title": <#if subject.findValue("title")??>"${subject.findValue("title")?json_string}",<#else>"",</#if>
            "category": [<#list subject.find("category") as category>
                {
                "scheme": "${category.findValue("scheme")?json_string}",
                "term": "${category.findValue("term")?json_string}"
                }<#sep>,</#sep>
            </#list>],
            "updated": <#if subject.findValue("updated")??>"${subject.findValue("updated")?json_string}",<#else>"",</#if>
            "arxiv:primary_category": {
                "scheme": "http://arxiv.org/schemas/atom",
                "term": <#if subject.findValue("primaryTerm")??>"${subject.findValue("primaryTerm")?json_string}",<#else>"none",</#if>
                "xmlns:arxiv": "http://arxiv.org/schemas/atom"
            }
        }
    }
}
