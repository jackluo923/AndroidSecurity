.class final Lcom/alipay/android/app/display/uielement/ay;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UIImage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIImage;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ay;->b:Lcom/alipay/android/app/display/uielement/UIImage;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/ay;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/alipay/android/app/widget/BaseTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ay;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
