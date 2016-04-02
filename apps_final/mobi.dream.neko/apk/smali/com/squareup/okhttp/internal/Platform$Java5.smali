.class Lcom/squareup/okhttp/internal/Platform$Java5;
.super Lcom/squareup/okhttp/internal/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Java5"
.end annotation


# instance fields
.field private final getMtu:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "getMtu"    # Ljava/lang/reflect/Method;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/Platform;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/squareup/okhttp/internal/Platform$Java5;->getMtu:Ljava/lang/reflect/Method;

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/Platform$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Method;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/Platform$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/Platform$Java5;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public getMtu(Ljava/net/Socket;)I
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 204
    .local v1, "networkInterface":Ljava/net/NetworkInterface;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/Platform$Java5;->getMtu:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 205
    .end local v1    # "networkInterface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 207
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 209
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
