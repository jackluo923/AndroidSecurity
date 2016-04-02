.class public final enum Lcom/ali/user/mobile/AppIdDef$AppIdIndex;
.super Ljava/lang/Enum;
.source "AppIdDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ali/user/mobile/AppIdDef$AppIdIndex;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIPAY_MOBILEAPP_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

.field public static final enum ALIPAY_MOBILECASHIER_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

.field private static final synthetic ENUM$VALUES:[Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

.field public static final enum LAIWANG_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

.field public static final enum TAOBAO_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    const-string/jumbo v1, "ALIPAY_MOBILEAPP_INDEX"

    invoke-direct {v0, v1, v2}, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->ALIPAY_MOBILEAPP_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    .line 58
    new-instance v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    const-string/jumbo v1, "ALIPAY_MOBILECASHIER_INDEX"

    invoke-direct {v0, v1, v3}, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->ALIPAY_MOBILECASHIER_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    .line 59
    new-instance v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    const-string/jumbo v1, "TAOBAO_INDEX"

    invoke-direct {v0, v1, v4}, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->TAOBAO_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    .line 60
    new-instance v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    const-string/jumbo v1, "LAIWANG_INDEX"

    invoke-direct {v0, v1, v5}, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->LAIWANG_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    sget-object v1, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->ALIPAY_MOBILEAPP_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->ALIPAY_MOBILECASHIER_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->TAOBAO_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->LAIWANG_INDEX:Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->ENUM$VALUES:[Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ali/user/mobile/AppIdDef$AppIdIndex;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    return-object v0
.end method

.method public static values()[Lcom/ali/user/mobile/AppIdDef$AppIdIndex;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ali/user/mobile/AppIdDef$AppIdIndex;->ENUM$VALUES:[Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    array-length v1, v0

    new-array v2, v1, [Lcom/ali/user/mobile/AppIdDef$AppIdIndex;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
