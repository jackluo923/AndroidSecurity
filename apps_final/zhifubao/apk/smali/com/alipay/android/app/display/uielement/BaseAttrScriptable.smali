.class public abstract Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/script/IDocumentScriptable;
.implements Lcom/alipay/android/app/sys/IDispose;


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Landroid/os/Handler;I)V
.end method

.method protected a(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Landroid/os/Handler;Z)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/alipay/android/app/display/event/EventType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/alipay/android/app/display/uielement/IUIElement;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "text-decoration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/display/uielement/ElementStyle;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "text-color"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "font-size"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/display/uielement/ElementStyle;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "font-weight"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/display/uielement/ElementStyle;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "font-style"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/display/uielement/ElementStyle;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected final declared-synchronized a_()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "visible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "checked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "focus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final attr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    instance-of v1, p0, Lcom/alipay/android/app/display/uielement/IUIElement;

    if-eqz v1, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->m()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lua excute attr:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "visible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "checked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b(Landroid/os/Handler;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "focus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b(Landroid/os/Handler;Z)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->c(Landroid/os/Handler;Z)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected b()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "visible"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "visible"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected b(Landroid/os/Handler;Z)V
    .locals 0

    return-void
.end method

.method protected c(Landroid/os/Handler;Z)V
    .locals 0

    return-void
.end method

.method protected c()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "checked"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "checked"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final checkInput()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    invoke-interface {p0}, Lcom/alipay/android/app/display/uielement/ISubmitable;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "true"

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/alipay/android/app/display/event/EventType;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/event/EventType;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event name--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Lcom/alipay/android/app/display/event/EventType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "enable"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b:Ljava/util/Map;

    const-string/jumbo v1, "enable"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getById(Ljava/lang/String;)Lcom/alipay/android/app/script/IDocumentScriptable;
    .locals 0

    return-object p0
.end method

.method public putSubmitData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public style(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/alipay/android/app/display/uielement/IUIElement;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->m()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lua excute attr:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
