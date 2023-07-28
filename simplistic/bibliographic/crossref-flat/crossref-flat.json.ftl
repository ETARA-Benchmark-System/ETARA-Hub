{
    <#if subject.findValue("indexedDatePartsYear")??>"indexed": "${subject.findValue("indexedDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("publishedPrintDatePartsYear")??>"published-print": "${subject.findValue("publishedPrintDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("createdDatePartsYear")??>"created": "${subject.findValue("createdDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("depositedDatePartsYear")??>"deposited": "${subject.findValue("depositedDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("issuedDatePartsYear")??>"issued": "${subject.findValue("issuedDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("type")??>"type": "${subject.findValue("type")?json_string}",</#if>
    "DOI": "${subject.findValue("doi")?json_string}",
    "prefix": "${subject.findValue("doiPrefix")?json_string}",
    "title": "${subject.findValue("title")?json_string}",
    <#if subject.findValue("shortTitle")??>"short-title": "${subject.findValue("shortTitle")?json_string}",</#if>
    <#if subject.findValue("originalTitle")??>"original-title": "${subject.findValue("originalTitle")?json_string}",</#if>
    <#if subject.findValue("page")??>"page": "${subject.findValue("page")?json_string}",</#if>
    <#if subject.findValue("volume")??>"volume": "${subject.findValue("volume")?json_string}",</#if>
    <#if subject.findValue("issue")??>"journal-issue": "${subject.findValue("issue")?json_string}",</#if>
    "author": [<#list subject.find("author") as author>
        "${author.findValue("given")?json_string} ${author.findValue("family")?json_string}"<#sep>,</#sep>
    </#list>],
    <#if subject.findValue("referenceCount")??>"reference-count": ${subject.findValue("referenceCount")?json_string},</#if>
    <#if subject.findValue("citationCount")??>"is-referenced-by-count": ${subject.findValue("citationCount")?json_string},</#if>
    <#if subject.findValue("publisher")??>"publisher": "${subject.findValue("publisher")?json_string}",</#if>
    "member": <#if subject.findValue("member")??>"${subject.findValue("member")?json_string}",<#else>"",</#if>
    <#if subject.findValue("containerTitle")??>"container-title": "${subject.findValue("containerTitle")?json_string}",</#if>
    <#if subject.findValue("shortContainerTitle")??>"short-container-title": "${subject.findValue("shortContainerTitle")?json_string}",</#if>
    <#if subject.findValue("score")??>"score": ${subject.findValue("score")?json_string},</#if>
    "URL": <#if subject.findValue("url")??>"${subject.findValue("url")?json_string}",<#else>"",</#if>
    <#if subject.findValue("printIssn")??>"print-issn": "${subject.findValue("printIssn")?json_string}",</#if>
    <#if subject.findValue("electronicIssn")??>"electronic-issn": "${subject.findValue("electronicIssn")?json_string}",</#if>
    <#if subject.findValue("printIsbn")??>"print-isbn": "${subject.findValue("printIsbn")?json_string}",</#if>
    "subject": [<#list subject.findValues("subject") as subject>
        ${toJSONString(subject)}<#sep>,</#sep>
    </#list>]
}
