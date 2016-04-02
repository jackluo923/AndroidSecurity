.class public Lcom/alipay/android/app/flybird/ui/util/DialogActivity;
.super Lcom/alipay/android/app/AbsActivity;


# static fields
.field public static b:Landroid/app/Activity;


# instance fields
.field private c:Ljava/util/Timer;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/util/DialogActivity;->c:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/util/DialogActivity;->d:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/alipay/android/app/flybird/ui/util/DialogActivity;->b:Landroid/app/Activity;

    return-void
.end method
