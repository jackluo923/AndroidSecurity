.class final Lcom/alipay/android/app/data/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/alipay/android/app/data/LuaExcuteAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/l;->h:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/data/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/data/l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/data/l;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/data/l;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/app/data/l;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/android/app/data/l;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/android/app/data/l;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/alipay/android/app/data/l;->h:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    # getter for: Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->access$000(Lcom/alipay/android/app/data/LuaExcuteAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/l;->h:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    # getter for: Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->access$000(Lcom/alipay/android/app/data/LuaExcuteAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/l;->h:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    # getter for: Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->access$000(Lcom/alipay/android/app/data/LuaExcuteAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IWindowScriptable;

    iget-object v1, p0, Lcom/alipay/android/app/data/l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/data/l;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/data/l;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/data/l;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/data/l;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/android/app/data/l;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/android/app/data/l;->g:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/alipay/android/app/script/IWindowScriptable;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
