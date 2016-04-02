.class public Lcom/inmobi/commons/uid/UID;
.super Ljava/lang/Object;


# static fields
.field public static final FBA_DEF:Z = false

.field public static final GPID_DEF:Z = true

.field public static final KEY_FACEBOOK_ID:Ljava/lang/String; = "FBA"

.field public static final KEY_GPID:Ljava/lang/String; = "GPID"

.field public static final KEY_LOGIN_ID:Ljava/lang/String; = "LID"

.field public static final KEY_LTVID:Ljava/lang/String; = "LTVID"

.field public static final KEY_ODIN1:Ljava/lang/String; = "O1"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "SID"

.field public static final KEY_UM5_ID:Ljava/lang/String; = "UM5"

.field public static final LID_DEF:Z = true

.field public static final LTVE_DEF:Z = true

.field public static final O1_DEF:Z = true

.field public static final SID_DEF:Z = true

.field public static final UM5_DEF:Z = true

.field private static a:Lcom/inmobi/commons/uid/UID;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    sput-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/inmobi/commons/uid/UID;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    :cond_0
    if-gtz v0, :cond_8

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isPlatformIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "O1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "FBA"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isPlatformIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_LOGIN:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "LID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_SESSION:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "SID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getRawConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "LTVID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->h:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getAdvertisingId()Lcom/inmobi/commons/uid/AdvertisingId;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/inmobi/commons/uid/AdvertisingId;->getAdId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "GPID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v2

    :cond_8
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isPlatformIdEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "O1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_a

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_a

    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v3, "FBA"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isPlatformIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private b(ILjava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    :cond_0
    if-gtz v0, :cond_8

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isPlatformIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "O1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FBA"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isPlatformIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_LOGIN:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "LID"

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_SESSION:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "SID"

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getRawConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LTVID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->h:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getAdvertisingId()Lcom/inmobi/commons/uid/AdvertisingId;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/inmobi/commons/uid/AdvertisingId;->getAdId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v2

    :cond_8
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isPlatformIdEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "O1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_a

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_a

    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "FBA"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isPlatformIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static getCommonsUid()Lcom/inmobi/commons/uid/UID;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method


# virtual methods
.method public getDefaultUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/uid/UID;->b(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/inmobi/commons/uid/UIDUtil;->getEncryptedJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUidMapWithoutXor(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/uid/UID;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/inmobi/commons/uid/UIDUtil;->getJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/commons/uid/UID;->getDefaultUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "commons"

    const-string v1, "Unable to initialize commons."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUidMapWitoutXOR(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/commons/uid/UID;->getDefaultUidMapWithoutXor(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "commons"

    const-string v1, "Unable to initialize commons."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isFba()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    return v0
.end method

.method public isGPId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    return v0
.end method

.method public isLid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    return v0
.end method

.method public isLtve()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    return v0
.end method

.method public isO1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    return v0
.end method

.method public isSid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    return v0
.end method

.method public isUm5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    return v0
.end method

.method public final setFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "O1"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    const-string v0, "SID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    const-string v0, "LID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    const-string v0, "FBA"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    const-string v0, "UM5"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    const-string v0, "LTVID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    const-string v0, "GPID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->h:Z

    return-void
.end method
