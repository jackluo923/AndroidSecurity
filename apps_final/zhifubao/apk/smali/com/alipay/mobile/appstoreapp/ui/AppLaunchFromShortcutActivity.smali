.class public Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;
.super Landroid/app/Activity;
.source "AppLaunchFromShortcutActivity.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:Z

.field private d:Landroid/content/res/Resources$Theme;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->c:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->d:Landroid/content/res/Resources$Theme;

    .line 17
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".R$layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->c:Z

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "com.alipay.mobile.appstoreapp.ui.AppLaunchFromShortcutActivityImpl"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->a:Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 92
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 83
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 85
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 87
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 89
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->a()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "bootFinish"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 151
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 146
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 148
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "bootFinish"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 129
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 124
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 126
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    .line 163
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->c:Z

    if-nez v0, :cond_0

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->d:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->d:Landroid/content/res/Resources$Theme;

    .line 168
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->d:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->d:Landroid/content/res/Resources$Theme;

    iget v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->e:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->d:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const-string/jumbo v0, "app_launch_from_shotcut"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 36
    const-string/jumbo v1, "bootFinish"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->a()V

    .line 54
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "addListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Observer;

    aput-object v4, v2, v3

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 43
    aput-object p0, v2, v3

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 51
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 192
    const-string/jumbo v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 191
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 199
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 201
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public setTheme(I)V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 157
    iput p1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->e:I

    .line 158
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/alipay/mobile/appstoreapp/ui/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/appstoreapp/ui/i;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
