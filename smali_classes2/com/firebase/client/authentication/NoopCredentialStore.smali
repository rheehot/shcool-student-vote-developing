.class public Lcom/firebase/client/authentication/NoopCredentialStore;
.super Ljava/lang/Object;
.source "NoopCredentialStore.java"

# interfaces
.implements Lcom/firebase/client/CredentialStore;


# instance fields
.field private final logger:Lcom/firebase/client/utilities/LogWrapper;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Context;)V
    .locals 1
    .param p1, "context"    # Lcom/firebase/client/core/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "CredentialStore"

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/authentication/NoopCredentialStore;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 13
    return-void
.end method


# virtual methods
.method public clearCredential(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "firebaseId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public loadCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "firebaseId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public storeCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "firebaseId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "credentialData"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/firebase/client/authentication/NoopCredentialStore;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Using no-op credential store. Not persisting credentials! If you want to persist authentication, please use a custom implementation of CredentialStore."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->warn(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    return v0
.end method
