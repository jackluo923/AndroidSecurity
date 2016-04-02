.class final Lcom/alipay/android/app/display/uielement/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bo;->a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bo;->a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/bm;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/bm;->h()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bo;->a:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/bm;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/display/uielement/UIRadioGroup;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
