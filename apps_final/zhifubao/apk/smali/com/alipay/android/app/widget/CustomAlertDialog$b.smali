.class final Lcom/alipay/android/app/widget/CustomAlertDialog$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/widget/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Landroid/content/Context;

.field e:Landroid/view/View;

.field f:Landroid/content/DialogInterface$OnCancelListener;

.field g:Landroid/content/DialogInterface$OnKeyListener;

.field h:Ljava/lang/CharSequence;

.field i:Ljava/lang/CharSequence;

.field j:Landroid/content/DialogInterface$OnClickListener;

.field k:Landroid/content/DialogInterface$OnClickListener;

.field l:Landroid/os/Message;

.field m:Landroid/os/Message;

.field n:Z

.field o:Landroid/widget/ListAdapter;

.field public p:I

.field q:Landroid/content/DialogInterface$OnClickListener;

.field r:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->n:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->p:I

    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomAlertDialog$b;->r:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomAlertDialog$b;-><init>()V

    return-void
.end method
