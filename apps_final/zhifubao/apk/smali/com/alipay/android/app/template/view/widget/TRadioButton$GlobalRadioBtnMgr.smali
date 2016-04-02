.class public Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;
.super Ljava/lang/Object;
.source "TRadioButton.java"


# static fields
.field private static b:Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->a:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->b:Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;

    invoke-direct {v0}, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->b:Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;

    .line 29
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->b:Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;

    return-object v0
.end method


# virtual methods
.method public check(Lcom/alipay/android/app/template/view/widget/TRadioButton;Z)V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TRadioButton;->getNameProp()Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TRadioButton;

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    move v0, p2

    .line 57
    :goto_2
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/view/widget/TRadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_2
.end method

.method public registerBtn(Lcom/alipay/android/app/template/view/widget/TRadioButton;)V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TRadioButton;->getNameProp()Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 41
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 39
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
