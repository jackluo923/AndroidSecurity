.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/b;
.super Ljava/lang/Object;
.source "CommonSearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/b;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 93
    const-string/jumbo v1, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "actionId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/b;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Z)V

    .line 97
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/b;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-virtual {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c()V

    .line 100
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
