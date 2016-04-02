.class public final Lcom/alipay/pushsdk/util/log/d;
.super Ljava/lang/Object;
.source "ServiceTraceConstant.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Z

.field public static i:I

.field public static j:J

.field public static k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const-string/jumbo v0, "uploadClientTrack"

    sput-object v0, Lcom/alipay/pushsdk/util/log/d;->a:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, "logDetail"

    sput-object v0, Lcom/alipay/pushsdk/util/log/d;->b:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "userId"

    sput-object v0, Lcom/alipay/pushsdk/util/log/d;->c:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "imei"

    sput-object v0, Lcom/alipay/pushsdk/util/log/d;->d:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "deviceId"

    sput-object v0, Lcom/alipay/pushsdk/util/log/d;->e:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "utdId"

    sput-object v0, Lcom/alipay/pushsdk/util/log/d;->f:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "appVersion"

    sput-object v0, Lcom/alipay/pushsdk/util/log/d;->g:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/pushsdk/util/log/d;->h:Z

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/alipay/pushsdk/util/log/d;->i:I

    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/pushsdk/util/log/d;->j:J

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/util/log/d;->k:Ljava/lang/Object;

    .line 3
    return-void
.end method
