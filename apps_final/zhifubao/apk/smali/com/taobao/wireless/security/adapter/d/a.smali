.class public final Lcom/taobao/wireless/security/adapter/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/taobao/wireless/security/adapter/JNICLibrary;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/d/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    iput-object p1, p0, Lcom/taobao/wireless/security/adapter/d/a;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 4

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/alibaba/wireless/security/open/SecException;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/alibaba/wireless/security/open/SecException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    new-instance v1, Lcom/alibaba/wireless/security/open/SecException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    add-int/lit16 v0, v0, 0x1f4

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :cond_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const/16 v3, 0x257

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8

    const/4 v1, 0x0

    const/16 v2, 0x1f5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Parameter key is empty"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Parameter value is empty"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    aput-object p3, v0, v3

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Parameter valueType is empty"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/taobao/wireless/security/adapter/d/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz p4, :cond_3

    move v0, v4

    :goto_0
    invoke-virtual {v2, p1, p3, v0}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getDynamicKeyNative(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/b/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/wireless/security/adapter/d/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz p4, :cond_4

    move v0, v4

    :goto_1
    invoke-virtual {v6, p2, v5, v0}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getDynamicValueNative(Ljava/lang/String;[Ljava/lang/String;I)[B

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v0, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v2

    :goto_3
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    :goto_4
    return v0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_5
    invoke-static {v2}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/Exception;)V

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_stable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string/jumbo v2, "key = %s value = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    const-string/jumbo v2, "DynamicData"

    invoke-static {v2, v1, v0}, Lcom/taobao/wireless/security/adapter/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_5

    :cond_a
    move-object v0, v1

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    const/16 v2, 0x1f5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v5

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Parameter key is empty"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Parameter valueType is empty"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/taobao/wireless/security/adapter/d/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz p3, :cond_6

    move v0, v4

    :goto_0
    invoke-virtual {v2, p1, p2, v0}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getDynamicKeyNative(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz p3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_stable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v1

    :goto_2
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/taobao/wireless/security/adapter/d/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/wireless/security/adapter/b/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    :try_start_1
    iget-object v6, p0, Lcom/taobao/wireless/security/adapter/d/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz p3, :cond_8

    move v2, v4

    :goto_3
    invoke-virtual {v6, v0, v3, v2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getOrgValueNative(Ljava/lang/String;[Ljava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_f

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v2, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move-object v3, v1

    :goto_5
    if-eqz v2, :cond_3

    const-string/jumbo v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_3
    iget-object v1, p0, Lcom/taobao/wireless/security/adapter/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/wireless/security/adapter/b/c;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    :try_start_2
    iget-object v7, p0, Lcom/taobao/wireless/security/adapter/d/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz p3, :cond_9

    move v1, v4

    :goto_6
    invoke-virtual {v7, v0, v6, v1}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getOrgValueNative(Ljava/lang/String;[Ljava/lang/String;I)[B

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v1, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    if-eqz v1, :cond_4

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_4
    iget-object v2, p0, Lcom/taobao/wireless/security/adapter/d/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/adapter/b/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/taobao/wireless/security/adapter/d/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/adapter/b/c;->b()Ljava/lang/String;

    move-result-object v6

    :try_start_3
    iget-object v7, p0, Lcom/taobao/wireless/security/adapter/d/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v6, v8, v2

    if-eqz p3, :cond_b

    move v2, v4

    :goto_8
    invoke-virtual {v7, v0, v8, v2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getOrgValueNative(Ljava/lang/String;[Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_9
    move-object v1, v0

    move-object v0, v3

    :goto_a
    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/Exception;)V

    :cond_5
    return-object v1

    :cond_6
    move v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v2, "DynamicData"

    invoke-static {v2, v0, v1}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    move v2, v5

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    goto :goto_5

    :cond_9
    move v1, v5

    goto :goto_6

    :catch_2
    move-exception v1

    :cond_a
    move-object v1, v2

    goto :goto_7

    :cond_b
    move v2, v5

    goto :goto_8

    :catch_3
    move-exception v0

    :cond_c
    move-object v0, v3

    goto :goto_a

    :cond_d
    move-object v0, v1

    goto :goto_9

    :cond_e
    move-object v1, v2

    move-object v0, v3

    goto :goto_a

    :cond_f
    move-object v2, v1

    goto/16 :goto_4

    :cond_10
    move-object v0, v1

    goto :goto_a
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/16 v4, 0x1f5

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Parameter key is empty"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const-string/jumbo v1, "Parameter valueType is empty"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wireless/security/open/SecException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/taobao/wireless/security/adapter/d/a;->b:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    if-eqz p3, :cond_4

    move v0, v2

    :goto_0
    invoke-virtual {v4, p1, p2, v0}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getDynamicKeyNative(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz p3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_stable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v1, "key = %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/taobao/wireless/security/adapter/b/a;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "DynamicData"

    invoke-static {v1, v0}, Lcom/taobao/wireless/security/adapter/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/d/a;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1
.end method
