.class public Lcom/alipay/android/app/display/uielement/UIPassword;
.super Lcom/alipay/android/app/display/uielement/BaseEditElement;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Password:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final b(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_password"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
