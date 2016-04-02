.class public Lcom/taobao/mteam/ibeacon/IBeacon;
.super Ljava/lang/Object;


# static fields
.field protected static j:Lcom/taobao/mteam/ibeacon/client/IBeaconDataFactory;

.field private static final n:[C


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:I

.field protected d:Ljava/lang/Integer;

.field protected e:Ljava/lang/Double;

.field protected f:I

.field protected g:I

.field protected h:Ljava/lang/Double;

.field protected i:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/mteam/ibeacon/IBeacon;->n:[C

    new-instance v0, Lcom/taobao/mteam/ibeacon/client/NullIBeaconDataFactory;

    invoke-direct {v0}, Lcom/taobao/mteam/ibeacon/client/NullIBeaconDataFactory;-><init>()V

    sput-object v0, Lcom/taobao/mteam/ibeacon/IBeacon;->j:Lcom/taobao/mteam/ibeacon/client/IBeaconDataFactory;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->h:Ljava/lang/Double;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->m:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/taobao/mteam/ibeacon/IBeacon;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->h:Ljava/lang/Double;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->m:Ljava/util/Map;

    iget v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    iput v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    iget v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    iput v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->e:Ljava/lang/Double;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->e:Ljava/lang/Double;

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->d:Ljava/lang/Integer;

    iget v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->f:I

    iput v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->f:I

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    iget v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->g:I

    iput v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->g:I

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->k:Ljava/lang/String;

    return-void
.end method

.method public static a([BILandroid/bluetooth/BluetoothDevice;)Lcom/taobao/mteam/ibeacon/IBeacon;
    .locals 8

    const/16 v7, 0x8

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/16 v6, 0x10

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    const/16 v4, 0x18

    if-ge v3, v4, :cond_7

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_2

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v1, :cond_2

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x15

    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    sget-boolean v1, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "IBeacon"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "This is not an iBeacon advertisment (no 4c000215 seen in bytes 2-5).  The bytes I see are: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x24

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xbf

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x16

    if-ne v4, v5, :cond_3

    new-instance v0, Lcom/taobao/mteam/ibeacon/IBeacon;

    invoke-direct {v0}, Lcom/taobao/mteam/ibeacon/IBeacon;-><init>()V

    iput v2, v0, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    iput v2, v0, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    const-string/jumbo v1, "00000000-0000-0000-0000-000000000000"

    iput-object v1, v0, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    const/16 v1, -0x37

    iput v1, v0, Lcom/taobao/mteam/ibeacon/IBeacon;->g:I

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :goto_2
    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_4
    array-length v1, p0

    add-int/lit8 v4, v3, 0x18

    if-le v1, v4, :cond_0

    new-instance v1, Lcom/taobao/mteam/ibeacon/IBeacon;

    invoke-direct {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;-><init>()V

    add-int/lit8 v0, v3, 0x14

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    add-int/lit8 v4, v3, 0x15

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    iput v0, v1, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    add-int/lit8 v0, v3, 0x16

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    add-int/lit8 v4, v3, 0x17

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    iput v0, v1, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    add-int/lit8 v0, v3, 0x18

    aget-byte v0, p0, v0

    iput v0, v1, Lcom/taobao/mteam/ibeacon/IBeacon;->g:I

    iput p1, v1, Lcom/taobao/mteam/ibeacon/IBeacon;->f:I

    if-nez p2, :cond_6

    const-string/jumbo v0, ""

    :goto_3
    iput-object v0, v1, Lcom/taobao/mteam/ibeacon/IBeacon;->k:Ljava/lang/String;

    new-array v0, v6, [B

    add-int/lit8 v3, v3, 0x4

    invoke-static {p0, v3, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/IBeacon;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    const/16 v4, 0x20

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    const-string/jumbo v0, "iBeacon"

    iput-object v0, v1, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/mteam/ibeacon/IBeacon;->i:Ljava/lang/String;

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move v3, v1

    goto/16 :goto_2
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/taobao/mteam/ibeacon/IBeacon;->n:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/taobao/mteam/ibeacon/IBeacon;->n:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b([BILandroid/bluetooth/BluetoothDevice;)Lcom/taobao/mteam/ibeacon/IBeacon;
    .locals 8

    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x10

    const/4 v3, 0x0

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    array-length v4, p0

    const/16 v5, 0x18

    if-ge v4, v5, :cond_5

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v2, :cond_3

    :goto_1
    if-nez v2, :cond_6

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "IBeacon"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "This is not an iBeacon advertisment (no 4c000215 seen in bytes 2-5).  The bytes I see are: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x24

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xbf

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x16

    if-ne v4, v5, :cond_4

    new-instance v0, Lcom/taobao/mteam/ibeacon/IBeacon;

    invoke-direct {v0}, Lcom/taobao/mteam/ibeacon/IBeacon;-><init>()V

    iput v3, v0, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    iput v3, v0, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    const-string/jumbo v1, "00000000-0000-0000-0000-000000000000"

    iput-object v1, v0, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    const/16 v1, -0x37

    iput v1, v0, Lcom/taobao/mteam/ibeacon/IBeacon;->g:I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :cond_5
    const/4 v4, 0x5

    if-le v0, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_6
    array-length v2, p0

    add-int/lit8 v4, v0, 0x18

    if-gt v2, v4, :cond_7

    move-object v0, v1

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xab

    if-eq v1, v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    new-instance v2, Lcom/taobao/mteam/ibeacon/IBeacon;

    invoke-direct {v2}, Lcom/taobao/mteam/ibeacon/IBeacon;-><init>()V

    add-int/lit8 v1, v0, 0x14

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    add-int/lit8 v4, v0, 0x15

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    iput v1, v2, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    add-int/lit8 v1, v0, 0x16

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    add-int/lit8 v4, v0, 0x17

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    iput v1, v2, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    add-int/lit8 v1, v0, 0x18

    aget-byte v1, p0, v1

    iput v1, v2, Lcom/taobao/mteam/ibeacon/IBeacon;->g:I

    iput p1, v2, Lcom/taobao/mteam/ibeacon/IBeacon;->f:I

    if-nez p2, :cond_a

    const-string/jumbo v1, ""

    :goto_2
    iput-object v1, v2, Lcom/taobao/mteam/ibeacon/IBeacon;->k:Ljava/lang/String;

    new-array v1, v6, [B

    add-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x14

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x14

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    const-string/jumbo v0, "jBeacon"

    iput-object v0, v2, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/mteam/ibeacon/IBeacon;->i:Ljava/lang/String;

    :cond_9
    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->f:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final c()D
    .locals 11

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->e:Ljava/lang/Double;

    if-nez v0, :cond_2

    iget v4, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->g:I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->h:Ljava/lang/Double;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->h:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_0

    if-nez v4, :cond_4

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :cond_1
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->e:Ljava/lang/Double;

    :cond_2
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_3
    iget v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->f:I

    int-to-double v0, v0

    move-wide v2, v0

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "IBeacon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "calculating accuracy based on rssi of "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    mul-double v0, v2, v7

    int-to-double v5, v4

    div-double/2addr v0, v5

    cmpg-double v5, v0, v7

    if-gez v5, :cond_6

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_6
    int-to-double v0, v4

    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    div-double/2addr v0, v4

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-boolean v4, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "IBeacon"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " avg rssi: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " accuracy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/taobao/mteam/ibeacon/IBeacon;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/taobao/mteam/ibeacon/IBeacon;

    iget v2, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    iget v3, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    iget v3, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 4

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeacon;->c()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->d:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->f:I

    return v0
.end method

.method public final h()Z
    .locals 2

    const-string/jumbo v0, "iBeacon"

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 2

    const-string/jumbo v0, "jBeacon"

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/IBeacon;->i:Ljava/lang/String;

    return-object v0
.end method
