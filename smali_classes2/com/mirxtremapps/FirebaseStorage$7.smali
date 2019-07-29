.class Lcom/mirxtremapps/FirebaseStorage$7;
.super Ljava/lang/Object;
.source "FirebaseStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mirxtremapps/FirebaseStorage;->performRequest(Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mirxtremapps/FirebaseStorage;

.field final synthetic val$firebaseCode:I

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$responseType:Ljava/lang/String;

.field final synthetic val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/mirxtremapps/FirebaseStorage;Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/mirxtremapps/FirebaseStorage$7;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iput-object p2, p0, Lcom/mirxtremapps/FirebaseStorage$7;->val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    iput p3, p0, Lcom/mirxtremapps/FirebaseStorage$7;->val$firebaseCode:I

    iput-object p4, p0, Lcom/mirxtremapps/FirebaseStorage$7;->val$responseType:Ljava/lang/String;

    iput-object p5, p0, Lcom/mirxtremapps/FirebaseStorage$7;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/mirxtremapps/FirebaseStorage$7;->this$0:Lcom/mirxtremapps/FirebaseStorage;

    iget-object v1, p0, Lcom/mirxtremapps/FirebaseStorage$7;->val$webProps:Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;

    iget-object v1, v1, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->urlString:Ljava/lang/String;

    iget v2, p0, Lcom/mirxtremapps/FirebaseStorage$7;->val$firebaseCode:I

    iget-object v3, p0, Lcom/mirxtremapps/FirebaseStorage$7;->val$responseType:Ljava/lang/String;

    iget-object v4, p0, Lcom/mirxtremapps/FirebaseStorage$7;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mirxtremapps/FirebaseStorage;->GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1001
    return-void
.end method
