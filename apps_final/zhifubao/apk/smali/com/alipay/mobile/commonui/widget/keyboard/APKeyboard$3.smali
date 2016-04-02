.class Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$3;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$3;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Z:J
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->access$502(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;J)J

    return-void
.end method
