{
    "is_publisher_licensed": true,
    <#if subject.findValue("venue")??>
    "venue": "${subject.findValue("venue")?json_string}",
    </#if>
    "ref": [<#list subject.find("reference") as reference>
        {
            "venue": "${reference.findValue("venue")?json_string}",
            "isInfluential": false,
            <#if reference.findValue("year")??>
            "year": ${reference.findValue("year")?json_string},
            </#if>
            "publTitle": "${reference.findValue("title")?json_string}",
            <#if reference.findValue("arxivId")??>
            "arxivId": "${reference.findValue("arxivId")?json_string}",
            </#if>
            "paperId": "${reference.findValue("paperId")?json_string}",
            "url": "${reference.findValue("url")?json_string}",
            "authNames": [<#list reference.find("authoredBy") as author>
                "${author.findValue("name")?json_string}"<#sep>,</#sep>
            </#list>]<#if reference.findValue("doi")??>,
            "doi": "${reference.findValue("doi")?json_string}"
            </#if>
        }<#sep>,</#sep>
    </#list>],
    <#if subject.findValue("year")??>
    "year": ${subject.findValue("year")?json_string},
    </#if>
    "cat": [<#list subject.find("topic") as topic>
        {
            "id": "${topic.findValue("topicId")?json_string}",
            "name": "${topic.findValue("topicName")?json_string}",
            "url": "${topic.findValue("topicUrl")?json_string}"
        }<#sep>,</#sep>
    </#list>],
    "is_open_access": false,
    <#if subject.findValue("abstract")??>
    "abst": "${subject.findValue("abstract")?json_string}",
    </#if>
    <#if subject.findValue("numberOfCitations")??>
    "numCitedBy": ${subject.findValue("numberOfCitations")?json_string},
    </#if>
    <#if subject.findValue("citationVelocity")??>
    "citationVelocity": ${subject.findValue("citationVelocity")?json_string},
    </#if>
    "title": "${subject.findValue("title")?json_string}",
    "isPublisherLicensed": true,
    "url": "${subject.findValue("url")?json_string}",
    <#if subject.findValue("numberOfReferences")??>
    "numCiting": ${subject.findValue("numberOfReferences")?json_string},
    </#if>
    "corpusId": ${subject.findValue("corpusId")?json_string},
    "cit": [<#list subject.find("citation") as citation>
        {
            "venue": "${citation.findValue("venue")?json_string}",
            "isInfluential": false,
            <#if citation.findValue("year")??>
            "year": ${citation.findValue("year")?json_string},
            </#if>
            "publTitle": "${citation.findValue("title")?json_string}",
            <#if citation.findValue("arxivId")??>
            "arxivId": "${citation.findValue("arxivId")?json_string}",
            </#if>
            "paperId": "${citation.findValue("paperId")?json_string}",
            "url": "${citation.findValue("url")?json_string}",
            "authNames": [<#list citation.find("authoredBy") as author>
                "${author.findValue("name")?json_string}"<#sep>,</#sep>
            </#list>]<#if citation.findValue("doi")??>,
            "doi": "${citation.findValue("doi")?json_string}"
            </#if>

        }<#sep>,</#sep>
    </#list>],
    "fos": [<#list subject.findValues("fieldOfStudy") as field>
        ${toJSONString(field)}<#sep>,</#sep>
    </#list>],
    "open": false,
    "arxivId": "${subject.findValue("arxivId")?json_string}",
    "paperId": "${subject.findValue("paperId")?json_string}",
    "authNames": [<#list subject.find("authoredBy") as author>
        "${author.findValue("name")?json_string}"<#sep>,</#sep>
    </#list>],
    <#if subject.findValue("doi")??>
    "doi": "${subject.findValue("doi")?json_string}",
    </#if>
    <#if subject.findValue("influentialCitationCount")??>
    "influentialCitationCount": ${subject.findValue("influentialCitationCount")?json_string}
    <#else>
    "influentialCitationCount": 0
    </#if>
}