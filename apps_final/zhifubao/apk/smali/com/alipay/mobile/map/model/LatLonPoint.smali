.class public Lcom/alipay/mobile/map/model/LatLonPoint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->latitude:D

    iput-wide v0, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->longitude:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->latitude:D

    iput-wide p3, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->longitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/map/model/LatLonPoint;->longitude:D

    return-void
.end method
