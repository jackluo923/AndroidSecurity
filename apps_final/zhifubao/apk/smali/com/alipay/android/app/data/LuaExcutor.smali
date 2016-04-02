.class public Lcom/alipay/android/app/data/LuaExcutor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/lib/plusin/script/IScriptExcutor;


# instance fields
.field private a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

.field private b:Lcom/alipay/android/app/script/IDataScriptable;

.field private c:Lcom/alipay/android/app/script/IDocumentScriptable;

.field private d:Lcom/alipay/android/app/script/INetworkScriptable;

.field private e:Lcom/alipay/android/app/script/IPhoneScriptable;

.field private f:Lcom/alipay/android/app/script/IUpdateScriptable;

.field private g:Lcom/alipay/android/app/script/IWindowScriptable;

.field private h:Lcom/alipay/android/app/script/ITidScriptable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/data/LuaExcuteAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/android/app/script/IDataScriptable;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/script/IDataScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    :cond_2
    instance-of v0, p1, Lcom/alipay/android/app/script/IDocumentScriptable;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/script/IDocumentScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    :cond_3
    instance-of v0, p1, Lcom/alipay/android/app/script/INetworkScriptable;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/script/INetworkScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    :cond_4
    instance-of v0, p1, Lcom/alipay/android/app/script/IPhoneScriptable;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/script/IPhoneScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    :cond_5
    instance-of v0, p1, Lcom/alipay/android/app/script/IUpdateScriptable;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/script/IUpdateScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    :cond_6
    instance-of v0, p1, Lcom/alipay/android/app/script/IWindowScriptable;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/script/IWindowScriptable;

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    :cond_7
    instance-of v0, p1, Lcom/alipay/android/app/script/ITidScriptable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/android/app/script/ITidScriptable;

    iput-object p1, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    if-nez v1, :cond_2

    move-object v2, v0

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    if-nez v1, :cond_3

    move-object v3, v0

    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    if-nez v1, :cond_4

    move-object v4, v0

    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    if-nez v1, :cond_5

    move-object v5, v0

    :goto_4
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    if-nez v1, :cond_6

    move-object v6, v0

    :goto_5
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    if-nez v1, :cond_7

    move-object v7, v0

    :goto_6
    iget-object v1, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    if-nez v1, :cond_8

    move-object v8, v0

    :goto_7
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->excuteLuaString(Ljava/lang/String;Lcom/alipay/android/app/script/IDataScriptable;Lcom/alipay/android/app/script/IDocumentScriptable;Lcom/alipay/android/app/script/INetworkScriptable;Lcom/alipay/android/app/script/IPhoneScriptable;Lcom/alipay/android/app/script/IUpdateScriptable;Lcom/alipay/android/app/script/IWindowScriptable;Lcom/alipay/android/app/script/ITidScriptable;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    goto :goto_5

    :cond_7
    iget-object v7, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    goto :goto_6

    :cond_8
    iget-object v8, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    goto :goto_7
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    if-nez v0, :cond_2

    move-object v4, v2

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    if-nez v0, :cond_3

    move-object v5, v2

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    if-nez v0, :cond_4

    move-object v6, v2

    :goto_3
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    if-nez v0, :cond_5

    move-object v7, v2

    :goto_4
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    if-nez v0, :cond_6

    move-object v8, v2

    :goto_5
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    if-nez v0, :cond_7

    move-object v9, v2

    :goto_6
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    if-nez v0, :cond_8

    move-object v10, v2

    :goto_7
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v10}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->excuteLuaFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/android/app/script/IDataScriptable;Lcom/alipay/android/app/script/IDocumentScriptable;Lcom/alipay/android/app/script/INetworkScriptable;Lcom/alipay/android/app/script/IPhoneScriptable;Lcom/alipay/android/app/script/IUpdateScriptable;Lcom/alipay/android/app/script/IWindowScriptable;Lcom/alipay/android/app/script/ITidScriptable;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/alipay/android/app/data/LuaExcutor;->b:Lcom/alipay/android/app/script/IDataScriptable;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/alipay/android/app/data/LuaExcutor;->c:Lcom/alipay/android/app/script/IDocumentScriptable;

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/alipay/android/app/data/LuaExcutor;->d:Lcom/alipay/android/app/script/INetworkScriptable;

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    goto :goto_4

    :cond_6
    iget-object v8, p0, Lcom/alipay/android/app/data/LuaExcutor;->f:Lcom/alipay/android/app/script/IUpdateScriptable;

    goto :goto_5

    :cond_7
    iget-object v9, p0, Lcom/alipay/android/app/data/LuaExcutor;->g:Lcom/alipay/android/app/script/IWindowScriptable;

    goto :goto_6

    :cond_8
    iget-object v10, p0, Lcom/alipay/android/app/data/LuaExcutor;->h:Lcom/alipay/android/app/script/ITidScriptable;

    goto :goto_7
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->a:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->close()V

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaExcutor;->e:Lcom/alipay/android/app/script/IPhoneScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/script/IPhoneScriptable;->dispose()V

    :cond_0
    return-void
.end method
