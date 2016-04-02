.class final Lcom/alipay/mobile/appstoreapp/adapter/c;
.super Ljava/lang/Object;
.source "FastLoginAppAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/adapter/b;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;

.field private final synthetic c:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/adapter/b;Landroid/graphics/drawable/Drawable;Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/adapter/c;->a:Lcom/alipay/mobile/appstoreapp/adapter/b;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/adapter/c;->b:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/alipay/mobile/appstoreapp/adapter/c;->c:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/adapter/c;->c:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;

    iget-object v1, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void
.end method
