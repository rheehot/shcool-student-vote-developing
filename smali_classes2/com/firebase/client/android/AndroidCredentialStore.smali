.class public Lcom/firebase/client/android/AndroidCredentialStore;
.super Ljava/lang/Object;
.source "AndroidCredentialStore.java"

# interfaces
.implements Lcom/firebase/client/CredentialStore;


# static fields
.field private static final ANDROID_SHARED_PREFERENCE_NAME:Ljava/lang/String; = "com.firebase.authentication.credentials"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "com.firebase.authentication.credentials"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/android/AndroidCredentialStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    return-void
.end method

.method private buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "firebaseId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearCredential(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "firebaseId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/firebase/client/android/AndroidCredentialStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/android/AndroidCredentialStore;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public loadCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "firebaseId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/firebase/client/android/AndroidCredentialStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, p2}, Lcom/firebase/client/android/AndroidCredentialStore;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storeCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "firebaseId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "credential"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/firebase/client/android/AndroidCredentialStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/android/AndroidCredentialStore;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method
