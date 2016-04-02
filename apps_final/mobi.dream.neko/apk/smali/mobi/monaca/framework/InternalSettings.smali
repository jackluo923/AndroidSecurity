.class public Lmobi/monaca/framework/InternalSettings;
.super Ljava/lang/Object;
.source "InternalSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final DISABLE_UI_CONTAINER_BORDER:Ljava/lang/String;

.field public final FORCE_DISABLE_WEBVIEW_GPU:Ljava/lang/String;

.field public final disableUIContainerBorder:Z

.field public final forceDisableWebviewGPU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lmobi/monaca/framework/InternalSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/InternalSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "settings"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget v0, Lmobi/monaca/framework/psedo/R$string;->disable_border:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/InternalSettings;->DISABLE_UI_CONTAINER_BORDER:Ljava/lang/String;

    .line 12
    sget v0, Lmobi/monaca/framework/psedo/R$string;->disable_ha:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/InternalSettings;->FORCE_DISABLE_WEBVIEW_GPU:Ljava/lang/String;

    .line 18
    if-nez p1, :cond_0

    .line 20
    iput-boolean v1, p0, Lmobi/monaca/framework/InternalSettings;->disableUIContainerBorder:Z

    .line 21
    iput-boolean v1, p0, Lmobi/monaca/framework/InternalSettings;->forceDisableWebviewGPU:Z

    .line 32
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/InternalSettings;->DISABLE_UI_CONTAINER_BORDER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmobi/monaca/framework/InternalSettings;->DISABLE_UI_CONTAINER_BORDER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lmobi/monaca/framework/InternalSettings;->disableUIContainerBorder:Z

    .line 29
    iget-object v0, p0, Lmobi/monaca/framework/InternalSettings;->FORCE_DISABLE_WEBVIEW_GPU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/monaca/framework/InternalSettings;->FORCE_DISABLE_WEBVIEW_GPU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    iput-boolean v1, p0, Lmobi/monaca/framework/InternalSettings;->forceDisableWebviewGPU:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 25
    goto :goto_1
.end method
