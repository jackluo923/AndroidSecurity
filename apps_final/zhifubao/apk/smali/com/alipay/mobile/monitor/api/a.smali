.class final Lcom/alipay/mobile/monitor/api/a;
.super Ljava/lang/Object;
.source "TrafficRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/mobile/monitor/api/TrafficRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/alipay/mobile/monitor/api/TrafficRecord;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/monitor/api/TrafficRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    new-array v0, p1, [Lcom/alipay/mobile/monitor/api/TrafficRecord;

    return-object v0
.end method
