.class public Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
.super Ljava/lang/Object;
.source "IPPGeoResourceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/innovationplus/ipp/client/IPPGeoResourceClient;
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
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    .line 191
    return-void
.end method


# virtual methods
.method public and()Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .locals 3

    .prologue
    .line 332
    iget-object v1, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v2, "query"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    .local v0, "query":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "you must not call \'and()\' continuously."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".AND."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v1, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    return-object p0
.end method

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
    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    return-object v1

    .line 205
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    .local v0, "key":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v2, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

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
    .line 215
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 216
    return-void
.end method

.method public eq(Ljava/lang/String;Ljava/lang/Object;)Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 305
    iget-object v3, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "you must not call \'eq()\' continuously."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    :cond_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 313
    .local v2, "stringer":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 314
    if-nez v1, :cond_1

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_EQ_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    :goto_0
    iget-object v3, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v4, "query"

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-object p0

    .line 316
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_EQ_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setBound(DDDD)Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .locals 4
    .param p1, "top"    # D
    .param p3, "bottom"    # D
    .param p5, "left"    # D
    .param p7, "right"    # D

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
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

    .line 259
    iget-object v1, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v2, "bound"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-object p0
.end method

.method public setBoundByRadiusSquare(DDI)Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .locals 4
    .param p1, "centerLatitude"    # D
    .param p3, "centerLongitude"    # D
    .param p5, "radiusSquare"    # I

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 273
    iget-object v1, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v2, "latlon"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v2, "radiusSquare"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-object p0
.end method

.method public setCount(I)Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 224
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v1, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-object p0
.end method

.method public setGeolocationLimit(I)Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .locals 3
    .param p1, "limitCount"    # I

    .prologue
    .line 285
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v1, "geolocationLimit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-object p0
.end method

.method public setSelf()Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v1, "self"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-object p0
.end method

.method public setSince(J)Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .locals 3
    .param p1, "since"    # J

    .prologue
    .line 234
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v1, "since"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-object p0
.end method

.method public setUntil(J)Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;
    .locals 3
    .param p1, "until"    # J

    .prologue
    .line 244
    iget-object v0, p0, Ljp/innovationplus/ipp/client/IPPGeoResourceClient$QueryCondition;->mCondition:Ljava/util/LinkedHashMap;

    const-string v1, "until"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-object p0
.end method
