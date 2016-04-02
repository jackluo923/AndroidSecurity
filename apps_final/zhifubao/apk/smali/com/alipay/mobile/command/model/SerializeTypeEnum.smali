.class public final enum Lcom/alipay/mobile/command/model/SerializeTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/command/model/SerializeTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/command/model/SerializeTypeEnum;

.field public static final enum JSON:Lcom/alipay/mobile/command/model/SerializeTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    const-string/jumbo v1, "JSON"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/model/SerializeTypeEnum;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->JSON:Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->JSON:Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/command/model/SerializeTypeEnum;
    .locals 1

    const-class v0, Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/command/model/SerializeTypeEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
