.class final Lcom/alipay/android/phone/home/manager/a;
.super Ljava/lang/Object;
.source "AppCenterOnItemClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/a;->a:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/a;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp()V

    .line 188
    return-void
.end method
