{
"results": [<#list subject.find("rated") as review>
    {
    "ID": "<#list review.find("rating_of") as movie>${movie.findValue("imdb_id")?json_string}</#list>",
    "Title": "<#list review.find("rating_of") as movie>${movie.findValue("title")?json_string}</#list>",
    "Value": "${review.findValue("rating")?json_string}"
    }<#sep>,</#sep>
</#list>],
}