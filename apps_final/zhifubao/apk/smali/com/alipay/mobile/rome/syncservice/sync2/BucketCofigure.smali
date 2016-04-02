.class public Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;
.super Ljava/lang/Object;
.source "BucketCofigure.java"


# static fields
.field public static final BUCKET_DB:Ljava/lang/String; = "DB"

.field public static final BUCKET_GDB:Ljava/lang/String; = "GDB"

.field public static final BUCKET_GUB:Ljava/lang/String; = "GUB"

.field public static final BUCKET_TYPE_DEVICE_BASED:Ljava/lang/String; = "deviceBased"

.field public static final BUCKET_TYPE_NULL:Ljava/lang/String; = "null"

.field public static final BUCKET_TYPE_USER_BASED:Ljava/lang/String; = "userBased"

.field public static final BUCKET_UMB:Ljava/lang/String; = "UMB"

.field public static final BUCKET_USB:Ljava/lang/String; = "USB"

.field private static final LOGTAG:Ljava/lang/String; = "sync_service_BucketCofigure"

.field private static final deviceBasedBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final userBasedBucket:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->deviceBasedBucket:Ljava/util/Map;

    const-string/jumbo v1, "DB"

    const-string/jumbo v2, "DB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->deviceBasedBucket:Ljava/util/Map;

    const-string/jumbo v1, "GDB"

    const-string/jumbo v2, "GDB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->userBasedBucket:Ljava/util/Map;

    const-string/jumbo v1, "UMB"

    const-string/jumbo v2, "UMB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->userBasedBucket:Ljava/util/Map;

    const-string/jumbo v1, "USB"

    const-string/jumbo v2, "USB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->userBasedBucket:Ljava/util/Map;

    const-string/jumbo v1, "GUB"

    const-string/jumbo v2, "GUB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBucketType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->deviceBasedBucket:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v0, "deviceBased"

    .line 95
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->userBasedBucket:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const-string/jumbo v0, "userBased"

    goto :goto_0

    .line 92
    :cond_1
    const-string/jumbo v0, "sync_service_BucketCofigure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getBucketType: [unknown bucket type][ bucket="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public static getDeviceUserbasedBucket()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getDevicebasedBucket()Ljava/util/Set;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->getUserbasedBucket()Ljava/util/Set;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 75
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 78
    return-object v2
.end method

.method public static getDevicebasedBucket()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->deviceBasedBucket:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getUserbasedBucket()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/BucketCofigure;->userBasedBucket:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
