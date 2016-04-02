.class final Lcom/alipay/android/app/ui/quickpay/uielement/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lorg/luaj/vm2/LuaValue;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;Lorg/luaj/vm2/LuaValue;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/y;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/y;->a:Lorg/luaj/vm2/LuaValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/y;->a:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/y;->a:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isfunction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/y;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/y;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;)Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/y;->a:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
