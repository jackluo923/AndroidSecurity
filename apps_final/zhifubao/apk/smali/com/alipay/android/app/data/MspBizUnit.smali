.class public Lcom/alipay/android/app/data/MspBizUnit;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/data/BizDataUnit;


# instance fields
.field private a:Lcom/alipay/android/app/data/f;

.field private b:Lcom/alipay/android/app/script/IDataScriptable;

.field private c:Lcom/alipay/android/app/script/ITidScriptable;

.field private d:Lcom/alipay/android/app/data/d;

.field private e:Lcom/alipay/android/app/helper/EventUpdateScriptable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/f;

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->b:Lcom/alipay/android/app/script/IDataScriptable;

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->c:Lcom/alipay/android/app/script/ITidScriptable;

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/d;

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->e:Lcom/alipay/android/app/helper/EventUpdateScriptable;

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/data/BizData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/alipay/android/app/data/f;

    invoke-direct {v1}, Lcom/alipay/android/app/data/f;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/f;

    new-instance v1, Lcom/alipay/android/app/data/c;

    invoke-direct {v1}, Lcom/alipay/android/app/data/c;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->b:Lcom/alipay/android/app/script/IDataScriptable;

    new-instance v1, Lcom/alipay/android/app/data/EventTidScriptable;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->l()Lcom/alipay/android/app/data/DataSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/data/EventTidScriptable;-><init>(Lcom/alipay/android/app/data/DataSource;)V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->c:Lcom/alipay/android/app/script/ITidScriptable;

    new-instance v1, Lcom/alipay/android/app/data/d;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/alipay/android/app/data/d;-><init>(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/app/data/InteractionData;)V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/d;

    new-instance v1, Lcom/alipay/android/app/helper/EventUpdateScriptable;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/helper/EventUpdateScriptable;-><init>(Lcom/alipay/android/app/data/DataProcessor;)V

    iput-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->e:Lcom/alipay/android/app/helper/EventUpdateScriptable;

    iget-object v0, p0, Lcom/alipay/android/app/data/MspBizUnit;->e:Lcom/alipay/android/app/helper/EventUpdateScriptable;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/EventUpdateScriptable;->a(Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/f;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->b:Lcom/alipay/android/app/script/IDataScriptable;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->c:Lcom/alipay/android/app/script/ITidScriptable;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/d;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    iget-object v1, p0, Lcom/alipay/android/app/data/MspBizUnit;->e:Lcom/alipay/android/app/helper/EventUpdateScriptable;

    invoke-interface {v0, v1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    iget-object v0, p0, Lcom/alipay/android/app/data/MspBizUnit;->d:Lcom/alipay/android/app/data/d;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/d;->a(Lcom/alipay/android/app/data/ValidatedFrameData;)V

    iget-object v0, p0, Lcom/alipay/android/app/data/MspBizUnit;->a:Lcom/alipay/android/app/data/f;

    invoke-virtual {p1}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/f;->a(Lcom/alipay/android/app/data/ValidatedFrameData;)V

    return-void
.end method
