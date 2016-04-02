.class final Lcom/alipay/android/phone/messageboxapp/ui/k;
.super Ljava/lang/Object;
.source "MsgboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/j;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/k;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/k;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->e(Lcom/alipay/android/phone/messageboxapp/ui/h;)V

    .line 151
    return-void
.end method
