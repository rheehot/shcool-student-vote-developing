.class public interface abstract Lcom/firebase/client/Firebase$AuthResultHandler;
.super Ljava/lang/Object;
.source "Firebase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/Firebase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthResultHandler"
.end annotation


# virtual methods
.method public abstract onAuthenticated(Lcom/firebase/client/AuthData;)V
.end method

.method public abstract onAuthenticationError(Lcom/firebase/client/FirebaseError;)V
.end method
