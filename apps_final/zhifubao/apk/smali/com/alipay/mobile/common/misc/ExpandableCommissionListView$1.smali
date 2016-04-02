.class Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;
.super Ljava/lang/Object;
.source "ExpandableCommissionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field final synthetic this$0:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;->this$0:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;

    iput p2, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;->a:I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;->this$0:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;

    iget v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setSelectedGroup(I)V

    .line 115
    return-void
.end method
