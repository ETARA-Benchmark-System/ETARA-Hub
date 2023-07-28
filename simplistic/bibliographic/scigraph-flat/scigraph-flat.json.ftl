{
    "identifier": "doi:${subject.findValue("doi")?json_string}",
    "copyright": "©2018 Springer Science+Business Media, LLC, part of Springer Nature",
    "creators" : [<#list subject.findValues("creator") as creator>
        {
            "creator": ${toJSONString(creator)}
        }<#sep>,</#sep>
    </#list>],
    "publicationType": <#if subject.findValue("publicationType")??>"${subject.findValue("publicationType")?json_string}",<#else>"",</#if>
    <#if subject.findValue("abstract")??>
    "abstract": "${subject.findValue("abstract")?json_string}",
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
    "startingPage": <#if subject.findValue("pageNumbers")??>"${subject.findValue("pageNumbers")?split("-")?first?json_string}",<#else>"",</#if>
    "endingPage": <#if subject.findValue("pageNumbers")??>"${subject.findValue("pageNumbers")?split("-")?last?json_string}",<#else>"",</#if>
    "genre": "OriginalPaper",
    "publisher": <#if subject.findValue("publisher")??>"${subject.findValue("publisher")?json_string}",<#else>"",</#if>
    "openaccess": "false",
    "publicationName": <#if subject.findValue("publicationName")??>"${subject.findValue("publicationName")?json_string}",<#else>"",</#if>
    "contentType": <#if subject.findValue("contentType")??>"${subject.findValue("contentType")?json_string}",<#else>"",</#if>
    "publicationDate": <#if subject.findValue("publicationDate")??>"${subject.findValue("publicationDate")?json_string}",<#else>"",</#if>
    "doi": "${subject.findValue("doi")?json_string}"
}