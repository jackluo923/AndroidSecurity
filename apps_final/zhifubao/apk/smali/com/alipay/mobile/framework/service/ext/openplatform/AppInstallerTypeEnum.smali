.class public final enum Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
.super Ljava/lang/Enum;
.source "AppInstallerTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum androidApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum expApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum webApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "nativeApp"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 18
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "webApp"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->webApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 19
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "expApp"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->expApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 20
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "androidApp"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->androidApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 21
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "independantApp"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 22
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "innerApp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 23
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "H5App"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 16
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->webApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->expApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->androidApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    const-string/jumbo v1, "webApp"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->webApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string/jumbo v1, "nativeApp"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v1, "expApp"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->expApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string/jumbo v1, "independantApp"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v1, "androidApp"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->androidApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo v1, "innerApp"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v1, "H5App"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
