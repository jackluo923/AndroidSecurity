.class public final Ljp/innovationplus/ipp/client/IPPGeoLocationClient;
.super Ljp/innovationplus/ipp/client/_HttpURLConnection;
.source "IPPGeoLocationClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;
    }
.end annotation


# static fields
.field private static final IPP_GEOLOCATIONS_PATH:Ljava/lang/String; = "/geolocations"

.field private static final IPP_GEOLOCATION_PATH:Ljava/lang/String; = "/geolocation"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "/geolocation"

    invoke-direct {p0, p1, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public create(Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 1
    .param p1, "postData"    # Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljava/lang/String;>;"
    const-class v0, Ljava/lang/String;

    invoke-super {p0, v0, p1, p2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippPostRequest(Ljava/lang/Class;Ljava/lang/Object;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 50
    return-void
.end method

.method public createAll([Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 1
    .param p1, "postData"    # [Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljava/lang/Void;>;"
    const-string v0, "/geolocations"

    invoke-super {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 62
    const-class v0, Ljava/lang/Void;

    invoke-super {p0, v0, p1, p2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippPostRequest(Ljava/lang/Class;Ljava/lang/Object;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 63
    return-void
.end method

.method public delete(Ljava/lang/String;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/geolocation/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 128
    const-class v0, Ljava/lang/String;

    invoke-super {p0, v0, p2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippDeleteRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 129
    return-void
.end method

.method public get(Ljava/lang/String;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/geolocation/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 88
    const-class v0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;

    invoke-super {p0, v0, p2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 89
    return-void
.end method

.method public get(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;>;"
    const-class v0, Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;

    invoke-super {p0, v0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 76
    return-void
.end method

.method public bridge synthetic getVersionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->getVersionNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDebugMessage()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->isDebugMessage()Z

    move-result v0

    return v0
.end method

.method public query(Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 2
    .param p1, "condition"    # Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<[",
            "Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<[Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;>;"
    const-string v0, "/geolocations"

    invoke-super {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 101
    const-class v0, [Ljp/innovationplus/ipp/jsontype/IPPGeoLocation;

    invoke-virtual {p1}, Ljp/innovationplus/ipp/client/IPPGeoLocationClient$QueryCondition;->build()Ljava/util/List;

    move-result-object v1

    invoke-super {p0, v0, v1, p2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljava/util/List;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 102
    return-void
.end method

.method public bridge synthetic setApplicationId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setApplicationId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAuthKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setAuthKey(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDebugMessage(Z)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setDebugMessage(Z)V

    return-void
.end method
