.class Lcom/alipay/mobile/commonui/widget/APAnnouncementView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$4;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$4;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->d:Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$000(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$4;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->d:Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$000(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;->onJump()V

    :cond_0
    sget v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$4;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->c:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$500(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)I

    move-result v1

    and-int/2addr v0, v1

    sget v1, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$4;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setVisibility(I)V

    :cond_1
    return-void
.end method
