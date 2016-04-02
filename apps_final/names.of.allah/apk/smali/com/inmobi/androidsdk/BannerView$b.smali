.class Lcom/inmobi/androidsdk/BannerView$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/BannerView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView$b;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$b;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->disableHardwareAcceleration()V

    return-void
.end method
