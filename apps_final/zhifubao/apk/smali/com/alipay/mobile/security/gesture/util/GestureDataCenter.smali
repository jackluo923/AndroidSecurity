.class public Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
.super Ljava/lang/Object;


# static fields
.field public static final DefaultConvenientEnable:Ljava/lang/String; = "GestureDefaultConvenientEnable"

.field public static final GSHongbaoUIdCheckEnable:Ljava/lang/String; = "GSHongbaoUIdCheckEnable"

.field public static final GestureAlertInfo:Ljava/lang/String; = "GestureAlertInfo"

.field public static final GestureCacheActivityParams:Ljava/lang/String; = "GestureActivityParams"

.field public static final GestureCacheGroupName:Ljava/lang/String; = "GestureCacheGroup"

.field public static final GestureCheckAppId:Ljava/lang/String; = "appId"

.field public static final GestureCheckU:Ljava/lang/String; = "u"

.field public static final GestureCheckUrl:Ljava/lang/String; = "url"

.field public static final GestureCheckUserId:Ljava/lang/String; = "userId"

.field public static final GestureClassName:Ljava/lang/String; = "com.alipay.mobile.security.gesture.ui.GestureActivity_"

.field public static final GestureCloseTipCount:Ljava/lang/String; = "GestureCloseTipCount"

.field public static final GestureCloseTipMsg:Ljava/lang/String; = "GestureCloseTipMsg"

.field public static final GestureConvenientModeValidEnable:Ljava/lang/String; = "GestureConvenientModeValidEnable"

.field public static final GestureDefaultConvenientAlertEnable:Ljava/lang/String; = "GestureDefaultConvenientAlertEnable"

.field public static final GestureDefaultConvenientAlertMsg:Ljava/lang/String; = "GestureDefaultConvenientAlertMsg"

.field public static final GestureModeConvenient:Ljava/lang/String; = "convenient"

.field public static final GestureModeNeedPassword:Ljava/lang/String; = "needPassword"

.field public static final GestureModeNormal:Ljava/lang/String; = "normal"

.field public static final GestureModePrivacy:Ljava/lang/String; = "privacy"

.field public static final GestureModify:Ljava/lang/String; = "GestureModify"

.field public static final GesturePassSwitch:Ljava/lang/String; = "hongbao_is_need_gesture"

.field public static final GestureProcessHackEnable:Ljava/lang/String; = "GestureProcessHackEnable"

.field public static final GestureSetNeedAlert:Ljava/lang/String; = "GestureSetNeedAlert"

.field public static final GestureUpgradeDefaultConvenientAlertEnable:Ljava/lang/String; = "GestureUpgradeDefaultConvenientAlertEnable"

.field public static final GestureUpgradeDefaultConvenientEnable:Ljava/lang/String; = "GestureUpgradeDefaultConvenientEnable"

.field public static final GuideSetGestureEnable:Ljava/lang/String; = "GestureGuideSetEnable"

.field public static final PassGestureDuration:J = 0x7d0L

.field private static b:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

.field private static synthetic v:[I


# instance fields
.field public final USERLEAVEHINTMAXTIME:J

.field private final a:Ljava/lang/String;

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private o:Lcom/alipay/mobile/security/gesture/GestureConfig;

.field private final p:[Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s:[Ljava/lang/String;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final u:[Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$mobile$security$gesture$util$GestureDataCenter$CheckType()[I
    .locals 3

    sget-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->v:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->values()[Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->NONE:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->URL:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->v:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "GestureDataCenter"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->c:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->d:J

    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->USERLEAVEHINTMAXTIME:J

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->e:Z

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->f:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->g:Z

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->h:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->i:Z

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->j:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->k:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->l:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->m:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "IuQo4CXo6+rAY4rfuhEvAQ=="

    aput-object v2, v0, v1

    const-string/jumbo v2, "sONxtp4YLIidOkYoSNzfl4TXDDNWAAkOegyDW9mfNin0vaGXAM9GWww9jEF7B1fg"

    aput-object v2, v0, v4

    const-string/jumbo v2, "XhDLq+ThgBtyGXkW3CIe83cXoiNBNOTGU1P47Y2qgv/AY4rfuhEvAQ=="

    aput-object v2, v0, v5

    const-string/jumbo v2, "sONxtp4YLIidOkYoSNzfl45McaXAR9D3N8DXr5Eiie9zGnyQ0umxqZrBDb3HPounpnEhKbm3VSfh63an+W2sxw=="

    aput-object v2, v0, v6

    const-string/jumbo v2, "sONxtp4YLIidOkYoSNzfl45McaXAR9D3N8DXr5Eiie+9F0DPf1NuPldHrH+n1LKA0ZrHUioxcxoAkISHI8wBvvUUD5A5k3GI"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "sONxtp4YLIidOkYoSNzfl45McaXAR9D3N8DXr5Eiie+9F0DPf1NuPldHrH+n1LKAaqL0SP65eQU1TZ/vsoSmDKt4pRt3Adit"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->p:[Ljava/lang/String;

    const-string/jumbo v0, "checkKey"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->q:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->r:Ljava/util/HashMap;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "tuTfVwwkHm3AY4rfuhEvAQ=="

    aput-object v2, v0, v1

    const-string/jumbo v2, "sONxtp4YLIidOkYoSNzfl9dPBj40xnByw+hoEGi8LHrzmj4hejC6O+llm2EP+Wy7ZQDa9Qdl10GVAzWjk+mu3g=="

    aput-object v2, v0, v4

    const-string/jumbo v2, "ZlORaCzTLQnAY4rfuhEvAQ=="

    aput-object v2, v0, v5

    const-string/jumbo v2, "sONxtp4YLIidOkYoSNzfl9dPBj40xnByaGH1IEaGB3iwq/rUTnpl39uafV1Rpb0l10HH2g8aY2k1TZ/vsoSmDKt4pRt3Adit"

    aput-object v2, v0, v6

    const-string/jumbo v2, "sONxtp4YLIidOkYoSNzfl9dPBj40xnByw+hoEGi8LHrzmj4hejC6OwlYmiFgy8v+VDttijIM69ZNSJCLJUphiJUDNaOT6a7e"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "kY591nVpb63AY4rfuhEvAQ=="

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "sONxtp4YLIidOkYoSNzfl9dPBj40xnBy/rAYG/Mgy3CZd+kY3DJWF+1r5yavWUd8H9KEqynctK4SDAWZvkJsoq0vTZhwnlBE"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "PMryF6chWlvAY4rfuhEvAQ=="

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "sONxtp4YLIidOkYoSNzfl9dPBj40xnByw+hoEGi8LHrzmj4hejC6Oxi4k1crYgwvO1Ca+5v9+jGVAzWjk+mu3g=="

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "sONxtp4YLIidOkYoSNzfl9dPBj40xnByaGH1IEaGB3iwq/rUTnpl36Qe8org9ZyZPYo5zyJUa3uVAzWjk+mu3g=="

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "JgfAHiPePT0D2e4+RdX8KIoC+qXfuOba3+ffYaN+bzpCDYS5Hxl/RiBdPH38jnCA"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "a6//x3LRIZ/AY4rfuhEvAQ=="

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "sONxtp4YLIidOkYoSNzfl9dPBj40xnByaGH1IEaGB3iwq/rUTnpl3yh20lQWlcvx91GF26DTwKutL02YcJ5QRA=="

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "9gNMM/T+PsrAY4rfuhEvAQ=="

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "sONxtp4YLIidOkYoSNzfl9dPBj40xnBy8shXQsHkwS6nyY4pq4yMiGUZEbQZ3Y1BTtC+5GVqQ/jdl6B5/7tYEQ=="

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "sONxtp4YLIidOkYoSNzfl9dPBj40xnByaGH1IEaGB3iwq/rUTnpl34Fen19m3h5JXgXpqvkWtfecSlr1dyHcsg=="

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "sONxtp4YLIidOkYoSNzfl9dPBj40xnByaGH1IEaGB3iwq/rUTnpl39i/qg2+mGLZkIMKL5uqrgINkh5AlGf6560vTZhwnlBE"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "sONxtp4YLIidOkYoSNzflwOPevLsnFqAX5SYV08ErtQX4HErVuoeK2o1huwS0BGxnEpa9Xch3LI="

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->s:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->t:Ljava/util/HashMap;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v2, "20000032"

    aput-object v2, v0, v1

    const-string/jumbo v2, "20000038"

    aput-object v2, v0, v4

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->u:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "decrypt list"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->p:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->s:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->u:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_2

    return-void

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->m:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->p:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, "checkKey"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/security/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "u"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->r:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->s:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, "checkKey"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/security/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "c"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->t:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->u:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string/jumbo v3, "z"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u8c03\u7528 getGestureStartClientContain()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u83b7\u53d6\u5f53\u524d\u767b\u5f55\u7528\u6237\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "U"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u5df2\u7ecf\u83b7\u53d6\u5230\u5f53\u524d\u767b\u5f55\u7528\u6237\u4fe1\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "true"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u7528\u6237\u9009\u62e9\u8df3\u8fc7\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "S"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u5224\u65ad\u6761\u4ef6\u51fd\u6570\u4e3a\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "V"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e3a\u7a7a\uff0c\u5224\u65ad\u6761\u4ef6\u51fd\u6570\u8bbe\u7f6e\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "G"

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Z)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "getGestureCondition"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u83b7\u53d6\u5f53\u524d\u767b\u5f55\u7528\u6237\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "U"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u5df2\u7ecf\u83b7\u53d6\u5230\u5f53\u524d\u767b\u5f55\u7528\u6237\u4fe1\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "true"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u7528\u6237\u9009\u62e9\u8df3\u8fc7\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "S"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e3a\u7a7a\uff0c\u5224\u65ad\u6761\u4ef6\u51fd\u6570\u8bbe\u7f6e\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "G"

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u5224\u65ad\u6761\u4ef6\u51fd\u6570\u4e3a\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "F"

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u4f46\u662f\u672c\u5730\u8868\u793a\u4e0d\u9700\u8981\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "A"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u4f46\u662f\u672c\u5730\u8868\u793a\u9700\u8981\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "V"

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    const-string/jumbo v3, "/"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "new url error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/GestureConfig;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "caseId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "20000006"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "appId"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, "u"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v0, v4}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "convenient"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/GestureConfig;->getBlackListAppNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    const-string/jumbo v1, "MM-1113-3"

    const-string/jumbo v2, "QHDQ"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v4, v0

    move-object v5, v0

    goto :goto_0
.end method

.method private c(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "MM-1113-4"

    const-string/jumbo v2, "SPDQ"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method private d(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "convenient"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/GestureConfig;->getBlackListAppNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    const-string/jumbo v1, "MM-1113-2"

    const-string/jumbo v2, "QDDQ"

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v4, v0

    move-object v5, v0

    goto :goto_0
.end method

.method private e(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "MM-1113-5"

    const-string/jumbo v2, "QHDQ"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    .locals 2

    const-class v1, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->b:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->b:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->b:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public gestureStrategyAccountSwitch()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->e(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "GestureDataCenter"

    const-string/jumbo v5, "gestureStrategyAccountSwitch set NeedAuthGesture and NeedVerifyGesture true"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    const-string/jumbo v3, "convenient"

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public gestureStrategyActivity(ZLandroid/content/Intent;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "GestureDataCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "gestureStrategyActivity: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "gesturepwd is empty"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_7

    const-string/jumbo v2, "app_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "url"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v2, "u"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    const-string/jumbo v6, "convenient"

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getIsPassGesture()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "GestureDataCenter"

    const-string/jumbo v8, "isPassGesture\u6807\u5fd7\u4e3atrue\u4e0d\u9700\u8981\u9a8c\u8bc1\u624b\u52bf\u903b\u8f91"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverPassGestureTime()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "GestureDataCenter"

    const-string/jumbo v8, "\u8d85\u8fc72\u79d2\u7684\u9650\u5236\u65f6\u95f4\uff0c\u9700\u8981\u51fa\u624b\u52bf"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setIsPassGesture(Z)V

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setPassGestureTime(J)V

    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v4, v2, v3}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureDataCenter"

    const-string/jumbo v4, "InBlackList"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getIsPassGesture()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "GestureDataCenter"

    const-string/jumbo v8, "isPassGesture\u6807\u5fd7\u4e3atrue\u4e0d\u9700\u8981\u9a8c\u8bc1\u624b\u52bf\u903b\u8f91"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverPassGestureTime()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "GestureDataCenter"

    const-string/jumbo v8, "\u8d85\u8fc72\u79d2\u7684\u9650\u5236\u65f6\u95f4\uff0c\u9700\u8981\u51fa\u624b\u52bf"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setIsPassGesture(Z)V

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setPassGestureTime(J)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object v6, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v4, v2, v3}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInWhiteList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "InWhiteList"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_1
.end method

.method public gestureStrategyApp(ZLjava/lang/String;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "GestureDataCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "gestureStrategyApp: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "gesturepwd is empty"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_7

    const-string/jumbo v2, "userId"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v3, "u"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    const-string/jumbo v5, "convenient"

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p2, v3, v5}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureDataCenter"

    const-string/jumbo v4, "InBlackList"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureDataCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "not in BlackList: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-nez v1, :cond_4

    const-string/jumbo v1, " is null "

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v1, "not null"

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isCurrentLoginUserId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p2, v3, v5}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInWhiteList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "InWhiteList"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v3, v2

    goto/16 :goto_1
.end method

.method public gestureStrategyLaunch(ZLandroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->gestureStrategyLaunch(ZLandroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public gestureStrategyLaunch(ZLandroid/net/Uri;Z)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz p3, :cond_0

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->d(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "GestureDataCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "gestureStrategyLaunch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "gesturepwd is empty"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v3, "convenient"

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedPassGesture(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureDataCenter"

    const-string/jumbo v4, "callGestureApp setNeedAuthGesture true"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public gestureStrategyLeave(Z)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "GestureDataCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "gestureStrategyLeave: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "convenient"

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureDataCenter"

    const-string/jumbo v4, "gestureStrategyLeave set NeedAuthGesture and NeedVerfiyGesture true"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isChangeTime()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverrangingLeavehintTime()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureDataCenter"

    const-string/jumbo v4, "\u65f6\u95f4\u5927\u4e8e\u4e94\u5206\u949f\uff0c\u51c6\u5907\u6389\u8d77\u624b\u52bf set NeedAuthGesture and NeedVerfiyGesture true"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getIsPassGesture()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "isPassGesture\u6807\u5fd7\u4e3atrue\u4e0d\u9700\u8981\u9a8c\u8bc1\u624b\u52bf\u903b\u8f91"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public gestureStrategyScreenOff()Z
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->c(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "gestureStrategyScreenOff: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v4, "gesturepwd is empty"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "convenient"

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "u"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v6, v1, v8}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v5, "gestureStrategyScreenOff InBlackList"

    invoke-interface {v1, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v2, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :cond_3
    move v1, v4

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v3

    goto/16 :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_2

    :cond_6
    move-object v1, v5

    goto :goto_2

    :cond_7
    move-object v6, v5

    goto :goto_1
.end method

.method public gestureStrategyTabLauncher(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureDataCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "gestureStrategyTabLauncher: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "gesturepwd is empty"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "convenient"

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1, v6, v6}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public gestureStrategyTime()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "convenient"

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "\u6536\u5230\u4e86\u65f6\u95f4\u7684\u72b6\u6001\u7684\u53d8\u66f4\u5e7f\u64ad\u540e\u542f\u52a8\u624b\u52bf"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setChangeTime(Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public getColorMapValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsCheckGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->j:Z

    return v0
.end method

.method public getIsFromInside()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->g:Z

    return v0
.end method

.method public getIsPassGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->k:Z

    return v0
.end method

.method public getLastUserLeavehint()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->d:J

    return-wide v0
.end method

.method public isChangeTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->i:Z

    return v0
.end method

.method public isCurrentLoginUserId(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isNeedCheckUserId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "gestureConfig isNeedCheckUserId"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "url and userId is equal"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "gestureConfig is not NeedCheckUserId"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "gestureConfig is null, not NeedCheckUserId"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    const-string/jumbo v2, "url and userId is not equal"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentTopActivityNeedGesture(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "com.alipay.mobile.security.gesture.ui.GestureActivity_"

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "AlipayApplication packageName != topActivity packageName"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v6, "GestureDataCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "topAlipayActivity className: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v2, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v8, "url"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "u"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v2, v1

    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-nez v1, :cond_7

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/gesture/GestureConfig;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    :cond_7
    const-string/jumbo v1, "convenient"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1, p2, v6, v2, v7}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v5

    goto/16 :goto_0

    :cond_8
    instance-of v2, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v2, :cond_e

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_9
    move-object v2, v3

    goto :goto_2

    :cond_a
    move-object v1, v3

    goto :goto_3

    :cond_b
    move v1, v4

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v6, v2, v7}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInWhiteList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "isCurrentTopActivityNeedGesture InWhiteList"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "isCurrentTopActivityNeedGesture not InWhiteList"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v4

    goto/16 :goto_0

    :cond_e
    move-object v6, v3

    goto/16 :goto_1
.end method

.method public isHasGestureView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->c:Z

    return v0
.end method

.method public isInColorMap(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureDataCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "color target: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInPassGestureMap(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->NONE:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isInPassGestureMap(Ljava/lang/String;Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;)Z

    move-result v0

    return v0
.end method

.method public isInPassGestureMap(Ljava/lang/String;Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureDataCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "target: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->m:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->$SWITCH_TABLE$com$alipay$mobile$security$gesture$util$GestureDataCenter$CheckType()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter$CheckType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureDataCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checked: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->m:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :pswitch_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "/"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    const-string/jumbo v5, "/"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "GestureDataCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "new url error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isNeedAuthGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->f:Z

    return v0
.end method

.method public isNeedLogin(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a()V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->n:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "convenient"

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedPassGesture(Landroid/net/Uri;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isNeedNotifyCallBack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->e:Z

    return v0
.end method

.method public isNeedPassGesture(Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedPassGesture(Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public isNeedPassGesture(Landroid/net/Uri;Z)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureDataCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isCurrentLoginUserId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "appId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/GestureConfig;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->o:Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isInWhiteList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "isNeedPassGesture InWhiteList"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureDataCenter"

    const-string/jumbo v3, "isNeedPassGesture not InWhiteList"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public isNeedVerifyGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->h:Z

    return v0
.end method

.method public isOverPassGestureTime()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->l:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverrangingLeavehintTime()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->d:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChangeTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->i:Z

    return-void
.end method

.method public setHasGestureView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->c:Z

    return-void
.end method

.method public setIsCheckGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->j:Z

    return-void
.end method

.method public setIsFromInside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->g:Z

    return-void
.end method

.method public setIsPassGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->k:Z

    return-void
.end method

.method public setLastUserLeavehint(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->d:J

    return-void
.end method

.method public setNeedAuthGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->f:Z

    return-void
.end method

.method public setNeedNotifyCallBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->e:Z

    return-void
.end method

.method public setNeedVerifyGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->h:Z

    return-void
.end method

.method public setPassGestureTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->l:J

    return-void
.end method
