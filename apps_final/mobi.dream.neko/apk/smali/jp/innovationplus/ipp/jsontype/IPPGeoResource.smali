.class public abstract Ljp/innovationplus/ipp/jsontype/IPPGeoResource;
.super Ljava/lang/Object;
.source "IPPGeoResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private geolocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;",
            ">;"
        }
    .end annotation
.end field

.field private resource:Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Ljp/innovationplus/ipp/jsontype/IPPGeoResource;, "Ljp/innovationplus/ipp/jsontype/IPPGeoResource<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->geolocations:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public getGeolocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Ljp/innovationplus/ipp/jsontype/IPPGeoResource;, "Ljp/innovationplus/ipp/jsontype/IPPGeoResource<TT;>;"
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->geolocations:Ljava/util/List;

    return-object v0
.end method

.method public getResource()Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Ljp/innovationplus/ipp/jsontype/IPPGeoResource;, "Ljp/innovationplus/ipp/jsontype/IPPGeoResource<TT;>;"
    iget-object v0, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->resource:Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;

    return-object v0
.end method

.method public abstract getResourceName()Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation
.end method

.method public setGeolocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Ljp/innovationplus/ipp/jsontype/IPPGeoResource;, "Ljp/innovationplus/ipp/jsontype/IPPGeoResource<TT;>;"
    .local p1, "geolocations":Ljava/util/List;, "Ljava/util/List<Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;>;"
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->geolocations:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setResource(Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Ljp/innovationplus/ipp/jsontype/IPPGeoResource;, "Ljp/innovationplus/ipp/jsontype/IPPGeoResource<TT;>;"
    .local p1, "resource":Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;, "TT;"
    iput-object p1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->resource:Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Ljp/innovationplus/ipp/jsontype/IPPGeoResource;, "Ljp/innovationplus/ipp/jsontype/IPPGeoResource<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IPPGeoResource [resource="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->resource:Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geolocations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/innovationplus/ipp/jsontype/IPPGeoResource;->geolocations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
