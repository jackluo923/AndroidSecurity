.class final Lcom/alipay/pushsdk/push/m;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/l;

.field final synthetic b:Lcom/alipay/pushsdk/push/l;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/m;->b:Lcom/alipay/pushsdk/push/l;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 218
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "terminatePersistentConnection()... called. connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/l;->k(Lcom/alipay/pushsdk/push/l;)Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string/jumbo v1, "terminatePersistentConnection()... run()"

    .line 225
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->m()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->b(Lcom/alipay/pushsdk/push/d/d;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->n()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->b(Lcom/alipay/pushsdk/push/d/d;)V

    .line 234
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->o()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->b(Lcom/alipay/pushsdk/push/d/d;)V

    .line 236
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->p()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->b(Lcom/alipay/pushsdk/push/d/d;)V

    .line 238
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->q()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->b(Lcom/alipay/pushsdk/push/d/d;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/k;->g()V

    .line 242
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string/jumbo v1, "terminatePersistentConnection()...Done!"

    .line 243
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    return-void
.end method
