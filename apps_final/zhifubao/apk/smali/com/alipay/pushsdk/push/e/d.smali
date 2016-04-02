.class public abstract Lcom/alipay/pushsdk/push/e/d;
.super Ljava/lang/Object;
.source "Trigger.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Lcom/alipay/pushsdk/push/l;

.field public b:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alipay/pushsdk/push/e/d;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/e/d;->c:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/pushsdk/push/e/d;->a:Lcom/alipay/pushsdk/push/l;

    .line 29
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/d;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/e/d;->b:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/d;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->g()J

    move-result-wide v0

    .line 32
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/connection/m;->a(J)V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/pushsdk/push/e/d;->d:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/d;->a()V

    .line 57
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/d;->e()Z

    move-result v2

    if-nez v2, :cond_3

    .line 66
    iget-object v2, p0, Lcom/alipay/pushsdk/push/e/d;->d:Ljava/lang/String;

    .line 67
    const-string/jumbo v3, "40"

    .line 69
    const-string/jumbo v4, "6"

    .line 65
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/alipay/pushsdk/push/s;->a()I

    move-result v2

    if-gez v2, :cond_2

    .line 75
    iget-object v1, p0, Lcom/alipay/pushsdk/push/e/d;->d:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "70"

    .line 78
    const-string/jumbo v3, "8"

    .line 74
    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    sget-object v1, Lcom/alipay/pushsdk/push/e/d;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkState is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 80
    goto :goto_0

    .line 83
    :cond_3
    new-instance v2, Lcom/alipay/pushsdk/push/r;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/e/d;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/r;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/r;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    if-nez v2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/d;->d:Ljava/lang/String;

    .line 88
    const-string/jumbo v2, "20"

    .line 90
    const-string/jumbo v3, "6"

    .line 86
    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 83
    goto :goto_1
.end method

.method public final e()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x2

    .line 104
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/alipay/pushsdk/push/e/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/d;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/d;->b(Landroid/content/Context;)Z

    move-result v0

    .line 113
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    sget-object v2, Lcom/alipay/pushsdk/push/e/d;->c:Ljava/lang/String;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Network_Type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 118
    const-string/jumbo v4, ", Network_State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 119
    const-string/jumbo v4, ", net="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isconnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v5, v2, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    sget-object v1, Lcom/alipay/pushsdk/push/e/d;->c:Ljava/lang/String;

    const-string/jumbo v2, "Network unavailable"

    invoke-static {v3, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/alipay/pushsdk/push/e/d;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->t()Z

    goto :goto_0
.end method
