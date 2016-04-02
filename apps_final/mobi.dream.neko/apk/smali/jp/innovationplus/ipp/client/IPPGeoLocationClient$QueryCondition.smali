.class public Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;
.super Ljava/lang/Object;
.source "IPPGeoLocationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/innovationplus/ipp/client/IPPGeoLocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryCondition"
.end annotation


# instance fields
.field private mCondition:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    .line 137
    return-void
.end method


# virtual methods
.method public build()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    return-object v1

    .line 151
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    .local v0, "key":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 162
    return-void
.end method

.method public setBound(DDDD)Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;
    .locals 4
    .param p1, "top"    # D
    .param p3, "bottom"    # D
    .param p5, "left"    # D
    .param p7, "right"    # D

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v2, "bound"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-object p0
.end method

.method public setBoundByRadiusSquare(DDI)Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;
    .locals 4
    .param p1, "centerLatitude"    # D
    .param p3, "centerLongitude"    # D
    .param p5, "radiusSquare"    # I

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v2, "latlon"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v1, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v2, "radiusSquare"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-object p0
.end method

.method public setCount(I)Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 221
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v1, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object p0
.end method

.method public setSelf()Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v1, "self"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-object p0
.end method

.method public setSince(J)Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;
    .locals 3
    .param p1, "since"    # J

    .prologue
    .line 170
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v1, "since"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-object p0
.end method

.method public setUntil(J)Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;
    .locals 3
    .param p1, "until"    # J

    .prologue
    .line 180
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v1, "until"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-object p0
.end method
