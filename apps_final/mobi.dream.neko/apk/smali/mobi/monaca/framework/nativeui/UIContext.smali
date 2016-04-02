.class public Lmobi/monaca/framework/nativeui/UIContext;
.super Landroid/content/ContextWrapper;
.source "UIContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;
    }
.end annotation


# instance fields
.field protected computedFontSizeCache:Landroid/util/SparseIntArray;

.field protected mComponentIDsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmobi/monaca/framework/nativeui/component/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

.field protected metrics:Landroid/util/DisplayMetrics;

.field protected onRotateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

.field protected settings:Lmobi/monaca/framework/InternalSettings;

.field protected uiFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmobi/monaca/framework/MonacaPageActivity;)V
    .locals 3
    .param p1, "uiFilePath"    # Ljava/lang/String;
    .param p2, "pageActivity"    # Lmobi/monaca/framework/MonacaPageActivity;

    .prologue
    .line 45
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/UIContext;->computedFontSizeCache:Landroid/util/SparseIntArray;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/UIContext;->onRotateListeners:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/UIContext;->mComponentIDsMap:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/UIContext;->uiFilePath:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    .line 49
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/UIContext;->metrics:Landroid/util/DisplayMetrics;

    .line 50
    invoke-virtual {p2}, Lmobi/monaca/framework/MonacaPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/UIContext;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    invoke-virtual {p2}, Lmobi/monaca/framework/MonacaPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaApplication;

    .line 52
    .local v0, "app":Lmobi/monaca/framework/MonacaApplication;
    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaApplication;->getInternalSettings()Lmobi/monaca/framework/InternalSettings;

    move-result-object v1

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/UIContext;->settings:Lmobi/monaca/framework/InternalSettings;

    .line 53
    return-void
.end method

.method public static getPreferredPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 169
    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_a2x:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "a2x":Ljava/lang/String;
    sget v1, Lmobi/monaca/framework/psedo/R$string;->extension_png:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->extension_png:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 174
    :cond_0
    sget v1, Lmobi/monaca/framework/psedo/R$string;->extension_jpg:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->extension_jpg:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_1
    sget v1, Lmobi/monaca/framework/psedo/R$string;->extension_jpeg:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->extension_jpeg:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 182
    :cond_2
    sget v1, Lmobi/monaca/framework/psedo/R$string;->extension_gif:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->extension_gif:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 186
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public addOnRotateListener(Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;)V
    .locals 1
    .param p1, "listener"    # Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;

    .prologue
    .line 211
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->onRotateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public changeCurrentUri(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/nativeui/UIContext;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "resolvedUri":Ljava/lang/String;
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1, v0}, Lmobi/monaca/framework/MonacaPageActivity;->setCurrentUri(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected exists(Ljava/lang/String;)Z
    .locals 4
    .param p1, "resolvedPath"    # Ljava/lang/String;

    .prologue
    .line 190
    sget v1, Lmobi/monaca/framework/psedo/R$string;->asset_url:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->asset_url:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->openAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 194
    .local v0, "stream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    const/4 v1, 0x1

    .line 200
    .end local v0    # "stream":Ljava/io/InputStream;
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v1

    .line 198
    const/4 v1, 0x0

    goto :goto_0

    .line 199
    :cond_0
    sget v1, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    new-instance v1, Ljava/io/File;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0

    .line 203
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_error_unsupported_path:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public fireOnRotateListeners(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 215
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/UIContext;->onRotateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;

    .line 216
    .local v1, "listener":Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;
    invoke-interface {v1, p1}, Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;->onRotate(I)V

    goto :goto_0

    .line 218
    .end local v1    # "listener":Lmobi/monaca/framework/nativeui/UIContext$OnRotateListener;
    :cond_0
    return-void
.end method

.method protected getBitmapScaleFactorFromPath(Ljava/lang/String;)F
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 141
    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_a2x:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "a2x":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->extension_png:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->extension_gif:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->extension_jpg:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->extension_jpeg:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 149
    :goto_0
    return v1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getComponentIDsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmobi/monaca/framework/nativeui/component/Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->mComponentIDsMap:Ljava/util/Map;

    return-object v0
.end method

.method protected getDensityScale()F
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->metrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getFontSizeFromDip(I)I
    .locals 1
    .param p1, "dip"    # I

    .prologue
    .line 207
    invoke-static {p0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->getFontSizeFromDip(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getPageActivity()Lmobi/monaca/framework/MonacaPageActivity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    return-object v0
.end method

.method public getPageComponent()Lmobi/monaca/framework/nativeui/component/PageComponent;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    return-object v0
.end method

.method public getSettings()Lmobi/monaca/framework/InternalSettings;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->settings:Lmobi/monaca/framework/InternalSettings;

    return-object v0
.end method

.method public getUIFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->uiFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUIOrientation()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public loadRelativePathWithoutUIFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/nativeui/UIContext;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "resolved":Ljava/lang/String;
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->loadUri(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public react(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 89
    sget v0, Lmobi/monaca/framework/psedo/R$string;->js_scheme:I

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->sendJavascript(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageWithIntent(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    goto :goto_0
.end method

.method public readScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/nativeui/UIContext;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    sget v2, Lmobi/monaca/framework/psedo/R$string;->asset_url:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    sget v2, Lmobi/monaca/framework/psedo/R$string;->asset_url:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lmobi/monaca/framework/util/InputStreamLoader;->loadAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 111
    .local v8, "stream":Ljava/io/InputStream;
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 114
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 115
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/UIContext;->getDensityScale()F

    move-result v2

    invoke-virtual {p0, p1}, Lmobi/monaca/framework/nativeui/UIContext;->getBitmapScaleFactorFromPath(Ljava/lang/String;)F

    move-result v3

    mul-float v7, v2, v3

    .line 116
    .local v7, "scale":F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 130
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "scale":F
    .end local v8    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 119
    :cond_0
    sget v2, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    sget v2, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/monaca/framework/util/InputStreamLoader;->loadLocalFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 121
    .restart local v8    # "stream":Ljava/io/InputStream;
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 124
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/UIContext;->getDensityScale()F

    move-result v2

    invoke-virtual {p0, p1}, Lmobi/monaca/framework/nativeui/UIContext;->getBitmapScaleFactorFromPath(Ljava/lang/String;)F

    move-result v3

    mul-float v7, v2, v3

    .line 126
    .restart local v7    # "scale":F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 130
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "scale":F
    .end local v8    # "stream":Ljava/io/InputStream;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 154
    :try_start_0
    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/UIContext;->uiFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 159
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_resolve_assetpath:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_resolve_filescheme:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_0
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_resolve_datapath:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->slash:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_resolve_filescheme:I

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lmobi/monaca/framework/psedo/R$string;->slash:I

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/nativeui/UIContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    :cond_1
    invoke-static {p1}, Lmobi/monaca/framework/nativeui/UIContext;->getPreferredPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "preferredPath":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .end local v1    # "preferredPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, p1

    .line 156
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "preferredPath":Ljava/lang/String;
    :cond_2
    move-object v1, p1

    .line 165
    goto :goto_0
.end method

.method public setPageComponent(Lmobi/monaca/framework/nativeui/component/PageComponent;)V
    .locals 0
    .param p1, "mPageComponent"    # Lmobi/monaca/framework/nativeui/component/PageComponent;

    .prologue
    .line 57
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/UIContext;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    .line 58
    return-void
.end method

.method public showSoftInput(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIContext;->pageActivity:Lmobi/monaca/framework/MonacaPageActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 82
    return-void
.end method
