.class final Lcom/alipay/android/phone/messageboxapp/ui/a;
.super Ljava/lang/Object;
.source "MsgboxAppActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APSwitchTab$TabSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/a;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabClick(ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/a;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->selectTabAndAdjustLine(I)V

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/a;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a:Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->setCurrentItem(I)V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/a;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(I)V

    .line 128
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/a;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/a;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/a;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/a;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(I)V

    .line 136
    :cond_0
    return-void
.end method
