.class Lcom/firebase/client/core/PersistentConnection$AuthCredential;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthCredential"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private authData:Ljava/lang/Object;

.field private credential:Ljava/lang/String;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/firebase/client/Firebase$AuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private onSuccessCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-class v0, Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/firebase/client/Firebase$AuthListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/Firebase$AuthListener;
    .param p2, "credential"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onSuccessCalled:Z

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    .line 138
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->credential:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public addListener(Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/Firebase$AuthListener;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public getCredential()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->credential:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onSuccessCalled:Z

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->credential:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCancel(Lcom/firebase/client/FirebaseError;)V
    .locals 3
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 172
    iget-boolean v2, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onSuccessCalled:Z

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onRevoked(Lcom/firebase/client/FirebaseError;)V

    .line 179
    :cond_0
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/Firebase$AuthListener;

    .line 176
    .local v1, "listener":Lcom/firebase/client/Firebase$AuthListener;
    invoke-interface {v1, p1}, Lcom/firebase/client/Firebase$AuthListener;->onAuthError(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0
.end method

.method public onRevoked(Lcom/firebase/client/FirebaseError;)V
    .locals 3
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 182
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/Firebase$AuthListener;

    .line 183
    .local v1, "listener":Lcom/firebase/client/Firebase$AuthListener;
    invoke-interface {v1, p1}, Lcom/firebase/client/Firebase$AuthListener;->onAuthRevoked(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0

    .line 185
    .end local v1    # "listener":Lcom/firebase/client/Firebase$AuthListener;
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "authData"    # Ljava/lang/Object;

    .prologue
    .line 188
    iget-boolean v2, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onSuccessCalled:Z

    if-nez v2, :cond_0

    .line 189
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onSuccessCalled:Z

    .line 190
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->authData:Ljava/lang/Object;

    .line 191
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/Firebase$AuthListener;

    .line 192
    .local v1, "listener":Lcom/firebase/client/Firebase$AuthListener;
    invoke-interface {v1, p1}, Lcom/firebase/client/Firebase$AuthListener;->onAuthSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/firebase/client/Firebase$AuthListener;
    :cond_0
    return-void
.end method

.method public preempt()V
    .locals 4

    .prologue
    .line 147
    const-string v3, "preempted"

    invoke-static {v3}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 148
    .local v0, "error":Lcom/firebase/client/FirebaseError;
    iget-object v3, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/Firebase$AuthListener;

    .line 149
    .local v2, "listener":Lcom/firebase/client/Firebase$AuthListener;
    invoke-interface {v2, v0}, Lcom/firebase/client/Firebase$AuthListener;->onAuthError(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0

    .line 151
    .end local v2    # "listener":Lcom/firebase/client/Firebase$AuthListener;
    :cond_0
    return-void
.end method

.method public replay(Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/firebase/client/Firebase$AuthListener;

    .prologue
    .line 159
    sget-boolean v0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->authData:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->authData:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/firebase/client/Firebase$AuthListener;->onAuthSuccess(Ljava/lang/Object;)V

    .line 161
    return-void
.end method
