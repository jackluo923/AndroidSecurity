.class final Lcom/alipay/android/app/ui/quickpay/uielement/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/luaj/vm2/LuaValue;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;Lorg/luaj/vm2/LuaValue;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/d;->b:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/d;->a:Lorg/luaj/vm2/LuaValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/d;->a:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isfunction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/d;->a:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->call()Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0
.end method
