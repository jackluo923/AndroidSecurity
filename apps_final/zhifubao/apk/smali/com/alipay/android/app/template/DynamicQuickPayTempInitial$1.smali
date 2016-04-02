.class Lcom/alipay/android/app/template/DynamicQuickPayTempInitial$1;
.super Ljava/lang/Object;
.source "DynamicQuickPayTempInitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial$1;->b:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 116
    return-void
.end method
