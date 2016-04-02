.class Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$1;
.super Ljava/lang/Object;
.source "ActivityTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->promoSchema:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->promoSchema:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->goUrl(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method
