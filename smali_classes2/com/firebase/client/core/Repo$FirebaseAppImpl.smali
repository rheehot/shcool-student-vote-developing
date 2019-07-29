.class Lcom/firebase/client/core/Repo$FirebaseAppImpl;
.super Lcom/firebase/client/FirebaseApp;
.source "Repo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/Repo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirebaseAppImpl"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0
    .param p1, "repo"    # Lcom/firebase/client/core/Repo;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/firebase/client/FirebaseApp;-><init>(Lcom/firebase/client/core/Repo;)V

    .line 46
    return-void
.end method
