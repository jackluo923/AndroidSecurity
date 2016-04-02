.class final Lcom/alipay/android/app/ui/quickpay/lua/extension/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/lua/extension/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/extension/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/b;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/b;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/a;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->b:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->call()Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/b;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/a;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->c:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/b;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/a;

    iget v2, v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->a:I

    # invokes: Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->clearSchedule(I)Z
    invoke-static {v1, v2}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->access$100(Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;I)Z

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0
.end method
