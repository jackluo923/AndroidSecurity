.class public final enum Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAROUSEL:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

.field public static final enum GRID:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

.field public static final enum STATIC:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

.field public static final enum UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;


# instance fields
.field private final code:I

.field private final desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, "\u672a\u77e5\u7c7b\u578b"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    new-instance v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    const-string/jumbo v1, "STATIC"

    const-string/jumbo v2, "\u9759\u6001"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->STATIC:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    new-instance v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    const-string/jumbo v1, "CAROUSEL"

    const-string/jumbo v2, "\u8f6e\u64ad"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->CAROUSEL:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    new-instance v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    const-string/jumbo v1, "GRID"

    const-string/jumbo v2, "\u683c\u5b50"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->GRID:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    sget-object v1, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->STATIC:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->CAROUSEL:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->GRID:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->ENUM$VALUES:[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->code:I

    iput-object p4, p0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(I)Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;
    .locals 5

    invoke-static {}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->values()[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static getByName(Ljava/lang/String;)Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;
    .locals 5

    invoke-static {}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->values()[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;
    .locals 1

    const-class v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->ENUM$VALUES:[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->code:I

    return v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceStyleEnum;->desc:Ljava/lang/String;

    return-object v0
.end method
