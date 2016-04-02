.class public Lcom/aps/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aps/k;


# static fields
.field private static final synthetic J:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private A:Lcom/aps/l;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Lcom/aps/y;

.field private E:Ljava/lang/StringBuilder;

.field private F:J

.field private G:J

.field private H:Landroid/telephony/CellLocation;

.field private I:Z

.field a:Ljava/util/TimerTask;

.field b:Ljava/util/Timer;

.field c:Lcom/aps/ag;

.field d:I

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Landroid/net/ConnectivityManager;

.field private h:Landroid/net/wifi/WifiManager;

.field private i:Landroid/telephony/TelephonyManager;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aps/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Lcom/aps/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Lcom/aps/b;

.field private o:Landroid/telephony/PhoneStateListener;

.field private p:I

.field private q:Lcom/aps/a$a;

.field private r:Landroid/net/wifi/WifiInfo;

.field private s:Lorg/json/JSONObject;

.field private t:Ljava/lang/String;

.field private u:Lcom/aps/c;

.field private v:J

.field private w:Z

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "APS.java"

    const-class v2, Lcom/aps/a;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startScan"

    const-string/jumbo v3, "android.net.wifi.WifiManager"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xae7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/a;->J:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    iput-object v1, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    new-instance v0, Lcom/aps/b;

    invoke-direct {v0}, Lcom/aps/b;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->n:Lcom/aps/b;

    iput-object v1, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    const/16 v0, -0x71

    iput v0, p0, Lcom/aps/a;->p:I

    new-instance v0, Lcom/aps/a$a;

    invoke-direct {v0, p0, v1}, Lcom/aps/a$a;-><init>(Lcom/aps/a;Lcom/aps/a$1;)V

    iput-object v0, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    iput-object v1, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/aps/a;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;

    iput-wide v2, p0, Lcom/aps/a;->v:J

    iput-boolean v4, p0, Lcom/aps/a;->w:Z

    iput-wide v2, p0, Lcom/aps/a;->x:J

    iput-wide v2, p0, Lcom/aps/a;->y:J

    iput-wide v2, p0, Lcom/aps/a;->z:J

    invoke-static {}, Lcom/aps/l;->a()Lcom/aps/l;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->A:Lcom/aps/l;

    iput v4, p0, Lcom/aps/a;->B:I

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    iput-wide v2, p0, Lcom/aps/a;->F:J

    iput-wide v2, p0, Lcom/aps/a;->G:J

    iput-object v1, p0, Lcom/aps/a;->H:Landroid/telephony/CellLocation;

    iput-boolean v4, p0, Lcom/aps/a;->I:Z

    iput v4, p0, Lcom/aps/a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/aps/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/a;->y:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aps/a;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    iput-object p1, p0, Lcom/aps/a;->H:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method private a([B)Lcom/aps/c;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/aps/m;

    invoke-direct {v1}, Lcom/aps/m;-><init>()V

    invoke-static {}, Lcom/aps/t;->a()J

    iget-object v0, p0, Lcom/aps/a;->A:Lcom/aps/l;

    iget-object v2, p0, Lcom/aps/a;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2, v3}, Lcom/aps/l;->a([BLandroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aps/t;->a()J

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string/jumbo v3, "<saps>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v1, v0}, Lcom/aps/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/aps/a;->n:Lcom/aps/b;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v0, v3}, Lcom/aps/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/aps/m;->b(Ljava/lang/String;)Lcom/aps/c;

    move-result-object v0

    invoke-static {v0}, Lcom/aps/t;->a(Lcom/aps/c;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    aget-object v2, v2, v5

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "api return pure"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "aps return pure"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/aps/c;->t()Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/a;->t:Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/aps/t;->b()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/aps/e;

    invoke-direct {v1}, Lcom/aps/e;-><init>()V

    iget-object v2, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/t;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/aps/e;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->c:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    iput v2, v1, Lcom/aps/e;->d:I

    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-static {v2}, Lcom/aps/t;->a(I)I

    move-result v2

    iput v2, v1, Lcom/aps/e;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "e"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/aps/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/aps/a;->k:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .locals 10

    const v9, 0xfffffff

    const v8, 0xffff

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-ne v1, v7, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "case 2,gsm illegal"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v7, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-eq v1, v8, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    if-lt v1, v9, :cond_4

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    if-le v1, v8, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_1

    :cond_7
    iput v3, p0, Lcom/aps/a;->f:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/a;->j:Ljava/util/List;

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v4, Lcom/aps/e;

    invoke-direct {v4}, Lcom/aps/e;-><init>()V

    iget-object v5, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Lcom/aps/t;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v2

    iput-object v6, v4, Lcom/aps/e;->a:Ljava/lang/String;

    aget-object v5, v5, v3

    iput-object v5, v4, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    iput v5, v4, Lcom/aps/e;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    iput v5, v4, Lcom/aps/e;->d:I

    iget v5, p0, Lcom/aps/a;->p:I

    iput v5, v4, Lcom/aps/e;->j:I

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-eq v1, v7, :cond_9

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-ne v1, v7, :cond_a

    move v1, v2

    :goto_3
    if-eqz v1, :cond_9

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/telephony/NeighboringCellInfo;)Lcom/aps/e;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    if-le v1, v8, :cond_c

    move v1, v2

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-ne v1, v7, :cond_d

    move v1, v2

    goto :goto_3

    :cond_d
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-ne v1, v8, :cond_f

    move v1, v2

    goto :goto_3

    :cond_f
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    if-lt v1, v9, :cond_10

    move v1, v2

    goto :goto_3

    :cond_10
    move v1, v3

    goto :goto_3

    :cond_11
    move v0, v3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/aps/a;I)V
    .locals 2

    const/16 v0, -0x71

    if-ne p1, v0, :cond_1

    iput v0, p0, Lcom/aps/a;->p:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/aps/a;->p:I

    iget v0, p0, Lcom/aps/a;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    iget v1, p0, Lcom/aps/a;->p:I

    iput v1, v0, Lcom/aps/e;->j:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 7

    const/16 v6, 0x17

    const/4 v0, 0x0

    const/4 v5, -0x1

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, " phnum=\"\""

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, " nettype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " nettype=\"UNKNOWN\""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, " inftype=\"\""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "<macs><![CDATA[]]></macs>"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "<nb></nb>"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "<mmac><![CDATA[]]></mmac>"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, " gtype=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, " glong=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, " glat=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, " precision=\"0.0\""

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, " glong=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, " glat=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, " precision=\"0\""

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "<smac>null</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "<smac>00:00:00:00:00:00</smac>"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "<imei>000000000000000</imei>"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "<imsi>000000000000000</imsi>"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "<mcc>000</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "<mcc>0</mcc>"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "<lac>0</lac>"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "<cellid>0</cellid>"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "<key></key>"

    aput-object v3, v1, v2

    :goto_0
    if-ge v0, v6, :cond_3

    aget-object v2, v1, v0

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string/jumbo v0, "*<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_0

    const-string/jumbo v0, "*<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Lcom/aps/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v4, "*"

    const-string/jumbo v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_2
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "null"

    iput-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    new-instance v1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x1d

    if-le v0, v4, :cond_6

    :cond_7
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static a(I)Z
    .locals 2

    const/16 v0, 0x14

    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/a;)Z
    .locals 4

    iget-wide v0, p0, Lcom/aps/a;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aps/a;->x:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aps/a;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/aps/a;)I
    .locals 1

    iget v0, p0, Lcom/aps/a;->f:I

    return v0
.end method

.method static synthetic b(Lcom/aps/a;I)I
    .locals 0

    iput p1, p0, Lcom/aps/a;->p:I

    return p1
.end method

.method static synthetic b(Lcom/aps/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/a;->x:J

    return-wide p1
.end method

.method static synthetic c(Lcom/aps/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/aps/a;->z:J

    return-wide p1
.end method

.method static synthetic c(Lcom/aps/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/aps/a;I)V
    .locals 4

    const v2, 0x282fffff

    const v1, 0x42fffff

    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/aps/a;->e()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    const/16 v3, 0x300

    invoke-virtual {v0, v3}, Lcom/aps/y;->a(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/aps/a;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/aps/y;->a(Lcom/aps/ag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v1}, Lcom/aps/y;->d()Lcom/aps/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    iget-object v1, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    invoke-virtual {v1}, Lcom/aps/ag;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/aps/a;->A:Lcom/aps/l;

    iget-object v3, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Lcom/aps/l;->a([BLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    iget-object v2, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/aps/a;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/aps/y;->a(Lcom/aps/ag;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/aps/a;->r()V

    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/aps/a;->q()V

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    move v0, v2

    goto :goto_1

    :pswitch_2
    :try_start_3
    invoke-direct {p0}, Lcom/aps/a;->k()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    const v0, 0x7c2fffff

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/aps/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aps/a;->d:I

    iget-object v1, p0, Lcom/aps/a;->D:Lcom/aps/y;

    iget-object v2, p0, Lcom/aps/a;->c:Lcom/aps/ag;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/aps/a;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/aps/y;->a(Lcom/aps/ag;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/aps/a;->d:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/aps/a;->q()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/aps/a;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic e(Lcom/aps/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    return-object v0
.end method

.method private f()Ljava/lang/StringBuilder;
    .locals 10

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/aps/a;->p()V

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v0, p0, Lcom/aps/a;->f:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/aps/a;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    move v3, v2

    move v4, v2

    :goto_2
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/aps/a;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v0, "nb"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v0, "access"

    move v4, v5

    :cond_4
    const-string/jumbo v8, "#%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v2

    aput-object v0, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :pswitch_0
    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    const-string/jumbo v3, "#"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/aps/e;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/aps/a;->C:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    if-nez v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    const-string/jumbo v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ",access"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_a
    return-object v6

    :cond_b
    invoke-direct {p0}, Lcom/aps/a;->l()V

    goto :goto_4

    :cond_c
    move-object v1, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/aps/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/a;->l()V

    return-void
.end method

.method static synthetic g(Lcom/aps/a;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized g()[B
    .locals 20

    monitor-enter p0

    :try_start_0
    new-instance v9, Lcom/aps/o;

    invoke-direct {v9}, Lcom/aps/o;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "0"

    const-string/jumbo v10, "0"

    const-string/jumbo v11, "0"

    const-string/jumbo v12, "0"

    const-string/jumbo v13, "0"

    const-string/jumbo v2, ""

    sput-object v2, Lcom/aps/f;->c:Ljava/lang/String;

    const-string/jumbo v6, ""

    const-string/jumbo v2, ""

    const-string/jumbo v5, ""

    const-string/jumbo v14, "V1.3.1"

    const-string/jumbo v3, "version"

    invoke-static {v3}, Lcom/aps/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/aps/a;->f:I

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v8, v0, :cond_12

    const-string/jumbo v7, "1"

    move-object v8, v7

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/aps/f;->a:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string/jumbo v7, "888888888888888"

    sget-object v17, Lcom/aps/f;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/aps/f;->a:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string/jumbo v7, "888888888888888"

    sput-object v7, Lcom/aps/f;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    sget-object v7, Lcom/aps/f;->b:Ljava/lang/String;

    if-eqz v7, :cond_2

    const-string/jumbo v7, "888888888888888"

    sget-object v17, Lcom/aps/f;->b:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/aps/f;->b:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string/jumbo v7, "888888888888888"

    sput-object v7, Lcom/aps/f;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    const/4 v7, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    :goto_3
    :try_start_5
    invoke-static {v7}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/l;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->o()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "2"

    move-object v7, v6

    move-object v6, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x1

    aget-object v17, v2, v17

    iput-object v8, v9, Lcom/aps/o;->i:Ljava/lang/String;

    iput-object v10, v9, Lcom/aps/o;->j:Ljava/lang/String;

    iput-object v11, v9, Lcom/aps/o;->k:Ljava/lang/String;

    iput-object v12, v9, Lcom/aps/o;->l:Ljava/lang/String;

    iput-object v13, v9, Lcom/aps/o;->m:Ljava/lang/String;

    sget-object v2, Lcom/aps/f;->d:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->c:Ljava/lang/String;

    sget-object v2, Lcom/aps/f;->e:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->d:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/aps/o;->n:Ljava/lang/String;

    sget-object v2, Lcom/aps/f;->a:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->o:Ljava/lang/String;

    sget-object v2, Lcom/aps/f;->c:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->r:Ljava/lang/String;

    sget-object v2, Lcom/aps/f;->b:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->C:Ljava/lang/String;

    iput-object v2, v9, Lcom/aps/o;->q:Ljava/lang/String;

    iput-object v7, v9, Lcom/aps/o;->s:Ljava/lang/String;

    iput-object v6, v9, Lcom/aps/o;->t:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/location/core/c;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/o;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "android"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/location/core/c;->d()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/o;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/location/core/c;->g()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/location/core/c;->h()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/o;->h:Ljava/lang/String;

    iput-object v14, v9, Lcom/aps/o;->B:Ljava/lang/String;

    iput-object v15, v9, Lcom/aps/o;->C:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aps/a;->z:J

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/aps/o;->E:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v14, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v14, "GBK\"?>"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v14, "<Cell_Req ver=\"3.0\"><HDR version=\"3.0\" cdma=\""

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" gtype=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" glong=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" glat=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" precision=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\"><src>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</src><license>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</license><key>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</key><clientid>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</clientid><imei>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</imei><imsi>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</imsi><smac>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aps/a;->C:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "</smac></HDR><DRR phnum=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/aps/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\" nettype=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\" inftype=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "\">"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/aps/a;->f:I

    packed-switch v2, :pswitch_data_0

    move-object v2, v5

    :goto_6
    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v6, v2

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->o()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "*"

    const-string/jumbo v7, "."

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v2, 0x0

    move v5, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-static {v2}, Lcom/aps/a;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "*"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_8

    :cond_7
    const-string/jumbo v2, "1"

    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->o()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->l()V

    move-object v7, v6

    move-object v6, v2

    goto/16 :goto_4

    :cond_8
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    :cond_9
    move-object v7, v6

    move-object v6, v2

    goto/16 :goto_4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_0
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<mcc>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</mcc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<mnc>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</mnc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<lac>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</lac>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<cellid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "</cellid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<signal>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lcom/aps/e;->j:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</signal>"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    move v6, v2

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_b

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    iget v8, v2, Lcom/aps/e;->c:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/aps/e;->d:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/aps/e;->j:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v6, v2, :cond_a

    const-string/jumbo v2, "*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_9

    :cond_b
    move-object v2, v5

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->j:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aps/e;

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<mcc>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</mcc>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<sid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</sid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<nid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</nid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<bid>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</bid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/aps/e;->f:I

    if-lez v5, :cond_c

    iget v5, v2, Lcom/aps/e;->e:I

    if-lez v5, :cond_c

    const-string/jumbo v5, "<lon>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</lon>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<lat>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/aps/e;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</lat>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string/jumbo v5, "<signal>"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Lcom/aps/e;->j:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "</signal>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/aps/a;->l()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<nb>%s</nb>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<macs><![CDATA[%s]]></macs>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<mmac><![CDATA[%s]]></mmac>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "</DRR></Cell_Req>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/aps/a;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_10

    move-object v2, v3

    :goto_b
    iput-object v6, v9, Lcom/aps/o;->v:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/o;->w:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/o;->x:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/o;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aps/a;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/aps/o;->u:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/aps/o;->a()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    :cond_f
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<macs><![CDATA[%s]]></macs>"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_a

    :catch_1
    move-exception v17

    goto/16 :goto_3

    :catch_2
    move-exception v7

    goto/16 :goto_2

    :catch_3
    move-exception v7

    goto/16 :goto_1

    :cond_10
    move-object v2, v4

    goto :goto_b

    :cond_11
    move-object v6, v5

    goto/16 :goto_7

    :cond_12
    move-object v8, v7

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic h(Lcom/aps/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/a;->m()V

    return-void
.end method

.method private declared-synchronized h()[B
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/aps/a;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->y:J

    :cond_0
    invoke-direct {p0}, Lcom/aps/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aps/a;->m()V

    :cond_1
    invoke-direct {p0}, Lcom/aps/a;->g()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/aps/a;)I
    .locals 1

    iget v0, p0, Lcom/aps/a;->B:I

    return v0
.end method

.method private i()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/aps/a;->w:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/aps/a;->y:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/a;->y:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/f;->j:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private j()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/aps/a;->o()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/aps/a;->z:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aps/a;->z:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/aps/f;->i:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic j(Lcom/aps/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/aps/a;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/aps/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/aps/a;->q()V

    return-void
.end method

.method private k()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/aps/a;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method private m()V
    .locals 7

    invoke-direct {p0}, Lcom/aps/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    sget-object v0, Lcom/aps/a;->J:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v2

    invoke-static {v3, v4, v5, v6, v2}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallWifiManagerStartScanPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->z:J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private n()V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/j;

    invoke-virtual {v0}, Lcom/aps/j;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    iget-wide v7, v0, Lcom/aps/j;->b:D

    aput-wide v7, v6, v10

    const/4 v7, 0x1

    iget-wide v8, v0, Lcom/aps/j;->a:D

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->f()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->e()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/aps/t;->a([D)F

    move-result v6

    iget v7, v0, Lcom/aps/j;->c:F

    cmpl-float v7, v6, v7

    if-gez v7, :cond_3

    const-string/jumbo v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "fence"

    invoke-virtual {v0}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private o()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Lcom/aps/t;->b()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/aps/n;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private p()V
    .locals 2

    const/16 v1, 0x9

    iget-boolean v0, p0, Lcom/aps/a;->w:Z

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/aps/a;->f:I

    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/aps/a;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/aps/a;->f:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/aps/a;->f:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private q()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method private r()V
    .locals 1

    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    if-gtz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->e()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(ZI)I
    .locals 6

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/aps/a;->q()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    :goto_1
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aps/a;->F:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aps/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->f()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/aps/a;->r()V

    iget-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    new-instance v0, Lcom/aps/a$2;

    invoke-direct {v0, p0, p2}, Lcom/aps/a$2;-><init>(Lcom/aps/a;I)V

    iput-object v0, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    :cond_3
    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/aps/a;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/aps/a;->a:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a()Lcom/aps/c;
    .locals 11

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/aps/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/aps/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "key\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lcom/aps/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/aps/a;->y:J

    :cond_4
    invoke-direct {p0}, Lcom/aps/a;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/aps/a;->m()V

    :cond_5
    iget v0, p0, Lcom/aps/a;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aps/a;->B:I

    iget v0, p0, Lcom/aps/a;->B:I

    if-le v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/aps/a;->c()V

    :cond_6
    iget v0, p0, Lcom/aps/a;->B:I

    if-ne v0, v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/aps/a;->G:J

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/t;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aps/a;->w:Z

    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    :cond_8
    iget v0, p0, Lcom/aps/a;->B:I

    if-ne v0, v3, :cond_9

    invoke-direct {p0}, Lcom/aps/a;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v5, p0, Lcom/aps/a;->G:J

    iget-wide v7, p0, Lcom/aps/a;->F:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7d0

    cmp-long v0, v5, v7

    if-gez v0, :cond_9

    const/4 v0, 0x4

    :goto_1
    if-lez v0, :cond_9

    iget-object v2, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_9
    iget-wide v5, p0, Lcom/aps/a;->v:J

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v7

    sub-long v5, v7, v5

    const-wide/16 v9, 0x12c

    cmp-long v0, v5, v9

    if-gez v0, :cond_20

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->h()J

    move-result-wide v5

    sub-long v5, v7, v5

    :cond_a
    const-wide/16 v7, 0x2710

    cmp-long v0, v5, v7

    if-gtz v0, :cond_20

    move v0, v3

    :goto_2
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->v:J

    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    :goto_3
    return-object v0

    :cond_b
    :try_start_1
    iget-object v0, p0, Lcom/aps/a;->H:Landroid/telephony/CellLocation;

    iget-boolean v2, p0, Lcom/aps/a;->w:Z

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_1e

    :goto_5
    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/aps/t;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/aps/a;->p()V

    const-string/jumbo v0, ""

    const-string/jumbo v2, "network"

    invoke-direct {p0}, Lcom/aps/a;->o()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    :goto_7
    iget v5, p0, Lcom/aps/a;->f:I

    sparse-switch v5, :sswitch_data_0

    :cond_d
    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u83b7\u53d6\u57fa\u7ad9/WiFi\u4fe1\u606f\u4e3a\u7a7a\u6216\u5931\u8d25"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_c

    invoke-direct {p0, v0}, Lcom/aps/a;->a(Landroid/telephony/CellLocation;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/aps/t;->b()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_c

    :try_start_4
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    if-gtz v2, :cond_e

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "cdma illegal"

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :cond_e
    :try_start_6
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    if-gez v2, :cond_f

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "cdma illegal"

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    if-gez v2, :cond_10

    const/16 v0, 0x9

    iput v0, p0, Lcom/aps/a;->f:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "cdma illegal"

    aput-object v5, v0, v2

    invoke-static {v0}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_10
    const/4 v2, 0x2

    iput v2, p0, Lcom/aps/a;->f:I

    iget-object v2, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/aps/t;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/aps/e;

    invoke-direct {v5}, Lcom/aps/e;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/aps/e;->a:Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    iput-object v2, v5, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    iput v2, v5, Lcom/aps/e;->g:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    iput v2, v5, Lcom/aps/e;->h:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    iput v2, v5, Lcom/aps/e;->i:I

    iget v2, p0, Lcom/aps/a;->p:I

    iput v2, v5, Lcom/aps/e;->j:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    iput v2, v5, Lcom/aps/e;->e:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    iput v0, v5, Lcom/aps/e;->f:I

    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_6

    :cond_11
    invoke-direct {p0}, Lcom/aps/a;->l()V

    goto/16 :goto_7

    :sswitch_0
    iget-object v5, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/aps/e;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/aps/e;->d:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    const-string/jumbo v0, "cellwifi"

    :goto_9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_12
    const-string/jumbo v0, "cell"

    goto :goto_9

    :sswitch_1
    iget-object v5, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/aps/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/aps/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/aps/e;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/aps/e;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/aps/e;->i:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    const-string/jumbo v0, "cellwifi"

    :goto_a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_13
    const-string/jumbo v0, "cell"

    goto :goto_a

    :sswitch_2
    const-string/jumbo v0, "#%s#"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_14

    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_14

    move-object v0, v1

    goto/16 :goto_8

    :cond_14
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    move-object v0, v1

    goto/16 :goto_8

    :cond_15
    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_16

    iget-object v0, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/aps/a;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/aps/a;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1d

    iget-object v5, p0, Lcom/aps/a;->r:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object v0, v1

    goto/16 :goto_8

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_17
    invoke-direct {p0}, Lcom/aps/a;->f()Ljava/lang/StringBuilder;

    move-result-object v5

    :try_start_7
    iget-object v2, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v2

    const-string/jumbo v6, "mem"

    invoke-virtual {v2, v0, v5, v6}, Lcom/aps/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/aps/c;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v1

    :goto_b
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/aps/c;->h()J

    move-result-wide v6

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v2, v6, v8

    if-lez v2, :cond_1c

    move v2, v3

    :goto_c
    if-eqz v1, :cond_18

    if-eqz v2, :cond_1b

    :cond_18
    :try_start_8
    invoke-direct {p0}, Lcom/aps/a;->h()[B

    move-result-object v2

    iget-object v3, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/aps/a;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/aps/a;->t:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aps/a;->v:J

    iget-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;
    :try_end_8
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_19
    :goto_d
    iput-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;

    :goto_e
    iget-object v1, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v1

    iget-object v2, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v1, v0, v2, v5}, Lcom/aps/d;->a(Ljava/lang/String;Lcom/aps/c;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v5, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->v:J

    invoke-direct {p0}, Lcom/aps/a;->n()V

    invoke-virtual {p0}, Lcom/aps/a;->d()V

    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    goto/16 :goto_3

    :cond_1a
    :try_start_9
    invoke-direct {p0, v2}, Lcom/aps/a;->a([B)Lcom/aps/c;
    :try_end_9
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v1

    goto :goto_d

    :catch_2
    move-exception v2

    if-nez v1, :cond_19

    throw v2

    :cond_1b
    iput-object v1, p0, Lcom/aps/a;->u:Lcom/aps/c;

    goto :goto_e

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto :goto_b

    :cond_1c
    move v2, v4

    goto :goto_c

    :cond_1d
    move-object v0, v2

    goto/16 :goto_8

    :cond_1e
    move-object v0, v2

    goto/16 :goto_5

    :cond_1f
    move-object v2, v1

    goto/16 :goto_4

    :cond_20
    move v0, v4

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    const/16 v2, 0x9

    const/4 v1, 0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const-string/jumbo v3, "in debug mode, only for test"

    invoke-static {v0, v3}, Lcom/aps/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-static {v0, v3}, Lcom/aps/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/aps/a;->h:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aps/a;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/aps/a;->m()V

    const-string/jumbo v0, "connectivity"

    iget-object v3, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/aps/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/aps/a;->g:Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aps/a;->y:J

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-static {v0, v3}, Lcom/aps/t;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_0

    iput v2, p0, Lcom/aps/a;->f:I

    :goto_3
    new-instance v0, Lcom/aps/a$1;

    invoke-direct {v0, p0}, Lcom/aps/a$1;-><init>(Lcom/aps/a;)V

    iput-object v0, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    invoke-static {}, Lcom/aps/t;->b()I

    move-result v0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_3

    move v0, v1

    :goto_4
    :try_start_1
    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/a;->F:J

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/aps/a;->f:I

    goto :goto_3

    :pswitch_1
    iput v1, p0, Lcom/aps/a;->f:I

    goto :goto_3

    :cond_3
    const/16 v0, 0x100

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/amap/api/location/AMapLocation;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/j;

    invoke-virtual {v0}, Lcom/aps/j;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    iget-wide v7, v0, Lcom/aps/j;->b:D

    aput-wide v7, v6, v10

    iget-wide v7, v0, Lcom/aps/j;->a:D

    aput-wide v7, v6, v11

    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/aps/t;->a([D)F

    move-result v6

    iget v7, v0, Lcom/aps/j;->c:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    iget v7, v0, Lcom/aps/j;->d:I

    if-eqz v7, :cond_3

    iput v10, v0, Lcom/aps/j;->d:I

    :cond_5
    iget v7, v0, Lcom/aps/j;->c:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    iget v7, v0, Lcom/aps/j;->d:I

    if-eq v7, v11, :cond_3

    iput v11, v0, Lcom/aps/j;->d:I

    :cond_6
    const-string/jumbo v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "fence"

    invoke-virtual {v0}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "status"

    iget v0, v0, Lcom/aps/j;->d:I

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 4

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/aps/j;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "##"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/aps/f;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/aps/f;->e:Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aps/d;->a()V

    :cond_2
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/aps/f;->b(Ljava/lang/String;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/aps/f;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/a;->s:Lorg/json/JSONObject;

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/a;->I:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    iput-object v3, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    invoke-direct {p0}, Lcom/aps/a;->q()V

    :try_start_2
    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/aps/a;->o:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/d;->a()V

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/d;->a(Landroid/content/Context;)Lcom/aps/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/d;->b()V

    :cond_3
    invoke-static {v4}, Lcom/aps/f;->a(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/a;->v:J

    iget-object v0, p0, Lcom/aps/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/aps/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/aps/a;->p:I

    invoke-direct {p0}, Lcom/aps/a;->l()V

    iput-object v3, p0, Lcom/aps/a;->t:Ljava/lang/String;

    iput-object v3, p0, Lcom/aps/a;->u:Lcom/aps/c;

    iput-object v3, p0, Lcom/aps/a;->e:Landroid/content/Context;

    iput-object v3, p0, Lcom/aps/a;->i:Landroid/telephony/TelephonyManager;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/aps/a;->q:Lcom/aps/a$a;

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 4

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/aps/j;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/aps/y;->a(Landroid/content/Context;)Lcom/aps/y;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/aps/y;->a(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/aps/a;->I:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/a;->I:Z

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    invoke-virtual {v0}, Lcom/aps/y;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/aps/a;->u:Lcom/aps/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aps/a;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aps/j;

    invoke-virtual {v0}, Lcom/aps/j;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/aps/t;->a()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [D

    iget-wide v7, v0, Lcom/aps/j;->b:D

    aput-wide v7, v6, v10

    iget-wide v7, v0, Lcom/aps/j;->a:D

    aput-wide v7, v6, v11

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->f()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/aps/a;->u:Lcom/aps/c;

    invoke-virtual {v8}, Lcom/aps/c;->e()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/aps/t;->a([D)F

    move-result v6

    iget v7, v0, Lcom/aps/j;->c:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    iget v7, v0, Lcom/aps/j;->d:I

    if-eqz v7, :cond_3

    iput v10, v0, Lcom/aps/j;->d:I

    :cond_5
    iget v7, v0, Lcom/aps/j;->c:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    iget v7, v0, Lcom/aps/j;->d:I

    if-eq v7, v11, :cond_3

    iput v11, v0, Lcom/aps/j;->d:I

    :cond_6
    const-string/jumbo v7, "distance"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v6, "fence"

    invoke-virtual {v0}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "status"

    iget v0, v0, Lcom/aps/j;->d:I

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/aps/a;->e:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method e()Z
    .locals 1

    iget-object v0, p0, Lcom/aps/a;->D:Lcom/aps/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
