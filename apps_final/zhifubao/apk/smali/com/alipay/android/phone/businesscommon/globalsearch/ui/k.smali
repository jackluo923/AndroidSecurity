.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;
.super Ljava/lang/Object;
.source "MainSearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 135
    packed-switch p2, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 141
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
