.class public Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;
.super Ljava/util/LinkedHashMap;
.source "IPPApplicationResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getResource_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "resource_id"

    invoke-virtual {p0, v0}, Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 42
    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setResource_id(Ljava/lang/String;)V
    .locals 1
    .param p1, "resource_id"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "resource_id"

    invoke-virtual {p0, v0, p1}, Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public setTimestamp(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    .line 51
    const-string v0, "timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljp/innovationplus/ipp/jsontype/IPPApplicationResource;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
