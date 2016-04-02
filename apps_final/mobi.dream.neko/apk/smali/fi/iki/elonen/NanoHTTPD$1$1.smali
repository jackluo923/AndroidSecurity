.class Lfi/iki/elonen/NanoHTTPD$1$1;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfi/iki/elonen/NanoHTTPD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfi/iki/elonen/NanoHTTPD$1;

.field final synthetic val$finalAccept:Ljava/net/Socket;

.field final synthetic val$session:Lfi/iki/elonen/NanoHTTPD$HTTPSession;


# direct methods
.method constructor <init>(Lfi/iki/elonen/NanoHTTPD$1;Lfi/iki/elonen/NanoHTTPD$HTTPSession;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->this$1:Lfi/iki/elonen/NanoHTTPD$1;

    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$session:Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$session:Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->run()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$1$1;->val$finalAccept:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method
