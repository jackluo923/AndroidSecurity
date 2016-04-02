.class public Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;
.super Ljava/lang/Object;
.source "TitleBarAdvice.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private a(Landroid/app/Activity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 2

    .prologue
    .line 64
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 45
    instance-of v1, p1, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v1, :cond_0

    .line 46
    check-cast p1, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 56
    :goto_0
    return-object p1

    .line 47
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 48
    check-cast p1, Landroid/view/ViewGroup;

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 52
    :goto_1
    if-le v1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a(Landroid/view/View;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "recursive():ignore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-object p1, v0

    goto :goto_0

    :cond_4
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 156
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getActiveActivityCount()I

    move-result v1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".onExecutionAfter:count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string/jumbo v2, "; thisPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    move-object v0, p2

    .line 165
    check-cast v0, Landroid/app/Activity;

    .line 168
    invoke-direct {p0, v0}, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a(Landroid/app/Activity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 170
    const-string/jumbo v3, "com.alipay.android.launcher.TabLauncher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonText(Ljava/lang/String;)V

    .line 186
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a:Ljava/lang/String;

    .line 193
    :cond_2
    return-void

    .line 175
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getBackButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_4
    const-string/jumbo v1, "\u8fd4\u56de"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 86
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 91
    if-nez v0, :cond_2

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 95
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.mobile.security.gesture.ui.GestureActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 101
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string/jumbo v2, "com.alipay.mobile.security.authcenter.ui.login.LoginActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onExecutionBefore: return; thisPoint="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onExecutionBefore: init mOldTitle; thisPoint="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getActiveActivityCount()I

    move-result v1

    const/4 v2, 0x1

    .line 112
    if-ne v1, v2, :cond_5

    .line 114
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 120
    if-eqz v0, :cond_1

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "title activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {p0, v0}, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a(Landroid/app/Activity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_5

    .line 126
    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string/jumbo v3, "com.alipay.android.launcher.TabLauncher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mOldTitle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string/jumbo v2, "com.alipay.android.launcher.TabLauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 141
    const-string/jumbo v0, "\u652f\u4ed8\u5b9d"

    iput-object v0, p0, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;->a:Ljava/lang/String;

    goto/16 :goto_0
.end method
