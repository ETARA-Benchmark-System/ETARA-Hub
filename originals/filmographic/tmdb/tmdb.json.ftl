{
"original_language": <#if subject.findValue("original_language")??>"${subject.findValue("original_language")?json_string}",<#else>"N/A",</#if>
"imdb_id": <#if subject.findValue("imdb_id")??>"${subject.findValue("imdb_id")?json_string}",<#else>"N/A",</#if>
"title": <#if subject.findValue("title")??>"${subject.findValue("title")?json_string}",<#else>"N/A",</#if>
"revenue": <#if subject.findValue("revenue")??>"${subject.findValue("revenue")?json_string}",<#else>"N/A",</#if>
"budget": <#if subject.findValue("budget")??>"${subject.findValue("budget")?json_string}",<#else>"N/A",</#if>
"id": <#if subject.findValue("id")??>"${subject.findValue("id")?json_string}",<#else>"N/A",</#if>
"vote_count": <#if subject.findValue("vote_count")??>"${subject.findValue("vote_count")?json_string}",<#else>"N/A",</#if>
"overview": <#if subject.findValue("overview")??>"${subject.findValue("overview")?json_string}",<#else>"N/A",</#if>
"original_title": <#if subject.findValue("original_title")??>"${subject.findValue("original_title")?json_string}",<#else>"N/A",</#if>
"runtime": <#if subject.findValue("runtime")??>"${subject.findValue("runtime")?json_string}",<#else>"N/A",</#if>
"popularity": <#if subject.findValue("popularity")??>"${subject.findValue("popularity")?json_string}",<#else>"N/A",</#if>
"release_date": <#if subject.findValue("release_date")??>"${subject.findValue("release_date")?json_string}",<#else>"N/A",</#if>
"vote_average": <#if subject.findValue("vote_average")??>"${subject.findValue("vote_average")?json_string}",<#else>"N/A",</#if>
<#list subject.find("is_part_of_collection") as collection>"belongs_to_collection": {
    "id": ${collection.findValue("id")?json_string},
    "name": "${collection.findValue("collection_name")?json_string}"
},</#list>
"tagline": <#if subject.findValue("tagline")??>"${subject.findValue("tagline")?json_string}",<#else>"N/A",</#if>
"adult": ${subject.findValues("type")?seq_contains("http://api.tmdb.com/sample/AdultMovie")?string("true","false")},
"genres": [<#list subject.find("genre") as genre>
    {
    "name": "${genre.findValue("label")?json_string}",
    "id": ${genre.findValue("id")?json_string}
    }<#sep>,</#sep>
</#list>],
"production_countries": [<#list subject.find("produced_in") as country>
    {
    "iso_3166_1": "${country.findValue("country_code")?json_string}",
    "name": "${country.findValue("country_name")?json_string}"
    }<#sep>,</#sep>
</#list>],
"spoken_languages": [<#list subject.find("spoken_language") as language>
    {
    "name": "${language.findValue("language_name")?json_string}",
    "iso_639_1": "${language.findValue("language_code")?json_string}",
    "english_name": "${language.findValue("english_language_name")?json_string}"
    }<#sep>,</#sep>
</#list>],
"production_companies": [<#list subject.find("production_company") as company>
    {
    "name": "${company.findValue("company_name")?json_string}",
    "id": ${company.findValue("id")?json_string},
    "origin_country": <#if company.findValue("origin_country")??><#list company.find("origin_country") as country>"${country.findValue("country_name")?json_string}"</#list><#else>"",</#if>
    }<#sep>,</#sep>
</#list>],
}