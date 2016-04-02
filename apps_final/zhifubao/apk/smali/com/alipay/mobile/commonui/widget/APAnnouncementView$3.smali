.class Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->c:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$500(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->i:I
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$200(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)I

    move-result v2

    # invokes: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a(II)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$600(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;II)V

    return-void
.end method
