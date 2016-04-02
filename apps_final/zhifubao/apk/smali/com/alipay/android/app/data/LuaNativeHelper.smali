.class public Lcom/alipay/android/app/data/LuaNativeHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/alipay/android/app/data/LuaNativeObjectCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "msplua"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_create_context()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_destroy_context(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->b:Lcom/alipay/android/app/data/LuaNativeObjectCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->b:Lcom/alipay/android/app/data/LuaNativeObjectCache;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/LuaNativeObjectCache;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->b:Lcom/alipay/android/app/data/LuaNativeObjectCache;

    :cond_1
    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IDataScriptable;)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_data(ILcom/alipay/android/app/script/IDataScriptable;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IDocumentScriptable;)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_doc(ILcom/alipay/android/app/script/IDocumentScriptable;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/INetworkScriptable;)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_network(ILcom/alipay/android/app/script/INetworkScriptable;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IPhoneScriptable;)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_phone(ILcom/alipay/android/app/script/IPhoneScriptable;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/ITidScriptable;)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_tid(ILcom/alipay/android/app/script/ITidScriptable;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IUpdateScriptable;)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_update(ILcom/alipay/android/app/script/IUpdateScriptable;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/script/IWindowScriptable;)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_set_win(ILcom/alipay/android/app/script/IWindowScriptable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_execute_script(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/LuaNativeHelper;->a:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/android/app/data/LuaNativeHelper;->native_execute_function(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method native native_create_context()I
.end method

.method native native_destroy_context(I)V
.end method

.method native native_execute_function(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method native native_execute_script(ILjava/lang/String;)V
.end method

.method native native_set_data(ILcom/alipay/android/app/script/IDataScriptable;)V
.end method

.method native native_set_doc(ILcom/alipay/android/app/script/IDocumentScriptable;)V
.end method

.method native native_set_network(ILcom/alipay/android/app/script/INetworkScriptable;)V
.end method

.method native native_set_phone(ILcom/alipay/android/app/script/IPhoneScriptable;)V
.end method

.method native native_set_tid(ILcom/alipay/android/app/script/ITidScriptable;)V
.end method

.method native native_set_update(ILcom/alipay/android/app/script/IUpdateScriptable;)V
.end method

.method native native_set_win(ILcom/alipay/android/app/script/IWindowScriptable;)V
.end method
