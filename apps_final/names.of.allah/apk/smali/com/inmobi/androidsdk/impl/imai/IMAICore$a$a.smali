.class Lcom/inmobi/androidsdk/impl/imai/IMAICore$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$a$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyResult(ILjava/lang/Object;)V
    .locals 4

    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got PING callback. Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$a$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;

    iget-object v0, v0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;->c:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$a$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;

    iget-object v1, v1, Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->firePingSuccessful(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$a$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;

    iget-object v0, v0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;->c:Ljava/lang/ref/WeakReference;

    const-string v1, "IMAI Ping in http client failed"

    const-string v2, "ping"

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/imai/IMAICore$a$a;->a:Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;

    iget-object v3, v3, Lcom/inmobi/androidsdk/impl/imai/IMAICore$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
