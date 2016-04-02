.class public abstract Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;
.super Lmobi/monaca/utils/MyAsyncTask;
.source "GCMRegistrationIdSenderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobi/monaca/utils/MyAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_PREF:Ljava/lang/String; = "gcm_pref"

.field static final KEY_PREF_ALREADY_REGISTERED:Ljava/lang/String; = "already_registered"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final REGISTRATION_API_URL:Ljava/lang/String;

.field private alreadyRegistered:Z

.field private configPreference:Landroid/content/SharedPreferences;

.field private context:Landroid/content/Context;

.field private isCustom:Ljava/lang/String;

.field private regId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regAPIUrl"    # Ljava/lang/String;
    .param p3, "regId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Lmobi/monaca/utils/MyAsyncTask;-><init>()V

    .line 61
    iput-object p1, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->context:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->regId:Ljava/lang/String;

    .line 63
    const-string v0, "gcm_pref"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->configPreference:Landroid/content/SharedPreferences;

    .line 64
    iput-object p2, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->REGISTRATION_API_URL:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lmobi/monaca/utils/MonacaConst;->getIsCustom(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->isCustom:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->configPreference:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already_registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->alreadyRegistered:Z

    .line 69
    return-void
.end method

.method public static clearAlreadyRegisteredPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 118
    const-string v1, "gcm_pref"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already_registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method

.method private preOnFailedRegistration(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->onFailedRegistration(Lorg/json/JSONObject;)V

    .line 109
    return-void
.end method

.method private preOnSucceededRegistration(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    .line 99
    iget-object v1, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->configPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already_registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->regId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->onSucceededRegistration(Lorg/json/JSONObject;)V

    .line 104
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 113
    invoke-virtual {p0}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->onClosedTask()V

    .line 114
    invoke-super {p0, p1}, Lmobi/monaca/utils/MyAsyncTask;->cancel(Z)V

    .line 115
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 14
    .param p1, "a"    # [Ljava/lang/Void;

    .prologue
    .line 134
    iget-boolean v11, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->alreadyRegistered:Z

    if-eqz v11, :cond_0

    .line 135
    const/4 v7, 0x0

    .line 190
    :goto_0
    return-object v7

    .line 138
    :cond_0
    :try_start_0
    iget-object v11, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget v10, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 140
    .local v10, "versionCode":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_platform:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lmobi/monaca/framework/psedo/R$string;->android:I

    invoke-static {v13}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_deviceid:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->context:Landroid/content/Context;

    invoke-static {v13}, Lmobi/monaca/utils/MonacaDevice;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_iscustom:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->isCustom:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_version:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_registrationid:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->regId:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_packagename:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_buildtype:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lmobi/monaca/framework/psedo/R$string;->release:I

    invoke-static {v13}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v9, Ljava/net/URL;

    iget-object v11, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->REGISTRATION_API_URL:Ljava/lang/String;

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 152
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 153
    const/16 v11, 0x2710

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 155
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 156
    .local v4, "os":Ljava/io/OutputStream;
    invoke-static {v3}, Lmobi/monaca/utils/APIUtil;->getQuery(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "postStr":Ljava/lang/String;
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v6, "ps":Ljava/io/PrintStream;
    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v6}, Ljava/io/PrintStream;->close()V

    .line 161
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 163
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 166
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 167
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "resultJsonString":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_responcecode:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    goto/16 :goto_0

    .line 170
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v8    # "resultJsonString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v7, "result":Lorg/json/JSONObject;
    sget v11, Lmobi/monaca/framework/psedo/R$string;->key_status:I

    invoke-static {v11}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lmobi/monaca/framework/psedo/R$string;->value_nostatus:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    sget v11, Lmobi/monaca/framework/psedo/R$string;->key_responcecode:I

    invoke-static {v11}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 176
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "postStr":Ljava/lang/String;
    .end local v6    # "ps":Ljava/io/PrintStream;
    .end local v7    # "result":Lorg/json/JSONObject;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "versionCode":I
    :catch_1
    move-exception v1

    .line 177
    .local v1, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 185
    .end local v1    # "e1":Ljava/net/MalformedURLException;
    :goto_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .restart local v7    # "result":Lorg/json/JSONObject;
    :try_start_3
    sget v11, Lmobi/monaca/framework/psedo/R$string;->key_status:I

    invoke-static {v11}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lmobi/monaca/framework/psedo/R$string;->value_failed_with_exception:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 188
    :catch_2
    move-exception v11

    goto/16 :goto_0

    .line 178
    .end local v7    # "result":Lorg/json/JSONObject;
    :catch_3
    move-exception v1

    .line 179
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 180
    .end local v1    # "e1":Lorg/json/JSONException;
    :catch_4
    move-exception v1

    .line 181
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 182
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_5
    move-exception v1

    .line 183
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected abstract onClosedTask()V
.end method

.method protected abstract onFailedRegistration(Lorg/json/JSONObject;)V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected final onPostExecute(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "resultJson"    # Lorg/json/JSONObject;

    .prologue
    .line 73
    iget-boolean v1, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->alreadyRegistered:Z

    if-eqz v1, :cond_0

    .line 94
    :goto_0
    invoke-virtual {p0}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->onClosedTask()V

    .line 95
    return-void

    .line 78
    :cond_0
    :try_start_0
    sget v1, Lmobi/monaca/framework/psedo/R$string;->key_status:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->value_ok:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->preOnSucceededRegistration(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, p1}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->preOnFailedRegistration(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 80
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    sget v1, Lmobi/monaca/framework/psedo/R$string;->key_status:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->value_nostatus:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    sget v1, Lmobi/monaca/framework/psedo/R$string;->key_responcecode:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 82
    invoke-direct {p0, p1}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->preOnSucceededRegistration(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0, p1}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->preOnFailedRegistration(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 87
    :cond_3
    invoke-direct {p0, p1}, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->preOnFailedRegistration(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected abstract onSucceededRegistration(Lorg/json/JSONObject;)V
.end method

.method public setIsCustom(Ljava/lang/String;)Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;
    .locals 0
    .param p1, "isCustom"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lmobi/monaca/framework/task/GCMRegistrationIdSenderTask;->isCustom:Ljava/lang/String;

    .line 125
    return-object p0
.end method
