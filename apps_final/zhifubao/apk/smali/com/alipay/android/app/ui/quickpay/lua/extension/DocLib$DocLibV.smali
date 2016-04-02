.class final Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DocLibV"
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->opcode:I

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->opcode:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->doc_get_by_id(Lorg/luaj/vm2/Varargs;)Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->doc_get_by_attr(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->doc_validate(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->node_attr(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->node_event(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
