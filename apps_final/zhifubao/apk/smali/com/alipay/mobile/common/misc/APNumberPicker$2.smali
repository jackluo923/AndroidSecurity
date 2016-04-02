.class Lcom/alipay/mobile/common/misc/APNumberPicker$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

.field final synthetic val$isUp:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/APNumberPicker;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$2;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$2;->val$isUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$2;->val$isUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$2;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->increment()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker$2;->this$0:Lcom/alipay/mobile/common/misc/APNumberPicker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->decrement()V

    goto :goto_0
.end method
