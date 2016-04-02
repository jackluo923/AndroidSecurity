.class public Lcom/taobao/mteam/ibeacon/client/RangingTracker;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "RangingTracker"

    sput-object v0, Lcom/taobao/mteam/ibeacon/client/RangingTracker;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/client/RangingTracker;->b:Ljava/util/Map;

    return-void
.end method
