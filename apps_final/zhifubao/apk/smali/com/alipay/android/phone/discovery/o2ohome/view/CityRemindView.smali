.class public Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;
.super Landroid/widget/LinearLayout;
.source "CityRemindView.java"


# instance fields
.field private btnNearCity:Lcom/alipay/mobile/commonui/widget/APButton;

.field private textCity:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->view_locating_cityremind:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->image_close_remind:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 26
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->btn_city_nearby:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->btnNearCity:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 27
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_city_opening:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->textCity:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 29
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->textCity:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    .line 58
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->textCity:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_0
    return-void
.end method

.method public setBtnAction(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->btnNearCity:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public showView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->textCity:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->location_nocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->textCity:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->setVisibility(I)V

    .line 70
    :cond_0
    return-void
.end method
