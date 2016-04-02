.class final Lcom/alipay/mobile/personalbase/ui/c;
.super Ljava/lang/Object;
.source "SocialDialogHelper.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APNoticePopDialog$OnClickNegativeListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/personalbase/ui/a;

.field private final synthetic b:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/personalbase/ui/a;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/ui/c;->a:Lcom/alipay/mobile/personalbase/ui/a;

    iput-object p2, p0, Lcom/alipay/mobile/personalbase/ui/c;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/c;->b:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/c;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/ui/c;->a:Lcom/alipay/mobile/personalbase/ui/a;

    invoke-static {v1}, Lcom/alipay/mobile/personalbase/ui/a;->a(Lcom/alipay/mobile/personalbase/ui/a;)Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 38
    :cond_0
    return-void
.end method
