{
"Actors": [<#list subject.find("actor") as actor>
    ${actor.findValue("name")?json_string}<#sep>,</#sep>
]</#list>"
}