.class public final enum Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;
.super Ljava/lang/Enum;
.source "AppStatusUtils.java"


# static fields
.field public static final enum BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

.field public static final enum FOREGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    const-string/jumbo v1, "BACKGROUND"

    const-string/jumbo v2, "b"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    .line 17
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    const-string/jumbo v1, "FOREGROUND"

    const-string/jumbo v2, "f"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->FOREGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->FOREGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->value:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static getValue(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->values()[Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 31
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 26
    :cond_0
    aget-object v3, v1, v0

    .line 27
    if-ne v3, p0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->value:Ljava/lang/String;

    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
