.class public final enum Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPICON:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

.field public static final enum BANNER:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

.field public static final enum DROPDOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

.field public static final enum TEXTBAR:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

.field public static final enum UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;


# instance fields
.field private final code:I

.field private final desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, "\u672a\u77e5\u7c7b\u578b"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    new-instance v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    const-string/jumbo v1, "BANNER"

    const-string/jumbo v2, "\u901a\u680f\u5e7f\u544a"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->BANNER:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    new-instance v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    const-string/jumbo v1, "APPICON"

    const-string/jumbo v2, "\u5e94\u7528\u56fe\u6807"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->APPICON:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    new-instance v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    const-string/jumbo v1, "TEXTBAR"

    const-string/jumbo v2, "\u6587\u5b57\u6761"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->TEXTBAR:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    new-instance v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    const-string/jumbo v1, "DROPDOWN"

    const-string/jumbo v2, "\u4e0b\u62c9\u5c55\u793a"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->DROPDOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    sget-object v1, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->BANNER:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->APPICON:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->TEXTBAR:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->DROPDOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->code:I

    iput-object p4, p0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(I)Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;
    .locals 5

    invoke-static {}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->values()[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static getByName(Ljava/lang/String;)Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;
    .locals 5

    invoke-static {}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->values()[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    sget-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->UNKNOWN:Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;
    .locals 1

    const-class v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->code:I

    return v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilepromo/core/model/ad/domain/enums/AdSpaceTypeEnum;->desc:Ljava/lang/String;

    return-object v0
.end method
