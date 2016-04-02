.class public Lcom/alipay/mobile/common/transport/utils/HeaderConstant;
.super Ljava/lang/Object;
.source "HeaderConstant.java"


# static fields
.field public static final HEADER_KEY_APPID:Ljava/lang/String; = "AppId"

.field public static final HEADER_KEY_APP_KEY:Ljava/lang/String; = "App-Key"

.field public static final HEADER_KEY_CHARSET:Ljava/lang/Object;

.field public static final HEADER_KEY_CLIENT_ID:Ljava/lang/String; = "ClientId"

.field public static final HEADER_KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_KEY_CONTROL:Ljava/lang/String; = "Control"

.field public static final HEADER_KEY_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_KEY_DID:Ljava/lang/String; = "Did"

.field public static final HEADER_KEY_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_KEY_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_KEY_MEMO:Ljava/lang/String; = "Memo"

.field public static final HEADER_KEY_OPERATION_TYPE:Ljava/lang/String; = "Operation-Type"

.field public static final HEADER_KEY_REQ_DATA:Ljava/lang/String; = "Request-Data"

.field public static final HEADER_KEY_RESULT_STATUS:Ljava/lang/String; = "Result-Status"

.field public static final HEADER_KEY_RPCID:Ljava/lang/String; = "RpcId"

.field public static final HEADER_KEY_SENCE:Ljava/lang/String; = "Scene"

.field public static final HEADER_KEY_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEADER_KEY_SIGN:Ljava/lang/String; = "Sign"

.field public static final HEADER_KEY_TIPS:Ljava/lang/String; = "Tips"

.field public static final HEADER_KEY_TRACKERID:Ljava/lang/String; = "TrackerId"

.field public static final HEADER_KEY_TS:Ljava/lang/String; = "Ts"

.field public static final HEADER_KEY_UUID:Ljava/lang/String; = "Uuid"

.field public static final HEADER_KEY_VERSION:Ljava/lang/String; = "Version"

.field public static final HEADER_VALUE_JSON_TYPE:Ljava/lang/String; = "application/json"

.field public static final HEADER_VALUE_OLD_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final HEADER_VALUE_PB_TYPE:Ljava/lang/String; = "application/protobuf"

.field public static final HEADER_VALUE_RPC_VERSION_1_0:Ljava/lang/String; = "1"

.field public static final HEADER_VALUE_RPC_VERSION_2:Ljava/lang/String; = "2"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "Charset"

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/HeaderConstant;->HEADER_KEY_CHARSET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
