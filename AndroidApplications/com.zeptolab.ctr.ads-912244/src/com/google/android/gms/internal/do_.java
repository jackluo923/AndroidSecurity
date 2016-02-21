package com.google.android.gms.internal;

public enum do_ {
    SUCCESS("Ok"),
    BAD_AUTHENTICATION("BadAuthentication"),
    NEEDS_2F("InvalidSecondFactor"),
    NOT_VERIFIED("NotVerified"),
    TERMS_NOT_AGREED("TermsNotAgreed"),
    UNKNOWN("Unknown"),
    UNKNOWN_ERROR("UNKNOWN_ERR"),
    ACCOUNT_DELETED("AccountDeleted"),
    ACCOUNT_DISABLED("AccountDisabled"),
    SERVICE_DISABLED("ServiceDisabled"),
    SERVICE_UNAVAILABLE("ServiceUnavailable"),
    CAPTCHA("CaptchaRequired"),
    NETWORK_ERROR("NetworkError"),
    USER_CANCEL("UserCancel"),
    PERMISSION_DENIED("PermissionDenied"),
    DEVICE_MANAGEMENT_REQUIRED("DeviceManagementRequiredOrSyncDisabled"),
    CLIENT_LOGIN_DISABLED("ClientLoginDisabled"),
    NEED_PERMISSION("NeedPermission"),
    BAD_PASSWORD("WeakPassword"),
    ALREADY_HAS_GMAIL("ALREADY_HAS_GMAIL"),
    BAD_REQUEST("BadRequest"),
    BAD_USERNAME("BadUsername"),
    LOGIN_FAIL("LoginFail"),
    NOT_LOGGED_IN("NotLoggedIn"),
    NO_GMAIL("NoGmail"),
    REQUEST_DENIED("RequestDenied"),
    SERVER_ERROR("ServerError"),
    USERNAME_UNAVAILABLE("UsernameUnavailable"),
    DELETED_GMAIL("DeletedGmail"),
    SOCKET_TIMEOUT("SocketTimeout"),
    EXISTING_USERNAME("ExistingUsername"),
    NEEDS_BROWSER("NeedsBrowser"),
    GPLUS_OTHER("GPlusOther"),
    GPLUS_NICKNAME("GPlusNickname"),
    GPLUS_INVALID_CHAR("GPlusInvalidChar"),
    GPLUS_INTERSTITIAL("GPlusInterstitial"),
    GPLUS_PROFILE_ERROR("ProfileUpgradeError"),
    INVALID_SCOPE("INVALID_SCOPE");
    public static String wf;
    public static String wg;
    private final String wh;

    static {
        String str = "Ok";
        vt = new do_("SUCCESS", 0, "Ok");
        str = "BadAuthentication";
        vu = new do_("BAD_AUTHENTICATION", 1, "BadAuthentication");
        str = "InvalidSecondFactor";
        vv = new do_("NEEDS_2F", 2, "InvalidSecondFactor");
        str = "NotVerified";
        vw = new do_("NOT_VERIFIED", 3, "NotVerified");
        str = "TermsNotAgreed";
        vx = new do_("TERMS_NOT_AGREED", 4, "TermsNotAgreed");
        String str2 = "Unknown";
        vy = new do_("UNKNOWN", 5, "Unknown");
        str2 = "UNKNOWN_ERR";
        vz = new do_("UNKNOWN_ERROR", 6, "UNKNOWN_ERR");
        str2 = "AccountDeleted";
        vA = new do_("ACCOUNT_DELETED", 7, "AccountDeleted");
        str2 = "AccountDisabled";
        vB = new do_("ACCOUNT_DISABLED", 8, "AccountDisabled");
        str2 = "ServiceDisabled";
        vC = new do_("SERVICE_DISABLED", 9, "ServiceDisabled");
        str2 = "ServiceUnavailable";
        vD = new do_("SERVICE_UNAVAILABLE", 10, "ServiceUnavailable");
        str2 = "CaptchaRequired";
        vE = new do_("CAPTCHA", 11, "CaptchaRequired");
        str2 = "NetworkError";
        vF = new do_("NETWORK_ERROR", 12, "NetworkError");
        str2 = "UserCancel";
        vG = new do_("USER_CANCEL", 13, "UserCancel");
        str2 = "PermissionDenied";
        vH = new do_("PERMISSION_DENIED", 14, "PermissionDenied");
        str2 = "DeviceManagementRequiredOrSyncDisabled";
        vI = new do_("DEVICE_MANAGEMENT_REQUIRED", 15, "DeviceManagementRequiredOrSyncDisabled");
        str2 = "ClientLoginDisabled";
        vJ = new do_("CLIENT_LOGIN_DISABLED", 16, "ClientLoginDisabled");
        str2 = "NeedPermission";
        vK = new do_("NEED_PERMISSION", 17, "NeedPermission");
        str2 = "WeakPassword";
        vL = new do_("BAD_PASSWORD", 18, "WeakPassword");
        str2 = "ALREADY_HAS_GMAIL";
        vM = new do_("ALREADY_HAS_GMAIL", 19, "ALREADY_HAS_GMAIL");
        str2 = "BadRequest";
        vN = new do_("BAD_REQUEST", 20, "BadRequest");
        str2 = "BadUsername";
        vO = new do_("BAD_USERNAME", 21, "BadUsername");
        str2 = "LoginFail";
        vP = new do_("LOGIN_FAIL", 22, "LoginFail");
        str2 = "NotLoggedIn";
        vQ = new do_("NOT_LOGGED_IN", 23, "NotLoggedIn");
        str2 = "NoGmail";
        vR = new do_("NO_GMAIL", 24, "NoGmail");
        str2 = "RequestDenied";
        vS = new do_("REQUEST_DENIED", 25, "RequestDenied");
        str2 = "ServerError";
        vT = new do_("SERVER_ERROR", 26, "ServerError");
        str2 = "UsernameUnavailable";
        vU = new do_("USERNAME_UNAVAILABLE", 27, "UsernameUnavailable");
        str2 = "DeletedGmail";
        vV = new do_("DELETED_GMAIL", 28, "DeletedGmail");
        str2 = "SocketTimeout";
        vW = new do_("SOCKET_TIMEOUT", 29, "SocketTimeout");
        str2 = "ExistingUsername";
        vX = new do_("EXISTING_USERNAME", 30, "ExistingUsername");
        str2 = "NeedsBrowser";
        vY = new do_("NEEDS_BROWSER", 31, "NeedsBrowser");
        str2 = "GPlusOther";
        vZ = new do_("GPLUS_OTHER", 32, "GPlusOther");
        str2 = "GPlusNickname";
        wa = new do_("GPLUS_NICKNAME", 33, "GPlusNickname");
        str2 = "GPlusInvalidChar";
        wb = new do_("GPLUS_INVALID_CHAR", 34, "GPlusInvalidChar");
        str2 = "GPlusInterstitial";
        wc = new do_("GPLUS_INTERSTITIAL", 35, "GPlusInterstitial");
        str2 = "ProfileUpgradeError";
        wd = new do_("GPLUS_PROFILE_ERROR", 36, "ProfileUpgradeError");
        str2 = "INVALID_SCOPE";
        we = new do_("INVALID_SCOPE", 37, "INVALID_SCOPE");
        wi = new do_[]{vt, vu, vv, vw, vx, vy, vz, vA, vB, vC, vD, vE, vF, vG, vH, vI, vJ, vK, vL, vM, vN, vO, vP, vQ, vR, vS, vT, vU, vV, vW, vX, vY, vZ, wa, wb, wc, wd, we};
        wf = "Error";
        wg = "status";
    }

    private do_(String str) {
        this.wh = str;
    }
}