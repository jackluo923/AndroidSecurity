.class public final Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;
.super Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;->a:Z

    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 1

    iget-boolean v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;->a:Z

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;->getOr(Z)Z

    move-result v0

    return v0
.end method

.method public final getOr(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final put(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/BooleanPrefField;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
