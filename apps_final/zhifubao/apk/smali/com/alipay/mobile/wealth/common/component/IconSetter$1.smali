.class Lcom/alipay/mobile/wealth/common/component/IconSetter$1;
.super Ljava/lang/Object;
.source "IconSetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field final synthetic this$0:Lcom/alipay/mobile/wealth/common/component/IconSetter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$1;->this$0:Lcom/alipay/mobile/wealth/common/component/IconSetter;

    iput-object p2, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$1;->a:Landroid/view/View;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$1;->this$0:Lcom/alipay/mobile/wealth/common/component/IconSetter;

    iget-object v1, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter$1;->a:Landroid/view/View;

    # invokes: Lcom/alipay/mobile/wealth/common/component/IconSetter;->b(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->access$3(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;)V

    .line 128
    return-void
.end method
