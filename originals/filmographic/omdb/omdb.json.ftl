{
"Metascore": <#if subject.findValue("metascore")??>"${subject.findValue("metascore")?json_string}",<#else>"N/A",</#if>
"Website": "N/A",
"imdbRating": <#if subject.findValue("imdb_rating")??>"${subject.findValue("imdb_rating")?json_string}",<#else>"N/A",</#if>
"imdbVotes": <#if subject.findValue("imdb_votes")??>"${subject.findValue("imdb_votes")?json_string}",<#else>"N/A",</#if>
"Ratings": [<#list subject.find("review") as review>
    {
        "Value": "${review.findValue("rating")?json_string}",
        "Source": "<#list review.find("rated_by") as reviewer>${reviewer.findValue("name")?json_string}</#list>"
    }<#sep>,</#sep>
</#list>],
"Runtime": <#if subject.findValue("runtime")??>"${subject.findValue("runtime")?json_string} min",<#else>"N/A",</#if>
"Language": <#if subject.findValue("language")??>"${subject.findValue("language")?json_string}",<#else>"N/A",</#if>
"Rated": <#if subject.findValue("content_rating")??>"${subject.findValue("content_rating")?json_string}",<#else>"N/A",</#if>
"Production": <#if subject.findValue("production")??>"${subject.findValue("production")?json_string}",<#else>"N/A",</#if>
"Released": <#if subject.findValue("release_date")??>"${subject.findValue("release_date")?json_string}",<#else>"N/A",</#if>
"imdbID": <#if subject.findValue("imdb_id")??>"${subject.findValue("imdb_id")?json_string}",<#else>"N/A",</#if>
"Plot": <#if subject.findValue("plot")??>"${subject.findValue("plot")?json_string}",<#else>"N/A",</#if>
"Director": "<#list subject.find("director") as director>${director.findValue("name")?json_string}<#sep>, </#sep></#list>",
"Title": <#if subject.findValue("title")??>"${subject.findValue("title")?json_string}",<#else>"N/A",</#if>
"Awards": <#if subject.findValue("awards")??>"${subject.findValue("awards")?json_string}",<#else>"N/A",</#if>
"Actors": "<#list subject.find("actor") as actor>${actor.findValue("name")?json_string}<#sep>, </#sep></#list>",
"Response": "True",
"Type": "Movie",
"DVD": <#if subject.findValue("dvd_release_date")??>"${subject.findValue("dvd_release_date")?json_string}",<#else>"N/A",</#if>
"Year": <#if subject.findValue("release_year")??>"${subject.findValue("release_year")?json_string}",<#else>"N/A",</#if>
"Country": <#if subject.findValue("country")??>"${subject.findValue("country")?json_string}",<#else>"N/A",</#if>
"Genre": "<#list subject.find("genre") as genre>${genre.findValue("label")?json_string}<#sep>, </#sep></#list>",
"Writer": "<#list subject.find("writer") as writer>${writer.findValue("name")?json_string}<#sep>, </#sep></#list>",
}