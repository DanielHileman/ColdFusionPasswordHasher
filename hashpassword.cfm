<cfset Password = 'YourPassword'>

<cfset salt = CreateUUID() & CreateUUID() & CreateUUID() & CreateUUID()>
<cfset salt = Left(salt, 128)>
<cfset passwordHash = Hash(Password & salt, "SHA-512")>
<cfloop index="i" from="1" to="1024">
	<cfset passwordHash = Hash(passwordHash & salt, "SHA-512")>
</cfloop>
<cfoutput>#salt#<br>
#passwordHash#</cfoutput><br>