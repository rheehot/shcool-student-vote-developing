.class Lcom/firebase/client/core/Repo$12;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->startTransaction(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/firebase/client/core/Repo$12;->this$0:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 0
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 629
    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 0
    .param p1, "snapshot"    # Lcom/firebase/client/DataSnapshot;

    .prologue
    .line 624
    return-void
.end method
