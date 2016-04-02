.class public final enum Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

.field public static final enum F:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

.field public static final enum I:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

.field public static final enum R:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

.field public static final enum S:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    const-string/jumbo v1, "I"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->I:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    new-instance v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    const-string/jumbo v1, "S"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->S:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    new-instance v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    const-string/jumbo v1, "R"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->R:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    new-instance v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    const-string/jumbo v1, "F"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->F:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    sget-object v1, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->I:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->S:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->R:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->F:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;
    .locals 1

    const-class v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
