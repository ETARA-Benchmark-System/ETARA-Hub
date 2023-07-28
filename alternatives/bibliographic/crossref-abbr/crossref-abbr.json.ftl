{
    <#if subject.findValue("indexedDatePartsYear")??>"indexed": "${subject.findValue("indexedDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("publishedPrintDatePartsYear")??>"published": "${subject.findValue("publishedPrintDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("createdDatePartsYear")??>"created": "${subject.findValue("createdDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("depositedDatePartsYear")??>"deposited": "${subject.findValue("depositedDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("issuedDatePartsYear")??>"issued": "${subject.findValue("issuedDatePartsYear")?json_string}",</#if>
    <#if subject.findValue("type")??>"type": "${subject.findValue("type")?json_string}",</#if>
    "id": "${subject.findValue("doi")?json_string}",
    "title": "${subject.findValue("title")?lower_case?cap_first?json_string}",
    <#if subject.findValue("shortTitle")??>"s-title": "${subject.findValue("shortTitle")?lower_case?cap_first?json_string}"</#if>
    <#if subject.findValue("originalTitle")??>"o-title": "${subject.findValue("originalTitle")?lower_case?cap_first?json_string}",</#if>
    <#if subject.findValue("page")??>"page": "${subject.findValue("page")?json_string}",</#if>
    <#if subject.findValue("volume")??>"volume": "${subject.findValue("volume")?json_string}",</#if>
    <#if subject.findValue("issue")??>"journal-issue": "${subject.findValue("issue")?json_string}",</#if>
    "author": [<#list subject.find("author") as author>
        {
            "fn": "${author.findValue("given")?json_string}",
            "ln": "${author.findValue("family")?json_string}"<#if author.findValue("affiliation")??>,
            "aff": [
                "${author.findValue("affiliation")?json_string}"
            ]</#if>
        }<#sep>,</#sep>
    </#list>],
    <#if subject.findValue("referenceCount")??>"ref-count": ${subject.findValue("referenceCount")?json_string},</#if>
    <#if subject.findValue("citationCount")??>"cit-count": ${subject.findValue("citationCount")?json_string},</#if>
    <#if subject.findValue("publisher")??>"publisher": "${subject.findValue("publisher")?json_string}",</#if>
    "member": <#if subject.findValue("member")??>"${subject.findValue("member")?json_string}",<#else>"",</#if>
    <#if subject.findValue("containerTitle")??>"c-title": "${subject.findValue("containerTitle")?lower_case?cap_first?json_string}",</#if>
    <#if subject.findValue("shortContainerTitle")??>"sc-title": "${subject.findValue("shortContainerTitle")?lower_case?cap_first?json_string}",</#if>
    <#if subject.findValue("score")??>"score": ${subject.findValue("score")?json_string},</#if>
    "URL": <#if subject.findValue("url")??>"${subject.findValue("url")?json_string}",<#else>"",</#if>
    <#if subject.findValue("printIssn")??>"issn": "${subject.findValue("printIssn")?json_string}",</#if>
    <#if subject.findValue("electronicIssn")??>"eissn": "${subject.findValue("electronicIssn")?json_string}",</#if>
    <#if subject.findValue("printIsbn")??>"isbn": "${subject.findValue("printIsbn")?json_string}",</#if>
    "subject": [<#list subject.findValues("subject") as subject>
        ${toJSONString(subject)}<#sep>,</#sep>
    </#list>]
}
