.class public final Lcom/alipay/android/phone/globalsearch/c/k;
.super Ljava/lang/Object;
.source "HelpItemView.java"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/c/k;->a:Landroid/app/Activity;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 26
    if-nez p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/k;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 28
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->i:I

    .line 27
    invoke-virtual {v0, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance v1, Lcom/alipay/android/phone/globalsearch/c/l;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/globalsearch/c/l;-><init>(Lcom/alipay/android/phone/globalsearch/c/k;)V

    .line 30
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->B:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/l;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 31
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/l;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 40
    :goto_0
    :try_start_0
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    .line 44
    :goto_1
    if-eqz v3, :cond_1

    .line 45
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/l;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_2
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/l;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 71
    :goto_3
    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/c/l;

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    goto :goto_1

    .line 47
    :cond_1
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/l;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const-string/jumbo v1, "jiushi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "name = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :cond_2
    :try_start_1
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 59
    :goto_4
    if-eqz v3, :cond_3

    .line 60
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/l;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_5
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/l;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 56
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_4

    .line 62
    :cond_3
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/l;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
