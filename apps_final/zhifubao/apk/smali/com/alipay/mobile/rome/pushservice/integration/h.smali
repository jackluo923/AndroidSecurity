.class public final Lcom/alipay/mobile/rome/pushservice/integration/h;
.super Ljava/lang/Object;
.source "PushNoticeExtInfo.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/alipay/mobile/rome/pushservice/integration/m;

.field private f:Lcom/alipay/mobile/rome/pushservice/integration/l;

.field private g:Lcom/alipay/mobile/rome/pushservice/integration/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->a:Z

    .line 9
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->b:Z

    .line 10
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->c:Z

    .line 13
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->d:Z

    .line 22
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/m;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/m;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->e:Lcom/alipay/mobile/rome/pushservice/integration/m;

    .line 23
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/l;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/l;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->f:Lcom/alipay/mobile/rome/pushservice/integration/l;

    .line 24
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/e;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->g:Lcom/alipay/mobile/rome/pushservice/integration/e;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/pushservice/integration/e;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->g:Lcom/alipay/mobile/rome/pushservice/integration/e;

    .line 81
    return-void
.end method

.method public final a(Lcom/alipay/mobile/rome/pushservice/integration/l;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->f:Lcom/alipay/mobile/rome/pushservice/integration/l;

    .line 73
    return-void
.end method

.method public final a(Lcom/alipay/mobile/rome/pushservice/integration/m;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->e:Lcom/alipay/mobile/rome/pushservice/integration/m;

    .line 65
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->b:Z

    .line 41
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->a:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->a:Z

    .line 33
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->b:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->c:Z

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->c:Z

    .line 49
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->d:Z

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->d:Z

    .line 57
    return-void
.end method

.method public final h()Lcom/alipay/mobile/rome/pushservice/integration/m;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->e:Lcom/alipay/mobile/rome/pushservice/integration/m;

    return-object v0
.end method

.method public final i()Lcom/alipay/mobile/rome/pushservice/integration/l;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->f:Lcom/alipay/mobile/rome/pushservice/integration/l;

    return-object v0
.end method

.method public final j()Lcom/alipay/mobile/rome/pushservice/integration/e;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->g:Lcom/alipay/mobile/rome/pushservice/integration/e;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->d:Z

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "push_type_biz"

    .line 92
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/h;->c:Z

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "push_type_merge"

    goto :goto_0

    .line 90
    :cond_1
    const-string/jumbo v0, "push_type_normal"

    goto :goto_0
.end method
