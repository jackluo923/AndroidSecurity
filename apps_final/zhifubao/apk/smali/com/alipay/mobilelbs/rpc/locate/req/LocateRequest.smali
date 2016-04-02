.class public Lcom/alipay/mobilelbs/rpc/locate/req/LocateRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public apdid:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public bssids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public mspTid:Ljava/lang/String;

.field public utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
