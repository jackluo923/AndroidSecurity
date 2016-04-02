.class public final enum Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CMD:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

.field public static final enum DOWNLOAD_SOURCE_META:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

.field public static final enum DYNAMIC_UP:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

.field public static final enum EXT:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    const-string/jumbo v1, "EXT"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->EXT:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    new-instance v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    const-string/jumbo v1, "DYNAMIC_UP"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->DYNAMIC_UP:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    new-instance v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    const-string/jumbo v1, "DOWNLOAD_SOURCE_META"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->DOWNLOAD_SOURCE_META:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    new-instance v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    const-string/jumbo v1, "CMD"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->CMD:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    sget-object v1, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->EXT:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->DYNAMIC_UP:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->DOWNLOAD_SOURCE_META:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->CMD:Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;
    .locals 1

    const-class v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/command/util/CommandUtil$ExtFileBasePathEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
