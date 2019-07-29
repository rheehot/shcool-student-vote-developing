.class Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;
.super Ljava/lang/Object;
.source "FirebaseStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirxtremapps/FirebaseStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapturedProperties"
.end annotation


# instance fields
.field final allowCookies:Z

.field final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final responseFileName:Ljava/lang/String;

.field final saveResponse:Z

.field final url:Ljava/net/URL;

.field final urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mirxtremapps/FirebaseStorage;)V
    .locals 4
    .param p1, "web"    # Lcom/mirxtremapps/FirebaseStorage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/mirxtremapps/FirebaseStorage$InvalidRequestHeadersException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {p1}, Lcom/mirxtremapps/FirebaseStorage;->access$000(Lcom/mirxtremapps/FirebaseStorage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->urlString:Ljava/lang/String;

    .line 147
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->urlString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->url:Ljava/net/URL;

    .line 148
    invoke-static {p1}, Lcom/mirxtremapps/FirebaseStorage;->access$100(Lcom/mirxtremapps/FirebaseStorage;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->allowCookies:Z

    .line 149
    invoke-static {p1}, Lcom/mirxtremapps/FirebaseStorage;->access$200(Lcom/mirxtremapps/FirebaseStorage;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->saveResponse:Z

    .line 150
    invoke-static {p1}, Lcom/mirxtremapps/FirebaseStorage;->access$300(Lcom/mirxtremapps/FirebaseStorage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->responseFileName:Ljava/lang/String;

    .line 151
    invoke-static {p1}, Lcom/mirxtremapps/FirebaseStorage;->access$400(Lcom/mirxtremapps/FirebaseStorage;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-static {v1}, Lcom/mirxtremapps/FirebaseStorage;->access$500(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->requestHeaders:Ljava/util/Map;

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "cookiesTemp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-boolean v1, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->allowCookies:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/mirxtremapps/FirebaseStorage;->access$600(Lcom/mirxtremapps/FirebaseStorage;)Ljava/net/CookieHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    :try_start_0
    invoke-static {p1}, Lcom/mirxtremapps/FirebaseStorage;->access$600(Lcom/mirxtremapps/FirebaseStorage;)Ljava/net/CookieHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/mirxtremapps/FirebaseStorage$CapturedProperties;->cookies:Ljava/util/Map;

    .line 164
    return-void

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0

    .line 157
    :catch_1
    move-exception v1

    goto :goto_0
.end method
