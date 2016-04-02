.class public Lcom/alipay/android/app/widget/CustomArrayAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/widget/CustomArrayAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomArrayAdapter;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(ILandroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomArrayAdapter;->b:Landroid/widget/ListView;

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomArrayAdapter;->a:Landroid/view/LayoutInflater;

    const-string/jumbo v1, "msp_ui_combobox_item"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/alipay/android/app/widget/CustomArrayAdapter$a;

    invoke-direct {v0, p2}, Lcom/alipay/android/app/widget/CustomArrayAdapter$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    iget-object v3, v1, Lcom/alipay/android/app/widget/CustomArrayAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/widget/CustomArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/alipay/android/app/widget/CustomArrayAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/widget/CustomArrayAdapter;->a(ILandroid/widget/TextView;)V

    iget-object v1, v1, Lcom/alipay/android/app/widget/CustomArrayAdapter$a;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomArrayAdapter;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomArrayAdapter;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/widget/CustomArrayAdapter$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
