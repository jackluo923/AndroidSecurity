.class public Lcom/alipay/apmobilesecuritysdk/constant/ConfigConstant;
.super Ljava/lang/Object;


# static fields
.field public static final DAILY_ADDRESS:Ljava/lang/String; = "http://mobilegw.aaa.alipay.net/mgw.htm"

.field public static DATA_POST_RPC_ADDRESS:Ljava/lang/String; = null

.field public static final ONLINE_ADDRESS:Ljava/lang/String; = "https://mobilegw.alipay.com/mgw.htm"

.field public static final OS:Ljava/lang/String; = "android"

.field public static final PRE_ADDRESS:Ljava/lang/String; = "https://mobilegw.alipay.com/mgw.htm"

.field public static final RPC_VERSION:Ljava/lang/String; = "3"

.field public static final SDK_NAME:Ljava/lang/String; = "security-sdk-token"

.field public static final SDK_VERSION:Ljava/lang/String; = "3.0.2.20150525"

.field public static final SD_FILE:Ljava/lang/String; = ".SystemConfig"

.field public static final SIT_ADDRESS:Ljava/lang/String; = "http://mobilegw-1-64.test.alipay.net/mgw.htm"

.field public static final STATIC_DATA_UPDATE_TIMEOUT:I = 0x493e0

.field public static UPLOAD_MODE:Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/constant/ConfigConstant;->DATA_POST_RPC_ADDRESS:Ljava/lang/String;

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;->RPC_WALLET:Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/constant/ConfigConstant;->UPLOAD_MODE:Lcom/alipay/apmobilesecuritysdk/http/UploadFactory$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
