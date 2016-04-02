.class public Lcom/alipay/android/app/template/view/widget/TLink;
.super Lcom/alipay/android/app/template/view/widget/TLabel;
.source "TLink.java"


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TLabel;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getText()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLink;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLink;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->href:Ljava/lang/String;

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TLink;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TLink;->getText()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method
