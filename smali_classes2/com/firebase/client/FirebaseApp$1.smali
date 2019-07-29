.class Lcom/firebase/client/FirebaseApp$1;
.super Ljava/lang/Object;
.source "FirebaseApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/FirebaseApp;->purgeOutstandingWrites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/FirebaseApp;


# direct methods
.method constructor <init>(Lcom/firebase/client/FirebaseApp;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/firebase/client/FirebaseApp$1;->this$0:Lcom/firebase/client/FirebaseApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/firebase/client/FirebaseApp$1;->this$0:Lcom/firebase/client/FirebaseApp;

    invoke-static {v0}, Lcom/firebase/client/FirebaseApp;->access$000(Lcom/firebase/client/FirebaseApp;)Lcom/firebase/client/core/Repo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Repo;->purgeOutstandingWrites()V

    .line 41
    return-void
.end method
