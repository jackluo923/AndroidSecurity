.class Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;
.super Ljava/lang/Object;
.source "CityBladeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;->this$0:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;->this$0:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    # getter for: Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->access$0(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$1;->this$0:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    # getter for: Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->access$0(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 220
    :cond_0
    return-void
.end method
