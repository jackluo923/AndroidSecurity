.class Lcom/millennialmedia/android/MMCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Ljava/lang/String;

.field private cls:Ljava/lang/Class;

.field private method:Ljava/lang/reflect/Method;

.field private webViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ge v2, v11, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v0, v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-lt v7, v11, :cond_1

    iget-object v7, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "callback"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "com.millennialmedia.android.Bridge"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception while executing javascript call %s %s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private getBridgeStrippedClassName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bridge"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method isResizeCommand()Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const-string v0, "resize"

    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand;->cls:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMJSObject;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMJSObject;->setContext(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMJSObject;->setMMWebView(Lcom/millennialmedia/android/MMWebView;)V

    iget-object v2, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMWebView;->updateArgumentsWithSettings(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    :cond_0
    iget-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    :cond_1
    iget-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/millennialmedia/android/MMCommand;->getBridgeStrippedClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    :cond_2
    const-string v2, "javascript:%s(%s);"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMJSResponse;->toJSONString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing JS bridge callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v2, Lcom/millennialmedia/android/MMCommand$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/millennialmedia/android/MMCommand$1;-><init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/ActivityNotFoundException;

    if-ne v0, v1, :cond_4

    const-string v0, "Activity not found"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Exception while executing javascript call %s %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/android/MMCommand;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "No class or method found"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    const-string v1, "javascript:%s(%s);"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMJSResponse;->toJSONString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Executing JS bridge failed callback: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    new-instance v2, Lcom/millennialmedia/android/MMCommand$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/millennialmedia/android/MMCommand$2;-><init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
