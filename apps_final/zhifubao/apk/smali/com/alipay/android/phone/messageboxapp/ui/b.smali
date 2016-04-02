.class final Lcom/alipay/android/phone/messageboxapp/ui/b;
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
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Z)V

    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    const-string/jumbo v2, "\u7f16\u8f91"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Z)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Z)V

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v2, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Z)V

    .line 185
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    const-string/jumbo v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Z)V

    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Z)V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 184
    goto :goto_1
.end method
