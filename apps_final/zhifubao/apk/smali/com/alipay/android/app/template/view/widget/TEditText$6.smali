.class Lcom/alipay/android/app/template/view/widget/TEditText$6;
.super Ljava/lang/Object;
.source "TEditText.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TEditText;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$6;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 415
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 416
    return-void
.end method
