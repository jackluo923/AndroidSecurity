.class final Lcom/alipay/android/app/flybird/ui/window/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/e;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/e;->g:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/content/DialogInterface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/e;->g:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/e;->g:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/g;->a:Lcom/alipay/android/app/flybird/ui/window/e;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/e;->d:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
