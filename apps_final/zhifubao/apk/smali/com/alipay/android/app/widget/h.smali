.class final Lcom/alipay/android/app/widget/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/widget/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/widget/CustomAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/widget/h;->a:Lcom/alipay/android/app/widget/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/widget/h;->a:Lcom/alipay/android/app/widget/CustomAlertDialog;

    invoke-static {v0}, Lcom/alipay/android/app/widget/CustomAlertDialog;->c(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/widget/h;->a:Lcom/alipay/android/app/widget/CustomAlertDialog;

    invoke-static {v1}, Lcom/alipay/android/app/widget/CustomAlertDialog;->a(Lcom/alipay/android/app/widget/CustomAlertDialog;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
