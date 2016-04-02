.class public Lcom/alipay/android/launcher/guide/StartGuideFragment;
.super Landroid/support/v4/app/Fragment;
.source "StartGuideFragment.java"

# interfaces
.implements Lcom/alipay/android/launcher/guide/StartAlipayCommon;


# instance fields
.field private image:Landroid/widget/ImageView;

.field private layoutId:I

.field private startListener:Landroid/view/View$OnClickListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->view:Landroid/view/View;

    .line 15
    return-void
.end method

.method public static newInstance(ILandroid/view/View$OnClickListener;)Lcom/alipay/android/launcher/guide/StartGuideFragment;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/alipay/android/launcher/guide/StartGuideFragment;

    invoke-direct {v0}, Lcom/alipay/android/launcher/guide/StartGuideFragment;-><init>()V

    .line 25
    iput-object p1, v0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->startListener:Landroid/view/View$OnClickListener;

    .line 26
    iput p0, v0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    .line 27
    return-object v0
.end method


# virtual methods
.method public destoryView()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->image:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 33
    if-eqz p3, :cond_0

    const-string/jumbo v1, "id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string/jumbo v1, "id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    .line 36
    :cond_0
    iget v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    if-nez v1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/StartGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 38
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/StartGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    :goto_0
    return-object v0

    .line 42
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->view:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    sget v1, Lcom/alipay/android/tablauncher/R$layout;->guide_qianbao:I

    if-ne v0, v1, :cond_3

    .line 49
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->view:Landroid/view/View;

    sget v1, Lcom/alipay/android/tablauncher/R$id;->startAlipayImme:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->startListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->view:Landroid/view/View;

    sget v1, Lcom/alipay/android/tablauncher/R$id;->fragment_view4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->image:Landroid/widget/ImageView;

    .line 59
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/StartGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 52
    :cond_3
    iget v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    sget v1, Lcom/alipay/android/tablauncher/R$layout;->guide_1:I

    if-ne v0, v1, :cond_4

    .line 53
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->view:Landroid/view/View;

    sget v1, Lcom/alipay/android/tablauncher/R$id;->fragment_view1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->image:Landroid/widget/ImageView;

    goto :goto_1

    .line 54
    :cond_4
    iget v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    sget v1, Lcom/alipay/android/tablauncher/R$layout;->guide_2:I

    if-ne v0, v1, :cond_5

    .line 55
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->view:Landroid/view/View;

    sget v1, Lcom/alipay/android/tablauncher/R$id;->fragment_view2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->image:Landroid/widget/ImageView;

    goto :goto_1

    .line 56
    :cond_5
    iget v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    sget v1, Lcom/alipay/android/tablauncher/R$layout;->guide_3:I

    if-ne v0, v1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->view:Landroid/view/View;

    sget v1, Lcom/alipay/android/tablauncher/R$id;->fragment_view3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->image:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    const-string/jumbo v0, "id"

    iget v1, p0, Lcom/alipay/android/launcher/guide/StartGuideFragment;->layoutId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    return-void
.end method
