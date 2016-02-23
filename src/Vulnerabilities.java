import java.util.List;

// Class containing all vulnerabilities in application.  This class is used to produce
// the output JSON file, so be careful of changing any existing field names.  If your 
// detector can provide more details about a given vulnerability and how it occurs,
// you should add extra fields.
//
// Each vulnerability class has a "precision" field.  Do not modify this in your code.
// After you have obtained your output JSON files, go back and manually fill in this field
// with "tp" for a true positive and "fp" for a false positive.

public class Vulnerabilities {
    // ========================================================================
    // List of permissions that are declared by not used
    // UnusedPermission:  permission = name of permission that is unused

    public static class UnusedPermission {
        public final String precision = "(manual verification)";
        public String permission = "unknown";
    }
    public List<UnusedPermission> Overprivilege;

    // ========================================================================
    // List of vulnerable intents sent by the application
    // VulnerableIntent:  intentSender = method that sends the intent (i.e. the "sink")
    //                    type = vulnerability type (broadcast, activity, service)
    //                    withData = indicate whether intent contained any extra data (true, false)

    public static class VulnerableIntent {
        public final String precision = "(manual verification)";
        public String intentSender = "unknown";
        public String type         = "unknown";
        public String withData     = "unknown";
    }
    public List<VulnerableIntent> UnauthorizedIntentReceipt;

    // ========================================================================
    // List of exported components that can be spoofed
    // SpoofedComponent:  component = name of component class that can be spoofed
    //                    type = attack type (broadcast, activity, service)
    //                    withData = indicate whether extra data read by component (true, false)

    public static class SpoofedComponent {
        public final String precision = "(manual verification)";
        public String component = "unknown";
        public String type      = "unknown";
        public String withData  = "unknown";
    }
    public List<SpoofedComponent> IntentSpoofing;

    // ========================================================================
    // List of components that do not perform sufficient access control
    // HijackedComponent:  component = name of component class
    //                     type = hijacking type (read, write)

    public static class HijackedComponent {
        public final String precision = "(manual verification)";
        public String component = "unknown";
        public String type      = "unknown";
    }
    public List<HijackedComponent> ComponentHijacking;

    // ========================================================================
    // List of paths that leak sensitive information off the device
    // Path:  source = API method where sensitive information was obtained
    //        sink = API method where information is sent off the device
    //        information = type of information being leaked (contacts, location, etc.)
    //                      note: amount of detail you provide is dependent on your analysis

    public static class LeakagePath {
        public final String precision = "(manual verification)";
        public String source      = "unknown";
        public String sink        = "unknown";
        public String information = "unknown";
        public String isSourceParameter = "unknown";
        public String isSourceConstant = "unknown";
    }
    public List<LeakagePath> PrivacyLeakage;

    // ========================================================================
    // List of classes where SSL is used incorrectly 
    // SSLVulnerability:  type = why use of SSL is insecure (e.g. accepting all certificates
    // Fixed a potential error: List<String> -> List<SSLVulnerability>

    public static class SSLVulnerability {
        public final String precision = "(manual verification)";
        public String type = "unknown";
    }
    public List<SSLVulnerability> ImproperSSL;

    // ========================================================================
}

