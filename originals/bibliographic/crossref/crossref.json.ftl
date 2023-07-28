{
    "status": "ok",
    "message-type": "work",
    "message-version": "1.0.0",
    "message": {
        <#if subject.findValue("indexedDatePartsYear")??>"indexed": {
            "date-parts": [
                [
                    ${subject.findValue("indexedDatePartsYear")?json_string}<#if subject.findValue("indexedDatePartsMonth")??>,</#if>
                    <#if subject.findValue("indexedDatePartsMonth")??>${subject.findValue("indexedDatePartsMonth")?json_string}</#if><#if subject.findValue("indexedDatePartsDay")??>,</#if>
                    <#if subject.findValue("indexedDatePartsDay")??>${subject.findValue("indexedDatePartsDay")?json_string}</#if>
                ]
            ]<#if subject.findValue("indexedDateTime")??>,
            "date-time": "${subject.findValue("indexedDateTime")?json_string}"</#if><#if subject.findValue("indexedTimeStamp")??>,
            "timestamp": "${subject.findValue("indexedTimeStamp")?json_string}"</#if>
        },
        </#if>
        <#if subject.findValue("referenceCount")??>"reference-count": ${subject.findValue("referenceCount")?json_string},</#if>
        <#if subject.findValue("publisher")??>"publisher": "${subject.findValue("publisher")?json_string}",</#if>
        <#if subject.findValue("shortContainerTitle")??>"short-container-title": [
            "${subject.findValue("shortContainerTitle")?json_string}"<#if subject.findValue("otherShortContainerTitle")??>,</#if>
            <#list subject.findValues("otherShortContainerTitle") as otherTitle>
                ${toJSONString(otherTitle)}<#sep>,</#sep>
            </#list>
        ],</#if>
        <#if subject.findValue("publishedPrintDatePartsYear")??>"published-print": {
            "date-parts": [
                [
                    ${subject.findValue("publishedPrintDatePartsYear")?json_string}<#if subject.findValue("publishedPrintDatePartsMonth")??>,</#if>
                    <#if subject.findValue("publishedPrintDatePartsMonth")??>${subject.findValue("publishedPrintDatePartsMonth")?json_string}</#if><#if subject.findValue("publishedPrintDatePartsDay")??>,</#if>
                    <#if subject.findValue("publishedPrintDatePartsDay")??>${subject.findValue("publishedPrintDatePartsDay")?json_string}</#if>
                ]
            ]
        },
        </#if>
        "DOI": "${subject.findValue("doi")?json_string}",
        <#if subject.findValue("type")??>"type": "${subject.findValue("type")?json_string}",</#if>
        <#if subject.findValue("createdDatePartsYear")??>"created": {
            "date-parts": [
                [
                    ${subject.findValue("createdDatePartsYear")?json_string}<#if subject.findValue("createdDatePartsMonth")??>,</#if>
                    <#if subject.findValue("createdDatePartsMonth")??>${subject.findValue("createdDatePartsMonth")?json_string}</#if><#if subject.findValue("createdDatePartsDay")??>,</#if>
                    <#if subject.findValue("createdDatePartsDay")??>${subject.findValue("createdDatePartsDay")?json_string}</#if>
                ]
            ]<#if subject.findValue("createdDateTime")??>,
            "date-time": "${subject.findValue("createdDateTime")?json_string}"</#if><#if subject.findValue("createdTimeStamp")??>,
            "timestamp": "${subject.findValue("createdTimeStamp")?json_string}"</#if>
        },
        </#if>
        <#if subject.findValue("page")??>"page": "${subject.findValue("page")?json_string}",</#if>
        "source": "Crossref",
        <#if subject.findValue("citationCount")??>"is-referenced-by-count": ${subject.findValue("citationCount")?json_string},</#if>
        "title": [
            "${subject.findValue("title")?json_string}"<#if subject.findValue("otherTitle")??>,</#if>
            <#list subject.findValues("otherTitle") as otherTitle>
                ${toJSONString(otherTitle)}<#sep>,</#sep>
            </#list>
        ],
        "prefix": "${subject.findValue("doiPrefix")?json_string}",
        <#if subject.findValue("volume")??>"volume": "${subject.findValue("volume")?json_string}",</#if>
        "author": [<#list subject.find("author") as author>
            {
                "given": "${author.findValue("given")?json_string}",
                "family": "${author.findValue("family")?json_string}"<#if author.findValue("affiliation")??>,
                "affiliation": [
                    "${author.findValue("affiliation")?json_string}"
                ]</#if>
            }<#sep>,</#sep>
        </#list>],
        "member": <#if subject.findValue("member")??>"${subject.findValue("member")?json_string}",<#else>"",</#if>
        <#if subject.findValue("containerTitle")??>
            "container-title": [
                "${subject.findValue("containerTitle")?json_string}"<#if subject.findValue("otherContainerTitle")??>,</#if>
                <#list subject.findValues("otherContainerTitle") as otherTitle>
                    ${toJSONString(otherTitle)}<#sep>,</#sep>
                </#list>
            ],
        </#if>
        <#if subject.findValue("originalTitle")??>"original-title": [
        "${subject.findValue("originalTitle")?json_string}"<#if subject.findValue("otherOriginalTitle")??>,</#if>
        <#list subject.findValues("otherOriginalTitle") as otherTitle>
            ${toJSONString(otherTitle)}<#sep>,</#sep>
        </#list>
        ],</#if>
        "link": [<#list subject.findValues("link") as link>
            {
                "URL": "${toJSONString(otherTitle)}"
            }<#sep>,</#sep>
        </#list>],
        <#if subject.findValue("depositedDatePartsYear")??>"deposited": {
            "date-parts": [
                [
                    ${subject.findValue("depositedDatePartsYear")?json_string}<#if subject.findValue("depositedDatePartsMonth")??>,</#if>
                    <#if subject.findValue("depositedDatePartsMonth")??>${subject.findValue("depositedDatePartsMonth")?json_string}</#if><#if subject.findValue("depositedDatePartsDay")??>,</#if>
                    <#if subject.findValue("depositedDatePartsDay")??>${subject.findValue("depositedDatePartsDay")?json_string}</#if>
                ]
            ]<#if subject.findValue("depositedDateTime")??>,
            "date-time": "${subject.findValue("depositedDateTime")?json_string}"</#if><#if subject.findValue("depositedTimeStamp")??>,
            "timestamp": "${subject.findValue("depositedTimeStamp")?json_string}"</#if>
        },
        </#if>
        <#if subject.findValue("score")??>"score": ${subject.findValue("score")?json_string},</#if>
        <#if subject.findValue("shortTitle")??>
        "short-title": [
            "${subject.findValue("shortTitle")?json_string}"<#if subject.findValue("otherShortTitle")??>,</#if>
            <#list subject.findValues("otherShortTitle") as otherTitle>
                ${toJSONString(otherTitle)}<#sep>,</#sep>
            </#list>
        ],
        </#if>
        <#if subject.findValue("issuedDatePartsYear")??>"issued": {
            "date-parts": [
                [
                    ${subject.findValue("issuedDatePartsYear")?json_string}<#if subject.findValue("issuedDatePartsMonth")??>,</#if>
                    <#if subject.findValue("issuedDatePartsMonth")??>${subject.findValue("issuedDatePartsMonth")?json_string}</#if><#if subject.findValue("issuedDatePartsDay")??>,</#if>
                    <#if subject.findValue("issuedDatePartsDay")??>${subject.findValue("issuedDatePartsDay")?json_string}</#if>
                ]
            ]
        },
        </#if>
        <#if subject.findValue("issue")??>"journal-issue": {
            "issue": "${subject.findValue("issue")?json_string}"
        },</#if>
        "URL": <#if subject.findValue("url")??>"${subject.findValue("url")?json_string}",<#else>"",</#if>
        <#if subject.findValue("issn")??>
        "ISSN": [<#list subject.findValues("issn") as issn>
            ${toJSONString(issn)}<#sep>,</#sep>
        </#list>],
        "issn-type": [
            {
                "value": "${subject.findValue("printIssn")?json_string}",
                "type": "print"
            }<#if subject.findValue("electronicIssn")??>,
            {
            "value": "${subject.findValue("electronicIssn")?json_string}",
            "type": "electronic"
            }</#if>
        ],</#if>
        <#if subject.findValue("isbn")??>
        "ISBN": [<#list subject.findValues("isbn") as issn>
            ${toJSONString(isbn)}<#sep>,</#sep>
        </#list>],
        "isbn-type": [
            {
                "value": "${subject.findValue("printIsbn")?json_string}",
                "type": "print"
            }
        ],</#if>
        "subject": [<#list subject.findValues("subject") as subject>
            ${toJSONString(subject)}<#sep>,</#sep>
        </#list>]
    }
}
