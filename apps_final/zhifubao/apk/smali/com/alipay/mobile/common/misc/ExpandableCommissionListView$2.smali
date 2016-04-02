.class Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$2;
.super Ljava/lang/Object;
.source "ExpandableCommissionListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$2;->this$0:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$2;->this$0:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->headerViewClick()V

    .line 284
    return-void
.end method
