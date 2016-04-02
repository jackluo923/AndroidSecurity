.class public Lcom/alipay/mobile/monitor/track/TrackReflector;
.super Ljava/lang/Object;
.source "TrackReflector.java"


# static fields
.field private static f:Lcom/alipay/mobile/monitor/track/TrackReflector;


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/reflect/Field;

.field c:Ljava/lang/reflect/Field;

.field d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackReflector;->f:Lcom/alipay/mobile/monitor/track/TrackReflector;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    .line 23
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    .line 24
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    .line 27
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->d:Ljava/lang/Class;

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    .line 34
    :try_start_0
    const-string/jumbo v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 38
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    const-string/jumbo v1, "mListenerInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    .line 49
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 56
    :try_start_2
    const-string/jumbo v0, "android.view.View$ListenerInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->d:Ljava/lang/Class;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->d:Ljava/lang/Class;

    const-string/jumbo v1, "mOnClickListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    :cond_1
    :goto_2
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 70
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->a:Ljava/lang/Class;

    const-string/jumbo v1, "mOnClickListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 62
    :catch_1
    move-exception v0

    goto :goto_2

    .line 60
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0

    .line 36
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public static a()Lcom/alipay/mobile/monitor/track/TrackReflector;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackReflector;->f:Lcom/alipay/mobile/monitor/track/TrackReflector;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackReflector;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/TrackReflector;-><init>()V

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackReflector;->f:Lcom/alipay/mobile/monitor/track/TrackReflector;

    .line 89
    :cond_0
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackReflector;->f:Lcom/alipay/mobile/monitor/track/TrackReflector;

    return-object v0
.end method

.method private b(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-object v1

    .line 118
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 120
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private c(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 156
    :goto_0
    return-object v0

    .line 151
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/alipay/mobile/monitor/track/TrackReflector;->c(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/monitor/track/TrackReflector;->b(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackReflector;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    goto :goto_0
.end method
