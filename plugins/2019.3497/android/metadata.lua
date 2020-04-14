local metadata =
{
    plugin =
    {
        format = 'jar',
        manifest = 
        {
            permissions = {
                { name = ".permission.C2D_MESSAGE", protectionLevel = "signature" } 
            },
            usesPermissions = {
                "com.google.android.c2dm.permission.RECEIVE"                
            },  
            usesFeatures = {},
            applicationChildElements = 
            {
                [[
                    <!-- 
                    FirebaseMessagingService performs security checks at runtime,
                    no need for explicit permissions despite exported="true" 
                    -->
                    <service android:name="com.google.firebase.messaging.FirebaseMessagingService" android:exported="true">
                        <intent-filter android:priority="-500">
                            <action android:name="com.google.firebase.MESSAGING_EVENT"/>
                        </intent-filter>
                    </service>
                ]]
            }
        }
    },

    coronaManifest = {
        dependencies = {
            ["shared.firebase.core"] = "com.coronalabs"
        }
    }
}

return metadata
