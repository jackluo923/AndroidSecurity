.class public Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;
.super Ljava/lang/Object;
.source "IconLoadHelper.java"


# static fields
.field private static a:Landroid/graphics/drawable/Drawable;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->b:Landroid/content/Context;

    .line 14
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a()V

    .line 78
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v6, [Landroid/graphics/drawable/Drawable;

    .line 79
    aput-object p0, v1, v5

    .line 78
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 81
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v6, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v2, v5

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 82
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 83
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 84
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 85
    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 86
    new-array v1, v5, [I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 87
    return-object v2
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a()V

    .line 64
    if-eqz p1, :cond_0

    .line 66
    :goto_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 67
    new-array v1, v2, [I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 65
    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 23
    const-string/jumbo v1, "android-phone-openplatform-openplatform"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    sget v1, Lcom/alipay/mobile/openplatform/R$drawable;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 22
    sput-object v0, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a:Landroid/graphics/drawable/Drawable;

    .line 27
    :cond_0
    return-void
.end method
