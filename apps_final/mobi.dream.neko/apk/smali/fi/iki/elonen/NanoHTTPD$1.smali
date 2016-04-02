.class Lfi/iki/elonen/NanoHTTPD$1;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfi/iki/elonen/NanoHTTPD;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method constructor <init>(Lfi/iki/elonen/NanoHTTPD;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 130
    :cond_0
    :try_start_0
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    # getter for: Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;
    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 131
    .local v0, "finalAccept":Ljava/net/Socket;
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 132
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 133
    .local v2, "outputStream":Ljava/io/OutputStream;
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    # getter for: Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$200(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    move-result-object v5

    invoke-interface {v5}, Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;->create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-result-object v4

    .line 134
    .local v4, "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {v3, v5, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 135
    .local v3, "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    # getter for: Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;
    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$300(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    move-result-object v5

    new-instance v6, Lfi/iki/elonen/NanoHTTPD$1$1;

    invoke-direct {v6, p0, v3, v0}, Lfi/iki/elonen/NanoHTTPD$1$1;-><init>(Lfi/iki/elonen/NanoHTTPD$1;Lfi/iki/elonen/NanoHTTPD$HTTPSession;Ljava/net/Socket;)V

    invoke-interface {v5, v6}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->exec(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "finalAccept":Ljava/net/Socket;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    .end local v4    # "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    :goto_0
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$1;->this$0:Lfi/iki/elonen/NanoHTTPD;

    # getter for: Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;
    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v5

    goto :goto_0
.end method
