.class public final Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;
.super Ljava/lang/Object;
.source "DeviceInfoHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static g:Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;

.field private static final h:[Ljava/lang/String;


# instance fields
.field private volatile b:Ljava/lang/String;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;

.field private volatile f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->a:Ljava/lang/String;

    .line 34
    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 35
    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 36
    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 37
    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 38
    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->h:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->b:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "000000000000000"

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->c:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "0000000000"

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->d:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 110
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 111
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->h:[Ljava/lang/String;

    array-length v2, v0

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xa

    if-lt v0, v4, :cond_0

    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    sget-object v4, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->h:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;
    .locals 6

    .prologue
    .line 46
    const-class v2, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->g:Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;

    if-nez v0, :cond_0

    .line 47
    new-instance v3, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;

    invoke-direct {v3}, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;-><init>()V

    .line 48
    sput-object v3, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->g:Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->e:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v3, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "000000000000000"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v3, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v3, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->d:Ljava/lang/String;

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->g:Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "init: [ Exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 48
    :cond_1
    :try_start_5
    const-string/jumbo v1, "000000000000000"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "000000000000000"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "init: [ Exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public final getClinetKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductVersionCode()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->f:I

    return v0
.end method

.method public final getProductVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/util/DeviceInfoHelper;->e:Ljava/lang/String;

    return-object v0
.end method
