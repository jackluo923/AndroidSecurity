.class Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$100(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->c:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->access$100(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;->onSelect(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$2;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->dismiss()V

    return-void
.end method
