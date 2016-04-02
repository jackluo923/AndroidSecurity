.class public final Lcom/alibaba/wireless/security/open/initialize/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/ContextWrapper;

.field private b:Z

.field private c:Z

.field private d:Lcom/alibaba/wireless/security/open/initialize/a;


# direct methods
.method public constructor <init>(Lcom/alibaba/wireless/security/open/initialize/a;Landroid/content/ContextWrapper;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->b:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->d:Lcom/alibaba/wireless/security/open/initialize/a;

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->d:Lcom/alibaba/wireless/security/open/initialize/a;

    iput-object p2, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->a:Landroid/content/ContextWrapper;

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->b:Z

    iput-boolean v1, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->b:Z

    iget-boolean v0, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->c:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->d:Lcom/alibaba/wireless/security/open/initialize/a;

    iget-object v0, v0, Lcom/alibaba/wireless/security/open/initialize/a;->a:Lcom/alibaba/wireless/security/open/initialize/b;

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->a:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->d:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->d:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/a;->b()V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/a$a;->d:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/a;->b()V

    goto :goto_0
.end method
