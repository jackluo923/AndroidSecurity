.class public Lcom/alipay/mobile/rome/syncservice/sync/e/a;
.super Ljava/lang/Object;
.source "BizCofigure.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/e/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "devicelock"

    const-string/jumbo v2, "devicelock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "public-template"

    const-string/jumbo v2, "public-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "CDP-GLOBAL"

    const-string/jumbo v2, "CDP-GLOBAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "CDPINIT-GLOBAL"

    const-string/jumbo v2, "CDPINIT-GLOBAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "CASHIER-GSW"

    const-string/jumbo v2, "CASHIER-GSW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "chat"

    const-string/jumbo v2, "chat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "public-follow"

    const-string/jumbo v2, "public-follow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "DELETECHAT"

    const-string/jumbo v2, "DELETECHAT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "NewEnvelope"

    const-string/jumbo v2, "NewEnvelope"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "securityverify"

    const-string/jumbo v2, "securityverify"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT"

    const-string/jumbo v2, "UCHAT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-MRF"

    const-string/jumbo v2, "UCHAT-MRF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-MRFC"

    const-string/jumbo v2, "UCHAT-MRFC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-M"

    const-string/jumbo v2, "UCHAT-M"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-G"

    const-string/jumbo v2, "UCHAT-G"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-INPUT"

    const-string/jumbo v2, "UCHAT-INPUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-CRN"

    const-string/jumbo v2, "UCHAT-CRN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-FEE"

    const-string/jumbo v2, "UCHAT-FEE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "MSG-BOX"

    const-string/jumbo v2, "MSG-BOX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "public-intelrcmd"

    const-string/jumbo v2, "public-intelrcmd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "S_LBS"

    const-string/jumbo v2, "S_LBS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "RP-BTM"

    const-string/jumbo v2, "RP-BTM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "RP-BPM"

    const-string/jumbo v2, "RP-BPM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "CDP-USER"

    const-string/jumbo v2, "CDP-USER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "CDPINIT-USER"

    const-string/jumbo v2, "CDPINIT-USER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "MIC-VERIFY"

    const-string/jumbo v2, "MIC-VERIFY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "public-gplugin"

    const-string/jumbo v2, "public-gplugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "MC-O2O-LCF"

    const-string/jumbo v2, "MC-O2O-LCF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "devicelock"

    aput-object v1, v0, v3

    const-string/jumbo v1, "public-template"

    aput-object v1, v0, v4

    .line 117
    const-string/jumbo v1, "CDP-GLOBAL"

    aput-object v1, v0, v5

    const-string/jumbo v1, "CDPINIT-GLOBAL"

    aput-object v1, v0, v6

    const-string/jumbo v1, "CASHIER-GSW"

    aput-object v1, v0, v7

    .line 116
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->d:[Ljava/lang/String;

    .line 120
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "chat"

    aput-object v1, v0, v3

    const-string/jumbo v1, "public-follow"

    aput-object v1, v0, v4

    .line 121
    const-string/jumbo v1, "public-intelrcmd"

    aput-object v1, v0, v5

    const-string/jumbo v1, "NewEnvelope"

    aput-object v1, v0, v6

    const-string/jumbo v1, "DELETECHAT"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 122
    const-string/jumbo v2, "securityverify"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "UCHAT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "UCHAT-MRF"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "UCHAT-M"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "UCHAT-MRFC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "UCHAT-G"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "UCHAT-INPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 123
    const-string/jumbo v2, "UCHAT-CRN"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "UCHAT-FEE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "MSG-BOX"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "CDP-USER"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "CDPINIT-USER"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 125
    const-string/jumbo v2, "S_LBS"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "RP-BTM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "RP-BPM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "MIC-VERIFY"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 126
    const-string/jumbo v2, "public-gplugin"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "MC-O2O-LCF"

    aput-object v2, v0, v1

    .line 120
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->e:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "deviceBased"

    .line 155
    :goto_0
    return-object v0

    .line 150
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string/jumbo v0, "userBased"

    goto :goto_0

    .line 153
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getBizType: [unknown biz type][ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public static a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public static b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->e:[Ljava/lang/String;

    return-object v0
.end method
