.class public Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "FlybirdDemo1Activity.java"


# instance fields
.field private a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private b:Lcom/alipay/mobile/commonui/widget/APButton;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/alipay/android/app/template/ui/TestListAdapter;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->e:Ljava/util/List;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 177
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 178
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 180
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_1

    .line 183
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    if-eqz v0, :cond_0

    .line 186
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 187
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v0, Lcom/alipay/android/app/template/R$layout;->activity_flybird_demo1:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->setContentView(I)V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 66
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 62
    iput-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->a:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 67
    sget v0, Lcom/alipay/android/app/template/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 68
    const-string/jumbo v1, "\u9e1f\u5de2\u6d4b\u8bd5"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 69
    sget v0, Lcom/alipay/android/app/template/R$id;->btn_flybird:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 70
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 71
    new-instance v0, Lcom/alipay/android/app/template/ui/TestListAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/ui/TestListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->d:Lcom/alipay/android/app/template/ui/TestListAdapter;

    .line 72
    sget v0, Lcom/alipay/android/app/template/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->c:Landroid/widget/ListView;

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->d:Lcom/alipay/android/app/template/ui/TestListAdapter;

    const-string/jumbo v1, "main.html"

    invoke-direct {p0, v1}, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/template/HtmlGumboParser;->getInstance()Lcom/alipay/android/app/template/HtmlGumboParser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/app/template/HtmlGumboParser;->parseHtmlToJson(Ljava/lang/String;Lcom/alipay/android/app/template/HtmlGumboParser$Options;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/ui/TestListAdapter;->setTemplateInJSON(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->d:Lcom/alipay/android/app/template/ui/TestListAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/ui/TestListAdapter;->setmListDatas(Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->d:Lcom/alipay/android/app/template/ui/TestListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/FlybirdDemo1Activity;->e:Ljava/util/List;

    const-string/jumbo v2, "123"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 138
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 162
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStart()V

    .line 170
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
