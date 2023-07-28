{
"score": <#if subject.findValue("metascore")??>"${subject.findValue("metascore")?json_string}",<#else>"N/A",</#if>
"url": "N/A",
"imdbRating": <#if subject.findValue("imdb_rating")??>"${subject.findValue("imdb_rating")?json_string}",<#else>"N/A",</#if>
"imdbVotes": <#if subject.findValue("imdb_votes")??>"${subject.findValue("imdb_votes")?json_string}",<#else>"N/A",</#if>
"ratings": [<#list subject.find("review") as review>
    {
        "v": "${review.findValue("rating")?json_string}",
        "src": "<#list review.find("rated_by") as reviewer>${reviewer.findValue("name")?json_string}</#list>"
    }<#sep>,</#sep>
</#list>],
"time": <#if subject.findValue("runtime")??>"${subject.findValue("runtime")?json_string} min",<#else>"N/A",</#if>
"lang": <#if subject.findValue("language")??>"${subject.findValue("language")?json_string}",<#else>"N/A",</#if>
"pgRating": <#if subject.findValue("content_rating")??>"${subject.findValue("content_rating")?json_string}",<#else>"N/A",</#if>
"prod": <#if subject.findValue("production")??>"${subject.findValue("production")?json_string}",<#else>"N/A",</#if>
"date": <#if subject.findValue("release_date")??>"${subject.findValue("release_date")?json_string}",<#else>"N/A",</#if>
"imdbID": <#if subject.findValue("imdb_id")??>"${subject.findValue("imdb_id")?json_string}",<#else>"N/A",</#if>
"sum": <#if subject.findValue("plot")??>"${subject.findValue("plot")?json_string}",<#else>"N/A",</#if>
"director": [<#list subject.find("director") as director>
    "name": "${director.findValue("name")?keep_before_last(" ")?string[0..0]}. ${director.findValue("name")?keep_after_last(" ")}"<#sep>,</#sep>
</#list>],
"title": <#if subject.findValue("title")??>"${subject.findValue("title")?json_string}",<#else>"N/A",</#if>
"awards": <#if subject.findValue("awards")??>"${subject.findValue("awards")?json_string}",<#else>"N/A",</#if>
"actors": [<#list subject.find("actor") as actor>
    "name": "${actor.findValue("name")?keep_before_last(" ")?string[0..0]}. ${actor.findValue("name")?keep_after_last(" ")}"<#sep>,</#sep>
</#list>],
"type": "Movie",
"dvdRelease": <#if subject.findValue("dvd_release_date")??>"${subject.findValue("dvd_release_date")?json_string}",<#else>"N/A",</#if>
"year": <#if subject.findValue("release_year")??>"${subject.findValue("release_year")?json_string}",<#else>"N/A",</#if>
"country": <#if subject.findValue("country")??>"${subject.findValue("country")?json_string}",<#else>"N/A",</#if>
"Genre": [<#list subject.find("genre") as genre>
    "${genre.findValue("label")?json_string}"<#sep>,</#sep>
</#list>],
"writer": [<#list subject.find("writer") as writer>
    "name": "${writer.findValue("name")?keep_before_last(" ")?string[0..0]}. ${writer.findValue("name")?keep_after_last(" ")}"<#sep>,</#sep>
</#list>],
}