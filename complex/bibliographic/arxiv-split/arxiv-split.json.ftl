{
    "results": {
        "item": {
            "abstract": <#if subject.findValue("summary")??>"${subject.findValue("summary")?json_string}",<#else>"",</#if>
            "author": [<#list subject.findValues("authorName") as name>
                {
                    "given": "${(name)?keep_before_last(" ")}",
                    "last": "${(name)?keep_after_last(" ")}"
                }<#sep>,</#sep>
            </#list>],
            "url": [<#list subject.find("link") as link>
                {
                    "rel": "${link.findValue("rel")?json_string}",
                    "href": "${link.findValue("href")?json_string}",
                    "type": "${link.findValue("type")?json_string}"
                }<#sep>,</#sep>
            </#list>],
            "paperId": <#if subject.findValue("id")??>"${subject.findValue("id")?json_string}",<#else>"",</#if>
            <#if subject.findValue("published")??>"published": {
                "value":"${subject.findValue("published")?json_string}"
            },</#if>
            "title": <#if subject.findValue("title")??>"${subject.findValue("title")?lower_case?cap_first?json_string}",<#else>"",</#if>
            "category": [<#list subject.find("category") as category>
                "${category.findValue("term")?json_string}"<#sep>,</#sep>
            </#list>],
            "updated": <#if subject.findValue("updated")??>"${subject.findValue("updated")?json_string}",<#else>"",</#if>
            "arxiv:primary_category": <#if subject.findValue("primaryTerm")??>"${subject.findValue("primaryTerm")?json_string}"<#else>"none"</#if>
        }
    }
}
