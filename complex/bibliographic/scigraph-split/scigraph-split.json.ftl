{
    "apiMessage": "This JSON was provided by Springer Nature",
    "query": "doi:${subject.findValue("doi")?json_string}",
    "result": [
        {
            "total": "1",
            "start": "1",
            "pageLength": "10",
            "recordsDisplayed": "1"
        }
    ],
    "records": [
        {
            "identifier": "doi:${subject.findValue("doi")?json_string}",
            "copyright": "©2018 Springer Science+Business Media, LLC, part of Springer Nature",
            "authors" : [<#list subject.findValues("creator") as creator>
                {
                    "given": ${(creator)?keep_after(" ")},
                    "family": ${(creator)?keep_before(" ")}
                }<#sep>,</#sep>
            </#list>],
            "publicationType": <#if subject.findValue("publicationType")??>"${subject.findValue("publicationType")?json_string}",<#else>"",</#if>
            <#if subject.findValue("abstract")??>
            "summary": "${subject.findValue("abstract")?json_string}",
            </#if>
            "title": <#if subject.findValue("title")??>"${subject.findValue("title")?lower_case?cap_first}",<#else>"",</#if>
            "link": [<#list subject.findValues("electronicEdition") as url>
                ${toJSONString(url)}<#sep>,</#sep>
            </#list>],
            <#if subject.findValue("journalId")??>"journalId": "${subject.findValue("journalId")?json_string}",</#if>
            <#if subject.findValue("journalVolume")??>"volume": "${subject.findValue("journalVolume")?json_string}",</#if>
            <#if subject.findValue("journalNumber")??>"number": "${subject.findValue("journalNumber")?json_string}",</#if>
            <#if subject.findValue("issn")??>"issn": "${subject.findValue("issn")?json_string}",</#if>
            "pagination": <#if subject.findValue("pageNumbers")??>"${subject.findValue("pageNumbers")?json_string}",<#else>"",</#if>
            "genre": "OriginalPaper",
            "publisher": <#if subject.findValue("publisher")??>"${subject.findValue("publisher")?json_string}",<#else>"",</#if>
            "openaccess": "false",
            "venue": <#if subject.findValue("publicationName")??>"${subject.findValue("publicationName")?lower_case?cap_first}",<#else>"",</#if>
            "contentType": <#if subject.findValue("contentType")??>"${subject.findValue("contentType")?json_string}",<#else>"",</#if>
            "published": <#if subject.findValue("publicationDate")??>"${subject.findValue("publicationDate")?json_string}",<#else>"",</#if>
            "doi": "${subject.findValue("doi")?json_string}"
        }
    ],
    "facets": [
        {
            "subjects": [<#list subject.findValues("subject") as subject>
                {
                "value": "${toJSONString(subject)}"
                }<#sep>,</#sep>
            </#list>]
        },
        {
            "keywords": [<#list subject.findValues("keyword") as keyword>
                {
                "value": "${toJSONString(keyword)}"
                }<#sep>,</#sep>
            </#list>]
        },
        {
            "venues": [
                <#if subject.findValue("publicationName")??>
                {
                "value": "${subject.findValue("publicationName")?lower_case?cap_first}"
                }
                </#if>
            ]
        },
        {
            "published": [
                <#if subject.findValue("publicationDate")??>
                {
                "value": "${subject.findValue("publicationDate")?split("-")?first?json_string}."
                }
                </#if>
            ]
        },
        {
            "countries": [
                <#if subject.findValue("country")??>
                {
                "value": "${subject.findValue("country")?json_string}"
                }
                </#if>
            ]
        },
        {
            "types": [<#list subject.findValues("type") as type>
                {
                "value": "${toJSONString(type)}"
                }<#sep>,</#sep>
            </#list>]
        }
    ]
}