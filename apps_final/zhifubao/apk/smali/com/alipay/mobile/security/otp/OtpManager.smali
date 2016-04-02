.class public abstract Lcom/alipay/mobile/security/otp/OtpManager;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# static fields
.field public static OTP_BARCODE:Ljava/lang/String;

.field public static OTP_FREEWIFI:Ljava/lang/String;

.field public static OTP_NFC:Ljava/lang/String;

.field public static OTP_SOUND:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "sound"

    sput-object v0, Lcom/alipay/mobile/security/otp/OtpManager;->OTP_SOUND:Ljava/lang/String;

    const-string/jumbo v0, "barcode"

    sput-object v0, Lcom/alipay/mobile/security/otp/OtpManager;->OTP_BARCODE:Ljava/lang/String;

    const-string/jumbo v0, "nfc"

    sput-object v0, Lcom/alipay/mobile/security/otp/OtpManager;->OTP_NFC:Ljava/lang/String;

    const-string/jumbo v0, "free_wifi"

    sput-object v0, Lcom/alipay/mobile/security/otp/OtpManager;->OTP_FREEWIFI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteIndex(Ljava/lang/String;)V
.end method

.method public abstract deleteSeed()V
.end method

.method public abstract getBarcodeOtp()Ljava/lang/String;
.end method

.method public abstract getDynamicOtp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDynamicOtp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDynamicOtpCode(Ljava/lang/String;)Lcom/alipay/mobile/security/otp/OtpResult;
.end method

.method public abstract getIndex(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOtpNum()Ljava/lang/String;
.end method

.method public abstract getOtpNum(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getServerTimeDiff()Ljava/lang/String;
.end method

.method public abstract getUserIndex(Ljava/lang/String;)Lcom/alipay/mobile/security/otp/OtpResult;
.end method

.method public abstract initIndex()V
.end method

.method public abstract initSeed()V
.end method

.method public abstract sendTodoMessage()V
.end method
