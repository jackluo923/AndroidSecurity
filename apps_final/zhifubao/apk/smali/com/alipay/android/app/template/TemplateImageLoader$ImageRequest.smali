.class Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateImageLoader;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c:Landroid/view/View;

    .line 51
    iput v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->d:I

    .line 52
    iput v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->e:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->f:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->g:Z

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/app/template/TemplateImageLoader;B)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->f:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->g:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->d:I

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->e:I

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->h:I

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->f:I

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->c:Landroid/view/View;

    return-void
.end method
