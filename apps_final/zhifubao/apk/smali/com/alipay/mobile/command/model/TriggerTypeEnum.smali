.class public final enum Lcom/alipay/mobile/command/model/TriggerTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/command/model/TriggerTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION_POWER_CONNECTED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field public static final enum API:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field public static final enum CONNECTIVITY_CHANGE:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field public static final enum LOGIN:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field public static final enum NOTIFY:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field public static final enum PACKAGE_ADDED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field public static final enum PACKAGE_REMOVED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field public static final enum PUSH:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field public static final enum TIME:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field public static final enum USER_PRESENT:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/model/TriggerTypeEnum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "TIME"

    const-string/jumbo v3, "1"

    invoke-direct {v1, v2, v0, v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->TIME:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "LOGIN"

    const-string/jumbo v3, "2"

    invoke-direct {v1, v2, v5, v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->LOGIN:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "USER_PRESENT"

    const-string/jumbo v3, "3"

    invoke-direct {v1, v2, v6, v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->USER_PRESENT:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "PACKAGE_ADDED"

    const-string/jumbo v3, "4"

    invoke-direct {v1, v2, v7, v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PACKAGE_ADDED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "ACTION_POWER_CONNECTED"

    const-string/jumbo v3, "5"

    invoke-direct {v1, v2, v8, v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ACTION_POWER_CONNECTED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "CONNECTIVITY_CHANGE"

    const/4 v3, 0x5

    const-string/jumbo v4, "6"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->CONNECTIVITY_CHANGE:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "PACKAGE_REMOVED"

    const/4 v3, 0x6

    const-string/jumbo v4, "7"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PACKAGE_REMOVED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "NOTIFY"

    const/4 v3, 0x7

    const-string/jumbo v4, "8"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->NOTIFY:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "API"

    const/16 v3, 0x8

    const-string/jumbo v4, "9"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->API:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const-string/jumbo v2, "PUSH"

    const/16 v3, 0x9

    const-string/jumbo v4, "10"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PUSH:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->TIME:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->LOGIN:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->USER_PRESENT:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PACKAGE_ADDED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v1, v7

    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ACTION_POWER_CONNECTED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->CONNECTIVITY_CHANGE:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PACKAGE_REMOVED:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->NOTIFY:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->API:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PUSH:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v3, v1, v2

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->cache:Ljava/util/Map;

    invoke-static {}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->values()[Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    sget-object v4, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->cache:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->type:Ljava/lang/String;

    return-void
.end method

.method public static getOpTypeEnum(Ljava/lang/String;)Lcom/alipay/mobile/command/model/TriggerTypeEnum;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/command/model/TriggerTypeEnum;
    .locals 1

    const-class v0, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/command/model/TriggerTypeEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->type:Ljava/lang/String;

    return-object v0
.end method
