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
    "recs": [
        {
            "id": "doi:${subject.findValue("doi")?json_string}",
            "copyright": "©2018 Springer Science+Business Media, LLC, part of Springer Nature",
            "creators" : [<#list subject.findValues("creator") as creator>
                {
                    "creator": ${toJSONString(creator)}
                }<#sep>,</#sep>
            </#list>],
            "publType": <#if subject.findValue("publicationType")??>"${subject.findValue("publicationType")?json_string}",<#else>"",</#if>
            <#if subject.findValue("abstract")??>
            "abs": "${subject.findValue("abstract")?json_string}",
            </#if>
            "title": <#if subject.findValue("title")??>"${subject.findValue("title")?json_string}",<#else>"",</#if>
            "url": [<#list subject.findValues("electronicEdition") as url>
                {
                    "value": ${toJSONString(url)}
                }<#sep>,</#sep>
            </#list>],
            <#if subject.findValue("journalId")??>"journalId": "${subject.findValue("journalId")?json_string}",</#if>
            <#if subject.findValue("journalVolume")??>"volume": "${subject.findValue("journalVolume")?json_string}",</#if>
            <#if subject.findValue("journalNumber")??>"number": "${subject.findValue("journalNumber")?json_string}",</#if>
            <#if subject.findValue("issn")??>"issn": "${subject.findValue("issn")?json_string}",</#if>
            "sPage": <#if subject.findValue("pageNumbers")??>"${subject.findValue("pageNumbers")?split("-")?first?json_string}",<#else>"",</#if>
            "ePage": <#if subject.findValue("pageNumbers")??>"${subject.findValue("pageNumbers")?split("-")?last?json_string}",<#else>"",</#if>
            "genre": "OriginalPaper",
            "publisher": <#if subject.findValue("publisher")??>"${subject.findValue("publisher")?json_string}",<#else>"",</#if>
            "openaccess": "false",
            "publName": <#if subject.findValue("publicationName")??>"${subject.findValue("publicationName")?json_string}",<#else>"",</#if>
            "cType": <#if subject.findValue("contentType")??>"${subject.findValue("contentType")?json_string}",<#else>"",</#if>
            "publDate": <#if subject.findValue("publicationDate")??>"${subject.findValue("publicationDate")?json_string}",<#else>"",</#if>
            "doi": "${subject.findValue("doi")?json_string}"
        }
    ],
    "facets": [
        {
            "name": "subject",
            "values": [<#list subject.findValues("subject") as subject>
                {
                "value": "${toJSONString(subject)}",
                "count": "1"
                }<#sep>,</#sep>
            </#list>]
        },
        {
            "name": "keyword",
            "values": [<#list subject.findValues("keyword") as keyword>
                {
                "value": "${toJSONString(keyword)}",
                "count": "1"
                }<#sep>,</#sep>
            </#list>]
        },
        {
            "name": "pub",
            "values": [
                <#if subject.findValue("publicationName")??>
                {
                "value": "${subject.findValue("publicationName")?json_string}",
                "count": "1"
                }
                </#if>
            ]
        },
        {
            "name": "year",
            "values": [
                <#if subject.findValue("publicationDate")??>
                {
                "value": "${subject.findValue("publicationDate")?split("-")?first?json_string}.",
                "count": "1"
                }
                </#if>
            ]
        },
        {
            "name": "country",
            "values": [
                <#if subject.findValue("country")??>
                {
                "value": "${subject.findValue("country")?json_string}",
                "count": "1"
                }
                </#if>
            ]
        },
        {
            "name": "type",
            "values": [<#list subject.findValues("type") as type>
                {
                "value": "${toJSONString(type)}",
                "count": "1"
                }<#sep>,</#sep>
            </#list>]
        }
    ]
}