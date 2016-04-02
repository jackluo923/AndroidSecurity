.class Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->d:Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$000(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->d:Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$000(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;->onAutoHide()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setVisibility(I)V

    return-void
.end method
