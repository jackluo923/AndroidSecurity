.class public final Lcom/alipay/android/phone/globalsearch/c/u;
.super Ljava/lang/Object;
.source "TitleItemView.java"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/c/u;->a:Landroid/app/Activity;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;)Landroid/view/View;
    .locals 3

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/u;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->p:I

    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 25
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 30
    :goto_0
    iget-object v1, p3, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    goto :goto_0
.end method
