.class public Ljp/innovationplus/ipp/client/IPPProfileClient;
.super Ljp/innovationplus/ipp/client/_HttpURLConnection;
.source "IPPProfileClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/innovationplus/ipp/client/IPPProfileClient$Fields;
    }
.end annotation


# static fields
.field private static final IPP_PROFILES_PATH:Ljava/lang/String; = "/profiles"

.field private static final IPP_PROFILE_PATH:Ljava/lang/String; = "/profile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;-><init>()V

    .line 37
    const-string v0, "/profile"

    invoke-super {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setContext(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public get(Ljp/innovationplus/ipp/client/IPPProfileClient$Fields;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 2
    .param p1, "fields"    # Ljp/innovationplus/ipp/client/IPPProfileClient$Fields;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/innovationplus/ipp/client/IPPProfileClient$Fields;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljp/innovationplus/ipp/jsontype/IPPProfile;",
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
    .local p2, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljp/innovationplus/ipp/jsontype/IPPProfile;>;"
    const-string v0, "/profile"

    invoke-super {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 76
    const-class v0, Ljp/innovationplus/ipp/jsontype/IPPProfile;

    invoke-virtual {p1}, Ljp/innovationplus/ipp/client/IPPProfileClient$Fields;->build()Ljava/util/List;

    move-result-object v1

    invoke-super {p0, v0, v1, p2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljava/util/List;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 77
    return-void
.end method

.method public get(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<",
            "Ljp/innovationplus/ipp/jsontype/IPPProfile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/innovationplus/ipp/core/IPPException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<Ljp/innovationplus/ipp/jsontype/IPPProfile;>;"
    const-string v0, "/profile"

    invoke-super {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 63
    const-class v0, Ljp/innovationplus/ipp/jsontype/IPPProfile;

    invoke-super {p0, v0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 64
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

.method public query(Ljp/innovationplus/ipp/client/IPPProfileClient$Fields;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 2
    .param p1, "fields"    # Ljp/innovationplus/ipp/client/IPPProfileClient$Fields;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/innovationplus/ipp/client/IPPProfileClient$Fields;",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<[",
            "Ljp/innovationplus/ipp/jsontype/IPPProfile;",
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
    .local p2, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<[Ljp/innovationplus/ipp/jsontype/IPPProfile;>;"
    const-string v0, "/profiles"

    invoke-super {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 101
    const-class v0, [Ljp/innovationplus/ipp/jsontype/IPPProfile;

    invoke-virtual {p1}, Ljp/innovationplus/ipp/client/IPPProfileClient$Fields;->build()Ljava/util/List;

    move-result-object v1

    invoke-super {p0, v0, v1, p2}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljava/util/List;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 102
    return-void
.end method

.method public query(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<[",
            "Ljp/innovationplus/ipp/jsontype/IPPProfile;",
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
    .local p1, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<[Ljp/innovationplus/ipp/jsontype/IPPProfile;>;"
    const-string v0, "/profiles"

    invoke-super {p0, v0}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->setResourcePath(Ljava/lang/String;)V

    .line 88
    const-class v0, [Ljp/innovationplus/ipp/jsontype/IPPProfile;

    invoke-super {p0, v0, p1}, Ljp/innovationplus/ipp/client/_HttpURLConnection;->ippGetRequest(Ljava/lang/Class;Ljp/innovationplus/ipp/core/IPPQueryCallback;)V

    .line 89
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
