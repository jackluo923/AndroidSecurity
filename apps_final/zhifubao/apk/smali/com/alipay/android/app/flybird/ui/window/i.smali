.class final Lcom/alipay/android/app/flybird/ui/window/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/i;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/i;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/i;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/i;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    return-void
.end method
