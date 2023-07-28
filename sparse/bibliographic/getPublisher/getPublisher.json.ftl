{
    <#if subject.findValue("publisher")??>"publisher": "${subject.findValue("publisher")?json_string}"<#else>"publisher": "N/A"</#if>
}
