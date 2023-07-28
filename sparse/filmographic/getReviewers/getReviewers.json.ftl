{
"results": [<#list subject.find("review") as review>
    {
    "Value": "${review.findValue("rating")?json_string}"
    "Source": "<#list review.find("rated_by") as reviewer>${reviewer.findValue("name")?json_string}</#list>"
    }<#sep>,</#sep>
</#list>],
}