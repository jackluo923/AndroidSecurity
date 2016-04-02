.class Lcom/alipay/mobile/common/misc/YearMonthPicker$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

.field final synthetic val$isUp:Z

.field final synthetic val$isYear:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/YearMonthPicker;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;->val$isUp:Z

    iput-boolean p3, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;->val$isYear:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;->val$isUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;->val$isYear:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->increment(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;->this$0:Lcom/alipay/mobile/common/misc/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;->val$isYear:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->decrement(Z)V

    goto :goto_0
.end method
