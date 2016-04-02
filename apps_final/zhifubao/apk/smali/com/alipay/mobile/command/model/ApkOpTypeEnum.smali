.class public final enum Lcom/alipay/mobile/command/model/ApkOpTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/command/model/ApkOpTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTOIN:Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

.field public static final enum AUTOUN:Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

.field public static final enum AUTOUP:Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/model/ApkOpTypeEnum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    const-string/jumbo v2, "AUTOUP"

    const-string/jumbo v3, "AUTOUP"

    invoke-direct {v1, v2, v0, v3}, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->AUTOUP:Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    const-string/jumbo v2, "AUTOIN"

    const-string/jumbo v3, "AUTOIN"

    invoke-direct {v1, v2, v4, v3}, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->AUTOIN:Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    const-string/jumbo v2, "AUTOUN"

    const-string/jumbo v3, "AUTOUN"

    invoke-direct {v1, v2, v5, v3}, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->AUTOUN:Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    sget-object v2, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->AUTOUP:Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->AUTOIN:Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->AUTOUN:Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    aput-object v2, v1, v5

    sput-object v1, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->cache:Ljava/util/Map;

    invoke-static {}, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->values()[Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    sget-object v4, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->cache:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->type:Ljava/lang/String;

    return-void
.end method

.method public static getOpTypeEnum(Ljava/lang/String;)Lcom/alipay/mobile/command/model/ApkOpTypeEnum;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/command/model/ApkOpTypeEnum;
    .locals 1

    const-class v0, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/command/model/ApkOpTypeEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/command/model/ApkOpTypeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/ApkOpTypeEnum;->type:Ljava/lang/String;

    return-object v0
.end method
