.class public Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;
.super Ljava/lang/Object;


# static fields
.field public static ABOUT_UPDATE_MUST:I = 0x0

.field public static ABOUT_UPDATE_NONEED:I = 0x0

.field public static ABOUT_UPDATE_NOTICE:I = 0x0

.field public static ABOUT_UPDATE_OPTIONAL:I = 0x0

.field public static final ALIPAY_NEED_CHECKCODE:I = 0x7da

.field public static final ALIPAY_NEED_CHECKCODE_FAIL:I = 0x7db

.field public static final BACK_PWD_SOCITYID_NULL:Ljava/lang/String; = "\u8bf7\u586b\u5199\u8bc1\u4ef6\u53f7\u7801"

.field public static final BIND_ERR:Ljava/lang/String; = "704"

.field public static final BIND_PHONE_DIALOG_SHOW_FIND_PAYPWD:Ljava/lang/String; = "196"

.field public static final CELLPHONE_REGX_ERR_WARN:Ljava/lang/String; = "\u8bf7\u6b63\u786e\u586b\u5199\u624b\u673a\u53f7\u7801"

.field public static final CHECK_USER_CERT_OVER_TIME_NEW:Ljava/lang/String; = "5305"

.field public static final CHECK_USER_CERT_OVER_TIME_OLD:Ljava/lang/String; = "705"

.field public static final COMPLETE_MOBILE_USERINFO:I = 0x407

.field public static final COMPLETE_USERINFO:I = 0x3f3

.field public static final ERRORCODE_LOGINPASSWORDERROR_THREE:Ljava/lang/String; = "194"

.field public static final ERRORCODE_MOBILEOTP_NO_USERINFO:Ljava/lang/String; = "819"

.field public static final FORCEUPDATE:I = 0x7d3

.field public static final GO_DECISION_CENTER:Ljava/lang/String; = "5317"

.field public static final HAS_MORE_THAN_ONE_USER:Ljava/lang/String; = "5312"

.field public static final HAS_NO_BIND:Ljava/lang/String; = "703"

.field public static final HAS_NO_BIND_LOGIN:Ljava/lang/String; = "711"

.field public static final HAS_RDS_RISK:Ljava/lang/String; = "5200"

.field public static final HAS_SEND_SMS:Ljava/lang/String; = "308"

.field public static final IMG_CHECKCODE_ERR:Ljava/lang/String; = "1011"

.field public static final IMG_VALID_FAIL:Ljava/lang/String; = "1011"

.field public static final INVALID_MOBILENO:Ljava/lang/String; = "1121"

.field public static final INVALID_PASSWD:Ljava/lang/String; = "1108"

.field public static final LOGIN_ACCOUNT_NO_EXIT:I = 0x3ee

.field public static final LOGIN_PASSWORD_ERROR:I = 0x3eb

.field public static final LOGIN_PASSWORD_LOCKED:I = 0x3ec

.field public static final LOGIN_SUCCESS:I = 0x3e8

.field public static final LOGIN_TIMEOUT:I = 0x40c

.field public static LOGIN_UPDATE_MUST:Ljava/lang/String; = null

.field public static LOGIN_UPDATE_NONEED:Ljava/lang/String; = null

.field public static LOGIN_UPDATE_NOTICE:Ljava/lang/String; = null

.field public static LOGIN_UPDATE_OPTIONAL:Ljava/lang/String; = null

.field public static final NEED_BIND_ALIPAY_ACCOUNT:I = 0x3ef

.field public static final NEED_INPUT_USER_CERT:Ljava/lang/String; = "5313"

.field public static final NEED_REGISTER:Ljava/lang/String; = "5314"

.field public static final NEED_RESET_PWD_OLD_FLOW:Ljava/lang/String; = "5315"

.field public static final REG_MOBILENO_EXIST:Ljava/lang/String; = "1103"

.field public static final REG_REGISTER_FAILED:Ljava/lang/String; = "1105"

.field public static final RESET_PAY_PWD:Ljava/lang/String; = "5311"

.field public static final RESET_SIMPLE_PWD:Ljava/lang/String; = "5310"

.field public static final RE_ENTER_SMS_PWD:Ljava/lang/String; = "5300"

.field public static final RE_SEND_SMS_CODE:Ljava/lang/String; = "5301"

.field public static final ResultSuccess:Ljava/lang/String; = "1000"

.field public static final SAME_PWD_ERR:Ljava/lang/String; = "\u5f53\u524d\u5bc6\u7801\u4e0d\u80fd\u548c\u65b0\u5bc6\u7801\u4e00\u81f4!"

.field public static final SECURITY_BIND_NOT_FINISH:Ljava/lang/String; = "709"

.field public static final SECURITY_ERR_PAY_PWD:Ljava/lang/String; = "\u652f\u4ed8\u5bc6\u7801\u4e0d\u6b63\u786e\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

.field public static final SECURITY_HAS_BIND_CELLPHONE:Ljava/lang/String; = "702"

.field public static final SECURITY_PASSWORD_NOT_MATCH_PAY_LOCKED:Ljava/lang/String; = "192"

.field public static final SECURITY_PAY_PASSWORD_NOT_MATCH_PAY_ONE:Ljava/lang/String; = "190"

.field public static final SECURITY_PAY_PASSWORD_NOT_MATCH_PAY_TWO:Ljava/lang/String; = "191"

.field public static final SECURITY_SESSION_NOT_EXIST:Ljava/lang/String; = "708"

.field public static final SECURITY_SMS_OVER_SEND:Ljava/lang/String; = "301"

.field public static final SMS_SEND_OVER_LIMIT:Ljava/lang/String; = "5201"

.field public static final TOO_MANY_SMS_ERR:Ljava/lang/String; = "300"

.field public static final USER_ACCOUNT_BLOCK:I = 0x3fc

.field public static final USER_HAS_FROZEN:Ljava/lang/String; = "700"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_NONEED:Ljava/lang/String;

    const-string/jumbo v0, "1"

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_OPTIONAL:Ljava/lang/String;

    const-string/jumbo v0, "2"

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_MUST:Ljava/lang/String;

    const-string/jumbo v0, "3"

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_NOTICE:Ljava/lang/String;

    const/16 v0, 0xc9

    sput v0, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_NONEED:I

    const/16 v0, 0xca

    sput v0, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_OPTIONAL:I

    const/16 v0, 0xcb

    sput v0, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_MUST:I

    const/16 v0, 0xcc

    sput v0, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_NOTICE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
