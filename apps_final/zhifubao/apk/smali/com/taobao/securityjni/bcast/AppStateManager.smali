.class public Lcom/taobao/securityjni/bcast/AppStateManager;
.super Ljava/lang/Object;


# static fields
.field public static final DNS_ACTION:Ljava/lang/String; = "setaobao.bbox.DNS"

.field public static final EXTRA_DNS_IP:Ljava/lang/String; = "IPAddress"

.field public static final EXTRA_DNS_LOCAL:Ljava/lang/String; = "DNSinfolocal"

.field public static final EXTRA_DNS_NET:Ljava/lang/String; = "DNSinfonet"

.field public static final EXTRA_RT:Ljava/lang/String; = "RTinfo"

.field public static final EXTRA_SPITEP:Ljava/lang/String; = "SPITEPinfo"

.field private static final IPV4_SIZE:I = 0x4

.field public static Init:I = 0x0

.field public static final RT_ACTION:Ljava/lang/String; = "setaobao.bbox.RT"

.field public static final RT_VALUE_100_PERMISSION:I = 0xa

.field public static final RT_VALUE_INVALID:I = -0x1

.field public static final RT_VALUE_LIKELY_1:I = 0x1

.field public static final RT_VALUE_LIKELY_2:I = 0x2

.field public static final RT_VALUE_LIKELY_3:I = 0x3

.field public static final RT_VALUE_LIKELY_4:I = 0x4

.field public static final RT_VALUE_LIKELY_5:I = 0x5

.field public static final RT_VALUE_LIKELY_6:I = 0x6

.field public static final RT_VALUE_LIKELY_7:I = 0x7

.field public static final RT_VALUE_LIKELY_8:I = 0x8

.field public static final RT_VALUE_LIKELY_9:I = 0x9

.field public static final RT_VALUE_UNDETECTABLE:I = 0x0

.field public static final SPITEP_ACTION:Ljava/lang/String; = "setaobao.bbox.SPITEP"

.field public static final SPITEP_VALUE_NS_0:I = 0x0

.field public static final SPITEP_VALUE_NS_1:I = 0x1

.field public static final SPITEP_VALUE_NS_2:I = 0x2

.field public static final SPITEP_VALUE_NS_3:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/taobao/securityjni/bcast/AppStateManager;->Init:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parserDomainIP(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 12

    const/4 v0, 0x0

    const/4 v11, 0x4

    const/4 v2, 0x0

    const-string/jumbo v1, "IPAddress"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_2

    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v4, v5

    and-int/lit16 v7, v1, 0xff

    add-int v1, v7, v5

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-gt v1, v8, :cond_2

    div-int/lit8 v8, v7, 0x4

    if-lez v8, :cond_1

    filled-new-array {v8, v11}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v2

    :goto_2
    if-ge v1, v8, :cond_1

    add-int/lit8 v9, v5, 0x1

    mul-int/lit8 v10, v1, 0x4

    add-int/2addr v9, v10

    aget-object v10, v0, v1

    invoke-static {v4, v9, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int v1, v5, v7

    add-int/lit8 v1, v1, 0x1

    new-instance v5, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;

    invoke-direct {v5}, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;-><init>()V

    iput-object v6, v5, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;->name:Ljava/lang/String;

    iput-object v0, v5, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;->ip:[[B

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method
