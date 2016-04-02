.class Lcom/alipay/mobile/mpass/badge/ui/BadgeView$1;
.super Ljava/lang/Object;
.source "BadgeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field final synthetic val$msgCount:I

.field final synthetic val$style:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mpass/badge/ui/BadgeView;Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$1;->this$0:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object p2, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$1;->val$style:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    iput p3, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$1;->val$msgCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$1;->this$0:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$1;->val$style:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    iget v2, p0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView$1;->val$msgCount:I

    # invokes: Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->a(Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->access$000(Lcom/alipay/mobile/mpass/badge/ui/BadgeView;Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V

    .line 150
    return-void
.end method
