.class public final enum Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;
.super Ljava/lang/Enum;
.source "ISyncStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

.field public static final enum CONNECTING:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

.field public static final enum CONNECT_FAILED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

.field public static final enum NOT_AVAILABLE:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    const-string/jumbo v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    .line 12
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTING:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    .line 13
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    .line 14
    new-instance v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    const-string/jumbo v1, "CONNECT_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTING:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->ENUM$VALUES:[Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->ENUM$VALUES:[Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
