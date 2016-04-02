.class public Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "InsuranceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

.field private c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private d:Lcom/alipay/android/widgets/asset/listener/PayResultListener;

.field private e:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private f:Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/alipay/android/widgets/asset/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/i;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->f:Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setOrderNo(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setShowBizResultPage(Z)V

    new-instance v2, Lcom/alipay/android/widgets/asset/l;

    invoke-direct {v2, p0}, Lcom/alipay/android/widgets/asset/l;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/mobile/commonui/widget/APCheckBox;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)Lcom/alipay/android/widgets/asset/listener/PayResultListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->d:Lcom/alipay/android/widgets/asset/listener/PayResultListener;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/widgets/asset/listener/PayResultListener;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->d:Lcom/alipay/android/widgets/asset/listener/PayResultListener;

    .line 140
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->l:I

    if-ne v0, v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->dismiss()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->t:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->u:I

    if-ne v0, v1, :cond_5

    .line 155
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "InsuranceDialogFragment"

    const-string/jumbo v2, "openProtocol"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "protocol_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "u"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "st"

    const-string/jumbo v2, "YES"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sb"

    const-string/jumbo v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 156
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->k:I

    if-ne v0, v1, :cond_0

    .line 157
    new-instance v0, Lcom/alipay/android/widgets/asset/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/m;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/m;->start([Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lcom/alipay/android/widgets/asset/utils/LogAgentUtil;->e()V

    goto/16 :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 147
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/alipay/android/phone/wealth/home/R$layout;->f:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->e:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 96
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->e:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setCachePeriod(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 97
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->I:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckBox;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    .line 98
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$id;->J:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 100
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->b:Lcom/alipay/mobile/commonui/widget/APCheckBox;

    new-instance v1, Lcom/alipay/android/widgets/asset/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/j;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v1, Lcom/alipay/android/widgets/asset/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/asset/k;-><init>(Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->S:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->a:Landroid/view/View;

    .line 120
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 121
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->t:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 123
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->k:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    .line 125
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->x:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 128
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->s:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 130
    sget v1, Lcom/alipay/android/phone/wealth/home/R$string;->g:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "pay_amount"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 130
    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 133
    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "compensation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->e:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "bg_image"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/InsuranceDialogFragment;->f:Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 136
    :cond_0
    return-void
.end method
