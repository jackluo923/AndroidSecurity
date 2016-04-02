.class Lcom/alipay/android/app/template/view/widget/TRadioButton$1;
.super Ljava/lang/Object;
.source "TRadioButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TRadioButton;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TRadioButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton$1;->a:Lcom/alipay/android/app/template/view/widget/TRadioButton;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->getInstance()Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton$1;->a:Lcom/alipay/android/app/template/view/widget/TRadioButton;

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->check(Lcom/alipay/android/app/template/view/widget/TRadioButton;Z)V

    .line 88
    return-void
.end method
