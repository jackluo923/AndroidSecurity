.class public interface abstract Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;
.super Ljava/lang/Object;


# virtual methods
.method public abstract initialize(Landroid/content/Context;)I
.end method

.method public abstract initializeAsync(Landroid/content/Context;)V
.end method

.method public abstract isSoValid(Landroid/content/Context;)Z
.end method

.method public abstract loadLibraryAsync(Landroid/content/Context;)V
.end method

.method public abstract loadLibraryAsync(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract loadLibrarySync(Landroid/content/Context;)I
.end method

.method public abstract loadLibrarySync(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract registerInitFinishListener(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
.end method

.method public abstract unregisterInitFinishListener(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
.end method
