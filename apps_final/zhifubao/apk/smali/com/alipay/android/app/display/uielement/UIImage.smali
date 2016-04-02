.class public Lcom/alipay/android/app/display/uielement/UIImage;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIImage;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Image:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/UIImage;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIImage;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/android/app/display/uielement/az;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/az;-><init>(Lcom/alipay/android/app/display/uielement/UIImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIImage;->b:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/app/display/uielement/ay;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/display/uielement/ay;-><init>(Lcom/alipay/android/app/display/uielement/UIImage;Landroid/widget/ImageView;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/UIUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIImage;->b:Ljava/lang/String;

    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    return-void
.end method

.method protected final o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_image"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
