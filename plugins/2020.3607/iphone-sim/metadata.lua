local metadata =
{
	plugin =
	{
		format = "staticLibrary",

		-- This is the name without the 'lib' prefix.
		-- In this case, the static library is called: libSTATIC_LIB_NAME.a
		staticLibs = { "FirebaseMessaging", "Protobuf" }, 

		frameworks = {},
		frameworksOptional = {}
	}
},

coronaManifest = {
    dependencies = {
        ["shared.firebase.core"] = "com.coronalabs"
    }
}

return metadata
