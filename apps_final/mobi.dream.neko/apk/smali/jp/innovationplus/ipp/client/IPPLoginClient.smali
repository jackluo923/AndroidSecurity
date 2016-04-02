.class public final Ljp/innovationplus/ipp/client/IPPLoginClient;
.super Ljp/innovationplus/ipp/client/_HttpURLConnection;
.source "IPPLoginClient.java"


# static fields
.field private static final IPP_LOGIN_PATH:Ljava/lang/String; = "/user/login"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "/user/login"

    invoke-direct {p0, p1, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
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

.method public login(Ljava/lang/String;Ljava/lang/String;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljp/innovationplus/ipp/jsontype/IPPLoginResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljp/innovationplus/ipp/jsontype/IPPLoginResult;>;"
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "username"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "password"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class v2, Ljp/innovationplus/ipp/jsontype/IPPLoginResult;

    invoke-super {p0, v2, v1, p3}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippPostRequest(Ljava/lang/Class;Ljava/util/Map;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    :try_end_0
    .catch Ljp/innovationplus/ipp/core/IPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    .line 48
    .end local v1    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljp/innovationplus/ipp/core/IPPException;
    throw v0
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
