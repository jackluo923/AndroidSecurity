.class Lcom/squareup/okhttp/internal/Platform$Android23;
.super Lcom/squareup/okhttp/internal/Platform$Java5;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Android23"
.end annotation


# instance fields
.field protected final openSslSocketClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final setHostname:Ljava/lang/reflect/Method;

.field private final setUseSessionTickets:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "getMtu"    # Ljava/lang/reflect/Method;
    .param p3, "setUseSessionTickets"    # Ljava/lang/reflect/Method;
    .param p4, "setHostname"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, "openSslSocketClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/Platform$Java5;-><init>(Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V

    .line 226
    iput-object p2, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->openSslSocketClass:Ljava/lang/Class;

    .line 227
    iput-object p3, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->setUseSessionTickets:Ljava/lang/reflect/Method;

    .line 228
    iput-object p4, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->setHostname:Ljava/lang/reflect/Method;

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Method;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Ljava/lang/reflect/Method;
    .param p4, "x3"    # Ljava/lang/reflect/Method;
    .param p5, "x4"    # Lcom/squareup/okhttp/internal/Platform$1;

    .prologue
    .line 218
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/Platform$Android23;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "uriHost"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/Platform$Java5;->enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->openSslSocketClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->setUseSessionTickets:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/squareup/okhttp/internal/Platform$Android23;->setHostname:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 240
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
