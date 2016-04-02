.class public final Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# static fields
.field private static a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:I

.field private static k:I


# instance fields
.field private b:Landroid/os/Handler;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/mobile/common/lbs/LBSLocation;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:Landroid/net/wifi/WifiManager;

.field private l:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

.field private final m:Ljava/util/concurrent/atomic/AtomicLong;

.field private n:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nfdservice.LBSLocationManager"

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const/16 v0, 0x3e8

    sput v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->i:I

    const/16 v0, 0x3e9

    sput v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->j:I

    const/16 v0, 0x3ea

    sput v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->k:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->l:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->g:Landroid/net/wifi/WifiManager;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->n:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/b;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    invoke-static {v1, p1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_1
    :goto_5
    throw v0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;J)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    const-string/jumbo v1, "wifi_lbs_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lbs_last_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->i:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->j:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->k:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized e()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {v1}, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->gsmInfos:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v3, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;

    invoke-direct {v3}, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;-><init>()V

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    iput v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->bsid:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    iput v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->nid:I

    const/4 v4, -0x1

    iput v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->rssi:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->sid:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->cdmaInfos:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->wifiInfos:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const-string/jumbo v3, "buildGSMInfo error"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const-string/jumbo v3, "buildCDMAInfo error"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const-string/jumbo v3, "buildWifiInfo error"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method static synthetic e(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    :cond_0
    return-void
.end method

.method private f()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_4

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v4, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v4}, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput v1, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v2, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    iput v5, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    const/4 v0, -0x1

    iput v0, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-object v3

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_1

    new-instance v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v5}, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    iput v1, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    iput v2, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v6

    iput v6, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    iput v6, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    iput v0, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v1, v0

    move v2, v0

    goto :goto_0
.end method

.method private g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v3}, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 9

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->l:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    const-string/jumbo v4, "wifi_lbs_key"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "lbs_last_time"

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncRequestLBSInfoUpdates Start last time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->n:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v5, "wifi_lbs_interval"

    const-wide/32 v6, 0x36ee80

    invoke-virtual {v1, v5, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    :cond_0
    if-eqz p2, :cond_3

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const-string/jumbo v3, "syncRequestLBSInfoUpdates force by futureTask"

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->n:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v5, "wifi_lbs_force_interval"

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v1, v5, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    :cond_1
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;Landroid/content/Context;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "syncRequestLBSInfoUpdates#Thread"

    invoke-direct {v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz v1, :cond_7

    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->l:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->l:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    return-object v1

    :cond_3
    if-nez v2, :cond_6

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->n:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v5, "wifi_lbs_interval"

    const-wide/32 v6, 0x36ee80

    invoke-virtual {v1, v5, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_6

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const-string/jumbo v3, "syncRequestLBSInfoUpdates from SP"

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "wifi_lbs_last_location"

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_5

    :try_start_2
    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const-string/jumbo v3, "getLastLocation from SP is not null"

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2
    sget-object v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move-object v1, v2

    goto :goto_0

    :cond_5
    :try_start_3
    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const-string/jumbo v3, "getLastLocation from SP is null"

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "syncRequestLBSInfoUpdates#Thread"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-object v1, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_6
    :try_start_4
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const-string/jumbo v3, "syncRequestLBSInfoUpdates by futureTask"

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;Landroid/content/Context;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "syncRequestLBSInfoUpdates#Thread"

    invoke-direct {v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v3

    iput-wide v3, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v3

    iput-wide v3, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v3

    iput-wide v3, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method

.method protected final declared-synchronized a(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e:Lcom/alipay/mobile/common/lbs/LBSLocation;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->b:Landroid/os/Handler;

    sget v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->i:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->h:Ljava/lang/String;

    const-string/jumbo v1, "setLastLocation to SP is fail"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public final onLocationFailed(I)V
    .locals 0

    return-void
.end method

.method public final onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    return-void
.end method
