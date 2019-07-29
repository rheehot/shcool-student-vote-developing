.class Lcom/firebase/client/Query$1;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Query;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Query;

.field final synthetic val$listener:Lcom/firebase/client/ValueEventListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/Query;Lcom/firebase/client/ValueEventListener;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/firebase/client/Query$1;->this$0:Lcom/firebase/client/Query;

    iput-object p2, p0, Lcom/firebase/client/Query$1;->val$listener:Lcom/firebase/client/ValueEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 1
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/firebase/client/Query$1;->val$listener:Lcom/firebase/client/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/firebase/client/ValueEventListener;->onCancelled(Lcom/firebase/client/FirebaseError;)V

    .line 150
    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 1
    .param p1, "snapshot"    # Lcom/firebase/client/DataSnapshot;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/firebase/client/Query$1;->this$0:Lcom/firebase/client/Query;

    invoke-virtual {v0, p0}, Lcom/firebase/client/Query;->removeEventListener(Lcom/firebase/client/ValueEventListener;)V

    .line 144
    iget-object v0, p0, Lcom/firebase/client/Query$1;->val$listener:Lcom/firebase/client/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/firebase/client/ValueEventListener;->onDataChange(Lcom/firebase/client/DataSnapshot;)V

    .line 145
    return-void
.end method
