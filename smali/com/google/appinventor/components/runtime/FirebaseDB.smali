.class public Lcom/google/appinventor/components/runtime/FirebaseDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xa
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that communicates with Firebase to store and retrieve information."
    designerHelpDescription = "Non-visible component that communicates with a Firebase to store and retrieve information."
    docUri = "storage/firebase-db"
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;,
        Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Firebase"

.field private static isInitialized:Z

.field private static persist:Z


# instance fields
.field private final activity:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private authListener:Lcom/firebase/client/Firebase$AuthStateListener;

.field private childListener:Lcom/firebase/client/ChildEventListener;

.field private defaultURL:Ljava/lang/String;

.field private developerBucket:Ljava/lang/String;

.field private firebaseToken:Ljava/lang/String;

.field private firebaseURL:Ljava/lang/String;

.field private myFirebase:Lcom/firebase/client/Firebase;

.field private projectBucket:Ljava/lang/String;

.field private useDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    .line 88
    sput-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->persist:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 78
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->androidUIHandler:Landroid/os/Handler;

    .line 139
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->activity:Landroid/app/Activity;

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/firebase/client/Firebase;->setAndroidContext(Landroid/content/Context;)V

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->setupChildListener()V

    .line 147
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->setupAuthListener()V

    .line 148
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MobileAnalytics;->fabricTracking(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/FirebaseDB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/FirebaseDB;)Lcom/firebase/client/Firebase;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    return-object v0
.end method

.method private connectFirebase()V
    .locals 4

    .prologue
    .line 593
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->activity:Landroid/app/Activity;

    const-string v1, "The version of Android on this device is too old to use Firebase."

    const-string v2, "Android Too Old"

    const-string v3, "OK"

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-eqz v0, :cond_3

    .line 599
    new-instance v0, Lcom/firebase/client/Firebase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "developers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    .line 605
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    if-nez v0, :cond_1

    .line 606
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->setupChildListener()V

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    if-nez v0, :cond_2

    .line 609
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->setupAuthListener()V

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addChildEventListener(Lcom/firebase/client/ChildEventListener;)Lcom/firebase/client/ChildEventListener;

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)Lcom/firebase/client/Firebase$AuthStateListener;

    goto :goto_0

    .line 601
    :cond_3
    new-instance v0, Lcom/firebase/client/Firebase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    goto :goto_1
.end method

.method private firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "toRun"    # Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
    .param p2, "firebase"    # Lcom/firebase/client/Firebase;
    .param p3, "whenDone"    # Ljava/lang/Runnable;

    .prologue
    .line 818
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->getResult()Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    move-result-object v0

    .line 819
    .local v0, "result":Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/google/appinventor/components/runtime/FirebaseDB$8;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Lcom/firebase/client/Firebase;->runTransaction(Lcom/firebase/client/Transaction$Handler;)V

    .line 855
    return-void
.end method

.method private resetListener()V
    .locals 2

    .prologue
    .line 410
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->removeEventListener(Lcom/firebase/client/ChildEventListener;)V

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->removeAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V

    .line 419
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    .line 420
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->connectFirebase()V

    goto :goto_0
.end method

.method private setupAuthListener()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    .line 229
    return-void
.end method

.method private setupChildListener()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    .line 207
    return-void
.end method


# virtual methods
.method public AppendValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToAdd"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost."
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 777
    new-instance v4, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    invoke-direct {v4, v2}, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;)V

    .line 778
    .local v4, "result":Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v1, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v7

    .line 779
    .local v7, "firebaseChild":Lcom/firebase/client/Firebase;
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$7;

    move-object v1, p0

    move-object v3, v2

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/FirebaseDB$7;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Ljava/lang/Object;)V

    .line 814
    .local v0, "toRun":Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
    invoke-direct {p0, v0, v7, v2}, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V

    .line 815
    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the tag from Firebase"
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->removeValue()V

    .line 458
    return-void
.end method

.method public DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 563
    if-eqz p2, :cond_0

    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 564
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 571
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string v1, "DataChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 572
    return-void

    .line 566
    .end local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Value failed to convert from JSON."

    const-string v3, "JSON Retrieval Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public DefaultURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 658
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    .line 659
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 661
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 663
    :cond_0
    return-void
.end method

.method public DeveloperBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    return-object v0
.end method

.method public DeveloperBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    .line 325
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 326
    return-void
.end method

.method public FirebaseError(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 582
    const-string v1, "Firebase"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v1, "FirebaseError"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    .line 586
    .local v0, "dispatched":Z
    if-nez v0, :cond_0

    .line 588
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "FirebaseError"

    const-string v3, "Continue"

    invoke-static {v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_0
    return-void
.end method

.method public FirebaseToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public FirebaseToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "JWT"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 376
    return-void
.end method

.method public FirebaseURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the URL for this FirebaseDB."
        userVisible = false
    .end annotation

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "DEFAULT"

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    goto :goto_0
.end method

.method public FirebaseURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "FirbaseURL"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the URL for this FirebaseDB."
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 277
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-nez v0, :cond_2

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 281
    const-string v0, "Firebase"

    const-string v1, "FirebaseURL called before DefaultURL (should not happen!)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 284
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    goto :goto_0

    .line 291
    :cond_3
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 298
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 299
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    goto :goto_0

    .line 292
    :cond_4
    const-string v0, "/"

    goto :goto_1
.end method

.method public FirstRemoved(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered by the \"RemoveFirst\" function. The argument \"value\" is the object that was the first in the list, and which is now removed."
    .end annotation

    .prologue
    .line 770
    const-string v0, "FirstRemoved"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method public GetTagList()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags."
    .end annotation

    .prologue
    .line 723
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    .line 724
    .local v0, "zFireBase":Lcom/firebase/client/Firebase;
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$6;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V

    .line 758
    return-void
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueIfTagNotThere"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$3;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V

    .line 531
    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 542
    if-eqz p2, :cond_0

    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 543
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 550
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string v1, "GotValue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 551
    return-void

    .line 545
    .end local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Value failed to convert from JSON."

    const-string v3, "JSON Retrieval Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public Initialize()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "Firebase"

    const-string v1, "Initalize called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    .line 246
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 247
    return-void
.end method

.method public Persist(Z)V
    .locals 4
    .param p1, "value"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, variables will retain their values when off-line and the App exits. Values will be uploaded to Firebase the next time the App is run while connected to the network. This is useful for applications which will gather data while not connected to the network. Note: AppendValue and RemoveFirst will not work correctly when off-line, they require a network connection.<br/><br/> <i>Note</i>: If you set Persist on any Firebase component, on any screen, it makes all Firebase components on all screens persistent. This is a limitation of the low level Firebase library. Also be aware that if you want to set persist to true, you should do so before connecting the Companion for incremental development."
        userVisible = false
    .end annotation

    .prologue
    .line 393
    const-string v1, "Firebase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persist Called: Value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-boolean v1, Lcom/google/appinventor/components/runtime/FirebaseDB;->persist:Z

    if-eq v1, p1, :cond_1

    .line 395
    sget-boolean v1, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 396
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You cannot change the Persist value of Firebase after Application Initialization, this includes the Companion"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_0
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    .line 400
    .local v0, "config":Lcom/firebase/client/Config;
    invoke-virtual {v0, p1}, Lcom/firebase/client/Config;->setPersistenceEnabled(Z)V

    .line 401
    invoke-static {v0}, Lcom/firebase/client/Firebase;->setDefaultConfig(Lcom/firebase/client/Config;)V

    .line 402
    sput-boolean p1, Lcom/google/appinventor/components/runtime/FirebaseDB;->persist:Z

    .line 403
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 405
    .end local v0    # "config":Lcom/firebase/client/Config;
    :cond_1
    return-void
.end method

.method public ProjectBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the ProjectBucket for this FirebaseDB."
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    return-object v0
.end method

.method public ProjectBucket(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ProjectBucket for this FirebaseDB."
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    .line 350
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 352
    :cond_0
    return-void
.end method

.method public RemoveFirst(Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered."
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 670
    new-instance v4, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    invoke-direct {v4, v2}, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;)V

    .line 671
    .local v4, "result":Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v1, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v6

    .line 672
    .local v6, "firebaseChild":Lcom/firebase/client/Firebase;
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;

    move-object v1, p0

    move-object v3, v2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/FirebaseDB$4;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V

    .line 711
    .local v0, "toRun":Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$5;

    invoke-direct {v1, p0, v4}, Lcom/google/appinventor/components/runtime/FirebaseDB$5;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V

    invoke-direct {p0, v0, v6, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V

    .line 717
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToStore"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 470
    if-eqz p2, :cond_0

    .line 471
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 478
    .end local p2    # "valueToStore":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v1, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/firebase/client/Firebase;->setValue(Ljava/lang/Object;)V

    .line 479
    return-void

    .line 473
    .restart local p2    # "valueToStore":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Value failed to convert to JSON."

    const-string v3, "JSON Creation Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public TagList(Ljava/util/List;)V
    .locals 3
    .param p1, "value"    # Ljava/util/List;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function."
    .end annotation

    .prologue
    .line 763
    const-string v0, "TagList"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 764
    return-void
.end method

.method public Unauthenticate()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you are having difficulty with the Companion and you are switching between different Firebase accounts, you may need to use this function to clear internal Firebase caches. You can just use the \"Do It\" function on this block in the blocks editor. Note: You should not normally need to use this block as part of an application."
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-nez v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->connectFirebase()V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->unauth()V

    .line 645
    return-void
.end method
