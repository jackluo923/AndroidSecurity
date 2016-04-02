.class final Lcom/alipay/mobile/socialwidget/ui/m;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/m;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/m;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/m;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->dismiss()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/m;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->showAsDropDownRight(Landroid/view/View;)V

    goto :goto_0
.end method
