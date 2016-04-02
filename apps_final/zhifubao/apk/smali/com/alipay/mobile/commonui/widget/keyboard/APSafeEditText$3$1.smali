.class Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3$1;->this$1:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3$1;->this$1:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$3;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->showNormalKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
