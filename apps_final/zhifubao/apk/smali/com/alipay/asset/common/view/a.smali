.class final Lcom/alipay/asset/common/view/a;
.super Ljava/lang/Object;
.source "BaseWealthWidgetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/view/BaseWealthWidgetView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/BaseWealthWidgetView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/BaseWealthWidgetView;->handleClick()V

    .line 90
    return-void
.end method
