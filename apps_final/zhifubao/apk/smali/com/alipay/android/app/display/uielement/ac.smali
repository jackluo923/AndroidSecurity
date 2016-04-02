.class final Lcom/alipay/android/app/display/uielement/ac;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UICheckBox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ac;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-direct {p0}, Lcom/alipay/android/app/widget/BaseTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ac;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
