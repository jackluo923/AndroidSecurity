.class final Lcom/alipay/android/app/data/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/android/app/data/LuaExcuteAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/data/LuaExcuteAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/h;->d:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    iput p2, p0, Lcom/alipay/android/app/data/h;->a:I

    iput-object p3, p0, Lcom/alipay/android/app/data/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/data/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/data/h;->d:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    # getter for: Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->access$000(Lcom/alipay/android/app/data/LuaExcuteAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/h;->d:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    # getter for: Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->access$000(Lcom/alipay/android/app/data/LuaExcuteAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/h;->d:Lcom/alipay/android/app/data/LuaExcuteAdapter;

    # getter for: Lcom/alipay/android/app/data/LuaExcuteAdapter;->mWindow:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/android/app/data/LuaExcuteAdapter;->access$000(Lcom/alipay/android/app/data/LuaExcuteAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IWindowScriptable;

    iget v1, p0, Lcom/alipay/android/app/data/h;->a:I

    iget-object v2, p0, Lcom/alipay/android/app/data/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/data/h;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/app/script/IWindowScriptable;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
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
