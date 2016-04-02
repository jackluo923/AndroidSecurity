.class public Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;
.super Ljava/lang/Object;
.source "IPPGeoLocation.java"


# instance fields
.field private accuracy:D

.field private altitude:D

.field private latitude:D

.field private longitude:D

.field private provider:Ljava/lang/String;

.field private resource_id:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->timestamp:J

    .line 17
    return-void
.end method


# virtual methods
.method public getAccuracy()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->accuracy:D

    return-wide v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->altitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->longitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getResource_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->resource_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->timestamp:J

    return-wide v0
.end method

.method public setAccuracy(D)V
    .locals 0
    .param p1, "accuracy"    # D

    .prologue
    .line 123
    iput-wide p1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->accuracy:D

    .line 124
    return-void
.end method

.method public setAltitude(D)V
    .locals 0
    .param p1, "altitude"    # D

    .prologue
    .line 109
    iput-wide p1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->altitude:D

    .line 110
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .prologue
    .line 81
    iput-wide p1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->latitude:D

    .line 82
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .prologue
    .line 95
    iput-wide p1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->longitude:D

    .line 96
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->provider:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setResource_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource_id"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->resource_id:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->timestamp:J

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPPGeoLocation [resource_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->resource_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->accuracy:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
