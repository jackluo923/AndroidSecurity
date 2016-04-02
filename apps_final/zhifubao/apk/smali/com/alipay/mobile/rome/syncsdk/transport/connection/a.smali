.class public abstract Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field protected a:Ljava/io/DataInputStream;

.field protected b:Ljava/io/DataOutputStream;

.field protected final c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

.field private d:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

.field private e:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

.field private f:I


# direct methods
.method protected constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/DataInputStream;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->f:I

    .line 82
    return-void
.end method

.method public abstract a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
.end method

.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/d/a;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->d:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

    .line 178
    return-void
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->f:I

    return v0
.end method

.method public final b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->d:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->d:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/a;->b(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->d:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V

    .line 169
    :cond_0
    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->e:Lcom/alipay/mobile/rome/syncsdk/transport/d/a;

    .line 195
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method
