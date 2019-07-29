.class public interface abstract Lcom/firebase/client/Firebase$AuthListener;
.super Ljava/lang/Object;
.source "Firebase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/Firebase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onAuthError(Lcom/firebase/client/FirebaseError;)V
.end method

.method public abstract onAuthRevoked(Lcom/firebase/client/FirebaseError;)V
.end method

.method public abstract onAuthSuccess(Ljava/lang/Object;)V
.end method
