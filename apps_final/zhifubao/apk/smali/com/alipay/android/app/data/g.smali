.class final Lcom/alipay/android/app/data/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alipay/android/app/data/f;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/data/f;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/g;->g:Lcom/alipay/android/app/data/f;

    iput-object p2, p0, Lcom/alipay/android/app/data/g;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/app/data/g;->b:I

    iput-object p4, p0, Lcom/alipay/android/app/data/g;->c:[Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/data/g;->d:Ljava/lang/String;

    iput p6, p0, Lcom/alipay/android/app/data/g;->e:I

    iput-object p7, p0, Lcom/alipay/android/app/data/g;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/data/g;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v0, p0, Lcom/alipay/android/app/data/g;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    iget-object v0, p0, Lcom/alipay/android/app/data/g;->g:Lcom/alipay/android/app/data/f;

    iget-object v1, p0, Lcom/alipay/android/app/data/g;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/data/g;->d:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/android/app/data/g;->e:I

    iget-object v4, p0, Lcom/alipay/android/app/data/g;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/alipay/android/app/data/f;->a(Lcom/alipay/android/app/data/f;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/data/g;->g:Lcom/alipay/android/app/data/f;

    invoke-static {v0}, Lcom/alipay/android/app/data/f;->a(Lcom/alipay/android/app/data/f;)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/data/g;->g:Lcom/alipay/android/app/data/f;

    invoke-static {v0}, Lcom/alipay/android/app/data/f;->a(Lcom/alipay/android/app/data/f;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/data/g;->g:Lcom/alipay/android/app/data/f;

    invoke-static {v1}, Lcom/alipay/android/app/data/f;->a(Lcom/alipay/android/app/data/f;)Z

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
