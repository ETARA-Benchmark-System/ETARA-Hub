{
"Rated": <#if subject.findValue("content_rating")??>"${subject.findValue("content_rating")?json_string}"<#else>"N/A"</#if>
}