.class public final Lcom/alipay/android/phone/globalsearch/c/g;
.super Ljava/lang/Object;
.source "DefaultItemView.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/g;->b:[I

    .line 26
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/c/g;->a:Landroid/app/Activity;

    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/g;->b:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/g;->b:[I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 37
    if-nez p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/g;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->f:I

    invoke-virtual {v0, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance v1, Lcom/alipay/android/phone/globalsearch/c/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/globalsearch/c/h;-><init>(Lcom/alipay/android/phone/globalsearch/c/g;)V

    .line 40
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 41
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->B:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/h;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 42
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 50
    :goto_0
    :try_start_0
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    .line 54
    :goto_1
    if-eqz v3, :cond_2

    .line 55
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/h;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_2
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 77
    :goto_3
    const-string/jumbo v1, "contact"

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->a:I

    .line 82
    :goto_4
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 83
    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->s:I

    iget-object v4, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 85
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->r:I

    iget-object v4, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 86
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a()Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/h;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/c/g;->b:[I

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;[II)V

    .line 90
    :cond_0
    return-object p1

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/c/h;

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    goto :goto_1

    .line 57
    :cond_2
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/h;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v4, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
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

    .line 65
    :cond_3
    :try_start_1
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 69
    :goto_5
    if-eqz v3, :cond_4

    .line 70
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_6
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 66
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_5

    .line 72
    :cond_4
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/h;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 80
    :cond_5
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:I

    goto :goto_4
.end method
