{
    <#if subject.findValue("containerTitle")??>"venue": [
        "${subject.findValue("containerTitle")?json_string}"<#if subject.findValue("otherContainerTitle")??>,</#if>
        <#list subject.findValues("otherContainerTitle") as otherTitle>
            ${toJSONString(otherTitle)}<#sep>,</#sep>
        </#list>
    ]</#if>
}
