.class public final Lcom/taobao/dp/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/taobao/dp/http/IUrlRequestService;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/taobao/dp/service/b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/taobao/dp/client/IInitResultListener;

.field private i:Lcom/taobao/dp/client/a;

.field private j:Lcom/taobao/dp/service/IInitServiceCallBack;

.field private k:Z

.field private volatile l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/service/IInitServiceCallBack;Lcom/taobao/dp/client/a;Lcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/dp/service/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/dp/service/c;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    :cond_0
    iput-object p3, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/dp/service/c;->j:Lcom/taobao/dp/service/IInitServiceCallBack;

    new-instance v0, Lcom/taobao/dp/service/b;

    invoke-direct {v0, p1}, Lcom/taobao/dp/service/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iput-object p5, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    iput-object p7, p0, Lcom/taobao/dp/service/c;->h:Lcom/taobao/dp/client/IInitResultListener;

    if-eqz p6, :cond_1

    iput-object p6, p0, Lcom/taobao/dp/service/c;->b:Lcom/taobao/dp/http/IUrlRequestService;

    :goto_0
    iput-boolean p8, p0, Lcom/taobao/dp/service/c;->k:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/taobao/dp/service/c;->l:I

    return-void

    :cond_1
    new-instance v0, Lcom/taobao/dp/http/DefaultUrlRequestService;

    invoke-direct {v0}, Lcom/taobao/dp/http/DefaultUrlRequestService;-><init>()V

    iput-object v0, p0, Lcom/taobao/dp/service/c;->b:Lcom/taobao/dp/http/IUrlRequestService;

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/dp/service/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/taobao/dp/service/a;

    iget-object v2, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/taobao/dp/service/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/taobao/dp/service/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/taobao/dp/service/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/taobao/dp/service/a;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/taobao/dp/service/a;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/taobao/dp/service/a;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/taobao/dp/a/b;->a()Lcom/taobao/dp/a/b;

    const-string/jumbo v2, "MD5"

    invoke-static {p1, v2}, Lcom/taobao/dp/a/b;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/a/b;->a()Lcom/taobao/dp/a/b;

    const-string/jumbo v3, "MD5"

    invoke-static {v1, v3}, Lcom/taobao/dp/a/b;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v2

    add-int/lit8 v3, v3, 0x7

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x4

    array-length v2, v2

    const/4 v5, 0x7

    invoke-static {v1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/taobao/dp/util/c;->a([B)B

    move-result v1

    array-length v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    aput-byte v1, v2, v3

    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    new-instance v4, Lcom/taobao/dp/service/a;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    invoke-direct {v4, v1}, Lcom/taobao/dp/service/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->w()Lcom/taobao/dp/bean/b;

    move-result-object v5

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->H()Lcom/taobao/dp/bean/a;

    move-result-object v6

    iget-object v1, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-static {v1, v2, v3, v7}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/taobao/dp/client/a;)Lcom/taobao/dp/service/b$a;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1.2;"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";;"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";1;"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->y()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->z()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";https;"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->A()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v6, Lcom/taobao/dp/bean/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v6, Lcom/taobao/dp/bean/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v6, Lcom/taobao/dp/bean/a;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v6, Lcom/taobao/dp/bean/a;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/taobao/dp/service/a;->B()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "1"

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v5, :cond_c

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v5, :cond_d

    const-string/jumbo v2, ""

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->C()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "1"

    :goto_4
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->q()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    invoke-virtual {v6}, Lcom/taobao/dp/service/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v2, "DataCollectionData"

    const-string/jumbo v7, "key_nick"

    const-string/jumbo v8, ""

    invoke-static {v2, v7, v8}, Lcom/taobao/dp/util/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    :cond_1
    invoke-static {v2}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->E()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->F()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->n()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->t()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->u()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";;;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/taobao/dp/service/a;->I()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "1"

    :goto_5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "ro.kernel.qemu"

    const-string/jumbo v7, "0"

    invoke-static {v6, v7}, Lcom/taobao/dp/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/taobao/dp/service/a;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "gsm.version.baseband"

    const-string/jumbo v6, ""

    invoke-static {v4, v6}, Lcom/taobao/dp/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v5, :cond_10

    const-string/jumbo v2, ""

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v5, :cond_11

    const-string/jumbo v2, ""

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/taobao/dp/service/b$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/taobao/dp/service/b$a;->b:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    array-length v1, v8

    if-lez v1, :cond_a

    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/dp/service/c;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    const/4 v2, 0x0

    array-length v1, v8

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    new-array v10, v1, [B

    const/4 v1, 0x0

    :goto_8
    array-length v3, v10

    if-ge v1, v3, :cond_4

    const/4 v3, 0x0

    aput-byte v3, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_4
    array-length v11, v8

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_9
    if-ge v2, v11, :cond_6

    aget-object v12, v8, v2

    div-int/lit8 v1, v3, 0x8

    aget-byte v1, v10, v1

    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x80

    rem-int/lit8 v13, v3, 0x8

    shr-int/2addr v12, v13

    or-int/2addr v1, v12

    :cond_5
    div-int/lit8 v12, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v10, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    :cond_6
    const/4 v1, 0x2

    invoke-static {v10, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/dp/service/c;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_a
    array-length v3, v10

    if-ge v1, v3, :cond_7

    const/4 v3, 0x0

    aput-byte v3, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_7
    array-length v11, v8

    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_b
    if-ge v2, v11, :cond_9

    aget-object v12, v8, v2

    div-int/lit8 v1, v3, 0x8

    aget-byte v1, v10, v1

    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x80

    rem-int/lit8 v13, v3, 0x8

    shr-int/2addr v12, v13

    or-int/2addr v1, v12

    :cond_8
    div-int/lit8 v12, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v10, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b

    :cond_9
    const/4 v1, 0x2

    invoke-static {v10, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "0"

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v5}, Lcom/taobao/dp/bean/b;->a()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v5}, Lcom/taobao/dp/bean/b;->b()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v2, "0"

    goto/16 :goto_4

    :cond_f
    const-string/jumbo v2, "0"

    goto/16 :goto_5

    :cond_10
    invoke-virtual {v5}, Lcom/taobao/dp/bean/b;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v5}, Lcom/taobao/dp/bean/b;->c()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_7
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/taobao/dp/service/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/dp/service/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/dp/service/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/dp/service/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Lcom/taobao/dp/service/a;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/dp/service/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/taobao/dp/service/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/taobao/dp/service/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/taobao/dp/service/a;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/dp/service/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/taobao/dp/service/a;->q()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/taobao/dp/service/a;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/taobao/dp/service/a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/taobao/dp/service/a;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/taobao/dp/service/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    invoke-virtual {v9}, Lcom/taobao/dp/service/b;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/taobao/dp/a/b;->a()Lcom/taobao/dp/a/b;

    const-string/jumbo v1, "MD5"

    invoke-static {v0, v1}, Lcom/taobao/dp/a/b;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/dp/util/d;->a([B)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    invoke-static {}, Lcom/taobao/dp/service/b;->b()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const-string/jumbo v0, "3"

    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/dp/service/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    new-instance v0, Lcom/taobao/dp/http/a;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    iget-object v5, p0, Lcom/taobao/dp/service/c;->b:Lcom/taobao/dp/http/IUrlRequestService;

    new-instance v6, Lcom/taobao/dp/service/e;

    invoke-direct {v6, p0, v7}, Lcom/taobao/dp/service/e;-><init>(Lcom/taobao/dp/service/c;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v6}, Lcom/taobao/dp/http/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;Lcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/service/IServerListener;)V

    sget-object v1, Lcom/taobao/dp/http/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/taobao/dp/http/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DevicePrintInitService updateDeviceInfoOnServer JSONException="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic b(Lcom/taobao/dp/service/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string/jumbo v0, "^"

    const-string/jumbo v1, "\\^"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    const/16 v2, 0x5e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-object v1

    :cond_2
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/taobao/dp/service/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/dp/service/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/dp/service/c;->j:Lcom/taobao/dp/service/IInitServiceCallBack;

    invoke-direct {p0, p2}, Lcom/taobao/dp/service/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/taobao/dp/service/IInitServiceCallBack;->notifyDidChanged(Lcom/taobao/dp/service/c;Ljava/lang/String;)V

    sget-object v0, Lcom/taobao/dp/http/c;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/dp/http/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/taobao/dp/service/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/client/a;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    :try_start_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, "0"

    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/dp/service/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/taobao/dp/http/a;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    iget-object v5, p0, Lcom/taobao/dp/service/c;->b:Lcom/taobao/dp/http/IUrlRequestService;

    new-instance v6, Lcom/taobao/dp/service/d;

    invoke-direct {v6, p0}, Lcom/taobao/dp/service/d;-><init>(Lcom/taobao/dp/service/c;)V

    invoke-direct/range {v0 .. v6}, Lcom/taobao/dp/http/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;Lcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/service/IServerListener;)V

    sget-object v1, Lcom/taobao/dp/http/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/taobao/dp/http/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DevicePrintInitService initUuidFromServer end service="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DevicePrintInitService initUuidFromServer :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic d(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/service/b;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    return-object v0
.end method

.method static synthetic e(Lcom/taobao/dp/service/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/taobao/dp/service/c;)Lcom/taobao/dp/service/IInitServiceCallBack;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->j:Lcom/taobao/dp/service/IInitServiceCallBack;

    return-object v0
.end method

.method private h()Z
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/dp/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lt v3, v6, :cond_1

    if-le v4, v7, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne v3, v6, :cond_2

    if-ne v4, v7, :cond_2

    const/16 v5, 0x11

    if-lt v2, v5, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    if-ne v3, v0, :cond_3

    const/4 v2, 0x5

    if-lt v4, v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/taobao/dp/client/IInitResultListener;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->h:Lcom/taobao/dp/client/IInitResultListener;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/taobao/dp/service/c;->l:I

    return-void
.end method

.method public final b()Lcom/taobao/dp/client/a;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    return-object v0
.end method

.method public final c()Lcom/taobao/dp/http/IUrlRequestService;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->b:Lcom/taobao/dp/http/IUrlRequestService;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/taobao/dp/service/c;->k:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/taobao/dp/service/c;->l:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/service/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/dp/service/c;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final run()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DevicePrintInitService initUUIDSync : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " initializing initUUID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/taobao/dp/service/c;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v0, "device_print_res_k1"

    iput-object v0, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v0, v1, v3, v4}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v1, v3}, Lcom/taobao/dp/service/b;->c(Lcom/taobao/dp/client/a;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    const-string/jumbo v1, ""

    move-object v7, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v1, v3}, Lcom/taobao/dp/service/b;->b(Lcom/taobao/dp/client/a;)Lcom/taobao/dp/service/b$b;

    move-result-object v1

    iget-object v3, v1, Lcom/taobao/dp/service/b$b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/taobao/dp/service/b$b;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v4, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v0, v3, v1, v4}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)V

    :cond_2
    :goto_1
    iput-object v7, p0, Lcom/taobao/dp/service/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_3
    iget-object v1, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v1, v3}, Lcom/taobao/dp/service/b;->a(Lcom/taobao/dp/client/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v2, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_c

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/taobao/dp/a/a;->a()Lcom/taobao/dp/a/a;

    invoke-static {v1}, Lcom/taobao/dp/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/taobao/dp/http/a;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    iget-object v5, p0, Lcom/taobao/dp/service/c;->b:Lcom/taobao/dp/http/IUrlRequestService;

    new-instance v6, Lcom/taobao/dp/service/f;

    invoke-direct {v6, p0, v7}, Lcom/taobao/dp/service/f;-><init>(Lcom/taobao/dp/service/c;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v6}, Lcom/taobao/dp/http/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;Lcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/service/IServerListener;)V

    sget-object v1, Lcom/taobao/dp/http/c;->b:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/taobao/dp/http/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :cond_6
    const-string/jumbo v0, "device_print_res_k1"

    iget-object v1, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/taobao/dp/service/c;->j:Lcom/taobao/dp/service/IInitServiceCallBack;

    const/16 v1, 0x2719

    invoke-interface {v0, p0, v1}, Lcom/taobao/dp/service/IInitServiceCallBack;->onInitFinished(Lcom/taobao/dp/service/c;I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    iget-object v0, p0, Lcom/taobao/dp/service/c;->j:Lcom/taobao/dp/service/IInitServiceCallBack;

    const/16 v1, 0x3ed

    invoke-interface {v0, p0, v1}, Lcom/taobao/dp/service/IInitServiceCallBack;->onInitFinished(Lcom/taobao/dp/service/c;I)V

    goto :goto_2

    :cond_9
    :try_start_2
    iget-object v1, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v1, v3}, Lcom/taobao/dp/service/b;->b(Lcom/taobao/dp/client/a;)Lcom/taobao/dp/service/b$b;

    move-result-object v1

    iget-object v3, v1, Lcom/taobao/dp/service/b$b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/taobao/dp/service/b$b;->b:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v0, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v4, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v0, v3, v1, v4}, Lcom/taobao/dp/service/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iput-object v3, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DevicePrintInitService initUUIDSync "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DevicePrintInitService decryptUUIDFromServer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lcom/taobao/dp/service/c;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-direct {p0, v7}, Lcom/taobao/dp/service/c;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iput-object v0, p0, Lcom/taobao/dp/service/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/dp/service/c;->j:Lcom/taobao/dp/service/IInitServiceCallBack;

    invoke-direct {p0, v0}, Lcom/taobao/dp/service/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/taobao/dp/service/IInitServiceCallBack;->notifyDidChanged(Lcom/taobao/dp/service/c;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/dp/service/c;->j:Lcom/taobao/dp/service/IInitServiceCallBack;

    const/16 v2, 0xc8

    invoke-interface {v1, p0, v2}, Lcom/taobao/dp/service/IInitServiceCallBack;->onInitFinished(Lcom/taobao/dp/service/c;I)V

    iget-object v1, p0, Lcom/taobao/dp/service/c;->e:Lcom/taobao/dp/service/b;

    iget-object v2, p0, Lcom/taobao/dp/service/c;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/dp/service/c;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/dp/service/c;->i:Lcom/taobao/dp/client/a;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/taobao/dp/service/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/client/a;)V

    invoke-direct {p0, v0, v7}, Lcom/taobao/dp/service/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :cond_d
    move-object v7, v1

    goto/16 :goto_0
.end method
