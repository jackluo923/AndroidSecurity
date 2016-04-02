.class Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->h:J
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$100(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    div-int/lit16 v0, v0, 0x3e8

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->i:I
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$200(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)I

    move-result v2

    sub-int v0, v2, v0

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$400(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->access$300(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APAnnouncementView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setVisibility(I)V

    goto :goto_0
.end method
