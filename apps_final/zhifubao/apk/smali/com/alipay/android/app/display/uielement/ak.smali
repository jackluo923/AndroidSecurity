.class final Lcom/alipay/android/app/display/uielement/ak;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UICombobox$Option;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/alipay/android/app/display/uielement/UICombobox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICombobox;Lcom/alipay/android/app/display/uielement/UICombobox$Option;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/ak;->c:Lcom/alipay/android/app/display/uielement/UICombobox;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/ak;->a:Lcom/alipay/android/app/display/uielement/UICombobox$Option;

    iput-object p3, p0, Lcom/alipay/android/app/display/uielement/ak;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alipay/android/app/widget/BaseTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/ak;->a:Lcom/alipay/android/app/display/uielement/UICombobox$Option;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/ak;->b:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Landroid/widget/TextView;I)V

    return-void
.end method
