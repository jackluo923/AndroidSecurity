.class Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$period:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->val$period:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    .line 142
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/framework/R$layout;->transient_notification:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 144
    const v0, 0x102000b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 147
    iget v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->val$period:I

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 148
    const/16 v0, 0x11

    invoke-virtual {v1, v0, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 151
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$200(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DialogHelper.toast(): exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
