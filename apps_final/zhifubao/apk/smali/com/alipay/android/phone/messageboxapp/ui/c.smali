.class final Lcom/alipay/android/phone/messageboxapp/ui/c;
.super Ljava/lang/Object;
.source "MsgboxAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/c;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/c;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->finish()V

    .line 199
    return-void
.end method
