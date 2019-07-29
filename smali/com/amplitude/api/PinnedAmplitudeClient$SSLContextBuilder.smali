.class public Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;
.super Ljava/lang/Object;
.source "PinnedAmplitudeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/api/PinnedAmplitudeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SSLContextBuilder"
.end annotation


# instance fields
.field private final certificateBase64s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;->certificateBase64s:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCertificate(Ljava/lang/String;)Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;
    .locals 1
    .param p1, "certificateBase64"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;->certificateBase64s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-object p0
.end method

.method public build()Ljavax/net/ssl/SSLContext;
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 135
    :try_start_0
    const-string v11, "X.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 137
    .local v3, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 136
    invoke-static {v11}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v9

    .line 138
    .local v9, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 139
    .local v5, "keyStore":Ljava/security/KeyStore;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 142
    const/4 v6, 0x1

    .line 143
    .local v6, "nextName":I
    iget-object v11, p0, Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;->certificateBase64s:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v6

    .end local v6    # "nextName":I
    .local v7, "nextName":I
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "certificateBase64":Ljava/lang/String;
    new-instance v12, Lokio/Buffer;

    invoke-direct {v12}, Lokio/Buffer;-><init>()V

    invoke-static {v1}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v13

    invoke-virtual {v12, v13}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v2

    .line 146
    .local v2, "certificateBuffer":Lokio/Buffer;
    invoke-virtual {v2}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 145
    invoke-virtual {v3, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 147
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "nextName":I
    .restart local v6    # "nextName":I
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    move v7, v6

    .line 148
    .end local v6    # "nextName":I
    .restart local v7    # "nextName":I
    goto :goto_0

    .line 151
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v1    # "certificateBase64":Ljava/lang/String;
    .end local v2    # "certificateBuffer":Lokio/Buffer;
    :cond_0
    invoke-virtual {v9, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 152
    const-string v11, "TLS"

    invoke-static {v11}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    .line 153
    .local v8, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v11, 0x0

    invoke-virtual {v9}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .end local v3    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "nextName":I
    .end local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_1
    return-object v8

    .line 155
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Lcom/amplitude/api/PinnedAmplitudeClient;->access$000()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v11

    const-string v12, "com.amplitude.api.PinnedAmplitudeClient"

    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :goto_2
    move-object v8, v10

    .line 160
    goto :goto_1

    .line 157
    :catch_1
    move-exception v4

    .line 158
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/amplitude/api/PinnedAmplitudeClient;->access$000()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v11

    const-string v12, "com.amplitude.api.PinnedAmplitudeClient"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v4}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
